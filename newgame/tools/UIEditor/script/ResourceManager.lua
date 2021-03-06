-- ResourceManager.lua
-- created by aXing on 2012-12-7
-- 资源管理器
-- 管理游戏内所有的资源

local __resmgr =  ZXResMgr:sharedManager()
local __assetsmgr = AssetsManager:sharedManager()
local _writablePath = __assetsmgr:getStoragePath()
super_class.ResourceManager()
LangGameString = {}

-- 资源加载列表
local task_list = {}
local task_timer = timer()
local task_count = 1
local task_index = 0
local function SafeloadUI(file)
	if not __resmgr:loadUI(file) then
		error('failed to load .imageset ' .. file)
	end
end

local function SafeLoadFrame(file)
	if not __resmgr:loadFrame(file) then
		error('failed to load .frame ' .. file)
	end
end

--初始化字体信息
local function init_font_info()
	-- edited by aXing on 2013-5-7
	-- 以后不再这里初始化字体，因为需要在资源更新之前就初始化字体
	-- 而ResourceManager这个类会频繁被改动
	-- 所以，字体的初始化，单独抽取出来，放在zhanxian.lua里面
--	__resmgr:initFontInfo("微软雅黑", 24, 1, 1, 512, 512, 1, 6408, 0xc5ede8)
end

-- 读取序列帧资源管理文件
-- 读取通用的帧文件
-- 角色配置，特效配置，buff配置等
local function load_common_frame()
	local _tb = texture_xml['frame']
	for i, v in ipairs(_tb) do
		SafeLoadFrame(v.file)
	end

	local _tb = texture_xml['scene']
	for i, v in ipairs(_tb) do
		SafeLoadFrame(v.file)
	end
end
--[[
--读取场景配置 path = 'monster' or 'npc',  subpath = 动画文件夹
local function load_scene_entity_frame(path, subpath)
	local _tb = texture_xml['scene'][path][subpath]
	for i, v in ipairs(_tb) do
		SafeLoadFrame(v.file)
	end
end
]]--

------ 不常用资源
-- 读取灵根资源
local function load_linggen()
end

-- 读取小地图资源
local function load_minimap()
end

-- 读取角色界面资源
local function load_role()
end

-- 读取登录界面资源
local function load_login()
	-- SafeloadUI("ui2/login_ani/ui2_login_ani1.imageset")
end

-- 读取欢迎界面资源
local function load_welcome()
	-- SafeloadUI("ui2/welcome/ui2_welcome2.imageset")
end

--读取服务器资源
local function load_server_res()

		-- require "../data/server_name_config"
  --   for i=1,100 do
  --       local str_tab = string2Unicode(server_name_config[i]) 
  --       for j=1,#str_tab do
  --           local r = ZXResMgr:sharedManager():getUIInfo("ui2/server/"..string.format('%x',str_tab[j])..".png", false)
  --           if not r then
  --               print("找不到",server_name_config[i],j,string.format('%x',str_tab[j]))
  --           end
  --       end 
  --   end
  --   if true then return end
end

-- 读取ui资源管理文件
local function load_ui()
	--批量读取ui文件夹下面的文件
	local _tb = texture_xml['ui']
	for i, v in ipairs(_tb) do
		SafeloadUI(v.file)
	end

	-- local _tb = texture_xml['particle']
	-- for i, v in ipairs(_tb) do
	-- 	SafeloadUI(v.file)
	-- 	-- print(v.file)
	-- end

	-- for i, path in ipairs(UNCOMPRESSED_TEXTURES) do
	-- 	__resmgr:setTextureColorCompressWithName(path,false)
	-- end
end

--读取表情信息
local function load_chat_face()
	local _tb = texture_xml['chat_face']
	for i, v in ipairs(_tb) do
		SafeLoadFrame(v.file)
	end
end

-- 初始化资源管理器
function ResourceManager:init()
	--读取 resource文件夹下面的xml
	--通过工具生成的文件，请使用打包工具生成文件列表
	require '../data/texture_path'
	require '../data/texOffset'
--	init_font_info() 
end

-- 析构资源管理器
function ResourceManager:purge()
	_loaded_scene_cfg = {}
end

-- 下一帧是否回收资源标签
local _resource_dirty = false
local _texture_recycle_timer   = timer()
local _texture_recycle_timer_t = 30
local _lastCollect = os.clock()
-- 设置资源引用有需要回收的，在下一帧会通知引擎回收贴图资源
function ResourceManager:set_resource_dirty()
	_resource_dirty = true
end

-- 通知引擎检查资源回收
local function doCollect()
	--print(os.clock() - _lastCollect)
	ZXLog("collect actions")
	phone_removeUnusedActions()
	ZXLog("collect frames")
	ZXSpriteFrameCache:sharedCache():removeUnusedFrames()
	ZXLog("collect texture")
	CCTextureCache:sharedTextureCache():removeUnusedTextures()
	ZXLog("collect script")
	collectgarbage("collect")
	--_lastCollect = os.clock()
