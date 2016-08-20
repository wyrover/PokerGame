--ValentineDayModel.lua
--内容：情人节活动的单体数据逻辑类
--作者：陈亮
--时间：2014.10.27

--加载情人节活动的配置对象
require "config/activity/ValentineConfig"

--加载通用活动数据逻辑类
require "model/activity/CBaseCommonModel"

--定义常量

-- local _FOLLOW_QUEUE_PARAM_INDEX 	= 1
-- local _EXCHANGE_PARAM_INEDEX        = 1
-- -- local _TREASURE_PARAM_INDEX         = 2
-- local  _TAOBAO_PARAM_INDEX          = 2
-- local _REPEAT_CONSUME_PARAM_INDEX   = 3
-- local _GROUP_BUY_PARAM_INDEX 	    = 4
-- local _APPUP_LOGIN_PARAM_INDEX 	    = 5
-- local _BOSS_HIT_PARAM_INDEX 	 	= 6
-- local _BOX_DOWN_PARAM_INDEX 	    = 7

local _SEND_FOLLOW_QUEUE_PARAM_INDEX = 1
local _RECEIVE_FOLLOW_QUEUE_PARAM_INDEX = 2
local _LUOPAN_PARAM_INDEX = 3
local _VALENTINE_DAY_PARAM_INDEX 	= 4
local _EVERY_CONSUME_PARAM_INDEX   = 5

--创建情人节活动数据逻辑
ValentineDayModel = BaseCommonModel(nil,ValentineConfig)

--功能：显示情人节活动窗口
--参数：1、isInit	是否需要初始化
--返回：无
--作者：陈亮
--时间：2014.09.19
function ValentineDayModel:showvalentineDayWin(isInit)
	--获取情人节活动窗口，因为是显示窗口才调这个函数，所以不用判断
	local t_valentineDayWin = UIManager:find_visible_window("valentineDayWin")
	--如果需要初始化，进行对情人节活动窗口进行初始化
	if isInit then
		self:initActivityWin(t_valentineDayWin)
	end
end

--功能：显示情人节幸运转盘页面
--参数：1、isInit	是否需要初始化
--返回：无
--作者：郭志楠
--时间：2015.2.6
function ValentineDayModel:showVLuoPanPage(isInit)
	--获取情人节活动窗口，因为是显示窗口才调这个函数，所以不用判断
	local t_win = UIManager:find_visible_window("valentineDayWin")

	--设置为当前显示页
	self._currentParamIndex = _LUOPAN_PARAM_INDEX

	--如果需要初始化，进行对副本页面进行初始化
	if isInit then
		self:initGotoActivityPage(t_win)
	end

	--更新页面基础信息
	self:updatePageBaseInfo(t_win)
end

--功能：显示圣诞节兑换页面
--参数：1、isInit	是否需要初始化
--返回：无
--作者：肖进超
--时间：2014.12.17
function ValentineDayModel:showCExchangePage(isInit)
	local t_win = UIManager:find_visible_window("valentineDayWin")
    
	--设置为当前显示页
	self._currentParamIndex = _EXCHANGE_PARAM_INEDEX

	--如果需要初始化，进行对兑换页面初始化
	if isInit then
		self:initExchangePage(t_win)
	end

	--更新页面基础信息
	self:updatePageBaseInfo(t_win)

	--请求兑换界面信息
	self:requestExchangeInfo()
end


--功能：显示圣诞节淘宝树页面或淘宝树页面
--参数：1、isInit	是否需要初始化
--返回：无
--作者：肖进超
--时间：2014.12.17
function ValentineDayModel:showCTaobaoPage(isInit)
    local t_win = UIManager:find_visible_window("valentineDayWin")

	--设置为当前显示页
	self._currentParamIndex = _TAOBAO_PARAM_INDEX

	--如果需要初始化，进行对宝箱页面进行初始化
	if isInit then
		self:initMovePlacePage(t_win)
	end

	--更新页面基础信息
	self:updatePageBaseInfo(t_win)
end


