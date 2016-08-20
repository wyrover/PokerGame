--仙界奇缘活动礼包配置

-- activity_sub_id 活动子id   大运营活动里面有多个活动,里面每个活动都有个子活动id 
-- 1000以下的是服务器控制的活动,1000以上的为客户端控制的活动
-- 1.登录活动
-- 2.充值活动,多礼包
-- 3.消费活动,多礼包
-- 4.每日充值,单礼包
-- 5.每日消费,单礼包
-- 6.排行榜活动
-- 7.充值活动,重复单礼包
-- 8.消费活动,重复单礼包
-- 9.每日充值,多礼包
-- 10.每日消费,多礼包
-- 11.登录有礼
-- 12.日常累积活动
-- 13.每日登录有礼活动 (1-13对应协议 138,80)
-- 24:圣诞送礼活动(对应协议 138,96)
-- 995:合服逐鹿中原活动(对应协议　149,7)
-- 996:合服首冲活动(对应协议　149,5)
-- 997:合服阵营试炼活动(对应协议　149,3)
-- 998:合服登录活动(对应协议　149,1)
-- 999:情人元宵活动(对应协议 151,2)     
-- 1000:只有文字(无需协议)  1001:只有图片(无需协议) 1002以上的都是只有道具(无需协议)

-- title_img_path:界面右上角的标题对应的资源名
-- title:界面右下滑动区域内每一排的标题文字(例如:消费达到xxx元宝,登录x天礼包)
-- activity_time_str:界面右上角的活动时间文字(例如:2014年01月15日10:00—2014年01月19日23:59)
-- content:界面右上角的说明文字
-- img:1001活动特有的字段,宣传图对应的资源名
-- top_type:子活动id6排名榜活动特有的字段 1-10分别代表
-- 排名活动类型     
-- rtFightVal = 1, // 战力排行
-- rtLevel = 2,	// 等级排行
-- rtRoot = 3,		// 灵根排行
-- rtAchieve = 4,	// 成就排行
-- rtMount = 5,	// 坐骑排行
-- rtGem = 6,		// 法宝排行
-- rtCharm = 7,	// 魅力排行
-- rtCharmWeek = 8,// 每周魅力排行
-- rtWing = 9,		// 翅膀排行榜
-- rtPet = 10,		// 宠物排行榜

xianjieqiyuan_config = {

	mini_title = {
		{"鲜花达人","周魅力排行",6},--活动小标题（上）,活动小副标题（下）,活动子id（对应下方activity_sub_id）
		{"深海之恋","奖励翻双倍",1001},
		{"幸福瞬间","咱们结婚吧",1001},
	},

	--鲜花达人
	[1] = 
	{
		activity_sub_id = 6,--排名活动
		title_img_path = "xianhuadaren.png",
		title = {"周魅力排行第1名","周魅力排行第2名","周魅力排行第3名","周魅力排行第4~6名","周魅力排行第7~10名"},
		activity_time_str = "2014年01月15日10:00—2014年01月19日23:59",
		content = "在活动结束后，魅力周排行榜上排名前十的玩家，就能领取超值礼包奖励。",
		-- 排名活动类型     
	    -- rtFightVal = 1, // 战力排行
	    -- rtLevel = 2,	// 等级排行
	    -- rtRoot = 3,		// 灵根排行
	    -- rtAchieve = 4,	// 成就排行
	    -- rtMount = 5,	// 坐骑排行
	    -- rtGem = 6,		// 法宝排行
	    -- rtCharm = 7,	// 魅力排行
	    -- rtCharmWeek = 8,// 每周魅力排行
	    -- rtWing = 9,		// 翅膀排行榜
	    -- rtPet = 10,		// 宠物排行榜
	    top_type = 8,
		[1] = {--1
			{ type = 0, id = 18740, count = 5},
			{ type = 0, id = 18730, count = 5},
			{ type = 0, id = 18219, count = 1},
			{ type = 0, id = 18607, count = 2},
			{ type = 0, id = 18610, count = 1},
		},
		[2] = {--2
			{ type = 0, id = 18740, count = 2},
			{ type = 0, id = 18730, count = 2},
			{ type = 0, id = 18219, count = 1},
			{ type = 0, id = 18606, count = 2},
		},	
		[3] = {--3
			{ type = 0, id = 18740, count = 1},
			{ type = 0, id = 18730, count = 1},
			{ type = 0, id = 18219, count = 1},
		},	
		[4] = {--4
			{ type = 0, id = 18711, count = 2},
			{ type = 0, id = 28231, count = 2},
			{ type = 0, id = 28221, count = 2},
		},	
		[5] = {--5
			{ type = 0, id = 18711, count = 2},
			{ type = 0, id = 18604, count = 2},
		},	
	},

	-- 深海之恋
	[2] = 
	{
		activity_sub_id = 1001,
		title_img_path = "shenhaizhilian.png",
		activity_time_str = "2014年01月15日10:00—2014年01月19日23:59",
		content = "在活动期间，深海之恋副本经验、打坐和掉落统统翻不停，你还在等什么呢，赶紧行动吧！",
		img = { "shzl.jpg" },
	},

	-- 幸福瞬间
	[3] = 
	{
		activity_sub_id = 1001,
		title_img_path = "xingfushunjian.png",
		activity_time_str = "2014年01月15日10:00—2014年01月19日23:59",
		content = "在活动期间，将结婚记录截图并发至游戏官方论坛中，即可领取礼包，每个角色只能领取一次哦！",
		img = { "xfsj.jpg" },
	},		
}