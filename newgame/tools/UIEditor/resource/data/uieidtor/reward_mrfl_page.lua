reward_mrfl_page = {
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
{	img_n="",
	parent="panel_1",
	class="SScroll",
	is_nine=true,
	scroll_type=2,		pos={	9,		10,	},
	zOrder=1,		name="scroll_1",
	size={	"580",
	"300",
},
},

{	img_n="sui/reward/img.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SImage",
	is_nine=false,
	name="img_4",
	pos={	27,		455,	},
	zOrder=1,		size={	"113",
	"41",
},
},

{	img_n="sui/reward/img.png",
	flip={	true,		false,	},
	parent="panel_1",
	class="SImage",
	is_nine=false,
	name="img_5",
	pos={	457,		455,	},
	zOrder=1,		size={	"113",
	"41",
},
},

{	img_n="nopack/reward/lcsbs.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SPanel",
	is_nine=true,
	name="panel_2",
	size={	"574",
	"223",
},
	child={
{	img_n="sui/common/btn_1.png",
	parent="panel_2",
	class="SButton",
	zOrder=1,		name="cz_btn",
	pos={	441,		37,	},
	is_nine=true,
	child={
{	str="充值",
	name="label_2",
	parent="cz_btn",
	align=1,		class="SLabel",
	fontsize="24",
	pos={	"33.5",
	"15",
},
},
},
	size={
"115",

"57",
},
},

{	str="小提示：活动每日24点重置哦~",
	name="label_1",
	parent="panel_2",
	align=1,		class="SLabel",
	fontsize="18",
	pos={	10,		5,	},
},
},
	zOrder=1,		pos={
12,	
351,	},
},

{	img_n="sui/other/paimingdi.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SImage",
	is_nine=true,
	name="img_2",
	child={
{	str="#c643f17领取条件",
	name="label_3",
	parent="img_2",
	align=1,		class="SLabel",
	fontsize=16,		pos={	30,		10,	},
},

{	str="#c643f17奖励",
	name="label_4",
	parent="img_2",
	align=1,		class="SLabel",
	fontsize=16,		pos={	257,		10,	},
},

{	str="#c643f17今日状态",
	name="label_5",
	parent="img_2",
	align=1,		class="SLabel",
	fontsize=16,		pos={	474,		10,	},
},

{	img_n="sui/common/line9.png",
	flip={	false,		false,	},
	parent="img_2",
	class="SImage",
	is_nine=false,
	name="img_6",
	zOrder=1,		pos={	123,		8,	},
	size={	"2",
	"23",
},
},

{	img_n="sui/common/line9.png",
	flip={	false,		false,	},
	parent="img_2",
	class="SImage",
	is_nine=false,
	name="img_7",
	zOrder=1,		pos={	430,		7,	},
	size={	"2",
	"23",
},
},
},
	zOrder=1,		pos={
10,	
311,	},
	size={
"580",

"39",
},
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