--功能：显示情人节鲜花排行页面
--参数：1、isInit	是否需要初始化
--返回：无
--作者：陈亮
--时间：2014.10.27
function ValentineDayModel:showSendFollowQueuePage(isInit)
	--获取情人节活动窗口，因为是显示窗口才调这个函数，所以不用判断
	local t_valentineDayWin = UIManager:find_visible_window("valentineDayWin")

	--设置为当前显示页
	self._currentParamIndex = _SEND_FOLLOW_QUEUE_PARAM_INDEX

	--如果需要初始化，进行对宝箱页面进行初始化
	if isInit then
		self:initQueuePage(t_valentineDayWin)
	end

	--更新页面基础信息
	self:updatePageBaseInfo(t_valentineDayWin)
end

--功能：显示情人节鲜花排行页面
--参数：1、isInit	是否需要初始化
--返回：无
--作者：陈亮
--时间：2014.10.27
function ValentineDayModel:showReceiveFollowQueuePage(isInit)
	--获取情人节活动窗口，因为是显示窗口才调这个函数，所以不用判断
	local t_valentineDayWin = UIManager:find_visible_window("valentineDayWin")

	--设置为当前显示页
	self._currentParamIndex = _RECEIVE_FOLLOW_QUEUE_PARAM_INDEX

	--如果需要初始化，进行对宝箱页面进行初始化
	if isInit then
		self:initQueuePage(t_valentineDayWin)
	end

	--更新页面基础信息
	self:updatePageBaseInfo(t_valentineDayWin)
end

--功能：显示情人节珍宝轩页面
--参数：1、isInit	是否需要初始化
--返回：无
--作者：肖进超
--时间：2014.10.29
function ValentineDayModel:showLDTreasurePage(isInit)
	--获取情人节活动窗口，因为是显示窗口才调这个函数，所以不用判断
	local t_win = UIManager:find_visible_window("valentineDayWin")

	--设置为当前显示页
	self._currentParamIndex = _TREASURE_PARAM_INDEX

	--如果需要初始化，进行对副本页面进行初始化
	if isInit then
		self:initGotoActivityPage(t_win)
	end

	--更新页面基础信息
	self:updatePageBaseInfo(t_win)
end

--功能：显示情人节重复消费页面
--参数：1、isInit	是否需要初始化
--返回：无
--作者：肖进超
--时间：2014.10.29
function ValentineDayModel:showLDRepeatConsumePage(isInit)
	--获取国庆节活动窗口，因为是显示窗口才调这个函数，所以不用判断
	local t_win = UIManager:find_visible_window("valentineDayWin")

	--设置为当前显示页
	self._currentParamIndex = _REPEAT_CONSUME_PARAM_INDEX

	--如果需要初始化，进行对副本页面进行初始化
	if isInit then
		self:initRepeatGainPage(t_win)
	end

	--更新页面基础信息
	self:updatePageBaseInfo(t_win)

	--请求重复消费信息
	self:requestRepeatConsumeInfo()
end

--功能：显示情人节超级团购页面
--参数：1、isInit	是否需要初始化
--返回：无
--作者：肖进超
--时间：2014.10.29
function ValentineDayModel:showLDGroupBuyPage(isInit)
	--获取情人节活动窗口，因为是显示窗口才调这个函数，所以不用判断
	local t_win = UIManager:find_visible_window("valentineDayWin")

	--设置为当前显示页
	self._currentParamIndex = _GROUP_BUY_PARAM_INDEX

	--如果需要初始化，进行对情人节超级团购进行初始化
	if isInit then
		self:initGroupBuyPage(t_win)
	end

	--更新页面基础信息
	self:updatePageBaseInfo(t_win)
end

--功能：显示情人节累计登陆页面
--参数：1、isInit	是否需要初始化
--返回：无
--作者：肖进超
--时间：2014.10.14
function ValentineDayModel:showLDAddupLoginPage(isInit)
	--获取情人节活动窗口，因为是显示窗口才调这个函数，所以不用判断
	local t_win = UIManager:find_visible_window("valentineDayWin")

	--设置为当前显示页
	self._currentParamIndex = _APPUP_LOGIN_PARAM_INDEX

	--如果需要初始化，进行对情人节累计登陆页面进行初始化
	if isInit then
		self:initGainAwardPage(t_win)
	end

	--更新页面基础信息
	self:updatePageBaseInfo(t_win)

	--请求累计登陆页面信息
	self:requestTotalLoginInfo()