end

function ResourceManager:garbage_collection(force)
	if _resource_dirty or force == true then
		_resource_dirty = false
		doCollect()
		_texture_recycle_timer:stop()
		_texture_recycle_timer:start_global(_texture_recycle_timer_t, doCollect)
	end
end

-- 加载全部的数据结构
local function init_struct()
	require "struct/__init"
end

-- 加载全部的cc
local function init_cc()
	require "control/__init"
end

-- 加载全部的model
local function init_model()
	require "model/__init"
end

-- 加载全部的ui
local function init_ui()
	require "UI/__init"
end

-- 加载静态配置读取类
local function init_config()
	require "config/__init"
end

-- 加载小游戏
local function init_small_game()
	--require "game/__init"
end

-- 加载工具类
local function init_others()
	-- require "net/__init"
	-- require "sound/__init"
	require "utils/__init"
	-- require "joystick/__init"
	-- require "scene/__init"
	-- require "action/__init"
	-- require "AI/__init"
	-- require "entity/__init"
	-- require "analyze/__init"
	-- require "XSZY/__init"
	-- require "effect/__init"
	-- require "pay/__init"
	-- require "instruction/__init"

	-- require "GlobalFunc"

	-- require 'EventSystem'
	-- EventSystem.init()
end

-- 初始化主游戏
function ResourceManager:init_game()
	---------------
    --设置一般的动画帧序列，如怪物
	require "UI/sceneLoading/SceneLoadingWin"
	local win = SceneLoadingWin:show_instance(nil,0,100)
	if BISystem.enter_init_game then
		BISystem:enter_init_game()
	end
	-- 这将会是一个timer的过程
	-- 然后是一个队列，当加载完一个任务后，会让回调界面
	-- 这里在游戏初始化模块，我们将会加载几大代码模块
	-- ResourceManager:add_task(LangGameString[506], 	init_struct) -- [506]="数据结构"
	-- ResourceManager:add_task(LangGameString[507], 	init_cc) -- [507]="网络协议"
	-- ResourceManager:add_task(LangGameString[508], 	init_config) -- [508]="静态配置"
	-- ResourceManager:add_task(LangGameString[509], 	init_model) -- [509]="系统模块"
	ResourceManager:add_task(LangGameString[510], 	init_others) -- [510]="工具类"
	-- ResourceManager:add_task(LangGameString[511],	init_small_game) -- [511]="小游戏"
	ResourceManager:add_task(LangGameString[512], 	init_ui) -- [512]="控件模块"
	-- 加载完代码模块后，需要加载客户端资源配置表

	-- ResourceManager:add_task(init_font_info)
	-- ResourceManager:add_task(LangGameString[513], 	load_common_frame) -- [513]="动画配置"
	ResourceManager:add_task(LangGameString[514], 	load_ui) -- [514]="ui配置"
	
	-- 不常用的ui资源
	-- ResourceManager:add_task(LangGameString[515], 	load_linggen) -- [515]="灵根配置"
	-- ResourceManager:add_task(LangGameString[516], 	load_minimap) -- [516]="小地图配置"
	-- ResourceManager:add_task(LangGameString[517],	load_role) -- [517]="选择角色配置"
	-- ResourceManager:add_task(LangGameString[518], 	load_login) -- [518]="登录配置"
	-- ResourceManager:add_task(LangGameString[519], 	load_welcome) -- [519]="欢迎界面"
	-- ResourceManager:add_task(LangGameString[520],	load_chat_face) -- [520]="表情配置"
	-- ResourceManager:add_task(LangGameString[521],	load_server_res) -- [521]="服务器配置"
	-- 加载必要的贴图资源

	local function after_loading()
		GameStateManager:set_state("scene")
		--GameStateManager:set_state("mapedite")
	end
	-- 加载完后，转入游戏场景
	ResourceManager:add_task(LangGameString[522], after_loading) -- [522]="启动游戏"
	task_count = #task_list-1
	task_index = 0
end

-- 记录一下哪个场景配置是读取过了的
local _loaded_scene_cfg = {}

-- 过场景的时候加载场景资源
function ResourceManager:load_scene(scene_name)
	
	-- 先显示加载页面
	--local win = SceneLoadingWin:show_instance(nil,100,0)

	-- 然后看是否需要加载地图配置，如果有就加入加载列表
	--[[
	local _tb = texture_xml['scene']
	if _loaded_scene_cfg[scene_name] == nil then
		for i, v in ipairs(_tb) do
			if string.find(v.file, scene_name) ~= nil then
				SafeLoadFrame(v.file)
			end
		end
		_loaded_scene_cfg[scene_name] = true
	end
	]]--
	-- 然后再载入必要的npc和怪物的模型贴图
	

	-- 加载完成后移除界面
	-- ResourceManager:add_task("启动游戏", SceneLoadingWin.destroy_instance)
