PlatformDY= {}
PlatformDY.MESSAGE_TYPE	= "platform"
PlatformDY.FUNC_CHANGE_ACCOUNT = "change_account"
PlatformDY.FUNC_LOGIN		= "login"		--登录
PlatformDY.FUNC_RELOGIN	= "re_login"	--重登
PlatformDY.FUNC_PAY		= "pay"			--支付
PlatformDY.FUNC_TOAST	= "toast"		--平台返回消息
PlatformDY.FUNC_TAB		= "tab"			--切换账号
PlatformDY.FUNC_LOGIN_OUT	= "login_out"	--登出
PlatformDY.FUNC_INIT_ROLE	= "init_role"	--传送

PlatformDY.CODE_SUCCESS = 0
PlatformDY.STATE_LOGIN_SUCCESS = 0 -- 成功
PlatformDY.STATE_LOGIN_FAIL = 1	-- 失败

-- 不准许有全局参数，因为需要被reload
--
--
function PlatformDY:init()
	self.firstLogin = true
	self.loginRet = nil
	self.tokens = nil
	self.logoutable = true
	self.slashscreen = { 'platform_800_480.pd', 'hoolai_800_480.pd' }
	self.download_url =  ''
	self.home_url     = CommonConfig.home
	--http是否已经返回！
	self.payurl_waiting     = false
	self.unlockcallback = callback:new()

	self.AppId = ''

end

function PlatformDY:get_server_filter_list()
	return nil--CCAppConfig:sharedAppConfig():getStringForKey('develop_serverFilter')
end

-- @param:是否进入或者离开游戏场景,true：进入,false:离开
function PlatformDY:onEnterGameScene(isEnter)
	if isEnter == true then

	else

	end
end

-- 入口,当Login界面Show
-- 显示登陆界面
function PlatformDY:onEnterLoginState(state)
	RoleModel:show_login_win( GameStateManager:get_game_root() )
	-- MUtils:toast("百度 登陆请求授权",2048,3) -- [69]="请求登录授权"
	if self.firstLogin then
		local c = callback:new()
			c:start(0.1,function()
				PlatformDY:doLogin()
			end)
	end
	self.firstLogin = false
end

-- 按下登录按钮的回调，应显示平台登陆页
function PlatformDY:doLogin()
	--跳转到无平台登陆页，有平台应该调用SDK
	-- RoleModel:change_login_page( "login" )
	MUtils:toast("PlatformDY:doLogin", 2048, 3)

	-- RoleModel:change_login_page( "login" )
	local json_table_temp = {}
	json_table_temp[ "message_type" ]	= PlatformDY.MESSAGE_TYPE	--消息类型，必传字段
	json_table_temp[ "function_type" ] = PlatformDY.FUNC_LOGIN
	require 'json/json'
	local jcode = json.encode( json_table_temp )
	send_message_to_java( jcode )
end

--获取平台登录url
function PlatformDY:get_login_url()
	--UpdateManager.login_url = nil
	local platform_id =  Target_Platform
	local _url = CCAppConfig:sharedAppConfig():getStringForKey('server_list')
	if _url == '' then
		_url = UpdateManager.server_url .. 'noplatform/'
	end
	return _url
end

--获取服务器列表url
function PlatformDY:get_servlist_url()
	return GameUrl_global:getServerIP() or ""
end

function PlatformDY:show_logout(callbackfunc)
	callbackfunc()
end


--从选服界面登出
function PlatformDY:logoutFromSelectServer(callbackfunc, reason)
	print('PlatformNoPlatform:logoutFromSelectServer',err, data)
	if callbackfunc then
		callbackfunc()
	end

	-- if reason then
	-- 	MUtils:toast(reason,2048)
	-- end
	--跳转到无平台登陆页，有平台应该调用SDK
	--并且隐藏窗口
	RoleModel:change_login_page( "loginSDK" )
	local c = callback:new()
	c:start(0.8,function()
		PlatformDY:logout()
	end)
end

-- -- 获取该平台，发送请求服务器列表接口的http参数
-- function PlatformDY:get_servlist_param()
-- 	local account, pwd = self:getLoginRet()
-- 	if account then
-- 		return string.format('account=%s&pw=%s',account,md5(pwd));
-- 	else
-- 		return ''
-- 	end
-- end

-- login 的参数
function PlatformDY:get_login_param( account, dbip, server_id )
    return 'account='..account..'&ip='..dbip..'&serverid='..server_id .. "&channel=" .. CCAppConfig:sharedAppConfig():getStringForKey('lh_channel')
end

function PlatformDY:get_login_param_json( )
    return "uid=" .. self.uid
end

-- 获取登录服务器ip
function PlatformDY:getServerIP()
	--UpdateManager.servlist_url = nil
	local platform_id =  Target_Platform
	local _url = CCAppConfig:sharedAppConfig():getStringForKey('server_list')
	print("PlatformDY:getServerIP:",_url)
	if _url == '' then
		_url = UpdateManager.servlist_url
		print("UpdateManager.servlist_url",servlist_url)
	end
	return _url
end

-- 获取平台支付地址
function PlatformDY:getPlatformPayUrl()
	return ""
end

--登出
function PlatformDY:logout(callbackfunc)
	-- print("run loginout11111")
	if callbackfunc then
		callbackfunc()
	end
	-- print("run loginout22222")
	local json_table_temp = {}
	json_table_temp[ "message_type" ]	= PlatformDY.MESSAGE_TYPE	--消息类型，必传字段
	json_table_temp[ "function_type" ] = PlatformDY.FUNC_LOGIN_OUT
	require 'json/json'
	local jcode = json.encode( json_table_temp )
	send_message_to_java( jcode )	
	MUtils:toast(LangCommonString[25],2048) -- [25]='返回到登录'
