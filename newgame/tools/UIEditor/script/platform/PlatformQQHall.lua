PlatformQQHall = {}

-- 不准许有全局参数，因为需要被reload
--
--

local STRING_NEED_REBOOT = { LangCommonString[19],  -- [19]='#c00ff00无法获取QQ大厅验证消息！'
							 LangCommonString[20] } -- [20]='#cffff00点继续返回QQ大厅'

local STRING_QUIT     = 	LangCommonString[21] -- [21]='继续'

local platformid = WG_ePlatform.ePlatform_QQ
function PlatformQQHall:init()

	self.firstLogin = true
	self.loginRet = nil
	self.tokens = nil
	self.logoutable = false 
	self.slashscreen = { 'platform_800_480.pd', 'hoolai_800_480.pd' }
	self.logout_content = { LangCommonString[22], LangCommonString[14],LangCommonString[23] }  -- [22]='#cfff5f0您需要返回到QQ大厅吗？' -- [14]='#cfff5f0点击确定' -- [23]='#cffff00返回到QQ大厅'
	self.disconnect_msg = { LangCommonString[11], LangCommonString[24],LangCommonString[23] }  -- [11]='#cffff00已经和服务器断开连接' -- [24]='#cfff5f0点击退出' -- [23]='#cffff00返回到QQ大厅'
	self.home_url     = CommonConfig.home
	self.download_url = CommonConfig.home
	--http是否已经返回！
	self.payurl_waiting     = false
	self.unlockcallback = callback:new()

	local _ZXGameQuit = ZXGameQuit
	ZXGameQuit = function()
		_ZXGameQuit()
	end
	self.AppId = ''
	self.InstallChannel = WG_GetChannelId()
	local info = WG_GetSDKConfig()
	local ret = json2table(info)
	
	if ret  then
		self.AppId     		= ret['AppId']
	end
	print("PlatformQQHall:init")
	print('PlatformQQHall.AppId', self.AppId)
	print('PlatformQQHall.InstallChannel', self.InstallChannel)

end

function PlatformQQHall:clearLoginRet()
	print('clearLoginRet')
	self.loginRet = nil
	self.tokens = nil
end

-- @param:是否进入或者离开游戏场景,true：进入,false:离开
function PlatformQQHall:onEnterGameScene(isEnter)
	
end

--登出
function PlatformQQHall:logout(callbackfunc)
	if callbackfunc then
		callbackfunc()
		UpdateWin:show()
	end
	MUtils:toast(LangCommonString[25],2048) -- [25]='返回到登录'
end

function PlatformQQHall:lost_connect( callbackfunc )
	if callbackfunc then
		callbackfunc()
		UpdateWin:show()
	end
	MUtils:toast(LangCommonString[25],2048) -- [25]='返回到登录'
end

function PlatformQQHall:doNeedLogin()
	MUtils:toast(LangCommonString[26],2048,3) -- [26]="请求异登录授权"
	--if self.firstLogin == true then
	local c = callback:new()
		c:start(0.1,function()
			self:doNeedLogin_delay()
		end)
end

-- 按下登录按钮的回调
function PlatformQQHall:doNeedLogin_delay()
	print('PlatformQQHall:doNeedLogin_delay InstallChannel',WG_GetChannelId())
	WG_Login(platformid)
end

-- 按下登录按钮的回调
function PlatformQQHall:doLogin()
	print('PlatformQQHall:doLogin', self.loginRet)
	--WG_Login(platformid)
	if self.loginRet then
		RoleModel:request_server_list_platform()
	else
		local _root = ZXLogicScene:sharedScene():getUINode()
		PopupNotify( _root,
					 4096, STRING_NEED_REBOOT,
					 STRING_QUIT,nil,
					 POPUP_OK,
					 function() ZXGameQuit() end)
		if self.wakeError then
			MUtils:toast(self.wakeError,2048,5)
		end
	end
end


--从选服界面登出
function PlatformQQHall:logoutFromSelectServer(callbackfunc, reason)
	if callbackfunc then
		callbackfunc()
	end

	if reason then
		MUtils:toast(reason,2048)
	end

	PlatformUILoginWin:show(true)
	PlatformUILoginWin:showLoginBtn(true)
	RoleModel:destroy_login_without_update_win()
