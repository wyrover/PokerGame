reward_win = {
	img_n="",
	parent="ui_root",
	class="SPanel",
	is_nine=true,
	name="win_root",
	pos={	"0",
	"0",
},
	isVisible=true,
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
	pos={	"5",
	"-156",
},
	zOrder=1,		size={	"42",
	"253",
},
},

{	img_n="sui/reward/fuli.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SPanel",
	is_nine=false,
	name="panel_5",
	pos={	157,		41,	},
	zOrder=3,		size={	"88",
	"49",
},
},
},
	zOrder=9,		pos={
"9",

"532",
},
},

{	img_n="sui/common/close.png",
	name="btn_close",
	size={	"66",
	"75",
},
	parent="win_root",
	class="SButton",
	zOrder=99,		pos={	"845",
	"557",
},
},

{	img_n="sui/common/panel11.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=true,
	name="panel_16",
	size={	"232",
	"507",
},
	child={
{	img_n="",
	parent="panel_16",
	class="SScroll",
	is_nine=true,
	scroll_type=2,		pos={	"3",
	"3",
},
	zOrder=1,		name="scroll_1",
	size={	"226",
	"501",
},
},
},
	zOrder=5,		pos={
"59",

"32",
},
},

{	img_n="",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=true,
	name="child_page_parent",
	size={	"600",
	"509",
},
	zOrder=10,		pos={	"296",
	"30",
},
},

{	img_n="sui/common/win_panel.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SImage",
	is_nine=true,
	name="img_4",
	size={	"882",
	"565",
},
	zOrder=1,		pos={	"34",
	"10",
},
},
},
	zOrder=1,		size={
"960",

"640",
},

}