end

function PlatformDY:lost_connect( callbackfunc )
	if callbackfunc then
		callbackfunc()
	end
	MUtils:toast(LangCommonString[25],2048) -- [25]='返回到登录'
end


--无法登入游戏服务器
function PlatformDY:failedTologinGameServer(callbackfunc)

	if callbackfunc then
		callbackfunc()
	end

	RoleModel:destroy_login_without_update_win()
end


-- 上报接口
function PlatformDY:notifyZone( ... )
	-- 子类重写
end

--最初的启动
function PlatformDY:onStartPackage(cbfunc)
	cbfunc()
end

--开始更新
function PlatformDY:onStartUpdate(cbfunc)
	cbfunc()
end

--更新完毕等待进入游戏
function PlatformDY:onStartGame(cbfunc)
	cbfunc()
end

function PlatformDY:doNeedLogin()
end

-- 按下登录按钮的回调
function PlatformDY:doNeedLogin_delay()
end

function PlatformDY:OnAsyncMessage( id, msg )
	ZXLog('PlatformNoPlatform:OnAsyncMessage', id, msg)
	require 'json/json'
	local jtable = {}
	local s,e = pcall(function() jtable = json.decode(msg) end)
	print("s,e",s,e)
	if s then
		local message_type = jtable[ "message_type" ] or ""
		print("message_type",message_type)
		if message_type == self.MESSAGE_TYPE then
			local func_type = jtable[ "func_type" ] or ""
			local error_code = jtable[ "error_code" ] or self.CODE_FAIL
			print("func_type",func_type)
			print('error_code',error_code, self.CODE_SUCCESS)
			if func_type == self.FUNC_LOGIN then -- 登录、切换成功的处理
				if tonumber(error_code) == tonumber(self.CODE_SUCCESS) then
					MUtils:toast("登陆成功", 2048, 2.5)
					self.uid = jtable["UserID"]
					-- self.access_token = jtable[ "access_token" ] or ""
					-- self.expires_in = jtable[ "expires_in" ] or ""
					RoleModel:request_server_list_platform()
				else
					MUtils:toast("登陆失败", 2048, 2.5)				
				end
			end	
		end
	end
	return false;
end

function PlatformDY:get_cache_url()
	return UpdateManager.cache_url .. "/download" .. CCAppConfig:sharedAppConfig():getStringForKey('target_platform_folder')
end

function PlatformDY:get_package_url()
	return UpdateManager.package_url .. "/update" .. CCAppConfig:sharedAppConfig():getStringForKey('target_platform_folder')
end

--平台主动行为封装 Begin
--支付
function PlatformDY:pay(...)
	local payWin = UIManager:show_window("pay_win");
	payWin:setCallback(function(which)
			self:payUICallback({ item_id = which, window = 'pay_win' })
		end)
end

function PlatformDY:getDownloadFrom()
	return 'noplatform'
end

function PlatformDY:showPlatformUI(bFlag)
end


--支付
--          /**
--           * 支付接口参数说明
--           * !!! 注意必传参数,不能为空，推荐所有参数都传值 !!!
--           * 
--           * @param doid CP订单ID (*必传)
--           * @param dpt CP商品名 (*必传)
--           * @param dmoney CP金额(定额) (*必传)	--单位为分
--           * @param dradio CP兑换比率(1元兑换率默认1:10)
--           */
function PlatformDY:payUICallback( info )

	local _money_rate = 0.1

    local _item_id  = info.item_id
    local player = EntityManager:get_player_avatar()
	local roleName   = player.name
	local _userId   = player.id
	local _userName = RoleModel:get_login_info().user_name
	local _serverId = RoleModel:get_login_info().server_id
	local _orderId = "tjxs_".. _userName .. "_" .. _serverId .. "_" ..os.time()

	MUtils:toast("充值中", 2048, 3)

	local json_table_temp = {}
	json_table_temp[ "message_type" ]	= PlatformDY.MESSAGE_TYPE	--消息类型，必传字段
	json_table_temp[ "function_type" ] = PlatformDY.FUNC_PAY
	json_table_temp[ "outorderid" ] = _orderId
	json_table_temp[ "itemName" ] = string.format("%d元宝",_item_id)
	json_table_temp[ "money" ] = _item_id * _money_rate
	json_table_temp[ "ResultUrl" ] = "http://entry.tjxs.m.shediao.com/lion/dyoo/SD_dianyou_tjsx/paycallback"
	json_table_temp[ "extData" ] = ""
	require 'json/json'
	local jcode = json.encode( json_table_temp )
	send_message_to_java( jcode )
end


function PlatformDY:getLoginRet()
	return self.uid, self.token
end


function PlatformDY:getPayInfo()
	require "../data/chong_zhi_config"
	return ChongZhiConf.dianyou
	-- local temp_info = ChongZhiConfig:get_chong_zhi_info()
	-- return temp_info[wdj]
end
--------------------------------------
--unused function
--HJH 2014-11-27
--写这个架构的人没想清楚，怎么会有下面这些函数
function PlatformDY:share(info)

end

function PlatformDY:setLoginRet(uid,psw)
	
end

-- 获取该平台，发送请求服务器列表接口的http参数
function PlatformDY:get_servlist_param(  )
	return ""
end

-- 打开用户中心
function PlatformDY:open_user_center()
	
end

function PlatformDY:onLoginResult( err, data )
	-- body
end