end

--无法登入游戏服务器
function PlatformQQHall:failedTologinGameServer(callbackfunc)

	if callbackfunc then
		callbackfunc()
	end

	PlatformUILoginWin:show(true)
	PlatformUILoginWin:showLoginBtn(true)
	RoleModel:destroy_login_without_update_win()
end

function PlatformQQHall:getLoginRet()
	if self.loginRet then
		local access_token = ""
		local open_id = self.loginRet['open_id']
		local qqAccess = self.tokens[WG_eTokenType.eToken_QQ_Access]
		local qqPay = self.tokens[WG_eTokenType.eToken_QQ_Pay]

		local pf = self.loginRet['pf']
		local pf_key = self.loginRet['pf_key']
		local pay_token = qqPay['value']

		if qqAccess then 
		    access_token = qqAccess['value']
		    return open_id, access_token, pf, pf_key, pay_token
		end
	else
		return nil
	end
end

-- 获取该平台，发送请求服务器列表接口的http参数
function PlatformQQHall:get_servlist_param(  )
	local open_id, token = self:getLoginRet()
	if open_id then
		return string.format('openid=%s&token=%s',open_id,token);
	else
		return ''
	end
end

-- login 的参数
function PlatformQQHall:get_login_param( account, dbip, server_id )
    local open_id, token, pf, pf_key = self:getLoginRet()
    if open_id then
	    --[[local param = 'account='..account..'&ip='..dbip..
	    			  '&serverid='..server_id..
	    			  '&openid='..open_id..'&token='..token
	    			  ]]--
    	return string.format('account=%s&ip=%s&serverid=%s&openid=%s&token=%s&pf=%s&pf_key=%s',
    						  account,dbip,server_id,open_id,token,pf,pf_key);
    else
    	return ''
    end
end

function PlatformQQHall:get_login_param_json(  )
    return ''
end


-- 获取登录服务器ip
function PlatformQQHall:getServerIP()
	return ""
end

-- 上报接口
function PlatformQQHall:notifyZone( ... )
	-- 子类重写
end



--最初的启动
function PlatformQQHall:onStartPackage(cbfunc)
	cbfunc()
end

--开始更新
function PlatformQQHall:onStartUpdate(cbfunc)
	cbfunc()
end

--更新完毕等待进入游戏
function PlatformQQHall:onStartGame(cbfunc)
	--reload("platform/PlatformQQHall")
	--PlatformInterface = PlatformQQHall
	--PlatformInterface:init()
	cbfunc()
end

-- 入口,当Login界面Show
function PlatformQQHall:onEnterLoginState()
	require('UI/platform/PlatformUILoginWin')

	self:clearLoginRet()
	PlatformUILoginWin:show(true)
	PlatformUILoginWin:showLoginBtn(false)

	--qq大厅不需要调用login，自动可以登录
	if not postQQWakeMessages() then
		MUtils:toast(LangCommonString[27],2048,3) -- [27]="无法获取授权信息"
		PlatformQQHall:doLogin()
	end
end

