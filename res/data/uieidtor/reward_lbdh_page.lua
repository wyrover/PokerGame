reward_lbdh_page = {
	img_n="",
	child={
{	img_n="sui/common/panel2.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=true,
	name="panel_leveling",
	pos={	"0",
	"0",
},
	zOrder=1,		child={
{	img_n="nopack/reward/12.png",
	flip={	false,		false,	},
	parent="panel_leveling",
	class="SPanel",
	is_nine=false,
	name="panel_1",
	size={	"630",
	"195",
},
	zOrder=1,		pos={	3,		378,	},
},

{	img_n="sui/common/panel4.png",
	flip={	false,		false,	},
	parent="panel_leveling",
	class="SPanel",
	is_nine=true,
	name="panel_2",
	size={	"630",
	"370",
},
	child={
{	img_n="sui/common/title_bg.png",
	flip={	false,		false,	},
	parent="panel_2",
	class="SImage",
	is_nine=true,
	name="img_1",
	size={	"220",
	"35",
},
	child={
{	img_n="sui/reward/shuruduihuanma.png",
	flip={	false,		false,	},
	parent="img_1",
	class="SImage",
	is_nine=false,
	name="img_2",
	size={	"113",
	"25",
},
	zOrder=1,		pos={	53,		5,	},
},
},
	zOrder=1,		pos={
205,	
305,	},
},

{	img_n="sui/common/string_04.png",
	flip={	false,		false,	},
	parent="panel_2",
	class="SImage",
	is_nine=true,
	name="img_3",
	size={	"180",
	"10",
},
	zOrder=1,		pos={	20,		318,	},
},

{	img_n="sui/common/string_04.png",
	flip={	true,		false,	},
	parent="panel_2",
	class="SImage",
	is_nine=true,
	name="copy_1",
	pos={	430,		318,	},
	zOrder=1,		size={	"180",
	"10",
},
},

{	img_n="sui/common/panel5.png",
	parent="panel_2",
	class="SEditBox",
	maxnum=15,		fontsize=16,		size={	"360",
	"45",
},
	name="editbox_1",
	align=1,		zOrder=1,		pos={	140,		175,	},
},

{	size={	"156",
	"53",
},
	img_n="sui/common/btn9.png",
	name="btn_1",
	parent="panel_2",
	child={
{	img_n="sui/reward/duihuan.png",
	flip={	false,		false,	},
	parent="btn_1",
	class="SImage",
	is_nine=false,
	name="img_4",
	size={	"48",
	"24",
},
	zOrder=1,		pos={	55,		14,	},
},
},
	class="SButton",
	zOrder=1,		pos={
235,	
65,	},
},

{	str="#ca27535小提示：请确保背包里有一个空位哦",
	name="label_1",
	align=1,		parent="panel_2",
	class="SLabel",
	fontsize="14",
	pos={	195,		10,	},
},
},
	zOrder=1,		pos={
"3",

"5",
},
},
},
	isVisible=false,
	size={
"637",

"525",
},
},
},
	class="SPanel",
	is_nine=true,
	name="win_root",
	pos={
"0",

"0",
},
	zOrder=1,		parent="ui_root",
	size={
"637",

"525",
},

}
