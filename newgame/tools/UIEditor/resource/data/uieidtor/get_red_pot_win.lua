get_red_pot_win = {
	img_n="",
	child={
{	img_n="",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=false,
	name="panel_6",
	size={	"80",
	"500",
},
	child={
{	img_n="sui/common/menu_line.png",
	flip={	false,		false,	},
	parent="panel_6",
	class="SImage",
	is_nine=false,
	name="img_14",
	size={	"3",
	"28",
},
	zOrder=1,		pos={	26,		273,	},
},

{	img_n="sui/common/menu_line.png",
	flip={	false,		false,	},
	parent="panel_6",
	class="SImage",
	is_nine=false,
	name="img_19",
	size={	"3",
	"28",
},
	zOrder=1,		pos={	26,		367,	},
},
},
	zOrder=1,		pos={
901,	
91,	},
},

{	img_n="sui/common/win_panel.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=true,
	name="panel_1",
	pos={	"24",
	"12",
},
	zOrder=3,		child={
{	img_n="sui/common/win_title_bg.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SImage",
	is_nine=false,
	name="img_1",
	pos={	-24,		519,	},
	zOrder=10,		child={
{	img_n="sui/common/pj.png",
	flip={	false,		false,	},
	parent="img_1",
	class="SImage",
	is_nine=false,
	name="img_2",
	pos={	8,		-114,	},
	zOrder=10,		size={	"36",
	"209",
},
},

{	img_n="sui/redPot/repotLabel.png",
	flip={	false,		false,	},
	parent="img_1",
	class="SImage",
	is_nine=false,
	name="img_3",
	pos={	161,		40,	},
	zOrder=1,		size={	"90",
	"50",
},
},
},
	size={
"949",

"103",
},
},

{	img_n="",
	flip={	false,		false,	},
	parent="panel_1",
	class="SPanel",
	is_nine=false,
	name="sendPage",
	size={	"860",
	"520",
},
	isVisible=false,
	child={
{	img_n="sui/common/panel11.png",
	flip={	false,		false,	},
	parent="sendPage",
	class="SPanel",
	is_nine=true,
	name="panel_2",
	size={	"250",
	"497",
},
	child={
{	str="#c4e2d0e选择频道",
	name="label_16",
	align="2",
	parent="panel_2",
	class="SLabel",
	fontsize="24",
	pos={	125,		458,	},
},

{	img_n="sui/common/division_9.png",
	flip={	false,		false,	},
	parent="panel_2",
	class="SImage",
	is_nine=false,
	name="img_12",
	size={	"40",
	"15",
},
	zOrder=1,		pos={	25,		465,	},
},

{	img_n="sui/common/division_9.png",
	flip={	true,		false,	},
	parent="panel_2",
	class="SImage",
	is_nine=false,
	name="copy_1",
	pos={	186,		464,	},
	zOrder=1,		size={	"40",
	"15",
},
},
},
	zOrder=10,		pos={
17,	
16,	},
},

{	img_n="sui/common/panel11.png",
	flip={	false,		false,	},
	parent="sendPage",
	class="SPanel",
	is_nine=true,
	img_s="sui/common/progress.png",
	name="panel_7",
	size={	"834",
	"505",
},
	child={
{	str="#c644019发送对象",
	name="label_5",
	align=1,		parent="panel_7",
	class="SLabel",
	fontsize="18",
	pos={	275,		463.5,	},
},

{	img_n="sui/redPot/input_frame.png",
	flip={	false,		false,	},
	parent="panel_7",
	class="SPanel",
	is_nine=true,
	name="panel_8",
	size={	"200",
	"40",
},
	child={
{	str="",
	name="label_25",
	parent="panel_8",
	align=1,		class="SLabel",
	fontsize=16,		pos={	11,		11,	},
},
},
	zOrder=1,		pos={
370,	
455,	},
},

{	img_s="sui/common/select_bg.png",
	img_n="sui/redPot/select_bg.png",
	name="radiobtn_3",
	size={	"32",
	"32",
},
	parent="panel_7",
	class="SRadioButton",
	zOrder=1,		pos={	"580",
	"461",
},
},

{	img_s="sui/common/select_bg.png",
	img_n="sui/redPot/select_bg.png",
	name="radiobtn_4",
	size={	"32",
	"32",
},
	parent="panel_7",
	class="SRadioButton",
	zOrder=1,		pos={	"700",
	"461",
},
},

{	str="#c644019红包金额",
	name="label_6",
	align=1,		parent="panel_7",
	class="SLabel",
	fontsize="18",
	pos={	275,		397.5,	},
},

{	img_n="sui/redPot/input_frame.png",
	flip={	false,		false,	},
	parent="panel_7",
	class="SPanel",
	is_nine=true,
	name="panel_9",
	size={	"250",
	"40",
},
	child={
{	img_n="",
	parent="panel_9",
	class="SEditBox",
	maxnum=15,		pos={	10,		1,	},
	fontsize=16,		zOrder=1,		child={},
	align=1,		name="editbox_2",
	size={
"190",

"35",
},
},

{	img_n="sui/common/huobi_yuanbao.png",
	flip={	false,		false,	},
	parent="panel_9",
	class="SImage",
	is_nine=false,
	name="img_8",
	pos={	203,		-3,	},
	zOrder=1,		size={	"45",
	"45",
},
},
},
	zOrder=1,		pos={
370,	
390,	},
},

{	str="#c8a5820金额不能少于红包个数",
	name="label_7",
	parent="panel_7",
	align=1,		class="SLabel",
	fontsize="14",
	pos={	382,		364.5,	},
},

{	img_n="sui/redPot/select_btn.png",
	flip={	false,		false,	},
	parent="panel_7",
	class="SImage",
	is_nine=false,
	name="img_6",
	size={	"32",
	"32",
},
	zOrder=10,		pos={	581,		461,	},
},

{	str="#c644019红包个数",
	name="label_8",
	align=1,		parent="panel_7",
	class="SLabel",
	fontsize="18",
	pos={	275,		271.5,	},
},

{	str="#c8a5820最多可发xx个",
	name="label_9",
	align=1,		parent="panel_7",
	class="SLabel",
	fontsize="14",
	pos={	718,		219.5,	},
},

{	str="#c644019留言",
	name="label_10",
	align=1,		parent="panel_7",
	class="SLabel",
	fontsize="18",
	pos={	275,		175.5,	},
},

{	img_n="sui/redPot/input_frame.png",
	flip={	false,		false,	},
	parent="panel_7",
	class="SPanel",
	is_nine=true,
	name="panel_10",
	size={	"450",
	"95",
},
	child={
{	img_n="",
	parent="panel_10",
	class="SEditBox",
	maxnum=15,		fontsize=16,		size={	"420",
	"30",
},
	name="editbox_3",
	align=1,		zOrder=1,		pos={	10,		57,	},
},

{	str="#ca275350/15",
	name="label_11",
	align="3",
	parent="panel_10",
	class="SLabel",
	fontsize=16,		pos={	437,		5.5,	},
},
},
	zOrder=1,		pos={
370,	
109,	},
},

{	str="#c8b5921小提示：未领取的红包2个小时后以邮件的形式返还",
	name="label_13",
	align="2",
	parent="panel_7",
	class="SLabel",
	fontsize="14",
	pos={	577,		7.5,	},
},

{	str="#c644019手气红包",
	name="label_17",
	align=1,		parent="panel_7",
	class="SLabel",
	fontsize="18",
	pos={	615,		466,	},
},

{	str="#c644019普通红包",
	name="label_18",
	align=1,		parent="panel_7",
	class="SLabel",
	fontsize="18",
	pos={	"736",
	"466",
},
},

{	size={	"139",
	"57",
},
	img_n="sui/common/btn_1.png",
	name="radiobtn_6",
	parent="panel_7",
	child={
{	str="发红包",
	name="label_15",
	align="2",
	parent="radiobtn_6",
	class="SLabel",
	fontsize="24",
	pos={	"69",
	"15",
},
},
},
	class="SButton",
	zOrder=1,		pos={
529,	
37,	},
},

{	pos={	637,		387,	},
	img_n="sui/common/btn10_1.png",
	name="btn_1",
	child={
{	str="最小",
	name="label_12",
	align="2",
	parent="btn_1",
	class="SLabel",
	fontsize="20",
	pos={	"40",
	"10",
},
},
},
	parent="panel_7",
	class="SButton",
	zOrder=1,		size={
"80",

"44",
},
},

{	pos={	736,		387,	},
	img_n="sui/common/btn10_1.png",
	name="btn_2",
	child={
{	str="最大",
	name="label_14",
	align="2",
	parent="btn_2",
	class="SLabel",
	fontsize="20",
	pos={	"40",
	"10",
},
},
},
	parent="panel_7",
	class="SButton",
	zOrder=1,		size={
"80",

"44",
},
},

{	str="100",
	img_n="sui/common/blood.png",
	parent="panel_7",
	class="SDragBar",
	zOrder=1,		img_s="sui/systemset/slidebar_bg.png",
	name="dragbar_1",
	pos={	370,		270,	},
	size={	"450",
	"25",
},
},

{	img_n="sui/common/btn_dis.png",
	flip={	false,		false,	},
	parent="panel_7",
	class="SImage",
	is_nine=false,
	name="img_16",
	pos={	529,		37,	},
	zOrder=1,		child={
{	str="发红包",
	name="label_1",
	parent="img_16",
	align="2",
	class="SLabel",
	fontsize="24",
	pos={	52,		15,	},
},

{	str="(3)",
	name="label_26",
	align=1,		parent="img_16",
	class="SLabel",
	fontsize="24",
	pos={	96,		15,	},
},
},
	size={
"139",

"57",
},
},
},
	zOrder=1,		isVisible=false,
	pos={
14,	
12,	},
},
},
	zOrder=1,		pos={
"10",

"11",
},
},

{	img_n="",
	flip={	false,		false,	},
	parent="panel_1",
	class="SPanel",
	is_nine=false,
	name="haveSendPage",
	pos={	"10",
	"11",
},
	isVisible=false,
	zOrder=1,		child={
{	img_n="sui/common/panel11.png",
	flip={	false,		false,	},
	parent="haveSendPage",
	class="SPanel",
	is_nine=true,
	name="panel_4",
	pos={	"17",
	"16",
},
	isVisible=true,
	zOrder=10,		child={
{	str="#c4e2d0e已发记录",
	name="label_20",
	align="2",
	parent="panel_4",
	class="SLabel",
	fontsize="24",
	pos={	125,		458,	},
},

{	img_n="sui/common/division_9.png",
	flip={	false,		false,	},
	parent="panel_4",
	class="SImage",
	is_nine=false,
	name="img_4",
	size={	"40",
	"15",
},
	zOrder=1,		pos={	25,		465,	},
},

{	img_n="sui/common/division_9.png",
	flip={	true,		false,	},
	parent="panel_4",
	class="SImage",
	is_nine=false,
	name="img_5",
	size={	"40",
	"15",
},
	zOrder=1,		pos={	185,		464,	},
},
},
	size={
"250",

"497",
},
},

{	img_n="sui/common/panel11.png",
	flip={	false,		false,	},
	parent="haveSendPage",
	class="SPanel",
	is_nine=true,
	name="panel_5",
	pos={	14,		11,	},
	isVisible=false,
	zOrder=1,		child={
{	img_n="",
	flip={	false,		false,	},
	parent="panel_5",
	class="SPanel",
	is_nine=true,
	name="panel_14",
	pos={	"215",
	"396",
},
	zOrder=1,		child={
{	str="#c734e0f共发出",
	parent="panel_14",
	class="SLabel",
	zOrder=2,		name="label_21",
	pos={	"175",
	"59",
},
	align=1,		fontsize="18",
	size={	"56",
	"21",
},
},

{	img_n="sui/common/huobi_yuanbao.png",
	flip={	false,		false,	},
	parent="panel_14",
	class="SImage",
	is_nine=false,
	name="img_17",
	pos={	260,		48,	},
	zOrder=2,		size={	"45",
	"45",
},
},

{	str="#ca27535总个数 123456789个",
	parent="panel_14",
	class="SLabel",
	zOrder=2,		name="label_22",
	pos={	"314",
	"15",
},
	align="2",
	fontsize=16,		size={	"77",
	"19",
},
},

{	img_n="sui/redPot/redPot_bg.png",
	flip={	false,		false,	},
	parent="panel_14",
	class="SImage",
	is_nine=false,
	name="img_13",
	size={	"478",
	"54",
},
	zOrder=1,		pos={	"83",
	"44",
},
},
},
	size={
"600",

"100",
},
},

{	str="#c734e0f6个红包，共",
	name="label_23",
	parent="panel_5",
	align=1,		class="SLabel",
	fontsize="18",
	pos={	279,		364,	},
},

{	img_n="sui/common/huobi_yuanbao.png",
	flip={	false,		false,	},
	parent="panel_5",
	class="SImage",
	is_nine=false,
	name="img_20",
	pos={	386,		353,	},
	zOrder=1,		size={	"45",
	"45",
},
},
},
	size={
"834",

"505",
},
},
},
	size={
"860",

"520",
},
},

{	img_n="",
	flip={	false,		false,	},
	parent="panel_1",
	class="SPanel",
	is_nine=false,
	name="haveGetPage",
	pos={	"10",
	"11",
},
	child={
{	img_n="sui/common/panel11.png",
	flip={	false,		false,	},
	parent="haveGetPage",
	class="SPanel",
	is_nine=true,
	name="panel_11",
	pos={	"17",
	"16",
},
	isVisible=true,
	zOrder=10,		child={
{	str="#c4e2d0e已领记录",
	name="label_24",
	parent="panel_11",
	align="2",
	class="SLabel",
	fontsize="24",
	pos={	125,		458,	},
},

{	img_n="sui/common/division_9.png",
	flip={	false,		false,	},
	parent="panel_11",
	class="SImage",
	is_nine=false,
	name="img_7",
	pos={	"25",
	"465",
},
	zOrder=1,		size={	"40",
	"15",
},
},

{	img_n="sui/common/division_9.png",
	flip={	true,		false,	},
	parent="panel_11",
	class="SImage",
	is_nine=false,
	name="img_10",
	pos={	"186",
	"464",
},
	zOrder=1,		size={	"40",
	"15",
},
},
},
	size={
"250",

"497",
},
},

{	img_n="sui/common/panel11.png",
	flip={	false,		false,	},
	parent="haveGetPage",
	class="SPanel",
	is_nine=true,
	name="panel_12",
	pos={	14,		11,	},
	isVisible=false,
	zOrder=1,		child={
{	img_n="",
	flip={	false,		false,	},
	parent="panel_12",
	class="SPanel",
	is_nine=true,
	name="panel_13",
	pos={	215,		396,	},
	zOrder=1,		child={
{	str="#c734e0f共收到",
	parent="panel_13",
	class="SLabel",
	zOrder=2,		name="label_2",
	pos={	"175",
	"59",
},
	align=1,		fontsize="18",
	size={	"56",
	"21",
},
},

{	img_n="sui/common/huobi_yuanbao.png",
	flip={	false,		false,	},
	parent="panel_13",
	class="SImage",
	is_nine=false,
	name="img_9",
	pos={	260,		48,	},
	zOrder=2,		size={	"45",
	"45",
},
},

{	str="#ca27535收到个数123456789个",
	parent="panel_13",
	class="SLabel",
	zOrder=2,		name="label_3",
	pos={	"314",
	"15",
},
	align="2",
	fontsize=16,		size={	"158",
	"19",
},
},

{	img_n="sui/redPot/redPot_bg.png",
	flip={	false,		false,	},
	parent="panel_13",
	class="SImage",
	is_nine=false,
	name="img_11",
	size={	"478",
	"54",
},
	zOrder=1,		pos={	83,		44,	},
},
},
	size={
"600",

"100",
},
},

{	str="#c734e0f我领到",
	name="label_4",
	parent="panel_12",
	align=1,		class="SLabel",
	fontsize="18",
	pos={	279,		364,	},
},

{	img_n="sui/common/huobi_yuanbao.png",
	flip={	false,		false,	},
	parent="panel_12",
	class="SImage",
	is_nine=false,
	name="img_15",
	pos={	337,		354,	},
	zOrder=1,		isVisible=false,
	size={	"45",
	"45",
},
},

{	str="#c734e0f123456",
	name="label_19",
	parent="panel_12",
	align=1,		class="SLabel",
	fontsize="18",
	pos={	382,		364,	},
},

{	str="#c734e0f小提示：只记录元宝红包哦~",
	name="label_27",
	parent="panel_12",
	align=1,		class="SLabel",
	fontsize=16,		pos={	602,		363,	},
},
},
	size={
"834",

"505",
},
},
},
	zOrder=1,		isVisible=false,
	size={
"860",

"520",
},
},
},
	isVisible=true,
	size={
"881",

"563",
},
},

{	img_n="",
	parent="win_root",
	class="SRadioButtonGroup",
	is_nine=true,
	name="groupbtn_1",
	pos={	901,		92,	},
	child={
{	img_s="sui/common/menu_right_s.png",
	img_n="sui/common/menu_right_n.png",
	name="radiobtn_7",
	pos={	"0",
	"375",
},
	parent="groupbtn_1",
	class="SRadioButton",
	zOrder=10,		size={	"67",
	"108",
},
},

{	img_s="sui/common/menu_right_s.png",
	img_n="sui/common/menu_right_n.png",
	name="radiobtn_8",
	pos={	"0",
	"278",
},
	parent="groupbtn_1",
	class="SRadioButton",
	zOrder=10,		size={	"67",
	"108",
},
},

{	img_s="sui/common/menu_right_s.png",
	img_n="sui/common/menu_right_n.png",
	name="radiobtn_9",
	pos={	"0",
	"182",
},
	parent="groupbtn_1",
	class="SRadioButton",
	zOrder=10,		size={	"67",
	"108",
},
},
},
	zOrder=2,		size={
"80",

"500",
},
},

{	img_n="sui/common/close.png",
	name="btn_3",
	pos={	839,		556,	},
	parent="win_root",
	class="SButton",
	zOrder=20,		size={	"66",
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