function PlatformQQHall:OnAsyncMessage( id, msg )

	print('PlatformQQHall:OnAsyncMessage', id, msg)
	--登录
	if id == AsyncMessageID.eMsgMSDKOnLoginNotify then
		--清掉上次的token
		self:clearLoginRet()
        local ret = json2table(msg)
        --成功
        local flag = ret['flag']

        print('eMsgMSDKOnLoginNotify flag:',flag, type(flag))
        -- 从wakeup过来的flag == 1
        if flag == WG_eFlag.eFlag_Succ or flag == WG_eFlag.eFlag_OK then

        	self.loginRet = ret
        	self.tokens = {}
        	MUtils:toast(LangCommonString[28],2048,3,true) -- [28]="登录成功"
        	local open_id = ret['open_id']
        	local token   = ret['token']
        	for i, v in ipairs(token) do
        		if v['type'] then
        			self.tokens[v['type']] = v
        		end
        	end
        	self:doLogin()

		elseif flag == WG_eFlag.eFlag_Need_Login then
        	--MUtils:toast("需游戏登录平台",2048,3)
        	self:doNeedLogin()

        elseif flag == WG_eFlag.eFlag_QQ_NoAcessToken then
        	MUtils:toast(LangCommonString[29],2048,3) -- [29]="手机QQ登录失败，请重试"
        	self:doLogin()

        elseif flag == WG_eFlag.eFlag_QQ_UserCancel then
       		MUtils:toast(LangCommonString[30],2048,3)        	 -- [30]="取消登录QQ操作"
       		self:doLogin()

        elseif flag == WG_eFlag.eFlag_QQ_LoginFail then
        	MUtils:toast(LangCommonString[31],2048,3) -- [31]="登录手机QQ失败，请重试"
        	self:doLogin()

        elseif flag == WG_eFlag.eFlag_QQ_NetworkErr then
        	MUtils:toast(LangCommonString[32],2048,3) -- [32]="登录手机QQ失败，请检查网络设置"
        	self:doLogin()

        elseif flag == WG_eFlag.eFlag_QQ_NotInstall then
        	MUtils:toast(LangCommonString[33],2048,3) -- [33]="没有找到手机QQ"
        	self:doLogin()

        elseif flag == WG_eFlag.eFlag_QQ_NotSupportApi then	
        	MUtils:toast(LangCommonString[34],2048,3) -- [34]="手机QQ版本过低，请更新手机QQ"
        	self:doLogin()

        elseif flag == WG_eFlag.eFlag_Error then
			MUtils:toast(LangCommonString[35],2048,3) -- [35]="登录遇到问题，请点击登录按钮重新登录"
			self:doLogin()

		elseif flag == WG_eFlag.eFlag_QQ_AccessTokenExpired then
        	MUtils:toast(LangCommonString[36],2048,3) -- [36]="登录授权失效, 需要重新登录"
        	self:doLogin()	
        else
			MUtils:toast(LangCommonString[37] .. tostring(flag) .. "]",2048,5) -- [37]="登录失败["
			self:doLogin()
		end

		return true;

	--交互
	elseif id == AsyncMessageID.eMsgMSDKOnShareNotify then
		local ret = json2table(msg)
		local flag = ret["flag"]
		--ret["platform"]
		--ret["flag"] 
		--ret["desc"]
		if flag == WG_eFlag.eFlag_Succ then
			print('eMsgMSDKOnShareNotify', ret['platform'])
			MUtils:toast(LangCommonString[38],2048,3) -- [38]="成功分享游戏"

		elseif flag == WG_eFlag.eFlag_QQ_UserCancel then
			MUtils:toast(LangCommonString[39],2048,3) -- [39]="取消分享游戏@QQ"

		elseif flag == WG_eFlag.eFlag_QQ_NetworkErr then
			MUtils:toast(LangCommonString[40],2048,3) -- [40]="由于网络原因，无法分享游戏@QQ"

		elseif flag == WG_eFlag.eFlag_WX_UserCancel then
			MUtils:toast(LangCommonString[41],2048,3) -- [41]="取消分享游戏@微信"

		elseif flag == WG_eFlag.eFlag_WX_NotInstall then
			MUtils:toast(LangCommonString[42],2048,3) -- [42]="微信未安装"

		elseif flag == WG_eFlag.eFlag_WX_NotSupportApi then
			MUtils:toast(LangCommonString[43],2048,3) -- [43]="当前微信版本不支持分享"
		
		else
			MUtils:toast(LangCommonString[44] .. tostring(flag) .. "]",2048,5) -- [44]="无法分享游戏["
		end

		return true;

	--拉起
	elseif id == AsyncMessageID.eMsgMSDKOnWakeupNotify then
		require('UIResourcePath')
		require('utils/MUtils')
		require('UI/platform/PlatformUILoginWin')
		local ret = json2table(msg)
		local flag = ret["flag"]
		--ret["platform"]
		--ret["open_id"]
		--ret["media_tag_name"]
		--ret["desc"]
		if flag == WG_eFlag.eFlag_Succ then
			MUtils:toast(LangCommonString[45],2048,3) -- [45]="游戏拉起成功"
			--游戏在接收到OnWakeupNotify之后可以根据接收到的WakeupRet的platform字段和来判断是否来自大厅拉起,
			--确认是大厅拉起以后可以调用WGGetLoginRecord接口读取存在本地的登录票据, 拿到这些票据以后即可完成登录
			
			if tonumber(ret["platform"]) == WG_ePlatform.ePlatform_QQHall then
				local jcode = WG_GetLoginRecord()
				self:OnAsyncMessage(AsyncMessageID.eMsgMSDKOnLoginNotify,jcode)
			else
				self.wakeError = LangCommonString[46] .. tostring(ret["platform"]) .. ']' -- [46]="平台错误["
				self:doLogin()
			end
