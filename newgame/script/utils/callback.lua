--回调！
local CSS = CCScheduler:sharedScheduler()
local scheduleScriptFunc = CSS.scheduleScriptFunc
local unscheduleScriptEntry = CSS.unscheduleScriptEntry
local reserve = {}
--类
callback = { running = {} }

function callback.print_running()
	--print('running callbacks:')
	for k,v in pairs(callback.running) do
		--print(' ','id',k.scheduler_id,v.source, v.currentline)
	end
	--print(' ','-------------------------')
end
--new函数
function callback:new( ... )
    local i = {}
    setmetatable(i, self)
    self.__index = self
	i:__init( ... )
    return i
end

--构造函数，构造就立刻开始
function callback:__init()
	self.scheduler_id = nil			--计划id
end

function callback:start(_time, _function)
	local t = reserve
	self:cancel()

--@debug_begin
	t = debug.getinfo(2,'Sl')
--@debug_end
	callback.running[self] = t

	local function cb(dt) 
		local s = ZXLuaUtils:GetTickCounts()
		
		
		unscheduleScriptEntry(CSS,self.scheduler_id)
		self.scheduler_id = nil
		_function(dt) 
		callback.running[self] = nil
			local e = ZXLuaUtils:GetTickCounts()
			luaPerformance:add_performance(string.format("%s callback性能检查",tostring(_function)),e-s)
			
	end
	
	self.scheduler_id = scheduleScriptFunc(CSS,cb,_time,false)
end

--start_global 不会因为scene_leave or cancel_all被取消
function callback:start_global(_time, _function)
	local t = reserve
	self:cancel()
	local function cb(dt) 
		unscheduleScriptEntry(CSS,self.scheduler_id)
		self.scheduler_id = nil
		_function(dt) 
	end
	self.scheduler_id = scheduleScriptFunc(CSS,cb,_time,false)
end

--取消
function callback:cancel()
	if self.scheduler_id then
		unscheduleScriptEntry(CSS,self.scheduler_id)
		self.scheduler_id = nil
		callback.running[self] = nil

	end
end

--是否空闲，如果空闲可以被start
function callback:isIdle()
	return self.scheduler_id == nil
end

function callback.cancel_all()
	--print('cancel all callback')
--@debug_begin
	callback.print_running()
--@debug_end
	for k,v in pairs(callback.running) do
		k:cancel()
	end
end

function callback.scene_leave()
	--print('scene_leave callback')
--@debug_begin
	callback.print_running()
--@debug_end
	for k,v in pairs(callback.running) do
		k:cancel()
	end
end



function testcallback()
	require 'base'
	local function fd(dt) print('time:' .. dt) end
	local function runningcb(dt) print('time:' .. dt); callback.print_running()  end

	local cb0 = callback:new()
	local cb1 = callback:new()
	local cb2 = callback:new()
	--在第三秒取消第四秒的
	local function cancel(dt) print('time:' .. dt); cb2:cancel();callback.print_running() end
	local cb3 = callback:new()

	cb0:start(1,fd)
	cb1:start(2,runningcb)
	cb2:start(4,fd)
	cb3:start(3,cancel)



	--print(cb0.scheduler_id)
	--print(cb1.scheduler_id)
	--print(cb2.scheduler_id)
	--print(cb3.scheduler_id)
end