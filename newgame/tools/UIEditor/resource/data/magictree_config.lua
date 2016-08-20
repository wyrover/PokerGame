-- 神树配置

magictree_config = {

	-- 果子的位置
   	fruit_pos = {
		[1] = {445, 354},
		[2] = {267, 284},
		[3] = {663, 348},
		[4] = {318, 450},
		[5] = {148, 365},
		[6] = {538, 465},
		[7] = {602, 203},
		[8] = {257, 389},
		[9] = {736, 404},
		[10] = {399, 257},

		[11] = {238, 481},
		[12] = {491, 290},
		[13] = {788, 380},
		[14] = {785, 203},
		[15] = {308, 202},
		[16] = {558, 333},
		[17] = {432, 476},
		[18] = {667, 225},
		[19] = {482, 433},
		[20] =  {250, 369},
	},

	-- 神树成熟度
	maturity = 6,

	-- 一键成熟消耗元宝 根据成熟度配置消耗的元宝个数(配置9个)\
	-- 只有index个成熟度的时候，消耗%d 元宝
	yb_mature_once = {[0]=10, [1]=10, [2]=10, [3]=10, [4]=10, [5]=10, [6]=10, [7]=10, [8]=10},

	cangku_t = {
		-- 宝箱图片
		box_img = { [1]=UILH_MAGICTREE.box_gold, [2]=UILH_MAGICTREE.box_purble, [3]=UILH_MAGICTREE.box_red },

		-- box_id
		box_id = { [1] = 3, [2] = 2, [3]= 1 },
		
		-- 宝箱名字
		box_name = { [1] = "黄金神秘宝箱", [2] = "白银神秘宝箱", [3] = "青铜神秘宝箱"},

		-- 展示道具
		item_img = { [1]=UILH_MAGICTREE.item_gold, [2]=UILH_MAGICTREE.item_purple, [3]=UILH_MAGICTREE.item_red },

		-- 积分消耗label
		cost_point_lb = { [1] = 1500, [2] = 450, [3] = 50 }
	}
}