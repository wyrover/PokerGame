prop_tips = {
	img_n="",
	child={
{	img_n="sui/common/tipsPanel.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=true,
	name="panel_5",
	size={	"528",
	"406",
},
	child={
{	str="使用",
	img_n="sui/common/btn_1.png",
	parent="panel_5",
	class="STextButton",
	zOrder=1,		size={	"139",
	"54",
},
	fontsize="24",
	align=1,		name="textbtn_use",
	is_nine=false,
	child={},
	pos={
29,	
18,	},
},

{	str="获取",
	img_n="sui/common/btn_1.png",
	parent="panel_5",
	class="STextButton",
	zOrder=1,		pos={	197,		18,	},
	fontsize="24",
	is_nine=false,
	name="textbtn_get",
	align=1,		child={},
	size={
"139",

"54",
},
},

{	str="出售",
	img_n="sui/common/btn_1.png",
	parent="panel_5",
	class="STextButton",
	zOrder=1,		size={	"139",
	"54",
},
	fontsize="24",
	align=1,		name="textbtn_sell",
	is_nine=false,
	child={},
	pos={
361,	
18,	},
},

{	img_n="sui/common/little_win_title_bg.png",
	flip={	false,		false,	},
	parent="panel_5",
	class="SImage",
	is_nine=true,
	name="img_6",
	pos={	-19,		345,	},
	zOrder=1,		size={	"570",
	"63",
},
},

{	img_n="sui/common/close.png",
	name="btn_close",
	size={	"66",
	"75",
},
	parent="panel_5",
	class="SButton",
	zOrder=10,		pos={	463,		338,	},
},

{	img_n="sui/common/win_down.png",
	flip={	false,		false,	},
	parent="panel_5",
	class="SImage",
	is_nine=true,
	name="img_8",
	pos={	"-11",
	"0",
},
	zOrder=1,		size={	"548",
	"10",
},
},

{	img_n="",
	flip={	false,		false,	},
	parent="panel_5",
	class="SPanel",
	is_nine=false,
	name="panel_top",
	pos={	25,		179,	},
	zOrder=1,		child={
{	img_n="sui/common/slot_bg.png",
	flip={	false,		false,	},
	parent="panel_top",
	class="SPanel",
	is_nine=false,
	name="slot_bg",
	size={	"82",
	"82",
},
	child={
{	img_n="",
	name="slotitem",
	parent="slot_bg",
	class="SSlotItem",
	size={	78,		78,	},
	pos={	2,		1,	},
},
},
	zOrder=1,		pos={
16,	
52,	},
},

{	str="#c95310a类型：",
	name="label_item_type",
	align=1,		parent="panel_top",
	class="SLabel",
	fontsize=16,		pos={	112,		108,	},
},

{	str="#c95310a需要等级：1",
	name="label_need_level",
	align="1",
	parent="panel_top",
	class="SLabel",
	fontsize=16,		pos={	112,		56,	},
},

{	img_n="sui/common/fengexian.png",
	flip={	true,		false,	},
	parent="panel_top",
	class="SImage",
	is_nine=true,
	name="copy_2",
	size={	"480",
	"3",
},
	child={
{	img_n="sui/common/fengexian.png",
	flip={	false,		false,	},
	parent="copy_2",
	class="SImage",
	is_nine=true,
	name="img_2",
	pos={	"3",
	"-116",
},
	zOrder=1,		size={	"480",
	"3",
},
},
},
	zOrder=1,		pos={
2,	
147,	},
},

{	str="#c95310a剩余血量",
	name="label_need_hp",
	align=1,		parent="panel_top",
	class="SLabel",
	fontsize=16,		pos={	245,		108,	},
},

{	str="道具名字七个字",
	name="label_4",
	parent="panel_top",
	align="2",
	class="SLabel",
	fontsize="26",
	pos={	236,		166,	},
},
},
	size={
"486",

"200",
},
},

{	str="",
	img_n="",
	parent="panel_5",
	class="STextArea",
	is_nine=true,
	name="text_2",
	size={	"400",
	"100",
},
	zOrder=1,		pos={	69,		190,	},
},
},
	zOrder=1,		pos={
"216",

"117",
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
"960",

"640",
},

}