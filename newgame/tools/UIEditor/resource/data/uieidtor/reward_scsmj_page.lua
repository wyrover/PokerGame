reward_scsmj_page = {
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
{	img_n="nopack/reward/scsmj.png",
	flip={	false,		false,	},
	parent="child_name",
	class="SImage",
	is_nine=false,
	name="img_9",
	size={	"576",
	"488",
},
	child={
{	img_n="sui/reward/line3.png",
	flip={	false,		false,	},
	parent="img_9",
	class="SImage",
	is_nine=false,
	name="img_1",
	size={	"4",
	"31",
},
	zOrder=1,		pos={	"83",
	"16",
},
},

{	img_n="sui/reward/line3.png",
	flip={	false,		false,	},
	parent="img_9",
	class="SImage",
	is_nine=false,
	name="copy_1",
	pos={	"140",
	"16",
},
	zOrder=1,		size={	"4",
	"31",
},
},

{	img_n="sui/reward/line3.png",
	flip={	false,		false,	},
	parent="img_9",
	class="SImage",
	is_nine=false,
	name="copy_2",
	size={	"4",
	"31",
},
	zOrder=1,		pos={	"195",
	"16",
},
},

{	str="生命",
	name="label_1",
	align="2",
	parent="img_9",
	class="SLabel",
	fontsize=16,		pos={	55,		32,	},
},

{	str="2000",
	name="label_2",
	align="2",
	parent="img_9",
	class="SLabel",
	fontsize=16,		pos={	55,		13,	},
},

{	str="攻击",
	name="copy_3",
	parent="img_9",
	align="2",
	class="SLabel",
	fontsize=16,		pos={	"112",
	"32",
},
},

{	str="外防",
	name="copy_4",
	align="2",
	parent="img_9",
	class="SLabel",
	fontsize=16,		pos={	168,		32,	},
},

{	str="内防",
	name="copy_5",
	parent="img_9",
	align="2",
	class="SLabel",
	fontsize=16,		pos={	223,		32,	},
},

{	str="100",
	name="copy_6",
	parent="img_9",
	align="2",
	class="SLabel",
	fontsize=16,		pos={	112,		13,	},
},

{	str="70",
	name="copy_7",
	align="2",
	parent="img_9",
	class="SLabel",
	fontsize=16,		pos={	168,		13,	},
},

{	str="70",
	name="copy_8",
	parent="img_9",
	align="2",
	class="SLabel",
	fontsize=16,		pos={	223,		13,	},
},

{	img_n="sui/reward/xgmmj.png",
	flip={	false,		false,	},
	parent="img_9",
	class="SImage",
	is_nine=false,
	name="img_2",
	size={	"105",
	"23",
},
	zOrder=1,		pos={	38,		423.5,	},
},

{	str="#cfff1b3VIP3可升级",
	name="label_3",
	parent="img_9",
	align=1,		class="SLabel",
	fontsize=16,		pos={	58,		448.5,	},
},

{	str="#cfff1b3哦",
	name="label_4",
	parent="img_9",
	align=1,		class="SLabel",
	fontsize=16,		pos={	144,		425.5,	},
},
},
	zOrder=1,		pos={
"12",

"10.5",
},
},

{	str="充值",
	img_n="sui/common/btn_2.png",
	parent="child_name",
	class="SButton",
	zOrder=2,		name="btn_recharge",
	pos={	412,		17,	},
	fontsize="24",
	size={	"157",
	"57",
},
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
"603",

"511",
},

}
