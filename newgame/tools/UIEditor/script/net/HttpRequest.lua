-- HttpResquest.lua
-- created by aXing on 2013-5-31
-- 封装引擎里面的HTTP申请
-- 该HTTP将会取用异步访问方式，等待时间3秒，(如果要修改等待时间，需要修改引擎)
-- 由于引擎里面的HTTP申请只限一条线程，所以如果同时有很多HTTP申请的话，则需要排序

HttpRequest = {}

-- http申请列表
local _request_list = {}
-- 当前申请的http url
local _current_request = nil
--阻塞式请求
local _blocking_request = nil

local _req_handle = 1

local Thread0 		= 0     --其他通用线程,登录等
local Thread1 		= 1     --支付用线程
local Thread2 		= 2     --蓝钻，红钻，会员等使用的线程
local Thread3 		= 3     --3-7预留

local ThreadPay 	= Thread1   --支付用线程
local ThreadQQUrl   = Thread2   --蓝钻，红钻，会员等使用的线程
local ThreadBI   	= Thread3	--BI 线程

local MAX_THREAD 	= 4		--最多同时跑4个post线程

-- 退出的时候要清空整个http申请列表
function fini_http_request( ... )
	--_request_list = {}
	--_current_request = nil
end

-- 构建一个http申请对象
function HttpRequest:new( ... )
	local i = {}
    setmetatable(i, self)
    self.__index = self
	i:__init( ... )
    return i
end

--构造函数，构造就立刻开始

--blocked = 是否有一个阻塞式的请求在等待返回，
function HttpRequest:__init( url, param, callback, blocked )
	-- if _blocking_request then
	-- 	error('There is a req waiting', self.url )
	-- end

	-- if blocked == nil then
	-- 	blocked = true
	-- end

	self.url 		= url
	self.param		= param
	self.callback 	= callback
	
	if blocked then
		_blocking_request = self
	end
end

-- 用于检查是否还有http请求需要发送
local function _update_request()

	-- 访问回调
	local function _request_callback( error, message )
		if _current_request == nil then
			--ZXLog("http request error!")
			return
		end
		-- ZXLog('@> Http POST:error ',error)
		-- ZXLog('@> Http POST:url ',_current_request.url)
		-- ZXLog('@> Http POST:param ',_current_request.param)
		-- ZXLog('@> Http POST:error:', error)
		-- ZXLog('@> Http POST:message', message)

		local c_req = _current_request
		_current_request = nil
		c_req.callback(error, message)
		if _blocking_request == c_req then
			_blocking_request = nil
		end
		_update_request()
	end

	if _current_request == nil and #_request_list ~= 0 then
		local req = table.remove(_request_list)
		_current_request = req

		local reqret = RequestPostHttpAsync(req.url, req.param, _request_callback,Thread0)

		-- print('@> Http POST:url:', req.url)
		-- print('@> Http POST:param', req.param)
		-- print('@> Http POST:ret', reqret)
	end
end

-- 发送http请求，使用线程0，排队执行
function HttpRequest:send()
-- xprint('')
	table.insert(_request_list, self)
	_update_request()
end


function HttpRequest:busy()
	return _current_request ~= nil 
end

function HttpRequest:isWaitingBlockRequest()
	return _blocking_request ~= nil
end

--QQ平台专用处理 START

--使用线程1即时发送http请求，有可能失败！
--支付专用，其他人没事别用
--调用时不需要new， 直接调用HttpRequest.sendPay
function HttpRequest.sendPay(_url,_param,_callback)
	-- print('Http send[pay] POST:url:',  _url)
	-- print('Http send[pay] POST:param', _param)
	local e = RequestPostHttpAsync(_url, _param, _callback ,ThreadPay)
	if e == 0 then
		print('waiting for threadPay to finish')
		return false
	end
	return true
end

--使用线程2即时发送http请求，有可能失败！
--支付蓝钻，会员专用,其他人没事别用
--调用时不需要new， 直接调用HttpRequest.sendQQUrl
function HttpRequest:sendQQUrl(_url,_param,_callback)
	-- print('Http send[sendQQUrl] POST:url:',  _url)
	-- print('Http send[sendQQUrl] POST:param', _param)
	local e = RequestPostHttpAsync(_url, _param, _callback ,ThreadQQUrl)
	if e == 0 then
		print('waiting for threadQQUrl to finish')
		return false
	end
	return true
end

--QQ平台专用处理 END


-- BI HTTP BEGIN
-- 发送http BI请求，使用线程3，排队执行
local _BIRequestList = {}
local _BICurrentPost = nil
--检查还有没有没执行的BIPost
function _checkBIPost()
	if #_BIRequestList == 0 then
		return
	end
	local req = table.remove(_BIRequestList)
	HttpRequest:sendBI(req.url,req.param,req.callback)
end

function _queueBIPost(obj)
	-- print('Http sendBI [queue] POST:url:',  obj.url)
	-- print('Http sendBI [queue] POST:param', obj.param)
	table.insert(_BIRequestList,1,obj)
end



--执行队列
local function _doBIQueue(err,message)
	local obj = _BICurrentPost
	if obj==nil then
		return
	end
	_BICurrentPost = nil
	-- print('Http sendBI [response url]',   obj.url)
	-- print('Http sendBI [response param]', obj.param)
	if err == 0 then
		--print('Http sendBI [response ok]', err, message)
		obj.callback(err,message)
		--如果成功发送了再找下一条
		_checkBIPost()
	else
		--print('Http sendBI [response failed]', err, message)
		--发送失败了，直接重发！
		HttpRequest:sendBI(obj.url,obj.param,obj.callback)
	end
end
	
--发送BI专用
function HttpRequest:sendBI(_url,_param,_callback)
	--准备数据
	local postObj = { url = _url, param = _param, callback = _callback }

	local e = RequestPostHttpAsync(_url, _param, _doBIQueue, ThreadBI)
	if e == 0 then
		--将请求放在队列最后
		_queueBIPost(postObj)
		return false
	else
		--print('Http sendBI [send] POST:url:',  _url)
		--print('Http sendBI [send] POST:param', _param)
		_BICurrentPost = postObj
	end
	return true
end
-- BI HTTP END