--游戏大厅拉起时候, SDK会预先将登录需要的票据换到SDK, 
--并且保存到本地(如果之前有票据直接覆盖), 游戏接收到此回调以后应该检查是否异账号, 如果是异账号, 
--则需要重新调用WGLogin()接口进行登录, 因为此时已经有票据, 这里相当于再次走一遍自动登录流程.
		elseif flag == WG_eFlag.eFlag_Need_Login then
			self:doNeedLogin()
		else
			self.wakeError = LangCommonString[47] .. tostring(flag) .. ']' -- [47]="游戏拉起失败["
			self:doLogin()
		end
		return true;

	--调用支付，但是未登录
	elseif id == AsyncMessageID.eMsgMSDKPayNeedLogin then
		--local ret = json2table(msg)
		local ret = tonumber(msg)
		if ret == WG_PayCallbackRet.nPayNeedLoginError then
			MUtils:toast(LangCommonString[48],2048,5) -- [48]="QQ未登录，请登录QQ后再进行支付"
		
		elseif ret == WG_PayCallbackRet.nGetLoginRetError then
			MUtils:toast(LangCommonString[49],2048,5) -- [49]="无法获取登录信息，请登录QQ后再进行支付"

		elseif ret == WG_PayCallbackRet.nEncodeError then
			MUtils:toast(LangCommonString[50],2048,5) -- [50]="传入支付信息有误[2]，请联系客服"
		
		elseif ret == WG_PayCallbackRet.nJsonError then
			MUtils:toast(LangCommonString[51],2048,5) -- [51]="传入支付信息有误[3]，请联系客服"
		end
		
		return true;

--支付回调
	elseif id == AsyncMessageID.eMsgMSDKPayCallback then
		local ret = json2table(msg)

		if ret == nil then
			MUtils:toast(LangCommonString[52],2048,5) -- [52]="支付失败，JSon错误"
			return true
		end

		local resultCode 	= ret['resultCode'] or ''
		local payChannel 	= ret['payChannel'] or ''
		local payState 	 	= ret['payState'] or ''
		local providerState = ret['providerState'] or ''
		local saveNum 		= ret['saveNum'] or ''
		local resultMsg 	= ret['resultMsg'] or ''
		local extendInfo 	= ret['extendInfo'] or ''

		resultCode = tonumber(resultCode)
		--支付流程成功
		if resultCode == WG_PayResult.PAYRESULT_SUCC then
			--然后检查支付状态
			payState = tonumber(payState)
			--//支付成功
			if payState == WG_PayState.PAYSTATE_PAYSUCC then
				--获取支付状态
				providerState = tonumber(providerState)
				if providerState == WG_ProvideState.PAYPROVIDESTATE_SUCC then
					MUtils:toast(string.format(LangCommonString[53],saveNum),2048,3) -- [53]="成功购买[%d]个元宝包！"
				else
					MUtils:toast(string.format(LangCommonString[54],saveNum),2048,3) -- [54]="成功提交订单，购买[%d]个元宝包，请稍后！"
				end

			elseif payState == WG_PayState.PAYSTATE_PAYUNKOWN then
				MUtils:toast(LangCommonString[55],2048,5) -- [55]="支付状态未知"
			
			--//用户取消
			elseif payState == WG_PayState.PAYSTATE_PAYCANCEL then
				MUtils:toast(LangCommonString[56],2048,5) -- [56]="中断支付"

			--//支付出错
			elseif payState == WG_PayState.PAYSTATE_PAYERROR then
				MUtils:toast(LangCommonString[57] .. resultMsg .. ']',2048,5) -- [57]='中断失败['
			end

		--支付流程失败
		elseif resultCode == WG_PayResult.PAYRESULT_ERROR then
			MUtils:toast(LangCommonString[58] .. resultMsg .. LangCommonString[59],2048,5) -- [58]="支付流程失败[" -- [59]="]请重试"
	    
	    --用户取消
	    elseif resultCode == WG_PayResult.PAYRESULT_CANCEL then
	    	MUtils:toast(LangCommonString[60],2048,3) -- [60]="取消支付"
	    end

		return true;
	end

	return false;
