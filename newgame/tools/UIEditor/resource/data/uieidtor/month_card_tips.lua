month_card_tips = {
	img_n="",
	child={
{	img_n="sui/common/tipsPanel.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=true,
	name="panel_5",
	pos={	"259",
	"145",
},
	zOrder=1,		child={
{	img_n="sui/common/little_win_title_bg.png",
	flip={	false,		false,	},
	parent="panel_5",
	class="SImage",
	is_nine=true,
	name="img_3",
	size={	"474",
	"53",
},
	zOrder=1,		pos={	-15,		324,	},
},

{	img_n="sui/common/win_down.png",
	flip={	false,		false,	},
	parent="panel_5",
	class="SImage",
	is_nine=true,
	name="img_4",
	size={	"474",
	"10",
},
	zOrder=1,		pos={	"-11",
	"0",
},
},

{	img_n="sui/common/line13.png",
	flip={	false,		false,	},
	parent="panel_5",
	class="SImage",
	is_nine=false,
	name="img_2",
	size={	"398",
	"2",
},
	zOrder=1,		pos={	31,		202,	},
},

{	img_n="sui/common/slot_bg.png",
	name="slotitem_1",
	size={	"78",
	"78",
},
	parent="panel_5",
	class="SSlotItem",
	zOrder=1,		pos={	103,		112,	},
},

{	str="#c965a29X",
	name="label_4",
	align=1,		parent="panel_5",
	class="SLabel",
	fontsize="18",
	pos={	212,		130,	},
},

{	str="#c965a29123",
	name="label_count",
	align=1,		parent="panel_5",
	class="SLabel",
	fontsize="18",
	pos={	254,		130,	},
},

{	size={	"139",
	"57",
},
	img_n="sui/common/btn_1.png",
	name="btn_1",
	parent="panel_5",
	child={
{	str="确定",
	name="label_6",
	align="2",
	parent="btn_1",
	class="SLabel",
	fontsize="24",
	pos={	69,		14,	},
},
},
	class="SButton",
	zOrder=1,		pos={
150,	
30,	},
},

{	str="",
	img_n="",
	parent="panel_5",
	class="STextArea",
	is_nine=true,
	name="text_1",
	zOrder=1,		pos={	"25",
	"280",
},
	size={	"390",
	"95",
},
},
},
	size={
"442",

"376",
},
},

{	img_n="sui/common/close.png",
	name="btn_close",
	pos={	625,		451,	},
	parent="win_root",
	class="SButton",
	zOrder=10,		size={	"66",
	"75",
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