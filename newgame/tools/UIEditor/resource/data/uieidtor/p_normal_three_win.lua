p_normal_three_win = {
	img_n="",
	parent="ui_root",
	class="SPanel",
	is_nine=true,
	name="win_root",
	pos={	"0",
	"0",
},
	child={
{	img_n="",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=true,
	name="panel_rank",
	pos={	209,		29,	},
	zOrder=1,		child={
{	img_n="sui/common/close.png",
	name="btn_close",
	pos={	439,		476,	},
	parent="panel_rank",
	class="SButton",
	zOrder=12,		size={	"66",
	"75",
},
},

{	img_n="sui/common/tipsPanel.png",
	flip={	false,		false,	},
	parent="panel_rank",
	class="SImage",
	is_nine=true,
	name="img_2",
	pos={	"10",
	"0",
},
	zOrder=1,		child={
{	img_n="sui/common/win_down.png",
	flip={	false,		false,	},
	parent="img_2",
	class="SImage",
	is_nine=true,
	name="img_3",
	pos={	-11,		0,	},
	zOrder=1,		size={	"527",
	"10",
},
},

{	img_n="sui/common/title_panel.png",
	flip={	false,		false,	},
	parent="img_2",
	class="SImage",
	is_nine=true,
	name="img_4",
	pos={	-3,		486,	},
	zOrder=1,		child={
{	str="#cf3e2c5分解",
	name="lb_title",
	parent="img_4",
	align="2",
	class="SLabel",
	fontsize="26",
	pos={	"255",
	"11",
},
},
},
	size={
"510",

"57",
},
},

{	img_n="sui/common/little_win_title_bg.png",
	flip={	false,		false,	},
	parent="img_2",
	class="SPanel",
	is_nine=true,
	name="panel_20",
	pos={	-19,		494,	},
	isVisible=false,
	zOrder=5,		child={},
	size={
"550",

"53",
},
},
},
	size={
"502",

"535",
},
},

{	img_n="",
	flip={	false,		false,	},
	parent="panel_rank",
	class="SPanel",
	is_nine=false,
	name="panel_main",
	pos={	14,		13,	},
	zOrder=1,		child={},
	size={
"490",

"480",
},
},
},
	size={
"525",

"546",
},
},
},
	zOrder=1,		size={
"960",

"640",
},

}
