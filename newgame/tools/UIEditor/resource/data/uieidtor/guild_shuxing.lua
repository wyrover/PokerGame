guild_shuxing = {
	img_n="",
	parent="ui_root",
	class="SPanel",
	is_nine=false,
	name="win_root",
	size={	"960",
	"640",
},
	zOrder=1,		child={
{	img_n="sui/common/win_title_bg.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=false,
	name="panel_1",
	pos={	7,		537,	},
	zOrder=3,		child={
{	img_n="sui/common/pj.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SImage",
	is_nine=false,
	name="img_1",
	size={	"36",
	"209",
},
	zOrder=1,		pos={	9,		-113,	},
},

{	img_n="sui/guild/zongmenshuxing.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SPanel",
	is_nine=false,
	name="panel_5",
	size={	"174",
	"50",
},
	zOrder=1,		pos={	116,		39,	},
},
},
	size={
"949",

"103",
},
},

{	img_n="sui/common/close.png",
	name="btn_close",
	pos={	839,		561,	},
	parent="win_root",
	class="SButton",
	zOrder=99,		size={	"66",
	"75",
},
},

{	img_n="sui/common/panel11.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=true,
	name="panel_main",
	pos={	67,		75,	},
	zOrder=2,		child={
{	img_n="sui/common/panel12.png",
	flip={	false,		false,	},
	parent="panel_main",
	class="SPanel",
	is_nine=true,
	name="panel_down",
	pos={	5,		5,	},
	zOrder=1,		child={
{	img_n="sui/common/line4.png",
	flip={	false,		false,	},
	parent="panel_down",
	class="SImage",
	is_nine=true,
	name="img_2",
	size={	"800",
	"3",
},
	zOrder=1,		pos={	12,		90,	},
},

{	str="",
	img_n="sui/common/btn_1.png",
	parent="panel_down",
	class="SButton",
	zOrder=5,		name="btn_1",
	size={	"139",
	"57",
},
	fontsize="24",
	is_nine=true,
	child={
{	str="学习",
	name="label_1",
	align="2",
	parent="btn_1",
	class="SLabel",
	fontsize="24",
	pos={	69,		14,	},
},
},
	pos={
"343",

"20",
},
},

{	str="#c643f17消耗:",
	name="label_4",
	align=1,		parent="panel_down",
	class="SLabel",
	fontsize="18",
	pos={	"495",
	"38",
},
},

{	str="#c8d4408贡献100",
	name="label_cost",
	align=1,		parent="panel_down",
	class="SLabel",
	fontsize="18",
	pos={	"557",
	"38",
},
},

{	img_n="sui/guild/huawen1.png",
	flip={	false,		false,	},
	parent="panel_down",
	class="SImage",
	is_nine=false,
	name="img_3",
	pos={	"291",
	"109",
},
	zOrder=1,		child={
{	img_n="sui/guild/g_jiantou.png",
	flip={	false,		false,	},
	parent="img_3",
	class="SImage",
	is_nine=false,
	name="img_5",
	pos={	"54",
	"64.5",
},
	zOrder=1,		size={	"134",
	"97",
},
},
},
	size={
"242",

"226",
},
},

{	str="#c8d4408玉佩300",
	name="label_cost2",
	parent="panel_down",
	align=1,		class="SLabel",
	fontsize="18",
	pos={	675,		38,	},
},
},
	size={
"825",

"365",
},
},

{	str="#c643f17世族等级",
	name="label_10",
	align=1,		parent="panel_main",
	class="SLabel",
	fontsize="18",
	pos={	75,		430,	},
},

{	str="#c643f17世族职位",
	name="label_11",
	align=1,		parent="panel_main",
	class="SLabel",
	fontsize="18",
	pos={	75,		390,	},
},

{	str="#c8d44081级",
	name="label_lv",
	align=1,		parent="panel_main",
	class="SLabel",
	fontsize="18",
	pos={	165,		430,	},
},

{	str="#c8d4408成员",
	name="label_job",
	align=1,		parent="panel_main",
	class="SLabel",
	fontsize="18",
	pos={	165,		390,	},
},

{	img_n="sui/guild/awardBg2.png",
	flip={	false,		false,	},
	parent="panel_main",
	class="SPanel",
	is_nine=true,
	name="panel_2",
	size={	"195",
	"77",
},
	child={
{	str="#c643f17可学属性",
	name="label_14",
	align="2",
	parent="panel_2",
	class="SLabel",
	fontsize="18",
	pos={	97,		42,	},
},

{	img_n="sui/common/division_19.png",
	flip={	false,		false,	},
	parent="panel_2",
	class="SImage",
	is_nine=false,
	name="img_12",
	size={	"51",
	"32",
},
	zOrder=1,		pos={	5,		35,	},
},

{	img_n="sui/common/division_19.png",
	flip={	true,		false,	},
	parent="panel_2",
	class="SImage",
	is_nine=false,
	name="img_13",
	size={	"51",
	"32",
},
	zOrder=1,		pos={	140,		35,	},
},

{	str="#c8d4408120/200",
	name="label_learn",
	align="2",
	parent="panel_2",
	class="SLabel",
	fontsize="18",
	pos={	97,		10,	},
},
},
	zOrder=1,		pos={
245,	
381,	},
},

{	str="#c8a5823战力额外加成：10%",
	name="label_tips",
	align="2",
	parent="panel_main",
	class="SLabel",
	fontsize=16,		pos={	665,		376,	},
},

{	img_n="sui/wujiang/shuoming_btn.png",
	name="btn_tips",
	size={	"43",
	"43",
},
	parent="panel_main",
	class="SButton",
	zOrder=1,		pos={	16,		400,	},
},
},
	size={
"835",

"469",
},
},

{	str="#c8a5823若离开世族，属性暂时失效，直至加入新世族方再次生效",
	parent="win_root",
	class="SLabel",
	zOrder=2,		name="label_6",
	pos={	61,		45.5,	},
	align=1,		fontsize=16,		size={	"422",
	"19",
},
},

{	str="我的贡献：99999",
	parent="win_root",
	class="SLabel",
	zOrder=2,		name="label_money",
	pos={	720,		45,	},
	align="3",
	fontsize=16,		size={	"131",
	"19",
},
},

{	img_n="sui/common/win_panel.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SImage",
	is_nine=true,
	name="img_4",
	size={	"881",
	"563",
},
	zOrder=1,		child={},
	pos={
"39",

"22",
},
},

{	img_n="",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=false,
	name="panel_left",
	size={	"200",
	"170",
},
	child={
{	str="#c4e2d0e当前级",
	name="label_2",
	align="1",
	parent="panel_left",
	class="SLabel",
	fontsize="24",
	pos={	64,		180,	},
},

{	img_n="sui/common/division_07.png",
	flip={	true,		false,	},
	parent="panel_left",
	class="SImage",
	is_nine=false,
	name="img_8",
	size={	"78",
	"15",
},
	zOrder=1,		pos={	158,		185,	},
},

{	img_n="sui/common/division_07.png",
	flip={	false,		false,	},
	parent="panel_left",
	class="SImage",
	is_nine=false,
	name="img_7",
	size={	"78",
	"15",
},
	zOrder=1,		pos={	-35,		185,	},
},
},
	zOrder=5,		pos={
135,	
200,	},
},

{	img_n="",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=false,
	name="panel_right",
	size={	"200",
	"170",
},
	child={
{	str="#c4e2d0e下一级",
	name="label_9",
	fontsize="24",
	align="1",
	parent="panel_right",
	class="SLabel",
	child={},
	pos={
"64",

"180",
},
},

{	img_n="sui/common/division_07.png",
	flip={	false,		false,	},
	parent="panel_right",
	class="SImage",
	is_nine=false,
	name="img_9",
	size={	"78",
	"15",
},
	zOrder=1,		pos={	"-35",
	"185",
},
},

{	img_n="sui/common/division_07.png",
	flip={	true,		false,	},
	parent="panel_right",
	class="SImage",
	is_nine=false,
	name="img_11",
	size={	"78",
	"15",
},
	zOrder=1,		pos={	"158",
	"185",
},
},
},
	zOrder=5,		pos={
640,	
200,	},
},

{	str="文字控件",
	align="3",
	class="SLabel",
	zOrder=5,		name="label_yupei",
	pos={	"885",
	"45",
},
	parent="win_root",
	fontsize=16,		size={	"67",
	"19",
},
},
},
	pos={
"0",

"0",
},

}
