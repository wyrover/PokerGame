main_menu = {
	img_n="",
	parent="ui_root",
	class="SPanel",
	zOrder=1,		name="win_root",
	size={	"780",
	"370",
},
	is_nine=true,
	child={
{	img_n="",
	parent="win_root",
	class="SScroll",
	is_nine=true,
	scroll_type=2,		pos={	141,		32,	},
	zOrder=2,		name="scroll",
	size={	"500",
	"300",
},
},

{	img_n="",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=true,
	name="left_panel",
	pos={	-3,		11,	},
	zOrder=2,		size={	"100",
	"350",
},
},

{	img_n="",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=true,
	name="right_panel",
	size={	"100",
	"350",
},
	zOrder=2,		pos={	682,		11,	},
},

{	img_n="sui/mainMenu/m_bg.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=true,
	name="panel_1",
	size={	"592",
	"374",
},
	child={
{	img_n="sui/mainMenu/huawen.png",
	flip={	true,		false,	},
	parent="panel_1",
	class="SImage",
	is_nine=false,
	name="img_2",
	size={	"135",
	"9",
},
	zOrder=1,		pos={	32,		363,	},
},

{	img_n="sui/mainMenu/huawen.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SImage",
	is_nine=false,
	name="copy_3",
	pos={	416,		363,	},
	zOrder=1,		size={	"135",
	"9",
},
},
},
	zOrder=1,		pos={
94,	
-2,	},
},

{	img_n="sui/mainMenu/m_bg.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=true,
	name="panel_2",
	size={	"97",
	"375",
},
	zOrder=1,		pos={	"-1",
	"-2",
},
},

{	img_n="sui/mainMenu/m_bg.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=true,
	name="copy_2",
	pos={	"684",
	"-2",
},
	zOrder=1,		size={	"97",
	"375",
},
},
},
	pos={
96,	
115,	},

}