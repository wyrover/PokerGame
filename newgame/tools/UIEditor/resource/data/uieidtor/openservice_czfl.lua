openservice_czfl = {
	img_n="",
	parent="ui_root",
	class="SPanel",
	is_nine=true,
	name="win_root",
	size={	"603",
	"511",
},
	zOrder=1,		child={
{	img_n="",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=true,
	name="panel_day",
	pos={	"0",
	"0",
},
	zOrder=1,		child={
{	img_n="sui/common/panel2_3.png",
	flip={	false,		false,	},
	parent="panel_day",
	class="SPanel",
	is_nine=true,
	name="panel_8",
	pos={	"10",
	"9",
},
	zOrder=1,		child={
{	pos={	417,		17,	},
	img_n="sui/common/btn_1.png",
	name="btn_recharge",
	parent="panel_8",
	child={
{	str="去充值",
	name="label_2",
	align="2",
	parent="btn_recharge",
	class="SLabel",
	fontsize="22",
	pos={	71,		15,	},
},
},
	class="SButton",
	zOrder=1,		size={
"139",

"57",
},
},

{	img_n="sui/openservice/title_bg.png",
	flip={	false,		false,	},
	parent="panel_8",
	class="SImage",
	is_nine=false,
	name="img_1",
	size={	"268",
	"41",
},
	child={
{	img_n="sui/openservice/title_bg.png",
	flip={	true,		false,	},
	parent="img_1",
	class="SImage",
	is_nine=false,
	name="img_2",
	size={	"268",
	"41",
},
	child={
{	str="#c5a311d充值大礼包",
	name="label_1",
	align="2",
	parent="img_2",
	class="SLabel",
	fontsize="20",
	pos={	-2,		10,	},
},
},
	zOrder=1,		pos={
267.5,	
0,	},
},
},
	zOrder=1,		pos={
22,	
275,	},
},

{	img_n="",
	parent="panel_8",
	class="SScroll",
	is_nine=true,
	scroll_type=1,		size={	"500",
	"110",
},
	name="scroll_1",
	child={},
	zOrder=1,		pos={
36,	
133,	},
},

{	img_n="sui/common/line1.png",
	flip={	false,		false,	},
	parent="panel_8",
	class="SImage",
	is_nine=true,
	name="img_3",
	size={	"524",
	"3",
},
	zOrder=1,		pos={	26,		95,	},
},

{	img_s="sui/common/progressBg.png",
	img_n="sui/common/progress1.png",
	name="progress_1",
	size={	"340",
	"22",
},
	parent="panel_8",
	class="SProgress",
	zOrder=1,		pos={	55,		34,	},
},

{	str="#c805423达到条件，方可领取礼包哦~",
	parent="panel_8",
	name="label_tips",
	fontsize=16,		child={},
	class="SLabel",
	align="2",
	pos={
293,	
102,	},
},

{	size={	"139",
	"57",
},
	img_n="sui/common/btn_1.png",
	name="btn_lq",
	parent="panel_8",
	child={
{	str="领取",
	name="label_5",
	align="2",
	parent="btn_lq",
	class="SLabel",
	fontsize="22",
	pos={	71,		15,	},
},
},
	class="SButton",
	zOrder=1,		pos={
224,	
17,	},
},

{	img_n="sui/reward/yilingqu4.png",
	flip={	false,		false,	},
	parent="panel_8",
	class="SImage",
	is_nine=false,
	name="img_ylq",
	size={	"116",
	"45",
},
	zOrder=1,		pos={	236,		23,	},
},
},
	size={
"580",

"334",
},
},
},
	isVisible=false,
	size={
"603",

"511",
},
},
},
	isVisible=true,
	pos={
"0",

"0",
},

}
