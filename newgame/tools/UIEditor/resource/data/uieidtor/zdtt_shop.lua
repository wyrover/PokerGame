zdtt_shop = {
	img_n="",
	parent="ui_root",
	class="SPanel",
	is_nine=true,
	name="win_root",
	pos={	32,		12,	},
	child={
{	img_n="sui/common/win_title_bg.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=false,
	name="panel_1",
	size={	"949",
	"103",
},
	child={
{	img_n="sui/common/pj.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SImage",
	is_nine=false,
	name="img_1",
	pos={	12,		-110,	},
	zOrder=1,		size={	"36",
	"209",
},
},

{	img_n="sui/other/shangdian_title.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SPanel",
	is_nine=false,
	name="panel_5",
	pos={	172,		38,	},
	zOrder=1,		size={	"90",
	"49",
},
},
},
	zOrder=2,		pos={
"-25",

"518",
},
},

{	img_n="sui/common/panel11_2.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=true,
	name="panel_16",
	size={	"840",
	"450",
},
	child={
{	img_n="",
	parent="panel_16",
	class="SScroll",
	is_nine=true,
	scroll_type=2,		size={	"830",
	"442",
},
	name="scroll_shop",
	zOrder=1,		pos={	5,		4,	},
},
},
	zOrder=2,		pos={
"22",

"67",
},
},

{	str="#c8B5823每日24点刷新",
	parent="win_root",
	class="SLabel",
	zOrder=2,		name="label_6",
	size={	"114",
	"21",
},
	fontsize=18,		align=1,		pos={	"35",
	"26",
},
},

{	str="#c2F700C我的荣誉 100000",
	parent="win_root",
	class="SLabel",
	zOrder=3,		name="label_shengdian",
	size={	"144",
	"21",
},
	fontsize=18,		align="3",
	pos={	"842",
	"27",
},
},

{	str="#c2F700C战队评级 10000000",
	align=1,		class="SLabel",
	zOrder=2,		name="label_zdpj",
	size={	"165",
	"21",
},
	fontsize="18",
	parent="win_root",
	pos={	"508",
	"26",
},
},

{	img_n="sui/common/close.png",
	name="btn_close",
	size={	"66",
	"75",
},
	parent="win_root",
	class="SButton",
	zOrder=99,		pos={	813,		543,	},
},

{	img_n="sui/common/win_panel.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=true,
	name="panel_2",
	isVisible=true,
	zOrder=1,		pos={	"0",
	"0",
},
	size={	"881",
	"560",
},
},
},
	zOrder=1,		size={
"881",

"615",
},

}
