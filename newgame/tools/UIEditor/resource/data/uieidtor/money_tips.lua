money_tips = {
	img_n="",
	child={
{	img_n="sui/common/tipsPanel.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=true,
	name="panel_5",
	pos={	261,		192.5,	},
	zOrder=1,		child={
{	str="#c734e0f道具描述道具描述道具描述道具描述道",
	img_n="",
	parent="panel_5",
	class="STextArea",
	is_nine=true,
	name="text_desc",
	pos={	"40",
	"75",
},
	zOrder=1,		size={	"360",
	"60",
},
},

{	str="#c794a27道具名称",
	name="label_item_name",
	parent="panel_5",
	align="2",
	class="SLabel",
	fontsize="24",
	pos={	220,		200,	},
},

{	img_n="sui/common/fengexian.png",
	flip={	true,		false,	},
	parent="panel_5",
	class="SImage",
	is_nine=true,
	name="copy_2",
	pos={	"30",
	"90",
},
	zOrder=1,		child={},
	size={
"380",

"3",
},
},

{	str="#c854c0f元宝   x 2143234",
	name="text",
	parent="panel_5",
	align=1,		class="SLabel",
	fontsize="20",
	pos={	153,		140,	},
},

{	img_n="sui/common/division_06.png",
	flip={	false,		false,	},
	parent="panel_5",
	class="SImage",
	is_nine=false,
	name="img_1",
	size={	"78",
	"15",
},
	child={},
	zOrder=1,		pos={
81,	
205,	},
},

{	img_n="sui/common/division_06.png",
	flip={	true,		false,	},
	parent="panel_5",
	class="SImage",
	is_nine=false,
	name="copy_1",
	pos={	285,		205,	},
	zOrder=1,		child={},
	size={
"78",

"15",
},
},

{	img_n="sui/common/win_down.png",
	flip={	false,		false,	},
	parent="panel_5",
	class="SImage",
	is_nine=true,
	name="img_2",
	size={	"465",
	"10",
},
	zOrder=1,		pos={	-14,		-4.5,	},
},

{	img_n="sui/common/slot_bg.png",
	name="slotitem_1",
	size={	"78",
	"78",
},
	parent="panel_5",
	class="SSlotItem",
	zOrder=1,		pos={	40,		112,	},
},

{	img_n="sui/common/little_win_title_bg.png",
	flip={	false,		false,	},
	parent="panel_5",
	class="SImage",
	is_nine=true,
	name="img_3",
	size={	"480",
	"53",
},
	zOrder=1,		pos={	-20,		210,	},
},
},
	size={
"440",

"255",
},
},

{	img_n="sui/common/close.png",
	name="btn_close",
	pos={	632,		385,	},
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
