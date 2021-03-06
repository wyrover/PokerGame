script_reload = {
		SCRIPT_PATH = {
	    wing_win = {"SUI/wing/SWingWin","SUI/wing/SCBHuaXingPage","SUI/wing/SCBJinJiePage","SUI/wing/SCBPeiYangPage","model/WingModel","control/WingCC","config/WingConfig" },
	    user_equip_and_attr_win = {"SUI/UserEquipAndAttrWin/SUserFashionPage","model/WardrobeModel","control/FashionCC","model/FashionModel","SUI/UserEquipAndAttrWin/UserEquipAndAttrWin","SUI/tips/cloth_gather_tip"},
	    cloth_gather_tip={"SUI/tips/cloth_gather_tip"},
	    guild_win = {"UI/guild/GuildWin", "UI/guild/GuildList", "UI/guild/GuildBuilding","UI/guild/CreateGuildWin","UI/guild/GuildInfoPage","UI/guild/GuildMember",   "UI/guild/GuildTianyan","UI/guild/tian_yuan_page/GuildTianyanLeft","UI/guild/tian_yuan_page/GuildTianyanRight","UI/guild/GuildApplyWin", "UI/guild/ApplyList",
		"UI/guild/GuildAltarEggPage","UI/guild/GuildAltarPage","UI/guild/guild_info_page/GuildInfoPageLeft",
		"UI/guild/guild_info_page/GuildInfoPageRight","UI/guild/FamilyDonateWin","UI/guild/GuildDetailPanel",
		"UI/guildshopwin/GuildShopWin"},
		bag_win={"UI/bag/BagWin","UI/tips/TipsWin","UI/tips/ItemTipView","UI/tips/DressTipView","UI/tips/WingTipView","UI/component/SlotItem","UI/component/SlotMove","UI/cangku/CangKuWin","UI/main/ComboAttackView","UI/component/ImageNumber"},
	    chat_win={"UI/chat/ChatWin","UI/chat/ChatInfo","UI/chat/ChatFaceWin","UI/chat/ChatInfo","UI/chat/ChatInput","UI/chat/ChatFaceWin","UI/chat/ChatContentScroll","/model/LeftClickMenuMgr",
	    "model/ChatModel/ChatModel"
	    },	
	    geocaching_win = { "SUI/geocaching/SGeocachingWin","model/SGeocachingModel","control/SGeocachingCC",},
		treasurepreview_win = { "SUI/geocaching/STreaurePreviewWin" },
		contact_win = {"../resource/data/uieditor/contact_win","SUI/contact/SCTMailPage","SUI/contact/SContactWin", "SUI/contact/SCTTeamPage"},
		mini_map_win = {"UI/minimap/MiniMapWin","UI/minimap/CurrentMapPage","UI/minimap/WorldMapPage"},
		guild_list = {"SUI/guild/SGuildList"},
		create_guild_win = {"UI/guild/CreateGuildWin"},
		guild_win = {"SUI/guild/SGuildYuezhan","SUI/guild/SGuildRisingStarWin","SUI/guild/SGuildPrayingWin","SUI/guild/SGuildShuxing","SUI/guild/SGuildPaoshang","SUI/guild/SGuildTaskWin","SUI/guild/SGuildWin","SUI/guild/SGuildRankPage","SUI/guild/SGuildMemberPage","SUI/guild/SGuildInfoPage","SUI/guild/SGuildAddListPage","SUI/guild/SGuildBossWin"},
		guild_shop_win = {"SUI/guild/SGuildShopWin",},
		systemset_win = {"SUI/systemset/SSystemSetWin","SUI/systemset/PushSetPanel"},
		spartner_win = {"SUI/partner/SPartnerWin", "SUI/partner/SPAttrPage", "SUI/partner/SPAddedPage", "SUI/partner/SPTujianPage", "model/SPartnerModel",
						"SUI/partner/SPSkillWin", "SUI/partner/SPFosterWin", "SUI/partner/SPFusionWin", 
						"SUI/partner/SPDivideWin", "SUI/partner/SPNormalWin", "UI/common/SInputDialog" },
		sactivity_win = {"SUI/activity/SActFBPage", "SUI/activity/SActHDPage", "SUI/activity/SActTJPage", "model/WantedModel",
				"SUI/activity/SActYSPage", "SUI/activity/SActivityWin", "SUI/fuben/SNormalRankWin",
				"model/SDoufataiModel", "SUI/fuben/doufatai/DftShopWin", "SUI/fuben/doufatai/DftExploitDialog", 
				"control/DoufataiCC", "SUI/fuben/ttsl/STtslSdDialog", 
				"SUI/activity/hdpages/STtslPage", "SUI/activity/hdpages/SLlhjPage","SUI/activity/hdpages/SXyzzPage",
				"SUI/activity/hdpages/SDftPage", "SUI/activity/hdpages/SZdttPage", "model/WorldBossModel","SUI/activity/hdpages/SMrjqPage"},
		fbes_cardsld_win = {"SUI/fuben/SFBResultWin", "SUI/fuben/SFBRotaryWin",
				"SUI/fuben/SFBEsCardSldWin", "SUI/fuben/SFBResultTwoWin", "control/DouFaTaiCC" },
		prop_tips_win = {"SUI/tips/SpropTips"},
		equir_tips_win = {"SUI/tips/SEquirTips"},

	    task_win = {"SUI/task/STaskWin","SUI/task/SAchievePage","SUI/task/SRaiseStarWin","SUI/task/SJuQingPage","SUI/task/SXuanShangPage","SUI/task/SDailyPage","control/AchieveCC","config/AchieveConfig",
	    			"model/SMovieClientModel", "movieclient/MovieClientEvent", "movieclient/MovieClient", "action/ActionMove", 
	    			"movieclient/MovieClientActor"},
	    skill_tips_win = {"SUI/tips/SSkillTips","SUI/tips/SSkillTipsPage"},

	    fabao_tips_win = {"SUI/tips/SFabaoTips"},
	    first_recharge = {"SUI/firstrecharge/FirstRecharge", "SUI/dengluhaoli/SMainDengluhaoliWin"},
	    pay_win = {"SUI/recharge/RechargeWin","SUI/recharge/RechargePage"},
	    fabao_win = { "SUI/fabao/SFabaoWin", "SUI/fabao/SFbAttrPage", "SUI/fabao/SFbSkillPage", "SUI/fabao/SFbGetPage"},
	    user_skill_win = { "SUI/userSkillWin/UserSkillWin", "UI/component/SlotSkill", "SUI/userSkillWin/SkillItem"}, 
	    clothing_tip  = {"SUI/tips/SClothing_tips"},
	    shop_win = { "SUI/shop/ShopItemList", "SUI/shop/ShopSellPanel", "SUI/shop/ShopWin"},
	    reward_win = {"SUI/reward/RewardWin","SUI/reward/RewardOnlinePage","SUI/reward/RewardDayPage",
	    			  "SUI/reward/RewardLoginPage","SUI/reward/RewardLevelingPage","SUI/reward/RewardFriendPage",
	    			  "SUI/reward/RewardCzjjPage","SUI/reward/RewardHlsbtPage","SUI/reward/RewardSevenPage",
	    			  "../resource/data/uieditor/reward_czjj_page","SUI/reward/RewardMrqdPage","SUI/reward/RewardWzglPage","SUI/reward/RewardSyzfPage","model/RewardWzglModel","SUI/reward/WzglGuizeWin","SUI/tips/SSimpleTips",
	    			  "SUI/reward/RewardSyzfPaneld","SUI/reward/RewardXYZPPage","model/BigActivityModel"},
	    baguadigong_win = { "UI/baguadigong/BaguadigongWin" , "UI/component/NormalStyleWindow", "../data/baguadigong_config"},
	    fbresult_win = { "SUI/fuben/SFBResultWin", "../data/action_effects/effects"},
	    -- sactivity_win = {"SUI/activity/hdpages/SywzcPage"},
	    clans_win = { "SUI/clans/ClansWin" ,"SUI/clans/ClansInfoPage","SUI/clans/ClansAddListPage","SUI/contact/InviteFriendWin"},
		clans_list_win = { "SUI/clans/ClansListWin","SUI/clans/ClansCreateWin" },
			children_day_win = {"SUI/activity/template/childrenday/ChildrenDayWin","SUI/activity/template/common_page/CCommonActivityBaseWinT",
				"SUI/activity/template/childrenday/CDGroupBuyPage",            -- 超级团购
				"SUI/activity/template/childrenday/CDAddupRechargePage",       -- 累计充�?
				"SUI/activity/template/childrenday/CDTaobaoPage",              -- 淘宝�?
				"SUI/activity/template/childrenday/CDBoxDownPage",             -- 天降宝箱
				"SUI/activity/template/childrenday/CDAddupLoginPage",          -- 累计登录}
				"SUI/activity/template/common_config/BaseCommonConfig/ShareConfigParam",
				"SUI/activity/template/common_model/ChildrenDayModel",
			},
		zhuzhao_win = { "SUI/zhuzhao/ZhuZhaoWin" , 
						"SUI/zhuzhao/ZZQiangHuaPage" , 
						"SUI/zhuzhao/ZZXiLianPage" , 
						"SUI/zhuzhao/ZZJinJiePage" , 
						"SUI/zhuzhao/ZZShenZhuPage", 
						"SUI/zhuzhao/ZZXianQianPage", 
						"SUI/zhuzhao/ZZHeChengPage", 
						},
		zdtt_shop = { "SUI/fuben/SZdttShopWin"},
		main_mune_win = {"SUI/main/SMainMenuWin"},
		partner_tips_win = {"SUI/tips/SPartnerTips"},
		guild_shuxing_win = {"SUI/guild/SGuildShuxing"},
		guild_paoshang_win = {"SUI/guild/SGuildPaoshang"},
		guild_praying = {"SUI/guild/SGuildPrayingWin"},
		guild_task_win = {"SUI/guild/SGuildTaskWin"},
		guild_yuezhan = {"SUI/guild/SGuildYuezhan"},
		mount_win = {"../resource/data/uieditor/mount_win","SUI/smount/SMPeiYangPage","SUI/smount/SMJinJiePage","SUI/smount/SMSkillPage","SUI/smount/SMHuaXingPage", "SUI/smount/SMountWin"},
		mall_win = {"UI/mall/MallSellPanel", "UI/mall/MallItemList", "UI/mall/SMallBuyTips", "UI/mall/MallWin"},
		activity_yy_win = {"SUI/reward/RewardActivityYY", "SUI/reward/RewardSyzfPage", "SUI/reward/RewardSllPage", "SUI/reward/SllPageWin",
	    			  "SUI/reward/RewardSyzfPaneld", "SUI/reward/RewardSyzfPanelu","model/RewardWzglModel","SUI/reward/WzglGuizeWin","SUI/reward/RewardWzglPage",
	    			  "SUI/recharge/RewardMonthCardPage", "SUI/reward/RewardXsxsPage", "SUI/reward/RewardYyqgPage", "SUI/reward/RewardSbfhPage"},
		get_red_pot_win = {"SUI/redPot/SRedPotWin", "SUI/redPot/SSendRedPotPage", "SUI/redPot/SHaveSendRedPotPage",
	    			  "SUI/redPot/SHaveGetRedPotPage"},
		guild_boss_win = {"SUI/guild/SGuildBossWin", "SUI/fuben/SNormalRankWin",},
		daily_question_win = {"SUI/dailyQuestion/dailyQuestionWin"},
		vip_win = {"SUI/vip/SVipWin", "SUI/vip/SVipBaoXiangWin"},
		special_activity_win = {"SUI/reward/SpecialActivityWin","SUI/zhuanti/ZtDqjmPage","SUI/zhuanti/ZtXlqyPage","SUI/zhuanti/ZtDhjmPage","SUI/zhuanti/ZtZjdhPage","SUI/zhuanti/ZtShowAwardWin"},
		qixi_win = {"SUI/qixi/QixiActivityWin","SUI/qixi/QixiCshuaPage","SUI/tips/SSchuaTips","SUI/qixi/Sqixi_schua_Rewards",}
	}
}
