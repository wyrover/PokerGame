wujiang_uplevel = {
	img_n="",
	child={
{	img_n="sui/common/tipsPanel.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=true,
	name="mainPanel",
	pos={	160,		112,	},
	zOrder=1,		child={
{	img_n="sui/common/little_win_title_bg.png",
	flip={	false,		false,	},
	parent="mainPanel",
	class="SImage",
	is_nine=true,
	name="img_1",
	pos={	-16,		358,	},
	zOrder=2,		child={},
	size={
"680",

"58",
},
},

{	img_n="sui/common/close.png",
	name="btn_close",
	pos={	576,		345,	},
	parent="mainPanel",
	class="SButton",
	zOrder=3,		size={	"66",
	"75",
},
},

{	img_n="sui/wujiang/scroll_book.png",
	flip={	false,		false,	},
	parent="mainPanel",
	class="SPanel",
	is_nine=false,
	name="panel_1",
	pos={	16,		61,	},
	zOrder=1,		size={	"243",
	"328",
},
},

{	img_n="sui/wujiang/jianbian_bg.png",
	flip={	false,		false,	},
	parent="mainPanel",
	class="SPanel",
	is_nine=false,
	name="panel_2",
	size={	"35",
	"415",
},
	child={
{	img_n="sui/wujiang/special_title_bg.png",
	flip={	false,		false,	},
	parent="panel_2",
	class="SImage",
	is_nine=false,
	name="title_bg",
	size={	"299",
	"42",
},
	child={
{	str="#c643f17进度",
	name="title_text",
	align=1,		parent="title_bg",
	class="SLabel",
	fontsize=16,		pos={	"65",
	"12",
},
},

{	str="#c651474紫",
	name="title_value",
	align=1,		parent="title_bg",
	class="SLabel",
	fontsize=16,		pos={	"125",
	"12",
},
},

{	img_n="sui/common/arrow_ltt.png",
	flip={	false,		false,	},
	parent="title_bg",
	class="SImage",
	is_nine=false,
	name="img_3",
	size={	"22",
	"14",
},
	zOrder=1,		pos={	"170",
	"14",
},
},

{	str="白",
	name="title_next_value",
	align=1,		parent="title_bg",
	class="SLabel",
	fontsize=16,		pos={	"210",
	"12",
},
},
},
	zOrder=1,		pos={
25,	
344,	},
},

{	img_n="sui/common/division_02.png",
	flip={	false,		false,	},
	parent="panel_2",
	class="SImage",
	is_nine=false,
	name="img_4",
	size={	"78",
	"15",
},
	zOrder=1,		pos={	39,		321,	},
},

{	img_n="sui/common/division_02.png",
	flip={	true,		false,	},
	parent="panel_2",
	class="SImage",
	is_nine=false,
	name="copy_2",
	pos={	250,		321,	},
	zOrder=1,		size={	"78",
	"15",
},
},
},
	zOrder=1,		pos={
"265",

"0",
},
},

{	img_n="",
	parent="mainPanel",
	class="SRadioButtonGroup",
	is_nine=true,
	name="groupbtn_2",
	size={	"260",
	"55",
},
	child={
{	img_n="sui/common/btn12.png",
	parent="groupbtn_2",
	class="SRadioButton",
	zOrder=1,		img_s="sui/common/btn11.png",
	name="radiobtn_3",
	size={	"122",
	"50",
},
	child={},
	pos={
10,	
5,	},
},

{	img_n="sui/common/btn12.png",
	flip={	true,		false,	},
	parent="groupbtn_2",
	class="SRadioButton",
	zOrder=1,		img_s="sui/common/btn11.png",
	name="radiobtn_4",
	pos={	129,		5,	},
	child={},
	size={
"122",

"50",
},
},
},
	zOrder=1,		pos={
8,	
5,	},
},

{	str="#c4e2d0e属性加成",
	name="label_6",
	align="2",
	parent="mainPanel",
	class="SLabel",
	fontsize="20",
	pos={	448,		316,	},
},

{	str="#c643f17生   命",
	name="attr_name1",
	align=1,		parent="mainPanel",
	class="SLabel",
	fontsize=16,		pos={	325,		291,	},
},

{	str="#c643f17生   命",
	name="attr_name2",
	parent="mainPanel",
	align=1,		class="SLabel",
	fontsize=16,		pos={	325,		261,	},
},

{	str="#c643f17生   命",
	name="attr_name3",
	align=1,		parent="mainPanel",
	class="SLabel",
	fontsize=16,		pos={	325,		231,	},
},

{	str="#c643f17生   命",
	name="attr_name4",
	parent="mainPanel",
	align=1,		class="SLabel",
	fontsize=16,		pos={	325,		201,	},
},

{	str="#c643f17生   命",
	name="attr_name5",
	align=1,		parent="mainPanel",
	class="SLabel",
	fontsize=16,		pos={	325,		171,	},
},

{	str="#c965a291000",
	name="attr_value1",
	parent="mainPanel",
	align=1,		class="SLabel",
	fontsize=16,		pos={	413,		291,	},
},

{	str="#c965a291000",
	name="attr_value2",
	align=1,		parent="mainPanel",
	class="SLabel",
	fontsize=16,		pos={	413,		261,	},
},

{	str="#c965a291000",
	name="attr_value3",
	parent="mainPanel",
	align=1,		class="SLabel",
	fontsize=16,		pos={	413,		231,	},
},

{	str="#c965a291000",
	name="attr_value4",
	align=1,		parent="mainPanel",
	class="SLabel",
	fontsize=16,		pos={	413,		201,	},
},

{	str="#c965a291000",
	name="attr_value5",
	parent="mainPanel",
	align=1,		class="SLabel",
	fontsize=16,		pos={	413,		171,	},
},

{	img_n="sui/common/arrow_ltt.png",
	flip={	false,		false,	},
	parent="mainPanel",
	class="SImage",
	is_nine=false,
	name="attr_jiantou1",
	pos={	493,		292,	},
	zOrder=1,		size={	"22",
	"14",
},
},

{	img_n="sui/common/arrow_ltt.png",
	flip={	false,		false,	},
	parent="mainPanel",
	class="SImage",
	is_nine=false,
	name="attr_jiantou2",
	size={	"22",
	"14",
},
	zOrder=1,		pos={	493,		262,	},
},

{	img_n="sui/common/arrow_ltt.png",
	flip={	false,		false,	},
	parent="mainPanel",
	class="SImage",
	is_nine=false,
	name="attr_jiantou3",
	pos={	493,		232,	},
	zOrder=1,		size={	"22",
	"14",
},
},

{	img_n="sui/common/arrow_ltt.png",
	flip={	false,		false,	},
	parent="mainPanel",
	class="SImage",
	is_nine=false,
	name="attr_jiantou4",
	size={	"22",
	"14",
},
	zOrder=1,		pos={	493,		202,	},
},

{	img_n="sui/common/arrow_ltt.png",
	flip={	false,		false,	},
	parent="mainPanel",
	class="SImage",
	is_nine=false,
	name="attr_jiantou5",
	pos={	493,		172,	},
	zOrder=1,		size={	"22",
	"14",
},
},

{	str="#c31700b1000",
	name="attr_next1",
	parent="mainPanel",
	align=1,		class="SLabel",
	fontsize=16,		pos={	554,		291,	},
},

{	str="#c31700b1000",
	name="attr_next2",
	align=1,		parent="mainPanel",
	class="SLabel",
	fontsize=16,		pos={	554,		261,	},
},

{	str="#c31700b1000",
	name="attr_next3",
	parent="mainPanel",
	align=1,		class="SLabel",
	fontsize=16,		pos={	554,		231,	},
},

{	str="#c31700b1000",
	name="attr_next4",
	align=1,		parent="mainPanel",
	class="SLabel",
	fontsize=16,		pos={	554,		201,	},
},

{	str="#c31700b1000",
	name="attr_next5",
	parent="mainPanel",
	align=1,		class="SLabel",
	fontsize=16,		pos={	554,		171,	},
},

{	str="#c643f17进度",
	name="label_4",
	parent="mainPanel",
	align=1,		class="SLabel",
	fontsize=16,		pos={	285,		136,	},
},

{	img_s="sui/common/progressBg.png",
	img_n="sui/common/progress1.png",
	name="progress_1",
	pos={	325,		133,	},
	parent="mainPanel",
	class="SProgress",
	zOrder=1,		size={	"300",
	"25",
},
},

{	img_n="sui/common/fengexian.png",
	flip={	false,		false,	},
	parent="mainPanel",
	class="SImage",
	is_nine=true,
	name="img_2",
	pos={	274,		118,	},
	zOrder=1,		size={	"355",
	"3",
},
},

{	img_n="sui/common/num_bg.png",
	flip={	false,		false,	},
	parent="mainPanel",
	class="SImage",
	is_nine=true,
	name="img_5",
	pos={	293,		70,	},
	zOrder=1,		child={
{	img_n="sui/common/huobi_tongbi.png",
	flip={	false,		false,	},
	parent="img_5",
	class="SImage",
	is_nine=false,
	name="tongbi_icon",
	pos={	-20,		-3,	},
	zOrder=1,		size={	"45",
	"45",
},
},

{	str="#c643f1712345678",
	name="need_money",
	parent="img_5",
	align=1,		class="SLabel",
	fontsize=16,		pos={	24,		9,	},
},
},
	size={
"105",

"36",
},
},

{	img_n="sui/common/num_bg.png",
	flip={	false,		false,	},
	child={
{	img_n="sui/common/huobi_yupei.png",
	flip={	false,		false,	},
	parent="copy_10",
	class="SImage",
	is_nine=false,
	name="mate_icon",
	size={	"45",
	"45",
},
	zOrder=1,		pos={	-18,		-2,	},
},

{	str="#c643f1799/100",
	name="mate_num",
	align=1,		parent="copy_10",
	class="SLabel",
	fontsize=16,		pos={	29,		9,	},
},
},
	class="SImage",
	is_nine=true,
	name="copy_10",
	size={
"100",

"36",
},
	parent="mainPanel",
	zOrder=1,		pos={
420,	
70,	},
},

{	img_s="sui/common/swith_btn_n.png",
	img_n="sui/common/swith_btn_s.png",
	name="swithbtn_buy",
	pos={	527,		74,	},
	parent="mainPanel",
	class="SSwitchBtn",
	str="#c643f17自动购买",
	size={	100,		40,	},
},

{	pos={	483,		8,	},
	img_n="sui/common/btn_1.png",
	name="btn_1",
	child={
{	str="升级",
	name="label_7",
	parent="btn_1",
	align="2",
	class="SLabel",
	fontsize="26",
	pos={	"69",
	"11",
},
},
},
	parent="mainPanel",
	class="SButton",
	zOrder=1,		size={
"139",

"54",
},
},

{	size={	"139",
	"54",
},
	img_n="sui/common/btn_1.png",
	name="one_key_btn",
	parent="mainPanel",
	child={
{	str="一键升级",
	parent="one_key_btn",
	name="one_key_name",
	fontsize="24",
	child={},
	class="SLabel",
	align="2",
	pos={
69,	
12,	},
},
},
	class="SButton",
	zOrder=1,		pos={
282,	
8,	},
},

{	str="#c643f17生   命",
	name="max_text",
	parent="mainPanel",
	align="2",
	class="SLabel",
	fontsize="20",
	pos={	451,		50,	},
},
},
	size={
"641",

"415",
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
