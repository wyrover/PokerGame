ttslsd_dialog = {
	img_n="",
	parent="ui_root",
	class="SPanel",
	is_nine=true,
	name="win_root",
	size={	"645",
	"580",
},
	zOrder=1,		child={
{	img_n="sui/common/close.png",
	name="btn_close",
	pos={	560,		485,	},
	parent="win_root",
	class="SButton",
	zOrder=99,		size={	"66",
	"75",
},
},

{	img_n="sui/common/huobi_tongbi.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=false,
	name="panel_3",
	size={	"45",
	"45",
},
	zOrder=2,		pos={	153,		430,	},
},

{	str="#c804b129999999",
	parent="win_root",
	class="SLabel",
	zOrder=2,		name="label_tongbi",
	size={	"66",
	"19",
},
	fontsize="18",
	align=1,		pos={	200,		440,	},
},

{	str="#c804b129999999",
	align=1,		class="SLabel",
	zOrder=2,		name="label_jingyan",
	size={	"66",
	"19",
},
	fontsize="18",
	parent="win_root",
	pos={	400,		440,	},
},

{	img_n="sui/common/panel2.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=true,
	name="panel_6",
	size={	"561",
	"289",
},
	child={
{	img_n="",
	parent="panel_6",
	class="SScroll",
	is_nine=true,
	scroll_type=2,		size={	"561",
	"250",
},
	name="scroll_items",
	zOrder=2,		pos={	0,		20,	},
},
},
	zOrder=2,		pos={
42,	
115,	},
},

{	str="",
	img_n="sui/common/btn_1.png",
	parent="win_root",
	class="STextButton",
	zOrder=2,		fontsize="24",
	size={	"139",
	"57",
},
	align=1,		name="tbtn_sure",
	child={
{	str="确定",
	align="2",
	class="SLabel",
	zOrder=1,		name="label_1",
	size={	"70",
	"14",
},
	fontsize="24",
	parent="tbtn_sure",
	pos={	"70",
	"14",
},
},
},
	pos={
"253",

"32",
},
},

{	img_n="sui/common/tipsPanel.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SImage",
	is_nine=true,
	name="img_2",
	isVisible=false,
	pos={	20,		0,	},
	zOrder=1,		child={
{	img_n="sui/common/title_panel.png",
	flip={	false,		false,	},
	parent="img_2",
	class="SImage",
	is_nine=true,
	name="img_3",
	pos={	-3,		489,	},
	zOrder=1,		child={
{	img_n="sui/common/little_win_title_bg.png",
	flip={	false,		false,	},
	parent="img_3",
	class="SImage",
	is_nine=true,
	name="img_4",
	pos={	-13,		13,	},
	zOrder=1,		child={
{	str="#cf3e2c5本次扫荡",
	parent="img_4",
	class="SLabel",
	zOrder=2,		name="label_chongtian",
	size={	"191",
	"25",
},
	fontsize="26",
	align=2,		pos={	319,		1,	},
},
},
	size={
"645",

"53",
},
},
},
	size={
"611",

"57",
},
},
},
	size={
"605",

"555",
},
},

{	img_n="sui/common/win_down.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SImage",
	is_nine=true,
	name="img_5",
	pos={	7,		-1,	},
	zOrder=2,		size={	"630",
	"10",
},
},

{	img_n="sui/common/huobi_exp.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=false,
	name="copy_54",
	pos={	350,		429,	},
	zOrder=2,		size={	"45",
	"45",
},
},
},
	pos={
"0",

"0",
},

}