end


--平台主动行为封装 Begin

--支付
function PlatformQQHall:pay( info )
	local payWin = UIManager:show_window("pay_win");
	payWin:setCallback(function(which)
			self:payUICallback({ item_id = which, window = 'pay_win' })
		end)
end

function PlatformQQHall:WG_GetLoginRecord()
	
end

-----------------------------------------------
--
--       分享类
--
-----------------------------------------------

-- 分享App消息到微信, 
-- 此类消息只可以分享到回话, 不能分享到朋友圈, 
-- 好友在会话界面点击分享的消息可以直接拉起游戏, 需要有SD卡
-- @param scene 标识分享到朋友圈还是会话, 可能值SendMessageToWX.Req.WXSceneSession 和SendMessageToWX.Req.WXSceneTimeline
-- @param title 分享的标题
-- @param desc 	分享的描述
-- @param url 	此处建议填入游戏页面, 或者官网url, 没有安装游戏时候可能会有用, 现阶段微信不支持拉起此url.
-- @param mediaTagName 使用者自己设定一个值, 此值会传到微信供统计用, 在分享返回时也会带回此值, 可以用于区分分享来源.
-- @param thumbImgData 分享时展示的缩略图, 数据大小不应该超过32k
-- @param thumbImgDataLen 分享时展示的缩略图的长度, 需要和thumbImgData匹配, 不能为空
function PlatformQQHall:send_to_weixin( scene, title, desc, url, mediaTagName, thumbImgData, thumbImgDataLen )
	WG_SendToWeixin(scene, title, desc, url, mediaTagName, thumbImgData, thumbImgDataLen)
end

-- 分享图片消息到微信, 此类消息只可以分享到回话和到朋友圈. 需要有SD卡
-- @param scene 		标识分享到朋友圈还是会话, 可能值SendMessageToWX.Req.WXSceneSession 和SendMessageToWX.Req.WXSceneTimeline
-- @param mediaTagName 	使用者自己设定一个值, 此值会传到微信供统计用, 在分享返回时也会带回此值, 可以用于区分分享来源.
-- @param imgData 		分享的图片数据, 图片大小不应该超过5M
-- @param imgDataLen 	分享的图片数据长度
function PlatformQQHall:send_to_weixin_with_photo( scene, mediaTagName, imgData, imgDataLen )
	WG_SendToWeixinWithPhoto(scene, mediaTagName, imgData, imgDataLen)
end

-- 分享消息到QQ, 在手Q上接受到消息点击能拉起传入的targetUrl对应的页面, 不能直接拉起游戏. 需要有SD卡
-- @param title 	分享的标题
-- @param desc 		分享的描述
-- @param targetUrl 目标URL, 好友点击消息拉起此页面
-- @param imgUrl 	分享展示的图片的URL
function PlatformQQHall:send_qq( title, desc, targetUrl, imgUrl)

	print('PlatformYYB:send_qq title',title)
	print('PlatformYYB:send_qq desc',desc)
	print('PlatformYYB:send_qq targetUrl',targetUrl)
	print('PlatformYYB:send_qq imgUrl',imgUrl)
	WG_SendToQQ(2, title, desc, targetUrl, imgUrl, string.len(imgUrl))
end

--分享接口, info为table，必须有key
--info = {
--    ['title']
--    ['desc']
--    ['targetUrl']
--	  ['imgUrl']	
--}
function PlatformQQHall:share(info)
	local ret = GameUrl_global:getPlatformConfig()
	local share_url = ret.share_url
	local img_url = info['imgUrl'] --img_url
	if img_url == '' then
		img_url = ret.img_url
	end
	self:send_qq(info['title'],info['desc'],share_url,img_url)
end


