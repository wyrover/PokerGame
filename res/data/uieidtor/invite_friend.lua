invite_friend = {
	img_n="",
	child={
{	img_n="sui/common/tipsPanel.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=true,
	name="panel_main",
	size={	"521",
	"584",
},
	child={
{	img_n="sui/common/little_win_title_bg.png",
	flip={	false,		false,	},
	parent="panel_main",
	class="SImage",
	is_nine=false,
	name="img_1",
	size={	"336",
	"47",
},
	child={
{	img_n="sui/clans/yaoqinghaoyou.png",
	flip={	false,		false,	},
	parent="img_1",
	class="SImage",
	is_nine=false,
	name="img_2",
	size={	"96",
	"24",
},
	zOrder=1,		pos={	"120",
	"11",
},
},
},
	zOrder=1,		pos={
109,	
545,	},
},

{	img_n="sui/common/close.png",
	name="btn_close",
	size={	"62",
	"57",
},
	parent="panel_main",
	class="SButton",
	zOrder=1,		pos={	456,		527,	},
},

{	img_n="sui/common/panel2.png",
	flip={	false,		false,	},
	parent="panel_main",
	class="SPanel",
	is_nine=true,
	name="panel_1",
	pos={	32,		47,	},
	zOrder=1,		child={
{	img_n="sui/common/title_bg.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SImage",
	is_nine=true,
	name="img_4",
	pos={	121,		68,	},
	zOrder=1,		child={
{	img_n="sui/clans/shoudongyaoqing.png",
	flip={	false,		false,	},
	parent="img_4",
	class="SImage",
	is_nine=false,
	name="img_8",
	pos={	"63",
	"4",
},
	zOrder=1,		size={	"91",
	"26",
},
},
},
	size={
"216",

"34",
},
},

{	img_n="sui/common/panel5.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SPanel",
	is_nine=true,
	name="panel_4",
	pos={	5,		11,	},
	zOrder=1,		child={
{	img_n="",
	parent="panel_4",
	class="SEditBox",
	maxnum=15,		fontsize=16,		pos={	4,		3,	},
	zOrder=1,		align=1,		name="editbox_name",
	size={	"230",
	"35",
},
},
},
	size={
"233",

"42",
},
},

{	pos={	310,		2,	},
	img_n="sui/common/btn_1.png",
	name="btn_invite",
	child={
{	img_n="sui/btn_name/faqiyaoqing.png",
	flip={	false,		false,	},
	parent="btn_invite",
	class="SImage",
	is_nine=false,
	name="img_9",
	pos={	"24",
	"18",
},
	zOrder=1,		size={	"96",
	"25",
},
},
},
	parent="panel_1",
	class="SButton",
	zOrder=1,		size={
"144",

"60",
},
},

{	img_n="sui/common/string_01.png",
	flip={	true,		false,	},
	parent="panel_1",
	class="SImage",
	is_nine=true,
	name="img_10",
	pos={	6,		115,	},
	zOrder=1,		child={
{	img_n="sui/common/string_01.png",
	flip={	false,		false,	},
	parent="img_10",
	class="SImage",
	is_nine=true,
	name="img_11",
	pos={	223,		0,	},
	zOrder=1,		size={	"221",
	"10",
},
},
},
	size={
"221",

"10",
},
},

{	img_n="",
	parent="panel_1",
	class="SScroll",
	is_nine=true,
	scroll_type=2,		pos={	3,		135,	},
	zOrder=1,		name="scroll_friend",
	size={	"450",
	"343",
},
},
},
	size={
"456",

"479",
},
},
},
	zOrder=1,		pos={
"220",

"28",
},
},
},
	class="SPanel",
	is_nine=true,
	name="win_root",
	size={
"960",

"640",
},
	parent="ui_root",
	zOrder=1,		pos={
"0",

"0",
},

}