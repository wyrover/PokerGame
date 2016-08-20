-- PlatformND.lua
-- created by mwy @2014-7-5
-- 91助手平台接入

PlatformND = {}

function PlatformND:init()
	self.logoutable = true
end

-- 进入平台社区
function PlatformND:enter_platform(  )
    -- IOSDispatcher:enter_tbPlatform( )
end 

function PlatformND:show_logout()
	IOSDispatcher:sdk91_logout()
end

-- @param:是否进入或者离开游戏场景,true：进入,false:离开
function PlatformND:onEnterGameScene(isEnter)
	IOSDispatcher:sdk91_set_tool_status(isEnter)
end

-- 入口,当Login界面Show
function PlatformND:onEnterLoginState(isFirlstLoad)
	-- ZXLog('PlatformND:onEnterLoginState')
	RoleModel:show_login_win( GameStateManager:get_game_root() )
	--require('UI/platform/PlatformUILoginWin')
	--首先清除上一次登录数据
	-- MUtils:toast(LangCommonString[69],2048,3) -- [69]="请求登录授权"
	if isFirlstLoad then
		local c = callback:new()
			c:start(0.1,function()
				PlatformND:doLogin()
			end)
	end	
	self.firstLogin = false
	
end

function PlatformND:setLoginRet(uid,psw)
	self.uid=uid
	self.pwd=psw
end
function PlatformND:getLoginRet()
	return self.uid, self.pwd, self.password_changed
end

function PlatformND:clearLoginRet()
	self.user_name = nil
	self.sessionId = nil
	self.nikeName = nil
end

--登出
function PlatformND:logout(callbackfunc)
	if callbackfunc then
		callbackfunc()
		UpdateWin:show()
	end
	-- MUtils:toast(LangCommonString[25],2048) -- [25]='返回到登录'

	-- ZXLog('------IOSDispatcher:sdk91_logout(  )------')

	-- MiscCC:send_quit_server()
	-- GameStateManager:set_state("login")
	-- -- 取消
	-- IOSDispatcher:IAP_remove_observer( )
	-- --注销登录
	-- PlatformInterface:show_logout()
end

function PlatformND:lost_connect( callbackfunc )
	if callbackfunc then
		callbackfunc()
		UpdateWin:show()
	end
	-- MUtils:toast(LangCommonString[25],2048) -- [25]='返回到登录'
end



-- 按下登录按钮的回调
function PlatformND:doLogin()
	-- ZXLog('PlatformYYB:doLogin InstallChannel',WG_GetChannelId())
	-- WG_Login(platformid)
	-- ZXLog('------PlatformND:doLogin()---------')
	-- PlatformUILoginWin:showLoginBtn(true)

	IOSDispatcher:sdk91_login()
end


--从选服界面登出
function PlatformND:logoutFromSelectServer(callbackfunc, reason)
	if callbackfunc then
		callbackfunc()
	end

	if reason then
		MUtils:toast(reason,2048)
	end
	--跳转到无平台登陆页，有平台应该调用SDK
	--并且隐藏窗口
	RoleModel:change_login_page( "loginSDK" )
end

--获取平台登录url
function PlatformND:get_login_url()
	return GameUrl_global:getServerIP() or ""
end
-- login 的参数
function PlatformND:get_login_param( account, dbip, server_id )
	return 'account='..account..'&ip='..dbip..'&serverid='..server_id .. "&channel=" .. CCAppConfig:sharedAppConfig():getStringForKey('lh_channel')
end

function PlatformND:get_login_param_json( user_name, password )
    return 'account=' ..user_name.."&pw="..md5(password)
end

--获取平台服务器列表url
function PlatformND:get_servlist_url()
	return GameUrl_global:getServerIP()..'91/' or ""
end

-- 获取该平台，发送请求服务器列表接口的http参数
function PlatformND:get_servlist_param()
	return 'uin=' ..self.user_name.."&sessionId="..self.sessionId
end

-- 登陆成功回调
function PlatformND:onLoginResult(data)
	-- ZXLog('PlatformND:onLoginResult', data)

	local json_table = Utils:json2table(data)
	local err = json_table["error"]

	if not err then
		local uin = json_table["loginUin"]
		local sessionId = json_table["sessionId"]
		local nikeName = json_table["nickName"]

		self.user_name = uin
		self.sessionId = sessionId
		self.nikeName = nikeName

		RoleModel:request_server_list_platform()
        --RoleModel:send_name_and_pw( uin,sessionId , false)]]
	else
		return
	end
end

--无法登入游戏服务器
function PlatformND:failedTologinGameServer(callbackfunc)
	if callbackfunc then
		callbackfunc()
	end
end

-- 获取登录服务器ip
function PlatformND:getServerIP()
	return ""
end


-- 打开用户中心
function PlatformND:open_user_center()
	IOSDispatcher:enter_platform( )
end

-- 获取平台支付地址
function PlatformND:getPlatformPayUrl()
	return ""
end

-- 上报接口
function PlatformND:notifyZone( ... )
	-- 子类重写