end

--功能：显示情人节BOSS页面
--参数：1、isInit	是否需要初始化
--返回：无
--作者：肖进超
--时间：2014.10.14
function ValentineDayModel:showLDBossHitPage(isInit)
	--获取情人节活动窗口，因为是显示窗口才调这个函数，所以不用判断
	local t_win = UIManager:find_visible_window("valentineDayWin")

	--设置为当前显示页
	self._currentParamIndex = _BOSS_HIT_PARAM_INDEX

	--如果需要初始化，进行对副本页面进行初始化
	if isInit then
		self:initGotoActivityPage(t_win)
	end

	--更新页面基础信息
	self:updatePageBaseInfo(t_win)
end



--功能：显示每日限购页面
--参数：1、isInit	是否需要初始化
--返回：无
--作者：谢汉德
--时间：2014.10.14
function ValentineDayModel:showDailyQuotaGuyPage(isInit)
	--获取光棍节活动窗口，因为是显示窗口才调这个函数，所以不用判断
	local t_win = UIManager:find_visible_window("valentineDayWin")

	--设置为当前显示页
	self._currentParamIndex = _VALENTINE_DAY_PARAM_INDEX

	--如果需要初始化，进行对副本页面进行初始化
	if isInit then
		self:initGotoActivityPage(t_win)
	end

	--更新页面基础信息
	self:updatePageBaseInfo(t_win)
end



--功能：显示情人节宝天降箱页面
--参数：1、isInit	是否需要初始化
--返回：无
--作者：肖进超
--时间：2014.10.14
function ValentineDayModel:showLDBoxDownPage(isInit)
	--获取情人节活动窗口，因为是显示窗口才调这个函数，所以不用判断
	local t_win = UIManager:find_visible_window("valentineDayWin")

	--设置为当前显示页
	self._currentParamIndex = _BOX_DOWN_PARAM_INDEX

	--如果需要初始化，进行对宝箱页面进行初始化
	if isInit then
		self:initMovePlacePage(t_win)
	end

	--更新页面基础信息
	self:updatePageBaseInfo(t_win)
end

--功能：刷新某个页面的信息
--参数：1、page_type	当前页面类型
function ValentineDayModel:refreshPageInfo(page_type)
	local t_win = UIManager:find_visible_window("valentineDayWin")
	--如果没有显示，不进行操作
	if (not t_win) then
		return
	end

	local t_pageType = t_win:getCurrentPageType()
	if t_pageType == page_type then
		if t_pageType == CommonActivityConfig.TypeSendFlowerQueue then
			t_win._currentPage:refreshData();
		elseif t_pageType == CommonActivityConfig.TypeReceiveFlowerQueue then
			t_win._currentPage:refreshData();
		end
	end
end

--功能：显示每日消费页面
--参数：1、isInit	是否需要初始化
--返回：无
--作者：肖进超
--时间：2014.12.17
function ValentineDayModel:showCEveryConsumePage(isInit)
	local t_win = UIManager:find_visible_window("valentineDayWin")

	--设置为当前显示页
	self._currentParamIndex = _EVERY_CONSUME_PARAM_INDEX

	--如果需要初始化
	if isInit then
		self:initGainAwardPage(t_win)
	end

	--更新页面基础信息
	self:updatePageBaseInfo(t_win)

    --请求每日消费页面信息
	self:requestEveryConsumeInfo()
end

--功能：刷新活动中通用页面的信息
--参数：1、activityInfo		通用页面信息
--返回：无
--作者：肖进超
--时间：2014.10.30
function ValentineDayModel:flushPageInfo(activityInfo)
	--获取情人节活动窗口
	local t_win = UIManager:find_visible_window("valentineDayWin")
	--如果没有显示，不进行操作
	if (not t_win) then
		return
	end

	self:flushCommonInfo(t_win, activityInfo)
end

--功能：结束数据逻辑
--参数：无
--返回：无
--作者：陈亮
--时间：2014.08.30
function ValentineDayModel:finish()
	UIManager:destroy_window("valentineDayWin")
end