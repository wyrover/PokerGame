qx_lxdl_page = {
	img_n="",
	child={
{	img_n="sui/common/panel12.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=true,
	name="child_name",
	pos={	"0",
	"0",
},
	zOrder=1,		child={
{	img_n="nopack/reward/qx_lxdl.png",
	flip={	false,		false,	},
	parent="child_name",
	class="SPanel",
	is_nine=true,
	name="img_1",
	size={	"572",
	"213",
},
	child={
{	str="连续登录",
	img_n="",
	parent="img_1",
	class="STextArea",
	is_nine=true,
	name="text_1",
	size={	"360",
	"18",
},
	zOrder=1,		fontsize="22",
	pos={	5,		143,	},
},
},
	zOrder=1,		pos={
15,	
338,	},
},

{	img_n="",
	parent="child_name",
	class="SScroll",
	is_nine=true,
	scroll_type=2,		size={	"581",
	"266",
},
	name="scroll_1",
	zOrder=1,		pos={	12,		25,	},
},

{	img_n="sui/other/paimingdi.png",
	flip={	false,		false,	},
	parent="child_name",
	class="SImage",
	is_nine=true,
	name="img_2",
	size={	"581",
	"39",
},
	child={
{	img_n="sui/common/line9.png",
	flip={	false,		false,	},
	parent="img_2",
	class="SImage",
	is_nine=false,
	name="img_3",
	size={	"2",
	"24",
},
	zOrder=1,		pos={	"117",
	"6",
},
},

{	img_n="sui/common/line9.png",
	flip={	false,		false,	},
	parent="img_2",
	class="SImage",
	is_nine=false,
	name="img_5",
	size={	"2",
	"24",
},
	zOrder=1,		pos={	"423",
	"6",
},
},

{	str="#c643f17领取条件",
	name="label_2",
	align="2",
	parent="img_2",
	class="SLabel",
	fontsize="18",
	pos={	"61",
	"9",
},
},

{	str="#c643f17奖励",
	name="label_3",
	align="2",
	parent="img_2",
	class="SLabel",
	fontsize="18",
	pos={	"270",
	"9",
},
},

{	str="#c643f17状态",
	name="label_4",
	align="2",
	parent="img_2",
	class="SLabel",
	fontsize="18",
	pos={	"502",
	"9",
},
},
},
	zOrder=1,		pos={
12,	
295,	},
},
},
	isVisible=false,
	size={
"600",

"509",
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
"600",

"509",
},

}