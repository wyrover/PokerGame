user_skill_win = {
	img_n="",
	child={
{	img_n="",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=true,
	name="panel_main",
	size={	"960",
	"640",
},
	child={
{	img_n="sui/common/win_title_bg.png",
	flip={	false,		false,	},
	parent="panel_main",
	class="SPanel",
	is_nine=false,
	name="panel_4",
	pos={	9,		532,	},
	zOrder=9,		child={
{	img_n="sui/skill/skill_title.png",
	flip={	false,		false,	},
	parent="panel_4",
	class="SPanel",
	is_nine=false,
	name="panel_12",
	pos={	"169",
	"43",
},
	zOrder=1,		size={	"90",
	"49",
},
},

{	img_n="sui/common/pj.png",
	flip={	false,		false,	},
	parent="panel_4",
	class="SImage",
	is_nine=false,
	name="img_27",
	pos={	"5",
	"-156",
},
	zOrder=1,		size={	"42",
	"253",
},
},
},
	size={
"949",

"103",
},
},

{	img_n="sui/common/win_panel.png",
	flip={	false,		false,	},
	parent="panel_main",
	class="SPanel",
	is_nine=true,
	name="panel_1",
	size={	"882",
	"565",
},
	zOrder=3,		child={
{	img_n="sui/common/panel11.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SPanel",
	is_nine=true,
	name="panel_2",
	pos={	"30",
	"25",
},
	zOrder=1,		child={},
	size={
"116",

"502",
},
},

{	img_n="sui/common/panel2_2.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SPanel",
	is_nine=true,
	name="panel_3",
	size={	"708",
	"502",
},
	zOrder=1,		child={
{	img_n="",
	flip={	false,		false,	},
	parent="panel_3",
	class="SPanel",
	is_nine=false,
	name="panel_left",
	size={	"330",
	"138",
},
	zOrder=1,		child={
{	str="#c643f17消    耗",
	name="label_9",
	align=1,		parent="panel_left",
	class="SLabel",
	fontsize="18",
	pos={	"0",
	"36",
},
},

{	str="#c643f17冷    却",
	name="label_10",
	align=1,		parent="panel_left",
	class="SLabel",
	fontsize="18",
	pos={	"0",
	"72",
},
},

{	str="#c643f17施法距离",
	name="label_11",
	align=1,		parent="panel_left",
	class="SLabel",
	fontsize="18",
	pos={	"0",
	"0",
},
},

{	str="#c965a2960秒",
	name="cur_cd",
	align=1,		parent="panel_left",
	class="SLabel",
	fontsize="18",
	pos={	105,		72,	},
},

{	str="#c965a29170内力",
	name="cur_cost",
	align=1,		parent="panel_left",
	class="SLabel",
	fontsize="18",
	pos={	105,		36,	},
},

{	str="#c965a295米",
	name="cur_dist",
	align=1,		parent="panel_left",
	class="SLabel",
	fontsize="18",
	pos={	105,		0,	},
},

{	str="#c643f17等    级",
	name="label_4",
	align=1,		parent="panel_left",
	class="SLabel",
	fontsize="18",
	pos={	"0",
	"108",
},
},

{	str="#c965a2930",
	name="skill_level_1",
	align=1,		parent="panel_left",
	class="SLabel",
	fontsize="18",
	pos={	"105",
	"108",
},
},

{	img_n="",
	flip={	false,		false,	},
	parent="panel_left",
	class="SPanel",
	is_nine=false,
	name="panel_next",
	size={	"150",
	"42",
},
	child={
{	str="#cd66512下一级",
	name="label_6",
	align="1",
	parent="panel_next",
	class="SLabel",
	fontsize="18",
	pos={	"48",
	"12",
},
},

{	img_n="sui/common/arrow_next.png",
	name="btn_1",
	size={	"35",
	"42",
},
	parent="panel_next",
	class="SButton",
	zOrder=1,		pos={	"115",
	"0",
},
},
},
	zOrder=1,		pos={
"170",

"96",
},
},
},
	pos={
"25",

"205",
},
},

{	img_n="sui/common/slot_bg.png",
	flip={	false,		false,	},
	parent="panel_3",
	class="SPanel",
	is_nine=false,
	name="extra_1",
	size={	"76",
	"76",
},
	child={},
	zOrder=1,		pos={
"30",

"36",
},
},

{	img_n="sui/common/slot_bg.png",
	flip={	false,		false,	},
	parent="panel_3",
	class="SPanel",
	is_nine=false,
	name="extra_2",
	size={	"76",
	"76",
},
	child={},
	zOrder=1,		pos={
"145",

"36",
},
},

{	img_n="sui/common/slot_bg.png",
	flip={	false,		false,	},
	parent="panel_3",
	class="SPanel",
	is_nine=false,
	name="extra_3",
	size={	"76",
	"76",
},
	child={},
	zOrder=1,		pos={
"260",

"36",
},
},

{	img_n="sui/common/line10.png",
	flip={	false,		false,	},
	parent="panel_3",
	class="SPanel",
	is_nine=false,
	name="panel_6",
	size={	"2",
	"462",
},
	zOrder=1,		pos={	"360",
	"21",
},
},

{	str="",
	img_n="",
	parent="panel_3",
	class="STextArea",
	is_nine=true,
	name="text_1",
	size={	"308",
	"92",
},
	fontsize="18",
	zOrder=1,		pos={	375,		442,	},
},

{	str="",
	img_n="",
	parent="panel_3",
	class="STextArea",
	is_nine=true,
	name="text_3",
	size={	"308",
	"92",
},
	child={},
	zOrder=1,		fontsize="18",
	pos={
375,	
235,	},
},

{	str="#ca5844c需要等级3级",
	name="label_need",
	align="2",
	parent="panel_3",
	class="SLabel",
	fontsize="18",
	pos={	450,		35,	},
},

{	img_n="sui/common/fengexian.png",
	flip={	true,		false,	},
	parent="panel_3",
	class="SPanel",
	is_nine=true,
	name="panel_71",
	pos={	"18",
	"180",
},
	zOrder=1,		size={	"320",
	"3",
},
},

{	img_n="sui/common/num_bg.png",
	flip={	false,		false,	},
	parent="panel_3",
	class="SPanel",
	is_nine=true,
	name="panel_8",
	size={	"148",
	"34",
},
	child={
{	str="9999999",
	name="money_cost",
	align="2",
	parent="panel_8",
	class="SLabel",
	fontsize="18",
	pos={	85,		6,	},
},

{	img_n="sui/common/huobi_tongbi.png",
	flip={	false,		false,	},
	parent="panel_8",
	class="SImage",
	is_nine=false,
	name="img_9",
	size={	"45",
	"45",
},
	zOrder=1,		pos={	-8,		-4,	},
},
},
	zOrder=1,		pos={
"377",

"26",
},
},

{	str="#c783c0b技能名称",
	name="label_22",
	parent="panel_3",
	align="2",
	class="SLabel",
	fontsize="22",
	pos={	"184",
	"452",
},
},

{	img_n="",
	flip={	false,		false,	},
	parent="panel_3",
	class="SPanel",
	is_nine=false,
	name="panel_10",
	pos={	"37",
	"131",
},
	zOrder=1,		child={
{	str="#c4e2d0e附加效果",
	fontsize="24",
	name="label_25",
	child={},
	align="2",
	class="SLabel",
	parent="panel_10",
	pos={
"143",

"0",
},
},

{	img_n="sui/common/division_02.png",
	flip={	true,		false,	},
	parent="panel_10",
	class="SImage",
	is_nine=false,
	name="img_41",
	pos={	"208",
	"5",
},
	zOrder=1,		size={	"78",
	"15",
},
},

{	img_n="sui/common/division_02.png",
	flip={	false,		false,	},
	parent="panel_10",
	class="SImage",
	is_nine=false,
	name="img_42",
	pos={	"0",
	"5",
},
	zOrder=1,		size={	"78",
	"15",
},
},
},
	size={
"286",

"24",
},
},

{	img_n="",
	flip={	false,		false,	},
	parent="panel_3",
	class="SPanel",
	is_nine=false,
	name="panel_7",
	size={	"286",
	"24",
},
	child={
{	img_n="sui/common/division_02.png",
	flip={	false,		false,	},
	parent="panel_7",
	class="SImage",
	is_nine=false,
	name="img_1",
	size={	"78",
	"15",
},
	zOrder=1,		pos={	"0",
	"5",
},
},

{	img_n="sui/common/division_02.png",
	flip={	true,		false,	},
	parent="panel_7",
	class="SImage",
	is_nine=false,
	name="img_2",
	size={	"78",
	"15",
},
	zOrder=1,		pos={	"208",
	"5",
},
},

{	str="#c4e2d0e技能描述",
	name="label_1",
	align="2",
	parent="panel_7",
	class="SLabel",
	fontsize="24",
	pos={	"143",
	"0",
},
},
},
	zOrder=1,		pos={
"389",

"453",
},
},

{	img_n="sui/common/fengexian.png",
	flip={	false,		false,	},
	parent="panel_3",
	class="SImage",
	is_nine=false,
	name="img_3",
	size={	"320",
	"3",
},
	zOrder=1,		pos={	"370",
	"301",
},
},

{	img_n="",
	flip={	false,		false,	},
	parent="panel_3",
	class="SPanel",
	is_nine=false,
	name="panel_11",
	size={	"286",
	"24",
},
	child={
{	img_n="sui/common/division_02.png",
	flip={	false,		false,	},
	parent="panel_11",
	class="SImage",
	is_nine=false,
	name="img_4",
	size={	"78",
	"15",
},
	zOrder=1,		pos={	"0",
	"5",
},
},

{	img_n="sui/common/division_02.png",
	flip={	true,		false,	},
	parent="panel_11",
	class="SImage",
	is_nine=false,
	name="img_5",
	size={	"78",
	"15",
},
	zOrder=1,		pos={	"208",
	"5",
},
},

{	str="#c4e2d0e附加效果",
	name="label_2",
	align="2",
	parent="panel_11",
	class="SLabel",
	fontsize="24",
	pos={	"143",
	"0",
},
},
},
	zOrder=1,		pos={
"389",

"246",
},
},

{	str="升级",
	img_n="sui/common/btn_1.png",
	parent="panel_3",
	class="STextButton",
	zOrder=1,		fontsize="24",
	size={	"139",
	"54",
},
	align=1,		name="textbtn_1",
	pos={	"552",
	"16",
},
},
},
	pos={
"151",

"25",
},
},
},
	pos={
"34",

"10",
},
},

{	img_n="sui/common/close.png",
	name="btn_close",
	pos={	845,		557,	},
	parent="panel_main",
	class="SButton",
	zOrder=12,		size={	"66",
	"75",
},
},
},
	zOrder=1,		pos={
"0",

"0",
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