end

-- 做下一个任务，如果任务没有了，就停止timer
local function do_next_task(dt)
	local next_task = table.remove(task_list, 1)
	if next_task == nil then
		task_timer:stop()
		SceneLoadingWin:get_instance()
		return
	end
	local win = SceneLoadingWin:get_instance()
	if win then
		win:set_loading_label(next_task[1], task_count, task_index)
		task_index = task_index + 1
	end
	next_task[2]()
end

-- 添加加载任务，如果任务列表是空的，则启动timer
function ResourceManager:add_task(name, func)
	if #task_list == 0 then
		task_timer:start(0, do_next_task)
	end
	table.insert(task_list, {name, func})
end

-- 读取登录界面序列帧
function ResourceManager:load_login_effect()

end

local function dummy(n)
	print(n)
end

function ResourceManager:EnterGameWorld()
	--ImageUnitTextureBackgroundLoad(UIResourcePath.FileLocate.task .. "npc_d_bg.png", dummy)
	--ImageUnitTextureBackgroundLoad(UIResourcePath.FileLocate.npc .. "half/00001.png", dummy)
	--ImageUnitTextureBackgroundLoad(UIResourcePath.FileLocate.npc.."npc_name/1.png", dummy)
end

--[[
	异步加载机制，UI图元
	@params
		name = 图元名字
		func = 回调函数，回调函数需要接受两个参数，第一个参数是name, 第二个参数是texture_name
		obj  = 对象
			example
			--调用
			ResourceManager.ImageUnitTextureBackgroundLoad(icon_texture, self.set_icon_texture_load, self)

			--后台加载回调
			function SlotBase:set_icon_texture_load(icon_texture, texture_loaded)
				--如果加载失败 texture_loaded == nil
			    if not texture_loaded then
			        return
			    end
			    --保证回调回来的图元是同一个
				if self.cur_icon_texture == icon_texture then
					self.icon:replaceTexture(icon_texture)
				end
				self.icon:release()
			end
]]
function ResourceManager.ImageUnitTextureBackgroundLoad(name, func, obj)
	if obj then
		LoadImageUnitTextureAsync(name,bind(func,obj,name)) 
	else
		LoadImageUnitTextureAsync(name,bind(func,name))
	end
end

--[[
	异步加载机制动画
	@params
		name = 动画path
		func = 回调函数，回调函数需要接受两个参数，第一个参数是name, 第二个参数是texture_name
			example
			    ResourceManager.AnimationBackgroudnLoad(fileName, 
			        function(_loadedFile)
			            if not _loadedFile then
			                --处理失败
			                return
			            end
			       ))
]]
function ResourceManager.AnimationBackgroudnLoad(name, func)
	LoadFrameTextureAsync(name,func)
end

--[[
	查找文件，如果找不到下载
	@params
		fileSave = 文件所在
		url = 下载地址
		func = 回调函数
		priority = 优先度，默认0
				PRIORITY_QUEUE_BACK =  0,		//下载等待队列尾
				PRIORITY_QUEUE_BACK_KEEPS = 1,  //下载等待队列尾 clearDownload的时候不会被删除，比如地图切换
				PRIORITY_QUEUE_FRONT = 2,		//下载等待队列头
				PRIORITY_QUEUE_FRONT_KEEPS = 3, //下载等待队列头 clearDownload的时候不会被删除，比如地图切换

		example 
		ResourceManager.CreateDirectory('face')
		ResourceManager.LoadFileWWW('face/a.jpg',
									'http://q.qlogo.cn/qqapp/1000000129/41528F75B54BBF25082A8CB171E0687D/40',
									function(name) print('file load', name) end)
]]
function ResourceManager.LoadFileWWW(fileSave,url,func,priority)
	--[[
'face/a.jpg',
					'http://q.qlogo.cn/qqapp/1000000129/41528F75B54BBF25082A8CB171E0687D/40', 
					false,
					0,
					function(name) print('file load', name) end
		]]--
		priority = priority or 0
		LoadWWWFile(fileSave,url,false,priority,func)
end

--[[
	创建文件目录
]]
function ResourceManager.CreateDirectory(path)
	path = _writablePath .. path
	__assetsmgr:createDirectory(path)
end

function NPC_PortraitBackgroundLoader(portrait, name , cbfunc, obj)
--@debug_begin
	assert(plistIndexTable[portrait] == plistIndexTable[name]) 
--@debug_end
	local pfile = plistIndexTable[portrait]
	local pngfile = pfile .. '.png'

	ResourceManager.ImageUnitTextureBackgroundLoad(pngfile, cbfunc, obj)
	return pfile
end


function ResourceManager:loadFrames()
	require '../data/texture_path'
	load_common_frame()
end

function ResourceManager:loadAnimationEditor()
	print('loadAnimationEditor')
	require '../data/texture_path'
	load_common_frame()
end