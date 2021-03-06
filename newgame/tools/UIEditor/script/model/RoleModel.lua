-- RoleModel.lua 
-- created by lyl on 2013-2-25
-- 登录 角色

-- super_class.RoleModel()
RoleModel = {}

local _random_name = ""      -- 暂存获取的随机名称
local _login_info  = {}      -- 登录信息： user_name 服务器id等
local _create_role_info = {} -- 创建角色的信息：role_name
local _random_jod  = 0       -- 随机的情况下，选择的职业(为0时请求服务器，不为0是不请求)
local _random_camp = 0       -- 随机情况下，选择的阵营(为0时请求服务器，不为0是不请求)
local _default_role = 1      -- 默认选中的角色

local _save_name_max = 3     -- 保存账号的最大数量

local _all_server_list = {}  -- 所有服务器列表
local _server_num_per_page = 20 -- 服务器列表，每页显示的数量

local _platform = ""         -- 平台

local _move_rate = 0.5       -- 移动动画速度

local _login_win = nil;      -- 登录窗口对象

local _create_account_result_str = ""   -- 创建账号结果信息

local _lock_callback = nil     -- 锁操作 遮罩的定时回调

local _lockScreenHandle = 0

local get_server_list_page_name = "get_servlist"
local register_page_name 		= 'register.jsp'
local login_page_name 			= 'login.jsp'

RoleModel.NEW_SERVER_STATE = 5        -- 新服的状态数值
RoleModel.MAINTAIN_SERVER_STATE = 4   -- 维护服务器
RoleModel.NOT_OPEN_SERVER_STATE = 0   -- 维护服务器

RoleModel.error_str = {
	[7] = LangModelString[402], -- [402]="无法连接到服务器,请检查网络"
	[28] = LangModelString[403], -- [403]="网络超时,请检查网络"
}

VISIBLE_SERVER_STATE = 
{
	--[0] = false,
	['1'] = true,
	['2'] = true,
	['3'] = true,
	['4'] = true,
	['5'] = true,
	['11'] = true,
	['12'] = true,
}

function IsServerVisible(state)
	return VISIBLE_SERVER_STATE[state] or false
end

RoleModel.json_error = 10000

--自动重连
local _httpReconnectCount = 0
--自动重连
local _httpReconnectMax = 2

--自动重连延时
-- local _httpAutoReconnectCallbackTime = 1.0
local _httpAutoReconnectCallbackTime_t = { 5, 3 }
local _httpAutoReconnectCallback = callback:new()
local _httpLastRequest = nil

--清空与设置
function setupHttpAutoReconnect(url, param, callback)

	if url == nil then
		_httpLastRequest = nil
		_httpAutoReconnectCallback:cancel()
	else
		_httpLastRequest = { url, param, callback }
	end

	_httpReconnectCount = 0
	_httpReconnectMax = 2
end

function doHttpAutoReconnect()
	local autoReconnect = _httpReconnectCount < _httpReconnectMax and _httpLastRequest
	
	if autoReconnect then
		_httpReconnectCount = _httpReconnectCount + 1
		local _httpAutoReconnectCallbackTime = _httpAutoReconnectCallbackTime_t[ _httpReconnectCount ] or 1
		_httpAutoReconnectCallback:cancel()
		_httpAutoReconnectCallback:start(_httpAutoReconnectCallbackTime,
			function(...)
				-- print('retry', _httpReconnectCount, _httpLastRequest[1], _httpLastRequest[2])
				local http_request = HttpRequest:new( _httpLastRequest[1], 
													  _httpLastRequest[2], 
													  _httpLastRequest[3])
				http_request:send()
			end)

        -- 设置解锁屏幕
        _lockScreenHandle = _lockScreenHandle + 1

		local h = 'consrv' .. tostring(_lockScreenHandle)
		MUtils:lockScreen(true,2048,LangModelString[404],5.0,h) -- [404]='连接游戏服务器'

		local c = callback:new()
		c:start(5 + _httpAutoReconnectCallbackTime,  
			    function(...) 
					if MUtils:getLockHandle() == h then
						MUtils:lockScreen(false,2048,LangModelString[405],3)  -- [405]='连接失败，请重试'
					end
				end )

		return true
	else
		setupHttpAutoReconnect()
	end

	return false
end

function RoleModel:fini( ... )
	_random_name = ""
	_login_info  = {}
	_random_jod  = 1
	_random_camp = 1
	_default_role = 1
	_all_server_list = {}
	_lock_callback:cancel()
end

-- =====================
-- 更新数据
-- =====================

-- 创建登录界面

function RoleModel:show_login_win( root )
	-- 背景动画
	if not UpdateWin:get_is_showing(  ) then
        UpdateWin:init( root:getUINode() )
	end
	
	_lock_callback = callback:new()
	require "UI/login/LoginWin"

    if _login_win == nil then 
		_login_win = LoginWin:create_login_win( );

		-- 这里会获取一个游戏最上层的渲染根节点，所有的游戏需要渲染的节点都是从这个节点下添加的。
		local root_view = root:getUINode();

		--让这个节点注册到事件分发流程里去
		local function ui_main_msg_fun(eventType,x,y)
			if eventType == CCTOUCHBEGAN then 
				return true
			elseif eventType == CCTOUCHENDED then
	            return true
			end
		end

		root_view:registerScriptTouchHandler(ui_main_msg_fun, false, 0, false)

		root_view:addChild(_login_win.view, 1);
	end

	_login_win:active(true)

	self.password_changed = false

end

-- 销毁 登录界面
function RoleModel:destroy_login_win( )
	
	RoleModel:destroy_login_without_update_win(  )
	UpdateWin:destroy()   -- 背景也要销毁
end

-- 只销毁登录界面(不销毁背景)
function RoleModel:destroy_login_without_update_win(  )
	if _login_win ~= nil then
		_login_win.view:removeFromParentAndCleanup(true);
		_login_win:destroy();
		_login_win = nil
	end
end

-- 更新选择角色窗口
function RoleModel:update_role_win( update_type )
	if _login_win ~= nil then 
		_login_win:update_win( update_type )
	end
end

-- 切换登录界面的页  login  select_role   select_server
function RoleModel:change_login_page( page_name )
	if _login_win ~= nil then 

		_login_win:change_login_page( page_name )

	end
end

-- 打开输入账号密码的登录界面
function RoleModel:open_login_page(  )
	-- print("打开登录界面");
    if PlatformInterface.logoutFromSelectServer then 
        local function server_list_logout(  )  -- 与平台无关的处理 在登录界面登出的会回调. 
			-- ZXLog("登出回调")
		end
		PlatformInterface:logoutFromSelectServer( server_list_logout )
	else
		RoleModel:change_login_page( "login" )
    end
end

-- 打开选择服务器界面
function RoleModel:open_select_server_page( )
	ZXLog("打开选择服务器界面");
	RoleModel:change_login_page( "select_server" )
end

-- 打开创建角色界面
function RoleModel:open_role_win( default_role, default_job, default_camp )
	-- print( "打开创建角色界面" )
	RoleModel:change_login_page( "select_role" )
    _default_role = default_role or _default_role
    if BISystem.create_role then
    	BISystem:create_role("start")
    end
end

-- 获取 登录信息：用户输入的用户名，密码, 服务器id等
function RoleModel:get_login_info(  )
	if _login_info.user_name == nil or _login_info.server_id == nil then
		return nil
	end
	return _login_info
end

-- 获取窗口对象
function RoleModel:get_login_win(  )
    return _login_win
end

-- 设置_login_info 属性
function RoleModel:set_login_info( key, value )
	_login_info[ key ] = value
end

-- 获取默认选中角色
function RoleModel:get_default_role(  )
	return _default_role
end

-- 登录提示
function RoleModel:show_notice( message )
    -- require "UI/common/ConfirmWin"
    -- local confirmWin = ConfirmWin( "notice_confirm", nil, message, nil, nil, 50, nil)
 --    require "UI/common/NormalDialog"
	-- NormalDialog:show( message, nil, 2 )
	if _login_win then
		_login_win:show_notice( message, 250, 100 )
	else
		MUtils:toast( message, 2048, 10);
	end
end