end

--最初的启动
function PlatformND:onStartPackage(cbfunc)
	cbfunc()
end

--开始更新
function PlatformND:onStartUpdate(cbfunc)
	cbfunc()
end

--更新完毕等待进入游戏
function PlatformND:onStartGame(cbfunc)
	cbfunc()
end



function PlatformND:doNeedLogin()
	local c = callback:new()
		c:start(0.1,function()
			self:doNeedLogin_delay()
		end)
end

-- 按下登录按钮的回调
function PlatformND:doNeedLogin_delay()
	ZXLog('PlatformYYB:doNeedLogin_delay InstallChannel',WG_GetChannelId())
	-- WG_Login(platformid)
end

function PlatformND:OnAsyncMessage( id, msg )
	ZXLog('PlatformYYB:OnAsyncMessage', id, msg)
end

--获取平台登录参数
-- function PlatformND:get_platform_param(user_name,password)
-- 	local  param = 'uin=' ..user_name.."&sessionId="..password
-- 	return param
-- end

--平台主动行为封装 Begin
--支付
function PlatformND:pay(...)
	local payWin = UIManager:show_window("pay_win");
	payWin:setCallback(function(which)
			self:payUICallback({ item_id = which, window = 'pay_win' })
		end)
end
--支付
function PlatformND:payUICallback( info )
	require 'model/iOSChongZhiModel'
	--iOSChongZhiModel:purchase_product( info.item_id )

    -- local user_account = RoleModel:get_login_info().user_name

    local _item_id  = info.item_id
	local _userId   = self.user_name
	local _serverId = RoleModel:get_login_info().server_id

	local _orderId = "hy_91_".._userId.."_".._serverId.."_"..os.time();

	-- print("91果助手平台 充值", orderId, price)
	local _price =0
	if _item_id == 1 then
		_price = 6
	elseif _item_id == 2 then
		_price = 30
	elseif _item_id == 3 then
		_price = 188
	elseif _item_id == 4 then
		_price = 648
	end	

	-- tb助手平台
    local function nd_purchase_callback( error, json )
	
		local json_table = Utils:json2table( json )
		local state_code = json_table["error"];
		if state_code == 1 then
			-- 购买成功
			GlobalFunc:create_screen_notic( "#cfff000购买成功", 27, 800/2,480/2 )

		elseif state_code == 0 then
			-- 购买失败
			GlobalFunc:create_screen_notic( "#cfff000购买失败,请稍后再试", 27, 800/2,480/2 )
		end
	end

	
	IOSDispatcher:sdk91_purchase( _orderId,_price, nd_purchase_callback )


end

function PlatformND:WG_GetLoginRecord()
	
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
function PlatformND:send_to_weixin( scene, title, desc, url, mediaTagName, thumbImgData, thumbImgDataLen )
	-- WG_SendToWeixin(scene, title, desc, url, mediaTagName, thumbImgData, thumbImgDataLen)
end

-- 分享图片消息到微信, 此类消息只可以分享到回话和到朋友圈. 需要有SD卡
-- @param scene 		标识分享到朋友圈还是会话, 可能值SendMessageToWX.Req.WXSceneSession 和SendMessageToWX.Req.WXSceneTimeline
-- @param mediaTagName 	使用者自己设定一个值, 此值会传到微信供统计用, 在分享返回时也会带回此值, 可以用于区分分享来源.
-- @param imgData 		分享的图片数据, 图片大小不应该超过5M
-- @param imgDataLen 	分享的图片数据长度
function PlatformND:send_to_weixin_with_photo( scene, mediaTagName, imgData, imgDataLen )
	-- WG_SendToWeixinWithPhoto(scene, mediaTagName, imgData, imgDataLen)
end

-- 分享消息到QQ, 在手Q上接受到消息点击能拉起传入的targetUrl对应的页面, 不能直接拉起游戏. 需要有SD卡
-- @param title 	分享的标题
-- @param desc 		分享的描述
-- @param targetUrl 目标URL, 好友点击消息拉起此页面
-- @param imgUrl 	分享展示的图片的URL
function PlatformND:send_qq( title, desc, targetUrl, imgUrl)

	-- ZXLog('PlatformYYB:send_qq title',title)
	-- ZXLog('PlatformYYB:send_qq desc',desc)
	-- ZXLog('PlatformYYB:send_qq targetUrl',targetUrl)
	-- ZXLog('PlatformYYB:send_qq imgUrl',imgUrl)
	-- WG_SendToQQ(2, title, desc, targetUrl, imgUrl, string.len(imgUrl))
end

--分享接口, info为table，必须有key
--info = {
--    ['title']
--    ['desc']
--    ['targetUrl']
--	  ['imgUrl']	
--}
function PlatformND:share(info)

end



function PlatformND:Feedback(game,info)
	-- WG_Feedback(game,info)
end

function PlatformND:getDownloadFrom()
	return 'hy_91'
end

function PlatformND:showPlatformUI(bFlag)
	-- PlatformUILoginWin:show(bFlag)
end