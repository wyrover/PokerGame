test_music = {
	img_n="sui/common/tipsPanel.png",
	parent="ui_root",
	class="SPanel",
	is_nine=true,
	name="win_root",
	pos={	226,		131,	},
	child={
{	img_n="sui/common/close.png",
	name="btn_close",
	size={	"66",
	"75",
},
	parent="win_root",
	class="SButton",
	zOrder=10,		pos={	453,		340,	},
},

{	img_n="sui/common/panel11.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=true,
	name="panel_2",
	size={	"450",
	"320",
},
	child={
{	img_n="sui/common/breadth.png",
	parent="panel_2",
	class="SEditBox",
	maxnum=50,		size={	"300",
	"40",
},
	fontsize=16,		name="editbox_1",
	align=1,		is_nine=false,
	zOrder=1,		pos={	75,		80,	},
},

{	img_n="",
	parent="panel_2",
	class="SScroll",
	is_nine=true,
	scroll_type=2,		size={	"393",
	"162",
},
	name="scroll_2",
	zOrder=1,		pos={	28.5,		133,	},
},

{	size={	"139",
	"57",
},
	img_n="sui/common/btn_1.png",
	name="btn_6",
	parent="panel_2",
	child={
{	str="重新载入",
	name="label_7",
	align=1,		parent="btn_6",
	class="SLabel",
	fontsize="24",
	pos={	"21.5",
	"15",
},
},
},
	class="SButton",
	zOrder=1,		pos={
155.5,	
8.5,	},
},
},
	zOrder=1,		pos={
35,	
21,	},
},

{	img_n="sui/common/little_win_title_bg.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SImage",
	is_nine=true,
	name="img_1",
	zOrder=1,		pos={	-18,		357,	},
	size={	"560",
	"53",
},
},

{	img_n="sui/common/win_down.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SImage",
	is_nine=true,
	name="img_2",
	zOrder=1,		pos={	"-10",
	"-5",
},
	size={	"540",
	"10",
},
},
},
	zOrder=1,		size={
"520",

"400",
},

}