--游客登录
function RoleModel:guest_get_server_list( ) 
    local function http_callback( err, message )
         if err == 0 then
            MUtils:lockScreen(false,2048)
            require 'json/json'
            local jtable = {}
            local s,e = pcall(function()
                jtable = json.decode(message)
            end)
            if not s then 
                -- print("进入 s")
                RoleModel:show_notice( "登录失败，请重新尝试！["..RoleModel.json_error.."]" ) -- [425]="登录失败，请重新尝试！["
                MUtils:lockScreen(false,2048)
                PlatformInterface:logoutFromSelectServer()
                return 
            end
            local ret_code = jtable['ret'] 
            --登录成功
            if ret_code=="1" then
                RoleModel:set_server_list_date_for_json( jtable['srvlist']  )
                local acount    = jtable['uid'] or ""                          -- 登录服务器返回的 “acount”
                local loginurl  = jtable[ 'loginurl' ] or ""
                local biurl     = jtable[ 'biurl' ] or ""
                local cdkeyurl  = jtable[ 'cdkeyurl' ] or ""
                local payUrl    = jtable[ 'payUrl' ] or ""
                local access_token = jtable[ 'access_token' ] or ""

                --选择新服务器的间隔
                RoleModel.switch_new_server_intvl = tonumber(jtable['server_interval']) or 0
                --入口的时间戳
                RoleModel.server_list_timestamp = tonumber(jtable['server_timestamp']) or 0
                -- ZXLog('guest_get_server_list:', RoleModel.switch_new_server_intvl,RoleModel.server_list_timestamp)
                GameUrl_global:set_uid( acount )
                GameUrl_global:set_login_url( loginurl )
                GameUrl_global:set_pay_url( payUrl )
                GameUrl_global:set_accessToken( access_token )
                local uid,psw = PlatformInterface:getLoginRet()
                RoleModel:set_login_info( "user_name", acount )
                -- RoleModel:set_login_info( "server_id", acount )                                           
                RoleModel:change_login_page("new_select_server_page")
                PlatformInterface:showPlatformUI(false)
                PlatformInterface:setLoginType(MSDK_TYPE.ePlatform_Guest)
                MUtils:toast("获取服务器列表成功!",2048) -- [439]="获取服务器列表成功!"
            else
                MUtils:toast("登录失败，请重新尝试！",2048)
            end
         else
         	    MUtils:toast("网络错误，请重新尝试！",2048)
         end
    end
    local url   = UpdateManager.idfa_server_list_url
    local param = 'idfa='..IOSDispatcher:get_udid( )
    print("guest_get_server_list url,param",url,param)
    local http_request = HttpRequest:new(url, param, http_callback)
    http_request:send()
end

-- 判断字符串是否包含数字和字母以外的字符
function RoleModel:check_str_num_and_letter( str )
	local check_ret = true
	if string.find( str, '%W+' ) then 
        check_ret = false
	end
	return check_ret
end

-- 判断字符串是否大于和小于规定的数字， 字符串， 下限数字，上线数字
function RoleModel:check_str_length_limit( str, num1, num2 )
	str = str or ""
	local length = string.len( str )
    if length >= num1 and length < num2 then
        return true
    end
    return false
end

-- 

-- 判断输入的用户名是否有效
function RoleModel:check_user_name_str( user_name )
	if not RoleModel:check_str_num_and_letter( user_name ) then 
        return false, LangModelString[391] -- [391]="#cff0000只可使用数字和字母"
    elseif not RoleModel:check_str_length_limit( user_name, 5, 200000 ) then  -- 密码大于五的判断
        return false, LangModelString[406] -- [406]="#cff0000用户名必须超过5位"
    elseif not RoleModel:check_str_length_limit( user_name, 0, 20 ) then  -- 密码大于五的判断
        return false, LangModelString[407] -- [407]="#cff0000用户名不可以超过20位"
	end
	return true
end

-- 判断密码是否合法
function RoleModel:check_password_right( password )
    if not RoleModel:check_str_num_and_letter( password ) then 
        return false, LangModelString[391] -- [391]="#cff0000只可使用数字和字母"
    elseif not RoleModel:check_str_length_limit( password, 5, 200000 ) then  -- 密码大于五的判断
        return false, LangModelString[408] -- [408]="#cff0000密码必须超过5位"
    elseif not RoleModel:check_str_length_limit( password, 0, 20 ) then  -- 密码大于五的判断
        return false, LangModelString[393] -- [393]="#cff0000密码不可以超过20位"
	end
	return true
end

-- ================================
-- 数据操作
-- ================================
-- 设置随机名称
function RoleModel:set_random_name( random_name )
	_random_name = random_name or ""

	RoleModel:update_role_win( "name" )
end

-- 获取随机名称
function RoleModel:get_random_name(  )
	return _random_name
end

-- 设置随机情况下的 职业
function RoleModel:set_ramdom_job( job )
	_random_jod = job
	if _login_win then
		_login_win:update("random_role")
	end
end

function RoleModel:get_random_job(  )
	return _random_jod
end

-- 设置随机情况下的 阵营
function RoleModel:set_ramdom_camp( camp_index )
	if camp_index > 3 then
	    camp_index = math.random ()
	    camp_index = camp_index * (10^10) % 3 + 1
	    camp_index = math.floor( camp_index )
	end
	_random_camp = camp_index
	if _login_win then
		_login_win:update("random_camp")
	end
end

function RoleModel:get_random_camp()
	return _random_camp
end