function PlatformQQHall:payUICallback( info )
	
	if self.payurl_waiting == true then
		MUtils:toast(LangCommonString[61],2048,3) -- [61]="正在等待支付服务器返回，请稍后重试"
		return
	end
	
	--开启购买道具界面，引导用户完成购买道具，
	--唤起道具直购界面前，应用需要调用数平侧计费后台api(mpay/buy_goods_m,参加道具直购后台协议)下订单，
	--将订单（tokenUrl参数）传递给sdk。sdk完成渠道的选择和支付。
	local function httpPayResponse( error_code, message )
		-- body
		--{"ret" : 0,"url_params" : "/v1/m01/11157/mobile_goods_info?token_id=706E0C25FD24B948DD129CBC202129B922463 ","token_id" : "706E0C25FD24B948DD129CBC202129B922463"}

		if error_code == 0 then
			print('pay message', message)

			local httpResult = json2table(message)
			--检查返回值
			if httpResult then
				local ret = httpResult['ret']
				if ret == 0 then 
					local url_params = httpResult['url_params']
					
					local login_info = RoleModel:get_login_info()

					local json_table_temp = {}
					-- 支付类型
					json_table_temp["payType"]  = "item"
					json_table_temp["tokenUrl"] = url_params
					--TODO
					json_table_temp["zoneId"] 	= tostring(login_info.server_id)
					json_table_temp["item_id"]  = tonumber(info.item_id)
					--local orderId = "mt_wanpu_" .. login_info.user_name .. "_" .. time_stamp .. "_"  .. login_info.server_id
					local jcode = json.encode( json_table_temp )
					print('WG_Pay param:>>> ',jcode)
					MUtils:toast(LangCommonString[62],2048,3) -- [62]="连接支付服务器成功"

					WG_Pay(jcode);
					self.buying_item = info
				else
					MUtils:toast(LangCommonString[63] .. tostring(ret) .. "]",2048,5) -- [63]="支付服务器返回失败代码["
				end
			else
				MUtils:toast(LangCommonString[64],2048,5) -- [64]="解析支付服务器返回失败[json]"
				ZXLog('http pay json error',json2table_lasterror())
			end

		else
			MUtils:toast(LangCommonString[65] .. tostring(error_code) .. LangCommonString[66],2048,5) -- [65]="连接支付服务器失败:错误码[" -- [66]="],请稍后重试"
		end
		self.payurl_waiting = false
		local payWin = UIManager:find_window(info.window)
		if payWin then
			payWin:setDisable(false)
		end
	end

	MUtils:toast(LangCommonString[67],2048,3) -- [67]="正在为您连接支付服务器"
	
	self.payurl_waiting = true
	local payWin = UIManager:find_window(info.window)
	if payWin then
		payWin:setDisable(true)
	end

	self.unlockcallback:cancel()
	self.unlockcallback:start(5,function() 
									local payWin = UIManager:find_window(info.window)
									if payWin then
										payWin:setDisable(false)
									end
									self.payurl_waiting = false
								end)

	--获取需要的支付内容，先去请求支付下单
	local login_info = RoleModel:get_login_info()
	local pay_url 	 = GameUrl_global:getServerIP() .. 'buy_goods.jsp'
	local open_id, access_token, pf, pf_key, pay_token = self:getLoginRet()
	--TODO
	local serverid   =  login_info.server_id
	local pay_param  = 	  'openid=' .. open_id
						..'&serverid=' .. serverid
						..'&type='.. info.item_id
						..'&openkey=' .. access_token
						..'&pf=' .. pf
						..'&pf_key=' .. pf_key
						..'&pay_token='.. pay_token

	if not HttpRequest.sendPay(pay_url, pay_param, httpPayResponse) then
		MUtils:toast(LangCommonString[68],2048,3) -- [68]="连接支付服务器错误，请稍后重试"
		self.payurl_waiting = false
		local payWin = UIManager:find_window(info.window)
		if payWin then
			payWin:setDisable(false)
		end
	end
end

function PlatformQQHall:Feedback(game,info)
	WG_Feedback(game,info)
end

function PlatformQQHall:getDownloadFrom()
	return 'hy_qq_' .. WG_GetChannelId()
end

function PlatformQQHall:showPlatformUI(bFlag)
	PlatformUILoginWin:show(bFlag)
end