reward_zllb2_page = {
	size={	637,		525,	},
	img_n="",
	name="win_root",
	parent="ui_root",
	child={
{	img_n="sui/common/panel12.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=true,
	name="panel_1",
	pos={	"-5",
	"-5",
},
	zOrder=1,		child={
{	img_n="sui/common/line1.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SImage",
	is_nine=true,
	name="img_3",
	pos={	14,		69,	},
	zOrder=1,		size={	"570",
	"2",
},
},

{	str="#c623f192.",
	name="label_1",
	parent="panel_1",
	align=1,		class="SLabel",
	fontsize=16,		pos={	21,		17,	},
},

{	str="#c623f191.",
	name="label_2",
	parent="panel_1",
	align=1,		class="SLabel",
	fontsize=16,		pos={	21,		44,	},
},

{	str="#c623f19初入江湖礼包：创角首日截止24:00战力达标，次日即可领取",
	name="label_3",
	align=1,		parent="panel_1",
	class="SLabel",
	fontsize=16,		pos={	45,		45,	},
},

{	str="#c623f19崭露头角礼包：创角第二日截止24:00战力达标，次日即可领取",
	name="label_4",
	align=1,		parent="panel_1",
	class="SLabel",
	fontsize=16,		pos={	45,		17,	},
},

{	img_n="",
	flip={	false,		false,	},
	parent="panel_1",
	class="SPanel",
	is_nine=true,
	name="next_panel",
	size={	"570",
	"400",
},
	zOrder=1,		child={
{	img_n="sui/common/panel2_2.png",
	flip={	false,		false,	},
	parent="next_panel",
	class="SPanel",
	is_nine=true,
	name="img_2",
	pos={	-6,		-12,	},
	zOrder=1,		child={
{	img_n="sui/reward/mingri_bg.png",
	flip={	false,		false,	},
	parent="img_2",
	class="SImage",
	is_nine=false,
	name="img_1",
	size={	"438",
	"30",
},
	child={
{	str="#c7c400a标题",
	name="next_title",
	align="2",
	parent="img_1",
	class="SLabel",
	fontsize="20",
	pos={	213,		4,	},
},
},
	zOrder=1,		pos={
"79",

"267",
},
},
},
	size={
"585",

"310",
},
},

{	img_n="nopack/reward/zllb2.png",
	flip={	false,		false,	},
	parent="next_panel",
	class="SPanel",
	is_nine=false,
	name="img_4",
	pos={	-4,		301,	},
	zOrder=1,		child={
{	img_n="sui/mainUI/addFV.png",
	name="next_bq_btn",
	pos={	488,		7,	},
	parent="img_4",
	class="SButton",
	zOrder=1,		size={	"87",
	"92",
},
},
},
	size={
"579",

"161",
},
},
},
	isVisible=false,
	pos={
14,	
89,	},
},

{	img_n="sui/common/arrow_next.png",
	name="next_btn",
	pos={	544,		225,	},
	parent="panel_1",
	class="SButton",
	zOrder=100,		size={	"35",
	"42",
},
},

{	img_n="",
	flip={	false,		false,	},
	parent="panel_1",
	class="SPanel",
	is_nine=true,
	name="cur_panel",
	size={	"570",
	"400",
},
	isVisible=false,
	child={
{	img_n="sui/common/panel2_2.png",
	flip={	false,		false,	},
	parent="cur_panel",
	class="SPanel",
	is_nine=true,
	name="img_7",
	size={	"585",
	"425",
},
	child={
{	img_n="sui/reward/dqzl_bg.png",
	flip={	false,		false,	},
	parent="img_7",
	class="SImage",
	is_nine=false,
	name="cur_zl_bg",
	size={	"517",
	"53",
},
	zOrder=1,		child={
{	str="#c73420a当前最高战力",
	name="label_5",
	align=1,		parent="cur_zl_bg",
	class="SLabel",
	fontsize="18",
	pos={	144,		14,	},
},
},
	pos={
60,	
291,	},
},

{	img_n="sui/mainUI/addFV.png",
	name="cur_bq_btn",
	pos={	93,		278,	},
	parent="img_7",
	class="SButton",
	zOrder=10,		size={	"87",
	"92",
},
},
},
	zOrder=1,		isVisible=false,
	pos={
-6,	
-12,	},
},

{	str="文字控件",
	align="2",
	class="SLabel",
	zOrder=100,		name="hint_lb",
	pos={	303,		8,	},
	parent="cur_panel",
	fontsize=16,		size={	"67",
	"19",
},
},
},
	zOrder=1,		pos={
"14",

"89",
},
},

{	str="#c63401a领取倒计时  #ca55d1100:00:00",
	align="2",
	class="SLabel",
	zOrder=100,		name="time",
	size={	"168",
	"19",
},
	fontsize="16",
	parent="panel_1",
	pos={	310,		97,	},
},

{	str="#c9e4d0e战  力",
	align=1,		class="SLabel",
	zOrder=100,		name="label_7",
	size={	"58",
	"21",
},
	fontsize="18",
	parent="panel_1",
	pos={	49,		130,	},
},

{	size={	"35",
	"42",
},
	img_n="sui/common/arrow_next.png",
	name="front_btn",
	flip={	true,		false,	},
	parent="panel_1",
	class="SButton",
	zOrder=100,		pos={	21,		225,	},
},

{	img_n="sui/reward/unsel_3.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SImage",
	is_nine=false,
	name="bg_4",
	size={	"88",
	"156",
},
	zOrder=1,		pos={	432,		149,	},
},

{	img_n="sui/reward/unsel_2.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SImage",
	is_nine=false,
	name="bg_2",
	size={	"88",
	"123",
},
	zOrder=1,		pos={	233,		149,	},
},

{	img_n="sui/reward/unsel_1.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SImage",
	is_nine=false,
	name="bg_1",
	size={	"88",
	"81",
},
	zOrder=1,		pos={	132,		149,	},
},

{	img_n="sui/reward/unsel_3.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SImage",
	is_nine=false,
	name="bg_3",
	size={	"88",
	"156",
},
	zOrder=1,		pos={	334,		149,	},
},

{	img_n="sui/task/2.png",
	name="btn_1",
	size={	"101",
	"101",
},
	parent="panel_1",
	class="SButton",
	zOrder=1,		pos={	127,		198,	},
},

{	img_n="sui/task/3.png",
	name="btn_2",
	size={	"101",
	"101",
},
	parent="panel_1",
	class="SButton",
	zOrder=1,		pos={	229,		225,	},
},

{	img_n="sui/task/4.png",
	name="btn_3",
	size={	"101",
	"101",
},
	parent="panel_1",
	class="SButton",
	zOrder=1,		pos={	331,		252,	},
},

{	img_n="sui/task/5.png",
	name="btn_4",
	size={	"101",
	"101",
},
	parent="panel_1",
	class="SButton",
	zOrder=1,		pos={	430,		270,	},
},

{	str="文字控件",
	align="2",
	class="SLabel",
	zOrder=199,		name="flb1",
	pos={	176,		181,	},
	parent="panel_1",
	fontsize=16,		size={	"67",
	"19",
},
},

{	str="文字控件",
	align="2",
	class="SLabel",
	zOrder=199,		name="flb2",
	pos={	276,		207,	},
	parent="panel_1",
	fontsize=16,		size={	"67",
	"19",
},
},

{	str="文字控件",
	align="2",
	class="SLabel",
	zOrder=199,		name="flb3",
	pos={	379,		232,	},
	parent="panel_1",
	fontsize=16,		size={	"67",
	"19",
},
},

{	str="文字控件",
	align="2",
	class="SLabel",
	zOrder=199,		name="flb4",
	pos={	476,		251,	},
	parent="panel_1",
	fontsize=16,		size={	"67",
	"19",
},
},

{	img_n="sui/reward/tou.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SImage",
	is_nine=false,
	name="img_5",
	size={	"12",
	"14",
},
	zOrder=1,		pos={	170,		146,	},
},

{	img_n="sui/reward/tou.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SImage",
	is_nine=false,
	name="img_6",
	size={	"12",
	"14",
},
	zOrder=1,		pos={	271,		146,	},
},

{	img_n="sui/reward/tou.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SImage",
	is_nine=false,
	name="img_8",
	size={	"12",
	"14",
},
	zOrder=1,		pos={	372,		146,	},
},

{	img_n="sui/reward/tou.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SImage",
	is_nine=false,
	name="img_9",
	size={	"12",
	"14",
},
	zOrder=1,		pos={	470,		146,	},
},

{	img_n="sui/reward/line2.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SImage",
	is_nine=true,
	name="img_10",
	size={	"2",
	"20",
},
	zOrder=100,		pos={	217,		130,	},
},

{	img_n="sui/reward/line2.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SImage",
	is_nine=true,
	name="img_11",
	size={	"2",
	"20",
},
	zOrder=100,		pos={	318,		130,	},
},

{	img_n="sui/reward/line2.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SImage",
	is_nine=true,
	name="img_12",
	size={	"2",
	"20",
},
	zOrder=100,		pos={	420,		130,	},
},

{	img_s="sui/common/progressBg.png",
	img_n="sui/common/progress1.png",
	name="pro1",
	size={	"106",
	"25",
},
	parent="panel_1",
	class="SProgress",
	zOrder=10,		pos={	115,		127,	},
},

{	img_s="sui/common/progressBg.png",
	img_n="sui/common/progress1.png",
	name="pro2",
	size={	"106",
	"25",
},
	parent="panel_1",
	class="SProgress",
	zOrder=10,		pos={	217,		127,	},
},

{	img_s="sui/common/progressBg.png",
	img_n="sui/common/progress1.png",
	name="pro3",
	size={	"106",
	"25",
},
	parent="panel_1",
	class="SProgress",
	zOrder=10,		pos={	318,		127,	},
},

{	img_s="sui/common/progressBg.png",
	img_n="sui/common/progress1.png",
	name="pro4",
	size={	"106",
	"25",
},
	parent="panel_1",
	class="SProgress",
	zOrder=10,		pos={	420,		127,	},
},
},
	size={
"600",

"509",
},
},
},
	class="SPanel",
	is_nine=true,
	pos={
5,	
5,	},

}