function RoleModel:set_all_server_list( all_server_list )
    _all_server_list = all_server_list
    -- print("RoleModel:set_all_server_list( all_server_list )",#_all_server_list);
end

-- 获取服务器列表数据
function RoleModel:set_server_list_date( all_server_date_str )
	local server_list = {}
    
    -- if result == 0 then
    --     print("获取失败!!!")
    -- end

    -- print("192.168.17.15:8080/TencentOpen/get_servlist.jsp?username="..user_name)
    -- print( "http：：：", result, all_server_date_str )
    all_server_date_str = all_server_date_str:match("%s*(.-)%s*$")    -- 去掉空格  (a,"%s*(.-)%s*$"))

	require "utils/Utils"
	local server_dates_t = Utils:Split_old( all_server_date_str, "|:" )  
	table.remove( server_dates_t, #server_dates_t )                   -- 字符串以 "|:" 最后一个是无效的
    _all_server_list = server_list
    print("#_all_server_list",#_all_server_list)
    local serverFilter = PlatformInterface:get_server_filter_list()--CCAppConfig:sharedAppConfig():getStringForKey('serverFilter')
    print("serverFilter",serverFilter)
    local filterServerFunc = nil
    if serverFilter and serverFilter ~= '' then
    	local visible_server = Utils:Split_old( serverFilter, "," )  
    	filterServerFunc = function(sid) 
    		for i,v in ipairs(visible_server) do
    			if v == sid then
    				return true
    			end
    		end
    		return false
    	end
    end
    --
	
	for i = 1, #server_dates_t do
		if server_dates_t[i] then
            local date_t = Utils:Split_old( server_dates_t[i], ",:" )
            local server_date = {} 

            server_date[ "player_name" ]  = date_t[1] or ""
            server_date[ "player_level" ] = date_t[2] or ""
            server_date[ "sex" ]          = date_t[3] or ""
            server_date[ "job" ]          = date_t[4] or ""
            server_date[ "login_time" ]   = RoleModel:change_login_date( date_t[5] )
            server_date[ "server_id" ]    = date_t[6] or ""
            server_date[ "server_name" ]  = date_t[7] or ""
            server_date[ "ip" ]           = date_t[8] or ""
            server_date[ "port" ]         = date_t[9] or ""
            server_date[ "state" ]        = date_t[10] or '0'
            -- server_date[ "dbip" ]        = date_t[11] or ""
            if filterServerFunc then
	            if filterServerFunc(date_t[6]) then 
	                table.insert( server_list, server_date )
	            end
            else
	            if RoleModel:check_show_not_open_server() then 
	                table.insert( server_list, server_date )
	            end
	        end
        end
	end
	-- -- 测试
	-- local count = #_all_server_list
	-- for i=1,140 do
	-- 	local server_info = {server_id = (60 +i),state = 0}
	-- 	table.insert(_all_server_list,server_info)
	-- end
end

-- 获取服务器列表数据
function RoleModel:set_server_list_date_for_json( server_dates_t )
	-- print("RoleModelForJson:set_server_list_date!!!!!!!", server_dates_t)
	local server_list = {}
    
    if server_dates_t == nil then
        -- print("获取失败!!!")
    end

    local serverFilter = PlatformInterface:get_server_filter_list()--CCAppConfig:sharedAppConfig():getStringForKey('serverFilter')
    print("serverFilter",serverFilter)
    local filterServerFunc = nil
    if serverFilter and serverFilter ~= '' then
    	local visible_server = Utils:Split_old( serverFilter, "," )  
    	filterServerFunc = function(sid) 
    		for i,v in ipairs(visible_server) do
    			-- print("v,sid",v,sid,v==sid,type(v),type(sid))
    			if tostring(v) == tostring(sid) then
    				return true
    			end
    		end
    		return false
    	end
    end
	for i = 1, #server_dates_t do
		if server_dates_t[i] then
            local server_date = {} 
            server_date[ "player_name" ]  = server_dates_t[i]['actorname'] or ""
            server_date[ "player_level" ] = server_dates_t[i]['level'] or ""
            server_date[ "sex" ]          = server_dates_t[i]['sex'] or ""
            server_date[ "job" ]          = server_dates_t[i]['job'] or ""
            server_date[ "login_time" ]   = RoleModel:change_login_date( server_dates_t[i]['updatetime'] )
            server_date[ "server_id" ]    = server_dates_t[i]['serverid'] or ""
            server_date[ "server_name" ]  = server_dates_t[i]['servername'] or ""
            server_date[ "ip" ]           = server_dates_t[i]['ip'] or ""
            server_date[ "port" ]         = server_dates_t[i]['port'] or ""
            server_date[ "state" ]        = server_dates_t[i]['state'] or 1
            -- print("id :::: ", server_date["server_id"], server_date["ip"])
            if filterServerFunc then
	            if filterServerFunc(server_dates_t[i]['serverid']) then 
	                table.insert( server_list, server_date )
	            end
            else
	            if RoleModel:check_show_not_open_server(server_date[ "state" ]) then 
	                table.insert( server_list, server_date )
	            end
	        end
        end
	end

	RoleModel:set_all_server_list( server_list )
end

-- 判断是否显示  未开服  状态的服务器
function RoleModel:check_show_not_open_server( state )
	local show_not_open_server = CCAppConfig:sharedAppConfig():getBoolForKey('show_not_open_server')
	local platform_test_version = nil
    local target_platform_test_version = ""
    if PlatformInterface.get_ios_version then
        platform_test_version = PlatformInterface:get_ios_version()
        target_platform_test_version = UpdateManager._ios_check_version
    end
    print("11platform_test_version,target_platform_test_version",platform_test_version,target_platform_test_version)
    if platform_test_version == target_platform_test_version then
    	show_not_open_server = true
    end
	local check_ret = IsServerVisible(state) 
	return check_ret or show_not_open_server
end


-- 把服务器发来的时间，变成只显示到天
function RoleModel:change_login_date( login_date )
	local date_ret = ""
	if login_date and login_date ~= "" then
        local date_t = Utils:Split_old( login_date, " " )
        date_ret = date_t[1]
	end
	return date_ret
end

-- 根据服务器id获取服务器信息
function RoleModel:get_server_date_by_id( server_id )
	for key, server_date in pairs( _all_server_list ) do 
        if tostring(server_date.server_id) == tostring(server_id) then 
            return server_date
        end
	end
	return
end

-- 获取当前已经登录的服务器名称
function RoleModel:get_server_name_had_login(  )
	local server_name = ""
	if _login_info.server_id then 
        local server_info = RoleModel:get_server_date_by_id( _login_info.server_id )
        if server_info then 
            server_name = server_info.server_name
        end
	end
    return server_name
end


-- 根据页号获取服务器列表
function RoleModel:get_server_list_by_page_index( page_index )
	local server_list = {}
	local index_start = (page_index - 1) * _server_num_per_page + 1
	local index_end   = page_index * _server_num_per_page 
	if index_end > #_all_server_list then
        index_end = #_all_server_list
    end
    local new_count = 1
    for i = index_start, index_end do
    -- print("比较state ", "name ", _all_server_list[i] and _all_server_list[i].name, "state: ", _all_server_list[i] and _all_server_list[i].state)
        if _all_server_list[i] and tostring(_all_server_list[i].state) == tostring(RoleModel.NEW_SERVER_STATE) then 
        	table.insert( server_list, new_count, _all_server_list[i] )
            new_count = new_count + 1
        else
            table.insert( server_list, _all_server_list[i] )
        end
    end

    return server_list
end

-- 选择服务器列表 判断某页是否有新服
function RoleModel:check_exist_new_by_page_index( page_index )
	local page_server_list = RoleModel:get_server_list_by_page_index( page_index )
    for key, server_info in pairs( page_server_list ) do 
    	-- print("比较state ", "name ", server_info.server_name, "state: ", server_info.state)
        if server_info.state == tostring(RoleModel.NEW_SERVER_STATE) then 
            return true
        end
    end
    return false
end

-- 获取服务器列表总页数
function RoleModel:get_server_total_page(  )
	-- print("#_all_server_list,_server_num_per_page",#_all_server_list,_server_num_per_page)
	local total_page = math.ceil( #_all_server_list / _server_num_per_page )
 	-- print("#_all_server_list",#_all_server_list,_server_num_per_page,total_page)
	return total_page
end

-- 获取第N也的范围
function RoleModel:get_page_start_end( page_index )
	if page_index > RoleModel:get_server_total_page(  ) then
        page_index = RoleModel:get_server_total_page(  )
	end
	if page_index < 1 then
        page_index = 0
	end
	
end

-- 根据页数获取列表
function RoleModel:get_server_list( page_index )
	local ret_list = {}
	if page_index > RoleModel:get_server_total_page(  ) then
        page_index = RoleModel:get_server_total_page(  )
	end
	if page_index < 1 then
        page_index = 0
	end
	local start_index = ( page_index - 1 ) * _server_num_per_page + 1
	local ent_index   = page_index * _server_num_per_page
    for i = start_index, ent_index do
        table.insert( ret_list, _all_server_list[ i ] )
    end
    return ret_list
end


-- 获取历史记录
function RoleModel:get_hostory_server(  )
	-- todo
	return {}
end

function  RoleModel:get_server_num_per_page( )
	return _server_num_per_page
end



-- ================================
-- 逻辑相关
-- ================================

-- 返回服务器选择  注意要关闭连接
function RoleModel:back_to_select_server(  )
	NetManager:disconnect( )
	RoleModel:change_login_page( "select_server" )
end

-- 获取保存的用户名称列表
function RoleModel:get_user_name_list(  )
	require "utils/Utils"
	local name_list_read = CCUserDefault:sharedUserDefault():getStringForKey("user_name_list")     -- 获取到保存的名称字符串
	local name_t = Utils:Split( name_list_read, ":" )                                             -- 把名称字符串解析成table
	-- 保存的个数有限制
	if #name_t > _save_name_max then
        for i = 1, #name_t - _save_name_max do
            table.remove( name_t, #name_t )           
        end
	end
	return name_t
end

-- 获取账号和密码对
function RoleModel:get_account_pw_list(  )
	require "utils/Utils"
	local account_pw_list_read = CCUserDefault:sharedUserDefault():getStringForKey("account_pw_list")     -- 获取到保存的名称字符串
	local account_pw_t = Utils:Split( account_pw_list_read, ":" )                                             -- 把名称字符串解析成table
	-- 保存的个数有限制
	-- if #account_pw_t > _save_name_max then
 --        for i = 1, #name_t - _save_name_max do
 --            table.remove( name_t, _save_name_max )           
 --        end
	-- end
	return account_pw_t
end


-- 选择并登录服务器成功

function RoleModel:did_login_success(  )
	-- print("登录服务器成功后， 向服务器申请角色列表")
	-- 登录服务器成功后， 向服务器申请角色列表
	RoleModel:req_role_list( )
	----主要用于iap支付保存用户信息,例如补发元宝等
	if GetPlatform() == CC_PLATFORM_IOS then
		local user_account = RoleModel:get_login_info().user_name
		local serId = RoleModel:get_login_info().server_id
		-- 向oc层保存登录信息
		require 'model/IOSDispatcher'
	    IOSDispatcher:set_login_message( user_account, serId )
		-- 扫描订单验证队列并重新验证
		IOSDispatcher:IAP_reverfy_payment_queue(  )
	end
	
end

-- 创建角色成功
function RoleModel:create_role_success( role_id, error_id )
	RoleModel:enter_game_scene( role_id, error_id )

    local create_role_info = {}
    -- 如果是新创建角色，通知平台，创建角色
	create_role_info.roleId = role_id or ""
    create_role_info.roleName = _create_role_info.roleName or ""
    create_role_info.serverId = _login_info.server_id or ""
    create_role_info.serverName = RoleModel:get_server_name_had_login(  )
    if BISystem.create_role then
    	BISystem:create_role("ok")
    end
    if PlatformInterface.create_role_info then
		PlatformInterface:create_role_info(create_role_info)
	end
    --PlatformInterface:notifyCreateChar( create_role_info )
end

-- 选择完角色 之后，向服务器请求进入游戏场景
function RoleModel:enter_game_scene( role_id, error_id )
	-- print( "~~~~~~!!~~~RoleModel:enter_game_scene~~~~~~~~~~~~~", role_id, error_id)
	-- print("选择完角色 之后，向服务器请求进入游戏场景")
    if error_id == 0 then
		-- 向服务器申请AOI范围
		local AOI_size = ZXLogicScene:sharedScene():getViewPortSize()
		local tile_width_limit = AOI_size.width / SceneConfig.LOGIC_TILE_WIDTH
		local tile_height_limit= AOI_size.height / SceneConfig.LOGIC_TILE_HEIGHT
		require "control/SelectRoleCC"
		SelectRoleCC:request_enter_game(role_id, tile_width_limit, tile_height_limit, _platform)

	else
		local result_notice_t = {
            [-1]  = LangModelString[409],                                      -- -1 -- [409]="sql错误"
            [-2]  = LangModelString[410],                                   -- -2 -- [410]="用户没登录"
            [-3]  = LangModelString[411],                             -- -3 -- [411]="游戏服务没准备好"
            [-4]  = LangModelString[412],               -- -4 -- [412]="角色上一次保存数据是否出现异常"
            [-5]  = LangModelString[413],                     -- -5 -- [413]="客户端选择角色的常规错误"
            [-6]  = LangModelString[414],                                 -- -6 -- [414]="角色名称重复"
            [-7]  = LangModelString[415],                                   -- -7 -- [415]="角色不存在"
            [-8]  = LangModelString[416],                                   -- -8 -- [416]="错误的性别"
            [-9]  = LangModelString[417],                     -- -9 -- [417]="随机生成的名字已经分配完"
            [-10] = LangModelString[418],                 -- -10 -- [418]="客户端上传的角色阵营参数错误"
            [-11] = LangModelString[419],                 -- -11 -- [419]="客户端上传的角色职业参数错误"
            [-12] = LangModelString[420],     -- -12 -- [420]="名称无效，名称中包含非法字符或长度不合法"
            [-13] = LangModelString[421],     -- -13 -- [421]="如果玩家是宗主，不能删除该角色，需要玩家退出仙宗"
	    }
        -- print("创建角色结果码", error_id)
        local notice_index = Utils:complement_to_num( error_id )
        -- print("计算后。。。", notice_index)
        if result_notice_t[ notice_index ] then
        	require "utils/Utils"
            RoleModel:show_notice( "#cffff00"..result_notice_t[ notice_index ] )
        end
    end
end

--gamecenter登录
function RoleModel:gamecenter_get_server_list( playerID )    
	--先请求注册绑定，然后再请求服务器列表
     local function gamecenter_call_back (error_code, message)
             -- body
            local jtable = {}
            local s,e = pcall(function()
                jtable = json.decode(message)
            end)
            local ret_code = jtable['ret']
            local _msg = jtable['msg']
            
            if error_code==0 then
	            --登录成功
	            if ret_code=="1" then
	                RoleModel:set_server_list_date_for_json( jtable['srvlist']  )
	                local acount    = jtable['uid'] or ""                          -- 登录服务器返回的 “acount”
	                local loginurl  = jtable[ 'loginurl' ] or ""
	                local biurl     = jtable[ 'biurl' ] or ""
	                local cdkeyurl  = jtable[ 'cdkeyurl' ] or ""
	                local payUrl    = jtable[ 'payUrl' ] or ""
	                local access_token = jtable[ 'access_token' ] or ""
	                --选择新服务器的间隔
	                RoleModel.switch_new_server_intvl = tonumber(jtable['server_interval']) or 0
	                --入口的时间戳
	                RoleModel.server_list_timestamp = tonumber(jtable['server_timestamp']) or 0
	                -- ZXLog('gamecenter_get_server_list:', RoleModel.switch_new_server_intvl,RoleModel.server_list_timestamp)
	                GameUrl_global:set_uid( acount )
	                GameUrl_global:set_login_url( loginurl )
	                GameUrl_global:set_pay_url( payUrl )
	                GameUrl_global:set_accessToken( access_token )
	                local uid,psw = PlatformInterface:getLoginRet()

	                RoleModel:set_login_info( "user_name", acount )                     
	                RoleModel:change_login_page("new_select_server_page")
	                PlatformInterface:showPlatformUI(false)
	                PlatformInterface:setLoginType(MSDK_TYPE.ePlatform_GameCenter)
	                MUtils:toast(LangModelString[439],2048) -- [439]="获取服务器列表成功!"
	            else
	                MUtils:toast("登录失败，请重新尝试！",2048)
	            end
	        else
	        	 MUtils:toast("网络错误，请重新尝试！",2048)   
        	end
     end 
     local url   = UpdateManager.gameCenter_server_list_url
     local param = 'playerid='..playerID
     print("RoleModel:gameCenter_server_list url,param",url,param)
     local http_request = HttpRequest:new( url, param, gamecenter_call_back )
     http_request:send()
end

-- 获取保存的服务器id 列表
function RoleModel:get_save_server_list(  )
	require "utils/Utils"
	local server_id_list = CCUserDefault:sharedUserDefault():getStringForKey("server_id_list")     -- 获取字符串
	local server_t = Utils:Split( server_id_list, ":" )                                             -- 解析成table
	-- 保存的个数有限制
	-- if #name_t > _save_name_max then
 --        for i = 1, #name_t - _save_name_max do
 --            table.remove( name_t, _save_name_max )           
 --        end
	-- end
	return server_t
end

-- 获取玩家登录过保存的服务器列表
function RoleModel:get_server_info_list(  )
	-- print("获取玩家登录过保存的服务器列表")
	local server_info_t = {}
	local server_id_t = RoleModel:get_save_server_list(  )  -- 保存的服务器id
	server_id_t = RoleModel:server_info_to_id_by_username( server_id_t )  -- 过滤掉不是当前账号登录过的服务器，并转成只有id的table
	for i = 1, #server_id_t do 
        local server_date = RoleModel:get_server_date_by_id( server_id_t[i] )
        if server_date then
            table.insert( server_info_t, server_date )
        end
	end
	-- print( "RoleModel:get_server_info_list]]]]]]]]]]", #server_info_t, server_info_t)
    -- 把新服服务器插入到第二个到第三个位置之间
    local insert_position = 1
    if #server_info_t > 0 then 
        insert_position = 2
    end
    local new_server_list = RoleModel:get_new_server_list()
    -- print("新服长度。", #new_server_list)
    for i = #new_server_list, 1, -1 do  
    	-- print("插入。。。。。", i, new_server_list[i].server_name, #server_info_t)
    	if new_server_list[i] then 
	    	local if_exist = RoleModel:check_exist_in_server_list( server_info_t, new_server_list[i] )
	        if not if_exist then 
	            table.insert( server_info_t, insert_position, new_server_list[i] )
	        end
	    end
    end

    local platform_test_version = nil
    local target_platform_test_version = ""
    if PlatformInterface.get_ios_version then
        platform_test_version = PlatformInterface:get_ios_version()
        target_platform_test_version = UpdateManager._ios_check_version
    end

    --如果没有新服也没有上过的服务器，随机给一个
    if #server_info_t == 0 then
    	if #_all_server_list > 0 then

    		--local i = math.random(1,#_all_server_list)
			--server_info_t[1] = _all_server_list[i]
			for i, server in ipairs(_all_server_list) do
				print("333platform_test_version,target_platform_test_version",platform_test_version,target_platform_test_version)
				if platform_test_version == target_platform_test_version then
					server_info_t[1] = server
				elseif tonumber(server.state) == RoleModel.NOT_OPEN_SERVER_STATE or
				   tonumber(server.state) == RoleModel.MAINTAIN_SERVER_STATE then
				else
					server_info_t[1] = server
				end
			end
		end
    end
    return server_info_t
end

-- 解析保存的服务器信息，只返回玩家登录过的服务器id
function RoleModel:server_info_to_id_by_username( server_info_t )
	local server_id_t = {}
	for i = 1, #server_info_t do 
		local one_server_info = Utils:Split_old( server_info_t[i], "," )
        if one_server_info[1] == _login_info.user_name then 
            table.insert( server_id_t, one_server_info[2] )
        end
	end
	return server_id_t
end

-- 获取服务器列表中，state为5（新服） 的列表
function RoleModel:get_new_server_list(  )
    local new_server_list = {}
    for i = 1, #_all_server_list do
        local state_num =  tonumber( _all_server_list[i].state )
        if _all_server_list[i] and state_num == 5 then 
        	-- print( "新服。。。。", i, _all_server_list[i].server_name )
            table.insert( new_server_list, _all_server_list[i] )
        end
    end
    return new_server_list
end

-- 判断某个服务器信息是否在列表中存在
function RoleModel:check_exist_in_server_list( server_list, server_info )
	for key, server_info_temp in pairs(server_list) do 
        if tostring(server_info_temp.server_id) == tostring(server_info.server_id) then 
            return true
        end
	end
	return false
end

-- 判断当前是否有已经保存的服务器信息
function RoleModel:check_if_had_save_server_info(  )
	local server_info_t = RoleModel:get_server_info_list(  )  -- 保存的服务器信息
	-- print( #server_info_t , server_info_t[1], server_info_t[2], server_info_t[3])
	if #server_info_t > 0 then
        return true
    else
    	return false
	end
end

-- 保存 新服务器信息到列表
function RoleModel:save_server_list( row_date )
	local server_id = row_date.server_id                            -- 保存的id
    local server_id_list = RoleModel:get_save_server_list(  )       -- 加入 获取已经保存的id的表
    
    -- 去除重复的，把id放在最前
    for i = #server_id_list, 1, -1 do 
    	local one_server_info_t = Utils:Split_old( server_id_list[i], "," )
    	-- 注意只去掉当前账号的
        if tostring(one_server_info_t[1]) == tostring(_login_info.user_name) and tostring(one_server_info_t[2]) == tostring(server_id) then  
            table.remove( server_id_list, i )
            -- break
        end
    end

    local server_info_str = tostring(_login_info.user_name) .. "," .. server_id
    table.insert( server_id_list, 1, server_info_str )              -- 加在第一个位置
    local save_str = RoleModel:table_to_str( server_id_list, ":" )  -- 拼接字符串

    CCUserDefault:sharedUserDefault():setStringForKey("server_id_list", save_str)
    CCUserDefault:sharedUserDefault():flush()
end

-- 把一个表按指定分割符拼接字符串
function RoleModel:table_to_str( str_t, split_str )
	local str_ret = ""

    for i = 1, #str_t do  
    	if str_t[i] and str_ret == "" and str_t[i] ~= "" then
            str_ret = str_ret .. str_t[i]
    	elseif str_t[i] and str_t[i] ~= "" then
            str_ret = str_ret .. split_str .. str_t[i]
    	end
    end

    return str_ret
end

-- 请求进入游戏场景成功，开始初始化 游戏场景
function RoleModel:did_enter_game_scene_success(  )
-- 通知场景管理器进入游戏场景状态
	GameStateManager:set_state("scene")
	-- 断网后，重新连接服务器时，由于有退出场景行为，rolemodel数据已经被fini。在此重置一下数据。 gzn add 2015/1/6
	local state = NetManager:get_try_to_reconnect_state();
	if state == true then
		NetManager:set_try_to_reconnect_state(false);
		-- 以防万一，先检查一下数据是否存在(目前我这边充值时候仅用到这两项数据，所以只重置恢复这两项数据，有需求再加吧)
		local old_user_name = NetManager:get_connect_user_name()
		local old_server_id = NetManager:get_connect_server_id()
		if (_login_info.user_name == nil or _login_info.server_id == nil) and old_user_name and old_server_id then
			RoleModel:set_login_info( "user_name", old_user_name )
			RoleModel:set_login_info( "server_id", old_server_id )
		end
	end
end


-- ================================
-- 与服务器通讯
-- ================================
 
--appstore和noplatform走此平台
-- 用户名和密码，进行账号登录验证    password_changed: 密码是否有改变，如果改变就要重新保存
function RoleModel:send_name_and_pw( user_name, password, password_changed, show_new_server_list )
	local isJsonServerList = CCAppConfig:sharedAppConfig():getBoolForKey('isJsonServerList')
	print("isJsonServerList",isJsonServerList)
	if isJsonServerList then
		RoleModel:_send_name_and_pw_json(user_name, password, password_changed, show_new_server_list)
	else
		RoleModel:_send_name_and_pw(user_name, password, password_changed, show_new_server_list)
	end
end

-- 选择完服务器之后，确定 登录这个服务器
function RoleModel:land_to_game_server( row_date )
    -- 如果不是内部人员，不能登录维护服务器
    local can_login_maintain_server =  CCAppConfig:sharedAppConfig():getStringForKey('can_login_maintain_server')
    if tostring(row_date.state) == tostring(RoleModel.MAINTAIN_SERVER_STATE) and ( can_login_maintain_server ~= "true" ) then 
    	RoleModel:show_notice( LangModelString[428] ) -- [428]="亲！服务器维护中！"
        return 
    end 

	local server_ip = row_date.ip
	local server_id = row_date.server_id or ""
	local server_port = row_date.port
	local dbip   = row_date.dbip

	-- 把登录的serverid等保存，其他地方使用
	_login_info.server_id = server_id

	-- 记录下服务器ID，前缀加 's'作为JPush.setTag的参数
	JPush.cfgTag = 's' .. _login_info.server_id
	ZXLog('set JPush.cfgTag = ', JPush.cfgTag)

	CCUserDefault:sharedUserDefault():setStringForKey("JPush_tag", JPush.cfgTag)
  	CCUserDefault:sharedUserDefault():flush()
	
    RoleModel:save_server_list( row_date ) -- 保存
    -- 
    local account = _login_info.user_name or ""
    local password = _login_info.password or ""


	-- 从登录平台获取用户名和密码，然后登录
	local function http_callback( error_code, message )
		ZXLog( "---land_to_game_server----", error_code, message )
		-- RoleModel:update_role_win( "hide_connecting" )
		if error_code == 0 then
            local message_temp = message:match("%s*(.-)%s*$")    -- 去掉空格  (a,"%s*(.-)%s*$"))
            local register_info_t = Utils:Split_old( message_temp, ",:" )  
            local resulst_code = register_info_t[1]              -- 0：操作失败   1：操作成功   -1：其他错误
			-- print('land_to_game_server http_callback resulst_code',resulst_code)
            if resulst_code == "1" then
            	RoleModel:lock_operate_by_time( 0.5 )
	            local account = register_info_t[2] or ""
	            local password = register_info_t[3] or ""
	            -- print("登录服务器：：：", account, password, server_ip, server_id, server_port )
	            NetManager:connect( account, password, server_ip, server_id, server_port )
	            --MUtils:toast( "登录游戏服务器", 2048, 3);
	            --MUtils:lockScreen(true,2048,'正在连接',2)
	            	if BISystem.enterGame then
						BISystem:enterGame("ok")
					end
	        else
	        	RoleModel:update_role_win( "hide_connecting" )
	        	RoleModel:show_notice( LangModelString[429]..resulst_code.."]" ) -- [429]="登录失败，请您重试！["
	        	MUtils:lockScreen(false,2048)
	        end

			--清空自动重试
            setupHttpAutoReconnect()
        else
        	if not doHttpAutoReconnect() then
        		-- 网络异常的时候也要打点。 不过这时候可能发不过去， 不是很准
        		if BISystem.error_place_server_to_actor then 
        	        BISystem:error_bi( BISystem.error_place_server_to_actor, error_code, account ) 
        	    end
	        	RoleModel:update_role_win( "hide_connecting" )
	        	RoleModel:show_notice( LangModelString[430]..error_code.."]" ) -- [430]="网络连接失败，请您重试！["
	        	MUtils:lockScreen(false,2048)
	        end
		end

		RoleModel:set_enter_btn_pushed( false )
	end
	account = account or ""
	server_ip = server_ip or ""
	dbip = dbip or ""

    local ip_temp = PlatformInterface:get_login_url()--GameUrl_global:getServerIP()
    local url0 = ip_temp 
    -- 现在直接由entrance派发 login.jsp地址
    -- modified by xiaojun, at 2014-7-25
    print("UpdateManager.login_url,url0",UpdateManager.login_url,url0)
    local url = UpdateManager.login_url or url0
    local param = ''

    if PlatformInterface.get_login_param then
    	param = PlatformInterface:get_login_param(account, dbip, server_id)
	else
		param = 'account='..account..'&ip='..dbip..'&serverid='..server_id
	end

	local http_request = HttpRequest:new( url, param, http_callback )
	http_request:send()

	-- 记录选择服务器后
	-- if BISystem.server_choice ~= nil then
	-- 	BISystem:server_choice()
	-- end


	_lockScreenHandle = _lockScreenHandle + 1

	local h = 'consrv' .. tostring(_lockScreenHandle)
	MUtils:lockScreen(true,2048,LangModelString[404],5.0,h) -- [404]='连接游戏服务器'

	local c = callback:new()
	c:start(10,  function(...) 
					if MUtils:getLockHandle() == h then
						print("!!!!@@@@@@@@!!!!!超时")
						MUtils:lockScreen(false,2048,LangModelString[405],3)  -- [405]='连接失败，请重试'
					end
				end )

	--
	--记录自动重试
	print("RoleModel:land_to_game_server url,param",url,param)
	if BISystem.enterGame then
		BISystem:enterGame("start")
	end
	setupHttpAutoReconnect( url, param, http_callback )
end

-- 获取登录游戏服务器的url
function RoleModel:get_login_url(  )
	return GameUrl_global:getServerIP() .. login_page_name
end

-- 选择完服务器并登录成功之后，申请用户的角色列表
function RoleModel:req_role_list(  )
	-- 尝试申请角色列表
	require "control/SelectRoleCC"
	SelectRoleCC:request_role_list()
end


-- 申请随机名字
function RoleModel:apply_random_name( sex )
    if BISystem.click_role_name_dice ~= nil then
        BISystem:click_role_name_dice()
    end
	require "control/SelectRoleCC"
	SelectRoleCC:request_random_name( sex )
end

-- 申请最少人数的职业
function RoleModel:apply_random_job(  )
	require "control/SelectRoleCC"
	SelectRoleCC:request_least_job()
end

-- 申请最少人数的阵营  （随机使用）
function RoleModel:apply_random_camp(  )
	require "control/SelectRoleCC"
	SelectRoleCC:request_least_camp(  )
end

-- 申请创建一个角色
function RoleModel:apply_create_one_role( name, sex, job, icon, camp )
	_create_role_info.role_name = name  -- 保存起来，通知平台创建角色需要

	-- 如果是随机，申请角色列表获取到的最少职业
	if camp == 4 then
        camp = _random_camp
	end
	require "control/SelectRoleCC"
	SelectRoleCC:request_create_role( name, sex, job, icon, camp, _platform )

end



-- 保存登录账号    用户名  密码  是否
function RoleModel:save_user_name( user_name, password, password_changed )
	-- print("RoleModel:save_user_name  ", user_name, password, password_changed )
	local name_t = RoleModel:get_user_name_list(  )              -- 获取列表

	-- 判断表中是否存在新增账号，若存在，就删除（去重复）
	for i = 1, #name_t do
        if name_t[i] == user_name then
            table.remove( name_t, i )
        end
	end

    -- 把账号表连接成字一个字符串
	local name_list_temp = name_t[1] or ""
    for i = 2, #name_t do
        name_list_temp = name_list_temp..":"..name_t[i]
    end

    -- 加入新账号
    local name_list = ""
    if name_list_temp == "" then
        name_list = user_name
    else
    	name_list = user_name .. ":" .. name_list_temp
    end
    
    -- 保存账号密码对  *** 为不影响以前的，这里另外弄个key
    RoleModel:save_account_pw( user_name, password )

    CCUserDefault:sharedUserDefault():setStringForKey("user_name_list", name_list)
    CCUserDefault:sharedUserDefault():setStringForKey("user_name", user_name)

    if password_changed then
    	--针对MD5做二次加密
    	-- password = encryptMD5(password)
    	CCUserDefault:sharedUserDefault():setStringForKey("password", password)
    	-- print("保存。。", password)
    end
    CCUserDefault:sharedUserDefault():flush()

    self.password_changed = false
end

-- 保存账号密码对  *** 为不影响以前的，这里另外弄个key
function RoleModel:save_account_pw( user_name, password )
	if password==nil then
		return
	end
	-- local pw_temp = encryptMD5(password)
	local pw_temp = password
    local account_pw_temp = user_name .. "," .. pw_temp
    local account_pw_t = RoleModel:get_account_pw_list()
    -- 去重复
    for i = 1, #account_pw_t do 
        if account_pw_t[i] == account_pw_temp then 
            table.remove( account_pw_t, i )
        end
    end
    -- 把账号密码表连接成字一个字符串
    local account_pw_list_temp = account_pw_t[1] or ""
    for i = 2, #account_pw_t do
        account_pw_list_temp = account_pw_list_temp..":"..account_pw_t[i]
    end
    -- 加入新数据
    local account_pw_list = ""
    if account_pw_list_temp == "" then
        account_pw_list = account_pw_temp
    else
    	account_pw_list = account_pw_temp .. ":" .. account_pw_list_temp
    end
    CCUserDefault:sharedUserDefault():setStringForKey("account_pw_list", account_pw_list)
    CCUserDefault:sharedUserDefault():flush()
end

-- 根据账号获取对应密码
function RoleModel:getPassword( account )
	local password = ""
    local account_pw_t = RoleModel:get_account_pw_list()
    for i = 1, #account_pw_t do 
        local account_pw =  Utils:Split( account_pw_t[i], "," )     -- 账号、密码解析成table
        local account_temp = account_pw[1]
        -- print("判断账号   ", account_temp, account, account_pw[2] )
        if account_temp == account then
            password = account_pw[2]
            -- password = encryptMD5(password)
            break
        end
    end

    -- 以前的
    if password == "" then
		password = CCUserDefault:sharedUserDefault():getStringForKey('password')
		-- if password ~= '' then
		-- 	-- password = encryptMD5(password)
		-- end
    end
-- print("password ", password)
	return password
end
-- 连接服务器结果
function RoleModel:land_server_result( result_type )
	-- print(" 连接服务器结果，，，，，，，， ", result_type)
	RoleModel:update_role_win( "hide_connecting" )
	if result_type == -1 then
		-- print("连接失败！")
		if BISystem.error_place_server_to_actor then 
            BISystem:error_bi( BISystem.error_place_server_to_actor, result_type, account ) 
        end
        RoleModel:show_notice( "连接失败！["..result_type.."]" )
        MUtils:lockScreen(false,2048)
	else
		MUtils:lockScreen(false,2048)
		MUtils:toast(LangModelString[432]..tostring(result_type)..']',2048) -- [432]='与服务器通信中['
	end
end

-- 获取移动动画速度
function RoleModel:get_move_rate(  )
	return _move_rate
end

-- 创建账号
function RoleModel:request_create_account( account, password )
	-- 
    RoleModel:set_lock_operate( true )

	local function http_callback( error_code, message )
		-- print("创建账号......", error_code, message)
        RoleModel:set_lock_operate( false )

        if error_code == 0 then
            local message_temp = message:match("%s*(.-)%s*$")    -- 去掉空格  (a,"%s*(.-)%s*$"))
            local register_info_t = Utils:Split_old( message_temp, ",:" )  
            local resulst_code = register_info_t[1]              -- 0：操作失败   1：操作成功   -1：其他错误
            if resulst_code == "1" then
	            local acount = register_info_t[2] or ""
	            local password = register_info_t[3] or ""
	            RoleModel:send_name_and_pw( account, password, true )
	        elseif resulst_code == "0" then 
	        	_create_account_result_str = LangModelString[433] -- [433]="#cff0000账号重复，请尝试其他账号"
                RoleModel:update_role_win( "create_error_account" )
	        else
	        	if not doHttpAutoReconnect() then
	        		RoleModel:show_notice( LangModelString[434]..resulst_code.."]" ) -- [434]="请求账号失败，请您重试！["
	        	end
	        end

            --清空自动重试
            setupHttpAutoReconnect()
        else
        	if not doHttpAutoReconnect() then
            	RoleModel:show_notice( LangModelString[426]..error_code.."]" ) -- [426]="连接服务器失败！请您检查网络是否正常！["
            end
        end

	    -- if true then  -- 成功
     --        RoleModel:send_name_and_pw( account, password, true )
     --    else
     --    	_create_account_result_str = "#cff0000试试的，那啥，账号有问题"
     --        RoleModel:update_role_win( "create_result_account" )
	    -- end
	end
    local login_server_ip = GameUrl_global:getServerIP() or ""
	local url = login_server_ip .. register_page_name  
	local param = 'type=0&account='..account..'&pw='..password..'&pw_old=1'

	local http_request = HttpRequest:new( url, param, http_callback )
	http_request:send()

	setupHttpAutoReconnect( url, param, http_callback )
end

-- 获取创建账号结果字符串
function RoleModel:get_create_result_str(  )
	return _create_account_result_str
end

-- 请求快速游戏
function RoleModel:request_quick_play(  )
    -- 锁住界面，请求账号，要等有响应才能做其他操作
    RoleModel:set_lock_operate( true )

	local function http_callback( error_code, message )
		RoleModel:lock_operate_by_time( 0.5 )
		MUtils:lockScreen(false,2048)

		if error_code == 0 then
            local message_temp = message:match("%s*(.-)%s*$")    -- 去掉空格  (a,"%s*(.-)%s*$"))

            local register_info_t = Utils:Split_old( message_temp, ",:" )  
            local resulst_code = register_info_t[1]              -- 0：操作失败   1：操作成功   -1：其他错误
            if resulst_code == "1" then
	            local acount = register_info_t[2] or ""          -- 解析用户名
	            local password = register_info_t[3] or ""        -- 解析密码
	            RoleModel:do_result_random_account( acount, password )
	        else
	        	RoleModel:show_notice( LangModelString[434]..resulst_code.."]" ) -- [434]="请求账号失败，请您重试！["
	        end

	       	--清空自动重试
            setupHttpAutoReconnect()
	    else
	    	if not doHttpAutoReconnect() then
	    		RoleModel:show_notice( LangModelString[426]..error_code.."]" ) -- [426]="连接服务器失败！请您检查网络是否正常！["
	    	end
		end
	end
    local login_server_ip = GameUrl_global:get_register_url() or ""
	local url = login_server_ip  
	local param = 'type=2&account=1&pw=1&pw_old=1'

	local http_request = HttpRequest:new( url, param, http_callback )
	http_request:send()

	--设置自动重试
	setupHttpAutoReconnect( url, param, http_callback )
	-- todo 测试用
	-- RoleModel:do_result_random_account( "mytest18340", "18z341" )
end


-- 请求快速游戏，产生随机账号结果
function RoleModel:do_result_random_account( user_name, password )
	local user_name = user_name or ""
	local password = password or ""
	local user_name_str = LangModelString[435]..user_name -- [435]="账号：#cffff00"
	local password_str = LangModelString[436]..password -- [436]="#cffffff密码: #cffff00"
	local notice_content = LangModelString[437].. -- [437]="#cffffff使用以下密码进入游戏:#r"
	                    user_name_str.."#r"..
                           password_str.."#r#r" --..
                           -- LangModelString[438] -- [438]="#c35c3f7可使用功能菜单的修改密码功能更换密码"

                           print("---user_name", user_name, password )
    local function but_callback()
    	-- 记录登录
    	if BISystem.login then
        	BISystem:login()
    	end
        RoleModel:send_name_and_pw( user_name, password, true )
	end
	-- _login_win:show_notice( notice_content, nil, nil, but_callback )
	_login_win:show_notice_register( user_name, password, but_callback )


	-- user_name = user_name or ""
	-- password = password or ""
	-- local user_name_str = "账号：#cffff00"..user_name
	-- local password_str = "#cffffff密码: #cffff00"..password
	-- RoleModel:show_notice( "#cffffff使用以下密码进入游戏:#r"..
	-- 	                    user_name_str.."#r"..
 --                            password_str.."#r#r"..
 --                            "#c35c3f7可使用功能菜单的修改密码功能更换密码"
	--                       )
end

-- 设置是否阻止操作
function RoleModel:set_lock_operate( if_lock )
	--if _login_win then 
	--    _login_win:lock_operate( if_lock )
	--end
end

-- 设置是否阻止操作
function RoleModel:set_lock_op( if_lock )
	if _login_win then 
	    _login_win:lock_operate( if_lock )
	end
end

-- 按规定时间，阻止操作
function RoleModel:lock_operate_by_time( time )
	RoleModel:set_lock_op( true )
    local function callback_func(  )
        RoleModel:set_lock_op( false )
    end
    _lock_callback:cancel()
    _lock_callback:start( time, callback_func )
end

--有平台的情况下
--向登录服务器密码验证,请求服务器列表
function RoleModel:request_server_list_platform( platform_type )

	if GameStateManager:get_state() ~= "login" or 
	   ( _login_win and _login_win.old_page_name == "select_role") then 
		ZXLog('already in game', GameStateManager:get_state())
		PlatformInterface:showPlatformUI(false)
		return
	end

    MUtils:lockScreen(true,2048)
	
    -- 请求回调
    local function http_callback( error_code, message )
    	print("http_callback error_code,message",error_code,message)
    	if GameStateManager:get_state() ~= "login" or ( _login_win and _login_win.old_page_name == "select_role") then 
        	MUtils:lockScreen(false,2048)
        	PlatformInterface:showPlatformUI(false)
            return
        end
        
    	-- ZXLog("请求服务器列表返回:::::：error code:", error_code)
    	-- ZXLog(string.format("请求服务器列表返回:::::：content: >>%s<<", message))

        RoleModel:show_login_win( GameStateManager:get_game_root() )   -- 创建登录系统窗口
-- message = json_test
		if error_code == 0 then
			MUtils:lockScreen(false,2048)
            -- ZXLog("http返回！！！", message)
            require 'json/json'
            local jtable = {}
			local s,e = pcall(function()
				jtable = json.decode(message)
			end)
			print("s,e",s,e)
			if not s then 
				-- print("进入 s")
                RoleModel:show_notice( LangModelString[425]..RoleModel.json_error.."]" ) -- [425]="登录失败，请重新尝试！["
                MUtils:lockScreen(false,2048)
	            PlatformInterface:logoutFromSelectServer()
                return 
			end
            local resulst_code = jtable['ret']                                   -- 0：操作失败   1：操作成功   -1：其他错误

            if resulst_code == "1" then 
            	-- print("resulst_code == 1")
                RoleModel:set_server_list_date_for_json( jtable['srvlist']  )
                local acount    = jtable['uid'] or ""                          -- 登录服务器返回的 “acount”
                local loginurl  = jtable[ 'loginurl' ] or ""
                local biurl     = jtable[ 'biurl' ] or ""
                local cdkeyurl  = jtable[ 'cdkeyurl' ] or ""
                local payUrl    = jtable[ 'payUrl' ] or ""
                local access_token = jtable[ 'access_token' ] or ""

                GameUrl_global:set_uid( acount )
                GameUrl_global:set_login_url( loginurl )
                GameUrl_global:set_pay_url( payUrl )
                GameUrl_global:set_accessToken( access_token )

                local uid,psw = PlatformInterface:getLoginRet()

                RoleModel:set_login_info( "user_name", acount )

                RoleModel:save_user_name( acount, psw , true)

                -- assert(acount)

                ----old
	            -- RoleModel:change_login_page( "select_server" )
	            -- RoleModel:update_role_win( "server_list" )
	            ----new
	            RoleModel:change_login_page("new_select_server_page")

                PlatformInterface:showPlatformUI(false)
                MUtils:toast(LangModelString[439],2048) -- [439]="获取服务器列表成功!"

                --某些平台JAVA层接口调用需要使用UID by liubo on 2014-08-12
                if PlatformInterface.delivery_platform_uid then
                	PlatformInterface:delivery_platform_uid(acount)
            	end
            elseif resulst_code == "0" then 
                RoleModel:show_notice( LangModelString[424] ) -- [424]="账号或者密码错误！"
                
                local msg = LangModelString[424] -- [424]="账号或者密码错误！"
                PlatformInterface:logoutFromSelectServer(nil, msg)
            else
            	local msg = LangModelString[424] -- [424]="账号或者密码错误！"
            	if ( RoleModel.error_str[resulst_code] ) then
            		-- RoleModel:show_notice( error_str[resulst_code] );
            		msg = RoleModel.error_str[resulst_code]
				else
					-- RoleModel:show_notice( "登录失败，请重新尝试！["..resulst_code.."]" )
					msg = LangModelString[425]..resulst_code.."]" -- [425]="登录失败，请重新尝试！["
            	end

            	PlatformInterface:logoutFromSelectServer(nil, msg)
            end

            --清空自动重试
            setupHttpAutoReconnect()
        else
        	MUtils:lockScreen(false,2048)
        	if not doHttpAutoReconnect() then
	        	ZXLog("http失败!!!")
	        	-- 网络异常的时候也要打点。 不过这时候可能发不过去， 不是很准
	        	if BISystem.error_place_login_to_server then 
	        	    BISystem:error_bi( BISystem.error_place_login_to_server, error_code ) 
	        	end
	        	RoleModel:show_notice( "连接服务器失败！请您检查网络是否正常！["..error_code.."]" )

	            local msg = LangModelString[426]..error_code.."]" -- [426]="连接服务器失败！请您检查网络是否正常！["
	        	PlatformInterface:logoutFromSelectServer(nil, msg)
	       	end
		end
	end

	-- local url0 =   PlatformInterface:get_servlist_url()..get_server_list_page_name  --login_server_ip .. get_server_list_page_name  
	-- --现在由entrance派发 get_servlist.jsp的地址
	-- --modified by xiaojun, at 2014-7-25
	-- local url = UpdateManager.servlist_url or url0
	-- local param = PlatformInterface:get_servlist_param() or ""
	RoleModel:set_lock_operate( true )         -- 锁住，在http响应钱不能做任何操作

    local login_server_ip = GameUrl_global:getServerIP() or ""

	local url   = login_server_ip

	local param = PlatformInterface:get_login_param_json() --'account=' ..user_name.."&pw="..password


	-- ZXLog(LangModelString[441], url , "param:", param ) -- [441]="（平台公用）请求服务器列表： url: "
	print("RoleModel:request_server_list_platform url,param",url,param)
	local http_request = HttpRequest:new( url, param, http_callback )
	http_request:send()
	MUtils:toast(LangModelString[442],2048) -- [442]="获取服务器列表"

	--设置自动重试
	setupHttpAutoReconnect( url, param, http_callback )
end

function RoleModel:set_all_server_list( all_server_list )
    _all_server_list = all_server_list
end


-- 用户名和密码，进行账号登录验证    password_changed: 密码是否有改变，如果改变就要重新保存
function RoleModel:_send_name_and_pw_json( user_name, password, password_changed, show_new_server_list )

    if user_name == nil or user_name == "" then
        RoleModel:show_notice( LangModelString[422] ) -- [422]="请输入用户名"
        return request_server_list_platform
    end
    _login_info.user_name = user_name
    _login_info.password  = password

    local temp_show_new_server_list = show_new_server_list

    --TODO不允许没有密码
    assert(password~='')
	
	--如果有改变获取
	if password_changed then
		-- password = md5(password)
		-- print("md5.....1")
	else
		--解密password，是MD5码
		-- password = self:getPassword( user_name )
		-- print("md5.....2")
	end
	--从配置表拿回来的也是空的
	assert(password~='')

    -- 请求回调
    local function http_callback( error_code, message )
		--print( "服务器列表请求回调::", error_code, message)
		RoleModel:set_lock_operate( false ) 
		print("_send_name_and_pw_json error_code",error_code)
		-- print("error_code, message ::: >>> ", error_code, message)

		if error_code == 0 then
            -- print("成功！！！", message)
            require 'json/json'
            local jtable = {}
			local s,e = pcall(function()
				jtable = json.decode(message)
			end)
-- print("s,e",s,e)
			if not s then 
				-- print("进入 s")
                RoleModel:show_notice( LangModelString[425]..RoleModel.json_error.."]" ) -- [425]="登录失败，请重新尝试！["
                MUtils:lockScreen(false,2048)
                return 
			end
            local resulst_code = jtable['ret']                                   -- 0：操作失败   1：操作成功   -1：其他错误
            print("resulst_code",resulst_code)
            if resulst_code == "1" then 
            	-- print("resulst_code == 1")
                RoleModel:set_server_list_date_for_json( jtable['srvlist']  )
	            ----old
	            --RoleModel:open_select_server_page( )
	            --RoleModel:update_role_win( "server_list" )
	            ----new
	            if temp_show_new_server_list then
	           		RoleModel:update_role_win("new_select_server_list")
	           	else
		            RoleModel:open_select_server_page( )
		            RoleModel:update_role_win( "server_list" )
	           	end
	            RoleModel:save_user_name( user_name, password , password_changed)

	            PlatformInterface:setLoginRet(user_name,password)

	            MUtils:lockScreen(false,2048,'获取服务器列表',1)
	            if BISystem.login then
	            	BISystem:login()
	            end

            elseif resulst_code == "0" then 
                RoleModel:show_notice( LangModelString[424] ) -- [424]="账号或者密码错误！"

               	--提示和错误处理
                MUtils:lockScreen(false,2048)
                if PlatformInterface.logoutFromSelectServer ~= nil then
                	PlatformInterface:logoutFromSelectServer()
                end
            else
            	if not doHttpAutoReconnect() then
	            	if ( RoleModel.error_str[resulst_code] ) then
	            		RoleModel:show_notice( RoleModel.error_str[resulst_code] );
					else
						RoleModel:show_notice( LangModelString[425]..resulst_code.."]" ) -- [425]="登录失败，请重新尝试！["
	            	end

	            	--提示和错误处理
	            	MUtils:lockScreen(false,2048)
	            	if PlatformInterface.logoutFromSelectServer ~= nil then
	            		PlatformInterface:logoutFromSelectServer()
	            	end
	            end
            end

           	--清空自动重试
            setupHttpAutoReconnect()
        else
        	if not doHttpAutoReconnect() then
	        	-- print("请求服务器失败")
	        	RoleModel:show_notice( LangModelString[426]..error_code.."]" ) -- [426]="连接服务器失败！请您检查网络是否正常！["
	        	MUtils:lockScreen(false,2048)

	        	if PlatformInterface.logoutFromSelectServer then
	        		PlatformInterface:logoutFromSelectServer()
	        	end
	        	
	        end
		end

	end
	-- local url = UpdateManager.serverList .. 'register.jsp?type=2&account=1&pw=1&pw_old=1'
	RoleModel:set_lock_operate( true )         -- 锁住，在http响应钱不能做任何操作

    local login_server_ip = GameUrl_global:getServerIP() or ""

	local url   = login_server_ip

	local param = PlatformInterface:get_login_param_json(user_name,password) --'account=' ..user_name.."&pw="..password

	local http_request = HttpRequest:new( url, param, http_callback )
	http_request:send()

	MUtils:lockScreen(true,2048,LangModelString[427],15.0) -- [427]='正在登录'
	--记录自动重试
	if BISystem.login_page then
		BISystem:login_page()
	end
	print("_send_name_and_pw_json, url,param",url,param)
	setupHttpAutoReconnect( url, param, http_callback )
end

function RoleModel:_send_name_and_pw( user_name, password, password_changed, show_new_server_list )
    if user_name == nil or user_name == "" then
        RoleModel:show_notice( LangModelString[422] ) -- [422]="请输入用户名"
        return 
    end
    _login_info.user_name = user_name
    _login_info.password  = password
    local temp_show_new_server_list = show_new_server_list
    -- 保存输入的账号
    -- CCUserDefault:sharedUserDefault():setStringForKey("user_name_list", user_name)
    --MD5加密
    
    --TODO不允许没有密码
    assert(password~='')
	
	--如果有改变获取
	if password_changed then
		password = md5(password)
		-- print("md5.....1")
	else
		--解密password，是MD5码
		password = self:getPassword( user_name )
		-- print("md5.....2")
	end
	--从配置表拿回来的也是空的
	assert(password~='')

	--保存并加密
    -- RoleModel:save_user_name( user_name, password , password_changed)
	-- todo

	-- 这里直接跳过第一次登录验证。  成功后， 跳转到服务器选择界面
	-- RoleModel:set_server_list_date( user_name, password )
 --    RoleModel:open_select_server_page( )

    -- 请求回调
    local function http_callback( error_code, message )
		print( "服务器列表请求回调::", error_code, message)
		RoleModel:set_lock_operate( false ) 

		-- print("error_code, message ::: >>> ", error_code, message)

		if error_code == 0 then
            -- print("成功！！！", message)
            local message_temp = message:match("%s*(.-)%s*$")                 -- 去掉空格  (a,"%s*(.-)%s*$"))
            local register_info_t = Utils:Split_old( message_temp, ",|" )     -- 注意请求服务器列表不一样
            local resulst_code = register_info_t[1]                           -- 0：操作失败   1：操作成功   -1：其他错误
            print("resulst_code",resulst_code)
            if resulst_code == "1" then 
                RoleModel:set_server_list_date( register_info_t[2]  )
	            ----old
	            --RoleModel:open_select_server_page( )
	            --RoleModel:update_role_win( "server_list" )
	            ----new
	            if temp_show_new_server_list then
	           		RoleModel:update_role_win("new_select_server_list")
	           	else
		            RoleModel:open_select_server_page( )
		            RoleModel:update_role_win( "server_list" )
	           	end
	            RoleModel:save_user_name( user_name, password , password_changed)

	            MUtils:lockScreen(false,2048,'获取服务器列表',1)

            elseif resulst_code == "0" then 
                RoleModel:show_notice( LangModelString[424] ) -- [424]="账号或者密码错误！"

               	--提示和错误处理
                MUtils:lockScreen(false,2048)
                if PlatformInterface.logoutFromSelectServer ~= nil then
                	PlatformInterface:logoutFromSelectServer()
                end
            else
            	if not doHttpAutoReconnect() then
	            	if ( RoleModel.error_str[resulst_code] ) then
	            		RoleModel:show_notice( RoleModel.error_str[resulst_code] );
					else
						RoleModel:show_notice( LangModelString[425]..resulst_code.."]" ) -- [425]="登录失败，请重新尝试！["
	            	end

	            	--提示和错误处理
	            	MUtils:lockScreen(false,2048)
	            	if PlatformInterface.logoutFromSelectServer ~= nil then
	            		PlatformInterface:logoutFromSelectServer()
	            	end
	            end
            end

           	--清空自动重试
            setupHttpAutoReconnect()
        else
        	if not doHttpAutoReconnect() then
	        	-- print("请求服务器失败")
	        	RoleModel:show_notice( LangModelString[426]..error_code.."]" ) -- [426]="连接服务器失败！请您检查网络是否正常！["
	        	MUtils:lockScreen(false,2048)

	        	if PlatformInterface.logoutFromSelectServer then
	        		PlatformInterface:logoutFromSelectServer()
	        	end
	        	
	        end
		end

	end
	-- local url = UpdateManager.serverList .. 'register.jsp?type=2&account=1&pw=1&pw_old=1'
	RoleModel:set_lock_operate( true )         -- 锁住，在http响应钱不能做任何操作
	
    local login_server_ip = GameUrl_global:getServerIP() or ""
	local url = login_server_ip .. get_server_list_page_name

	local param = 'account=' ..user_name.."&pw="..password

	print("run RoleModel:_send_name_and_pw url,param",url,param)
	local http_request = HttpRequest:new( url, param, http_callback )
	http_request:send()

	MUtils:lockScreen(true,2048,LangModelString[427],15.0) -- [427]='正在登录'
	--记录自动重试
	setupHttpAutoReconnect( url, param, http_callback )
end

-- tjxs 进入游戏按钮状态
local enter_btn_pushed = false
function RoleModel:get_enter_btn_pushed()
	return enter_btn_pushed
end

function RoleModel:set_enter_btn_pushed( flag )
	enter_btn_pushed = flag
end


--普通账号注册并进行登录
function RoleModel:registe_and_get_server_list( acount_lbl,psw_lbl,tel_lbl )    
	--先请求注册绑定，然后再请求服务器列表
     local function registe_call_back (error_code, message)
             -- body
            local jtable = {}
            local s,e = pcall(function()
                jtable = json.decode(message)
            end)
            print("error_code,message",error_code,message)
            local _ret = jtable['ret']
            local _msg = jtable['msg']
            if error_code==0 then
	             if _ret=="1" then
	                MUtils:toast( "注册成功.", 2048, 3);
	                -- MUtils:lockScreen(true,2048)
	                -- GameStateManager:do_back_to_login()
	  
	                PlatformInterface:setLoginRet(acount_lbl,psw_lbl)
	                -- PlatformInterface:set_platform_type( ePlatformType )
	                RoleModel:request_server_list_platform()

	                -- MUtils:lockScreen(false,2048)
	            elseif _ret=="-2000" then
	             	 MUtils:toast( "账号已存在.", 2048, 3);
	            elseif _ret=="-3000" then
	             	 MUtils:toast( "账号密码含非法字符.", 2048, 3); 	 
	             elseif _ret=="-1000" then
	              	  MUtils:toast( "账号或密码为空.", 2048, 3);
	             else
	              	  MUtils:toast( "注册失败.", 2048, 3); 	  
	            end
	        else
	        	MUtils:toast("网络错误，请重新尝试！",2048)  
        	end
     end 
     local url   = PlatformInterface:get_registe_url()
     local param = PlatformInterface:get_registe_param(acount_lbl,psw_lbl,tel_lbl)
     print("RoleModel:registe_and_get_server_list url,param",url,param)
     local http_request = HttpRequest:new( url, param, registe_call_back )
     http_request:send()
end

