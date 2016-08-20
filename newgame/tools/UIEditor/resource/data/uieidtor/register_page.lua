register_page = {
	img_n="",
	child={
{	img_n="sui/common/tipsPanel.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=true,
	name="panel_1",
	pos={	"244",
	"115",
},
	zOrder=1,		child={
{	img_n="",
	parent="panel_1",
	class="SEditBox",
	maxnum=15,		pos={	"155",
	"290",
},
	is_nine=false,
	name="account",
	zOrder=2,		child={
{	str="#ce9dbc2请输入您的账号",
	name="accountTips",
	parent="account",
	align=1,		class="SLabel",
	fontsize="18",
	pos={	0,		12,	},
},

{	img_n="sui/login/gou.png",
	flip={	false,		false,	},
	parent="account",
	class="SImage",
	is_nine=false,
	name="img_6",
	pos={	"228",
	"4",
},
	zOrder=1,		size={	"38",
	"36",
},
},
},
	align=1,		fontsize=16,		size={
"288",

"43",
},
},

{	img_n="",
	parent="panel_1",
	class="SEditBox",
	maxnum=15,		pos={	"155",
	"214",
},
	is_nine=true,
	name="password",
	zOrder=2,		child={
{	str="#ce9dbc2请输入6-20位密码",
	name="passwordTips",
	parent="password",
	align=1,		class="SLabel",
	fontsize="18",
	pos={	0,		12,	},
},

{	img_n="sui/login/cha.png",
	flip={	false,		false,	},
	parent="password",
	class="SImage",
	is_nine=false,
	name="img_7",
	pos={	231,		4,	},
	zOrder=1,		size={	"36",
	"34",
},
},
},
	align=1,		fontsize=16,		size={
"288",

"43",
},
},

{	img_n="",
	parent="panel_1",
	class="SEditBox",
	maxnum=15,		pos={	155,		138,	},
	is_nine=true,
	name="surepassword",
	zOrder=2,		child={
{	str="#ce9dbc2请再次输入密码",
	name="label_7",
	parent="surepassword",
	align=1,		class="SLabel",
	fontsize="18",
	pos={	0,		12,	},
},

{	img_n="sui/login/cha.png",
	flip={	false,		false,	},
	parent="surepassword",
	class="SImage",
	is_nine=false,
	name="img_8",
	pos={	231,		4,	},
	zOrder=1,		size={	"36",
	"34",
},
},
},
	align=1,		fontsize=16,		size={
"288",

"43",
},
},

{	str="#c8a5823请输入6位以上密码",
	name="label_1",
	parent="panel_1",
	align=1,		class="SLabel",
	fontsize="18",
	pos={	154,		188.5,	},
},

{	str="#c8a5823密码输入不一致",
	name="label_2",
	parent="panel_1",
	align=1,		class="SLabel",
	fontsize="18",
	pos={	154,		112.5,	},
},

{	img_s="sui/common/close.png",
	img_n="sui/common/close.png",
	name="closeitem",
	pos={	409,		341,	},
	parent="panel_1",
	class="SRadioButton",
	zOrder=2,		size={	"66",
	"75",
},
},

{	img_n="sui/common/btn_1.png",
	parent="panel_1",
	class="SRadioButton",
	zOrder=1,		img_s="ui/common/btn_1.png",
	name="registe",
	pos={	"166",
	"18",
},
	child={
{	str="注册",
	name="label_3",
	parent="registe",
	align="2",
	class="SLabel",
	fontsize="24",
	pos={	"69",
	"15",
},
},
},
	size={
"139",

"57",
},
},

{	str="#c8a5823该账号已存在",
	name="label_4",
	align=1,		parent="panel_1",
	class="SLabel",
	fontsize="18",
	pos={	154,		263.5,	},
},

{	img_n="sui/common/little_win_title_bg.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SImage",
	is_nine=true,
	name="img_5",
	size={	"525",
	"53",
},
	zOrder=1,		pos={	-25,		357,	},
},

{	img_n="sui/common/win_down.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SImage",
	is_nine=true,
	name="img_9",
	size={	"498",
	"10",
},
	zOrder=1,		pos={	-13,		-4,	},
},

{	str="#c662a06账",
	fontsize="22",
	name="label_6",
	align=1,		parent="panel_1",
	class="SLabel",
	child={},
	pos={
38,	
298,	},
},

{	str="#c662a06密",
	name="copy_1",
	align=1,		parent="panel_1",
	class="SLabel",
	fontsize="22",
	pos={	35,		223,	},
},

{	str="#c662a06确认密码",
	name="copy_2",
	parent="panel_1",
	align=1,		class="SLabel",
	fontsize="22",
	pos={	35,		144,	},
},

{	str="#c662a06号",
	name="copy_3",
	fontsize="22",
	parent="panel_1",
	align=1,		class="SLabel",
	child={},
	pos={
103,	
298,	},
},

{	str="#c662a06码",
	name="copy_4",
	parent="panel_1",
	align=1,		class="SLabel",
	fontsize="22",
	pos={	103,		223,	},
},

{	img_n="sui/common/input_frame.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SPanel",
	is_nine=true,
	name="panel_2",
	pos={	"142",
	"290",
},
	zOrder=1,		size={	"288",
	"43",
},
},

{	img_n="sui/common/input_frame.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SPanel",
	is_nine=true,
	name="copy_6",
	size={	"288",
	"43",
},
	zOrder=1,		pos={	"142",
	"214",
},
},

{	img_n="sui/common/input_frame.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SPanel",
	is_nine=true,
	name="copy_7",
	pos={	"142",
	"138",
},
	zOrder=1,		size={	"288",
	"43",
},
},
},
	size={
"472",

"410",
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
