reward_rcdt_page = {
	img_n="",
	parent="ui_root",
	class="SPanel",
	is_nine=true,
	name="win_root",
	size={	"637",
	"525",
},
	zOrder=1,		child={
{	img_n="sui/common/panel12.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=true,
	name="panel_base",
	size={	"603",
	"511",
},
	isVisible=false,
	zOrder=1,		child={
{	img_n="",
	flip={	false,		false,	},
	parent="panel_base",
	class="SPanel",
	is_nine=false,
	name="panel_answer",
	size={	"603",
	"511",
},
	child={
{	img_n="",
	flip={	false,		false,	},
	parent="panel_answer",
	class="SPanel",
	is_nine=false,
	name="panel_1",
	pos={	0,		416,	},
	zOrder=1,		child={
{	img_n="sui/reward/titleBG.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SImage",
	is_nine=false,
	name="img_1",
	size={	"342",
	"25",
},
	child={
{	str="#c7a4c0b奖励",
	name="label_1",
	align="2",
	parent="img_1",
	class="SLabel",
	fontsize="20",
	pos={	171.55555725098,		1,	},
},
},
	zOrder=1,		pos={
130.5,	
63,	},
},

{	img_n="sui/reward/double_imgbg.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SImage",
	is_nine=false,
	name="img_double",
	size={	"95",
	"95",
},
	child={
{	str="#cece4ca10:00:00",
	name="label_time",
	align="2",
	parent="img_double",
	class="SLabel",
	fontsize="18",
	pos={	47,		25,	},
},
},
	zOrder=1,		pos={
499,	
-15,	},
},
},
	size={
"603",

"95",
},
},

{	str="#c4e2d0e日常答题",
	name="label_8",
	parent="panel_answer",
	align=1,		class="SLabel",
	fontsize="24",
	pos={	253,		372,	},
},

{	img_n="sui/common/division_17.png",
	flip={	false,		false,	},
	parent="panel_answer",
	class="SImage",
	is_nine=false,
	name="img_3",
	pos={	28,		379,	},
	zOrder=1,		size={	"206",
	"15",
},
},

{	img_n="sui/common/division_17.png",
	flip={	true,		false,	},
	parent="panel_answer",
	class="SImage",
	is_nine=false,
	name="img_4",
	pos={	369,		379,	},
	zOrder=1,		size={	"206",
	"15",
},
},

{	img_n="sui/reward/rcdt_huawen.png",
	flip={	false,		false,	},
	parent="panel_answer",
	class="SImage",
	is_nine=false,
	name="img_5",
	pos={	232,		238,	},
	zOrder=1,		size={	"139",
	"130",
},
},

{	str="",
	img_n="",
	parent="panel_answer",
	class="STextArea",
	is_nine=true,
	name="text_question",
	pos={	40,		365,	},
	zOrder=1,		size={	"525",
	"100",
},
},

{	img_n="sui/common/line4.png",
	flip={	false,		false,	},
	parent="panel_answer",
	class="SImage",
	is_nine=true,
	name="img_6",
	pos={	19,		230,	},
	zOrder=1,		size={	"570",
	"4",
},
},

{	img_n="sui/reward/answer_unselect.png",
	parent="panel_answer",
	class="SButton",
	is_nine=true,
	name="btn_1",
	pos={	18,		140,	},
	zOrder=1,		child={
{	str="#c643f17A ",
	name="label_ans1",
	align=1,		parent="btn_1",
	class="SLabel",
	fontsize="24",
	pos={	35,		28,	},
},

{	img_n="sui/reward/error.png",
	flip={	false,		false,	},
	parent="btn_1",
	class="SImage",
	is_nine=false,
	name="img_result1",
	pos={	209,		26,	},
	zOrder=1,		size={	"30",
	"30",
},
},
},
	size={
"270",

"83",
},
},

{	img_n="sui/reward/answer_unselect.png",
	parent="panel_answer",
	class="SButton",
	zOrder=1,		name="btn_2",
	size={	"270",
	"83",
},
	is_nine=true,
	child={
{	str="#c643f17B ",
	name="label_ans2",
	align=1,		parent="btn_2",
	class="SLabel",
	fontsize="24",
	pos={	"35",
	"28",
},
},

{	img_n="sui/reward/error.png",
	flip={	false,		false,	},
	parent="btn_2",
	class="SImage",
	is_nine=false,
	name="img_result2",
	pos={	"209",
	"26",
},
	zOrder=1,		size={	"30",
	"30",
},
},
},
	pos={
318,	
140,	},
},

{	img_n="sui/reward/answer_unselect.png",
	parent="panel_answer",
	class="SButton",
	zOrder=1,		name="btn_3",
	size={	"270",
	"83",
},
	is_nine=true,
	child={
{	str="#c643f17C ",
	name="label_ans3",
	align=1,		parent="btn_3",
	class="SLabel",
	fontsize="24",
	pos={	35,		28,	},
},

{	img_n="sui/reward/error.png",
	flip={	false,		false,	},
	parent="btn_3",
	class="SImage",
	is_nine=false,
	name="img_result3",
	pos={	"209",
	"26",
},
	zOrder=1,		size={	"30",
	"30",
},
},
},
	pos={
18,	
54,	},
},

{	img_n="sui/reward/answer_unselect.png",
	parent="panel_answer",
	class="SButton",
	is_nine=true,
	name="btn_4",
	pos={	318,		54,	},
	zOrder=1,		child={
{	str="#c643f17D ",
	name="label_ans4",
	align=1,		parent="btn_4",
	class="SLabel",
	fontsize="24",
	pos={	35,		28,	},
},

{	img_n="sui/reward/error.png",
	flip={	false,		false,	},
	parent="btn_4",
	class="SImage",
	is_nine=false,
	name="img_result4",
	pos={	"209",
	"26",
},
	zOrder=1,		size={	"30",
	"30",
},
},
},
	size={
"270",

"83",
},
},

{	str="#c643f17正确率",
	align=1,		class="SLabel",
	zOrder=2,		name="label_tips3",
	size={	"56",
	"21",
},
	fontsize="18",
	parent="panel_answer",
	pos={	239.5,		243,	},
},

{	str="#c965a290",
	align=1,		class="SLabel",
	zOrder=2,		name="label_right1",
	size={	"10",
	"21",
},
	fontsize="18",
	parent="panel_answer",
	pos={	312.25,		243,	},
},
},
	isVisible=true,
	zOrder=2,		pos={
"0",

"0",
},
},

{	img_n="",
	flip={	false,		false,	},
	parent="panel_base",
	class="SPanel",
	is_nine=false,
	name="panel_get_reward",
	pos={	0,		0,	},
	zOrder=1,		child={
{	img_n="sui/common/panel2_2.png",
	flip={	false,		false,	},
	parent="panel_get_reward",
	class="SPanel",
	is_nine=true,
	name="panel_award",
	pos={	"17",
	"100.5",
},
	zOrder=1,		child={
{	img_n="sui/reward/rcdt_huawen.png",
	flip={	false,		false,	},
	parent="panel_award",
	class="SImage",
	is_nine=false,
	name="img_huawen",
	pos={	189,		118,	},
	zOrder=1,		size={	"188",
	"174",
},
},

{	img_n="",
	flip={	false,		false,	},
	parent="panel_award",
	class="SPanel",
	is_nine=false,
	name="panel_double",
	pos={	0,		0,	},
	zOrder=1,		child={
{	str="#c4e2d02奖励双倍",
	name="label_6",
	parent="panel_double",
	align=1,		class="SLabel",
	fontsize="24",
	pos={	235.5,		75,	},
},

{	img_n="sui/common/division_06.png",
	flip={	true,		false,	},
	parent="panel_double",
	class="SImage",
	is_nine=false,
	name="img_2",
	pos={	353,		81,	},
	zOrder=1,		size={	"78",
	"15",
},
},

{	img_n="sui/common/division_06.png",
	flip={	false,		false,	},
	parent="panel_double",
	class="SImage",
	is_nine=false,
	name="img_9",
	pos={	138,		81,	},
	zOrder=1,		size={	"78",
	"15",
},
},
},
	size={
"567",

"105",
},
},
},
	size={
"567",

"310",
},
},

{	str="#c4e2d02答题奖励",
	name="label_10",
	parent="panel_get_reward",
	align="2",
	class="SLabel",
	fontsize="24",
	pos={	"300",
	"424",
},
},

{	img_n="sui/reward/fengexian_duan.png",
	flip={	false,		false,	},
	parent="panel_get_reward",
	class="SImage",
	is_nine=false,
	name="img_8",
	pos={	27,		431,	},
	zOrder=1,		size={	"206",
	"15",
},
},

{	img_n="sui/reward/fengexian_duan.png",
	flip={	true,		false,	},
	parent="panel_get_reward",
	class="SImage",
	is_nine=false,
	name="copy_1",
	size={	"206",
	"15",
},
	zOrder=1,		pos={	367,		431,	},
},

{	img_n="sui/common/line12.png",
	flip={	false,		false,	},
	parent="panel_get_reward",
	class="SImage",
	is_nine=false,
	name="img_7",
	size={	"2",
	"26",
},
	zOrder=1,		pos={	300,		466,	},
},

{	str="#c643f17活动时间",
	name="label_tips5",
	align=1,		parent="panel_get_reward",
	class="SLabel",
	fontsize="18",
	pos={	29,		470,	},
},

{	img_n="sui/common/btn_1.png",
	parent="panel_get_reward",
	class="SButton",
	zOrder=1,		name="btn_get",
	size={	"139",
	"57",
},
	isVisible=true,
	child={
{	str="领取",
	name="label_5",
	align="2",
	parent="btn_get",
	class="SLabel",
	fontsize="24",
	pos={	69,		14,	},
},
},
	pos={
236,	
33,	},
},

{	str="#c643f17正确率",
	name="label_tips6",
	align=1,		parent="panel_get_reward",
	class="SLabel",
	fontsize="18",
	pos={	395,		470,	},
},

{	str="#c4e2d0e5/20",
	name="label_right2",
	align=1,		parent="panel_get_reward",
	class="SLabel",
	fontsize="18",
	pos={	473,		470,	},
},

{	str="#c965a29全天",
	name="label_4",
	align=1,		parent="panel_get_reward",
	class="SLabel",
	fontsize="18",
	pos={	122,		470,	},
},

{	img_n="sui/reward/yilingqu4.png",
	flip={	false,		false,	},
	parent="panel_get_reward",
	class="SImage",
	is_nine=false,
	name="img_get",
	size={	"116",
	"45",
},
	zOrder=1,		pos={	247,		39,	},
},
},
	isVisible=false,
	size={
"601",

"511",
},
},

{	str="#c8a5823小提示：周三奖励双倍哦！",
	align="2",
	class="SLabel",
	zOrder=5,		name="label_tips7",
	size={	"202",
	"19",
},
	fontsize=16,		parent="panel_base",
	pos={	301,		7,	},
},
},
	pos={
0,	
0,	},
},
},
	isVisible=true,
	pos={
"0",

"0",
},

}
