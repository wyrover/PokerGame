--LanternConfig.lua
--内容：情人节活动的配置单体对象
--作者：陈亮
--时间：2015-2-4

--加载通用活动配置类
require "config/activity/CBaseCommonConfig"

--创建情人节活动的配置单体对象
LanternConfig = BaseCommonConfig(nil)

----------------------------------------------------------------------
--可以增加活动的特殊处理参数文件的配置函数
----------------------------------------------------------------------

--功能：刷新配置活动参数，进行分服的通用活动配置对象都要重写refreshActivityParam这个函数
--参数：1、activityId	活动ID
--返回：无
--作者：陈亮
--时间：2014.10.31
function LanternConfig:refreshActivityParam(activityId)
	local t_activityParam = nil

	if activityId == CommonActivityConfig.LanternDay then
		print("CommonActivityConfig.LanternDay",CommonActivityConfig.LanternDay)
		--加载情人节参数文件
		require "../data/activity_config/CommonActivity/ValentineDayParam"
		t_activityParam = ValentineDayParam
	end

	self:setActivityParam(t_activityParam)
end