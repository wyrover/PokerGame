zhenyingzhan_panel = {
	size={	950,		630,	},
	img_n="",
	name="win_root",
	parent="ui_root",
	child={
{	img_n="sui/common/panel12.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=true,
	name="zyz_panel",
	size={	"642",
	"506",
},
	child={
{	str="#c501f04每周五 22:30-23:30",
	name="open_time_lb",
	align="3",
	parent="zyz_panel",
	class="SLabel",
	fontsize="18",
	pos={	596,		470,	},
},

{	str="#c643f17开放等级",
	name="label_1",
	align=1,		parent="zyz_panel",
	class="SLabel",
	fontsize="18",
	pos={	47,		470,	},
},

{	str="#c501f04N级",
	name="open_lv_lb",
	align=1,		parent="zyz_panel",
	class="SLabel",
	fontsize="18",
	pos={	138,		470,	},
},

{	str="#c501f0420",
	name="item_count_lb",
	align=1,		parent="zyz_panel",
	class="SLabel",
	fontsize=16,		pos={	363,		76,	},
},

{	img_n="sui/common/fengexian.png",
	flip={	false,		false,	},
	parent="zyz_panel",
	class="SImage",
	is_nine=false,
	name="img_1",
	size={	"30",
	"30",
},
	zOrder=1,		pos={	313,		70,	},
},

{	img_n="sui/common/fengexian.png",
	flip={	false,		false,	},
	parent="zyz_panel",
	class="SImage",
	is_nine=true,
	name="img_19",
	pos={	20,		460,	},
	zOrder=1,		size={	"600",
	"3",
},
},

{	img_n="sui/common/fengexian.png",
	flip={	false,		false,	},
	parent="zyz_panel",
	class="SImage",
	is_nine=true,
	name="img_20",
	pos={	20,		109,	},
	zOrder=1,		size={	"600",
	"3",
},
},
},
	zOrder=1,		isVisible=true,
	pos={
0,	
-3,	},
},

{	img_n="",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=false,
	name="no_begin_panel",
	size={	"620",
	"340",
},
	isVisible=true,
	zOrder=1,		child={
{	img_n="sui/guild/vs.png",
	flip={	false,		false,	},
	parent="no_begin_panel",
	class="SImage",
	is_nine=false,
	name="img_7",
	size={	"160",
	"160",
},
	isVisible=false,
	zOrder=10,		pos={	231,		71,	},
},

{	img_n="sui/zhenyingzhan/ql.png",
	flip={	true,		false,	},
	parent="no_begin_panel",
	class="SImage",
	is_nine=false,
	name="img_13",
	size={	"180",
	"180",
},
	zOrder=10,		pos={	33,		68,	},
},

{	img_n="sui/zhenyingzhan/zq.png",
	flip={	true,		false,	},
	parent="no_begin_panel",
	class="SImage",
	is_nine=false,
	name="img_14",
	size={	"180",
	"180",
},
	zOrder=10,		pos={	409,		67,	},
},

{	img_n="sui/zhenyingzhan/zhenying_bg.png",
	flip={	false,		false,	},
	parent="no_begin_panel",
	class="SImage",
	is_nine=false,
	name="img_15",
	size={	"153",
	"38",
},
	zOrder=1,		pos={	41,		297,	},
},

{	img_n="sui/zhenyingzhan/zhenying_bg.png",
	flip={	false,		false,	},
	parent="no_begin_panel",
	class="SImage",
	is_nine=false,
	name="img_16",
	size={	"153",
	"38",
},
	zOrder=1,		pos={	423,		297,	},
},

{	img_n="sui/zhenyingzhan/hanshi.png",
	flip={	false,		false,	},
	parent="no_begin_panel",
	class="SImage",
	is_nine=false,
	name="img_17",
	size={	"71",
	"39",
},
	zOrder=1,		pos={	83,		296,	},
},

{	img_n="sui/zhenyingzhan/xinmang.png",
	flip={	false,		false,	},
	parent="no_begin_panel",
	class="SImage",
	is_nine=false,
	name="img_18",
	size={	"72",
	"39",
},
	zOrder=1,		pos={	465,		296,	},
},

{	str="#c643f17活动暂未开始",
	parent="no_begin_panel",
	class="SLabel",
	zOrder=10,		name="label_2",
	pos={	309,		28,	},
	align="2",
	fontsize="18",
	size={	"111",
	"21",
},
},

{	img_n="sui/common/panel2_2.png",
	flip={	false,		false,	},
	parent="no_begin_panel",
	class="SImage",
	is_nine=true,
	name="img_2",
	size={	"600",
	"285",
},
	zOrder=1,		pos={	"9",
	"6",
},
},

{	img_n="sui/zhenyingzhan/img1.png",
	flip={	true,		false,	},
	parent="no_begin_panel",
	class="SImage",
	is_nine=false,
	name="img_3",
	size={	"77",
	"152",
},
	zOrder=1,		pos={	15,		75,	},
},

{	img_n="sui/zhenyingzhan/img1.png",
	flip={	false,		false,	},
	parent="no_begin_panel",
	class="SImage",
	is_nine=false,
	name="img_4",
	size={	"77",
	"152",
},
	zOrder=1,		pos={	526,		76,	},
},
},
	pos={
12,	
113,	},
},

{	size={	"139",
	"57",
},
	img_n="sui/common/btn_1.png",
	name="fly_btn",
	parent="win_root",
	child={
{	str="速传",
	name="label_4",
	parent="fly_btn",
	align="2",
	class="SLabel",
	fontsize="24",
	pos={	"69",
	"15",
},
},
},
	class="SButton",
	zOrder=1,		pos={
289,	
6,	},
},

{	size={	"139",
	"57",
},
	img_n="sui/common/btn2_s.png",
	name="walk_btn",
	parent="win_root",
	child={
{	str="前往",
	name="label_5",
	parent="walk_btn",
	align="2",
	class="SLabel",
	fontsize="24",
	pos={	"69",
	"15",
},
},
},
	class="SButton",
	zOrder=1,		pos={
484,	
6,	},
},

{	img_n="",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=false,
	name="begin_panel",
	size={	"630",
	"340",
},
	isVisible=false,
	zOrder=2,		child={
{	img_n="sui/zhenyingzhan/zhenying_bg.png",
	flip={	false,		false,	},
	parent="begin_panel",
	class="SImage",
	is_nine=false,
	name="img_8",
	size={	"153",
	"38",
},
	child={},
	zOrder=1,		isVisible=false,
	pos={
43,	
292,	},
},

{	img_n="sui/zhenyingzhan/zhenying_bg.png",
	flip={	false,		false,	},
	parent="begin_panel",
	class="SImage",
	is_nine=false,
	name="img_9",
	size={	"153",
	"38",
},
	child={},
	zOrder=1,		pos={
435,	
292,	},
},

{	img_n="sui/common/panel2_2.png",
	flip={	false,		false,	},
	parent="begin_panel",
	class="SPanel",
	is_nine=true,
	name="panel_3",
	size={	"610",
	"230",
},
	child={
{	str="#c501f04123456789",
	parent="panel_3",
	class="SLabel",
	zOrder=10,		name="player_count_lb",
	size={	"34",
	"234",
},
	fontsize="18",
	align="2",
	pos={	308,		14,	},
},
},
	zOrder=1,		isVisible=false,
	pos={
11,	
54,	},
},

{	str="#c734e0f[将]血量",
	name="label_8",
	align=1,		parent="begin_panel",
	class="SLabel",
	fontsize="18",
	pos={	21,		2,	},
},

{	str="#c734e0f剩余武将",
	name="label_9",
	align=1,		parent="begin_panel",
	class="SLabel",
	fontsize="18",
	pos={	21,		26,	},
},

{	str="#c501f044个",
	name="x1_count_lb",
	align=1,		parent="begin_panel",
	class="SLabel",
	fontsize="18",
	pos={	110,		26,	},
},

{	str="#c734e0f[帅]血量",
	isVisible=false,
	name="label_11",
	align=1,		parent="begin_panel",
	class="SLabel",
	fontsize="18",
	pos={	375,		2,	},
},

{	str="#c734e0f剩余武将",
	name="label_12",
	align=1,		parent="begin_panel",
	class="SLabel",
	fontsize="18",
	pos={	375,		26,	},
},

{	str="#c501f044个",
	name="x2_count_lb",
	align=1,		parent="begin_panel",
	class="SLabel",
	fontsize="18",
	pos={	463,		26,	},
},

{	str="#cd6651230:30",
	name="count_down_lb",
	parent="begin_panel",
	align="2",
	class="SLabel",
	fontsize="22",
	pos={	317,		293,	},
},

{	img_n="sui/zhenyingzhan/hanshi.png",
	flip={	false,		false,	},
	parent="begin_panel",
	class="SImage",
	is_nine=false,
	name="img_11",
	size={	"71",
	"39",
},
	zOrder=2,		isVisible=true,
	pos={	89,		295,	},
},

{	img_n="sui/zhenyingzhan/xinmang.png",
	flip={	false,		false,	},
	parent="begin_panel",
	class="SImage",
	is_nine=false,
	name="img_10",
	size={	"72",
	"39",
},
	zOrder=2,		pos={	472,		296,	},
},

{	img_n="sui/zhenyingzhan/img1.png",
	flip={	true,		false,	},
	parent="begin_panel",
	class="SPanel",
	is_nine=false,
	name="panel_5",
	pos={	17,		92,	},
	zOrder=2,		child={},
	size={
"77",

"152",
},
},

{	img_n="sui/zhenyingzhan/xingxiu_2.png",
	flip={	false,		false,	},
	parent="begin_panel",
	class="SImage",
	is_nine=false,
	name="x23_img",
	size={	"35",
	"36",
},
	zOrder=2,		pos={	"397",
	"147",
},
},

{	img_n="sui/zhenyingzhan/xingxiu_1.png",
	flip={	false,		false,	},
	parent="begin_panel",
	class="SImage",
	is_nine=false,
	name="x13_img",
	size={	"35",
	"36",
},
	zOrder=2,		pos={	200,		147,	},
},

{	img_n="sui/zhenyingzhan/xingxiu_2.png",
	flip={	false,		false,	},
	parent="begin_panel",
	class="SImage",
	is_nine=false,
	name="x21_img",
	size={	"35",
	"36",
},
	zOrder=2,		pos={	"488",
	"215",
},
},

{	img_n="sui/zhenyingzhan/xingxiu_2.png",
	flip={	false,		false,	},
	parent="begin_panel",
	class="SImage",
	is_nine=false,
	name="x22_img",
	size={	"35",
	"36",
},
	zOrder=2,		pos={	"451",
	"147",
},
},

{	img_n="sui/guild/vs.png",
	flip={	false,		false,	},
	parent="begin_panel",
	class="SImage",
	is_nine=false,
	name="img_12",
	size={	"160",
	"160",
},
	zOrder=2,		pos={	236,		89,	},
},

{	img_n="sui/zhenyingzhan/xingxiu_2.png",
	flip={	false,		false,	},
	parent="begin_panel",
	class="SImage",
	is_nine=false,
	name="x24_img",
	size={	"35",
	"36",
},
	zOrder=2,		pos={	"488",
	"85",
},
},

{	img_n="sui/zhenyingzhan/xingxiu_1.png",
	flip={	false,		false,	},
	parent="begin_panel",
	class="SImage",
	is_nine=false,
	name="x12_img",
	size={	"35",
	"36",
},
	zOrder=2,		pos={	144,		147,	},
},

{	img_n="sui/zhenyingzhan/xingxiu_1.png",
	flip={	false,		false,	},
	parent="begin_panel",
	class="SImage",
	is_nine=false,
	name="x11_img",
	size={	"35",
	"36",
},
	zOrder=2,		pos={	110,		215,	},
},

{	img_n="sui/zhenyingzhan/xingxiu_1.png",
	flip={	false,		false,	},
	parent="begin_panel",
	class="SImage",
	is_nine=false,
	name="x14_img",
	size={	"35",
	"36",
},
	zOrder=2,		pos={	110,		85,	},
},

{	img_n="sui/zhenyingzhan/img1.png",
	flip={	false,		false,	},
	parent="begin_panel",
	class="SPanel",
	is_nine=false,
	name="panel_4",
	pos={	"538",
	"92",
},
	zOrder=2,		child={},
	size={
"77",

"152",
},
},

{	img_n="sui/zhenyingzhan/camp1.png",
	flip={	false,		false,	},
	parent="begin_panel",
	class="SImage",
	is_nine=false,
	name="img_5",
	size={	"75",
	"75",
},
	zOrder=100,		pos={	34,		130,	},
},

{	img_n="sui/zhenyingzhan/camp.png",
	flip={	false,		false,	},
	parent="begin_panel",
	class="SImage",
	is_nine=false,
	name="img_6",
	size={	"75",
	"75",
},
	zOrder=100,		pos={	524,		130,	},
},

{	img_s="sui/zhenyingzhan/progressBg.png",
	img_n="sui/zhenyingzhan/blood.png",
	name="blood_p2",
	size={	"150",
	"25",
},
	parent="begin_panel",
	class="SProgress",
	zOrder=1,		pos={	462,		-1,	},
},

{	img_s="sui/zhenyingzhan/progressBg.png",
	img_n="sui/zhenyingzhan/blood.png",
	name="blood_p1",
	size={	"150",
	"25",
},
	parent="begin_panel",
	class="SProgress",
	zOrder=1,		pos={	109,		-1,	},
},
},
	pos={
6,	
114,	},
},

{	size={	"80",
	"83",
},
	img_n="sui/wanfa/guize.png",
	name="rule_btn",
	child={},
	parent="win_root",
	class="SButton",
	zOrder=5,		pos={
29,	
12,	},
},

{	pos={	132,		12,	},
	img_n="sui/wanfa/my_rank.png",
	name="rank_btn",
	child={},
	parent="win_root",
	class="SButton",
	zOrder=5,		size={
"80",

"83",
},
},
},
	class="SPanel",
	is_nine=true,
	pos={
3,	
2,	},

}
