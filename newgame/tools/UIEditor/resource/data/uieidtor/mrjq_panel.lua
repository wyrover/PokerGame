mrjq_panel = {
	img_n="",
	child={
{	img_n="sui/common/panel12.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=true,
	name="panel_mrjq",
	size={	"640",
	"504",
},
	isVisible=false,
	child={
{	img_n="",
	flip={	false,		false,	},
	parent="panel_mrjq",
	class="SPanel",
	is_nine=true,
	name="mryg_panel",
	pos={	-1,		419,	},
	zOrder=1,		child={
{	str="#c4D2E0D明日预告",
	parent="mryg_panel",
	class="SLabel",
	zOrder=10,		name="mryb_lab",
	pos={	273,		44,	},
	align=1,		fontsize="24",
	size={	"96",
	"27",
},
},

{	str="#c643f17刘秀寻人未果，邓禹加冠之礼",
	parent="mryg_panel",
	class="SLabel",
	zOrder=10,		name="mryg_txt",
	pos={	321,		17,	},
	align="2",
	fontsize="18",
	size={	"242",
	"21",
},
},

{	img_n="sui/common/division_07.png",
	flip={	false,		false,	},
	parent="mryg_panel",
	class="SImage",
	is_nine=false,
	name="img_2",
	pos={	175,		50,	},
	zOrder=10,		size={	"78",
	"15",
},
},

{	img_n="sui/common/division_07.png",
	flip={	true,		false,	},
	parent="mryg_panel",
	class="SImage",
	is_nine=false,
	name="img_3",
	pos={	389,		49,	},
	zOrder=10,		size={	"78",
	"15",
},
},
},
	size={
"640",

"83",
},
},

{	img_n="sui/wanfa/juqing_bg.png",
	flip={	true,		false,	},
	parent="panel_mrjq",
	class="SPanel",
	is_nine=true,
	name="jq_right_bg",
	pos={	"319",
	"12",
},
	zOrder=1,		child={
{	str="#c4D2E0D今日剧情",
	name="jrjq_lab",
	parent="jq_right_bg",
	align=1,		class="SLabel",
	fontsize="24",
	pos={	107,		352,	},
},

{	img_n="sui/common/division_02.png",
	flip={	false,		false,	},
	parent="jq_right_bg",
	class="SImage",
	is_nine=false,
	name="img_6",
	pos={	21,		356,	},
	zOrder=1,		size={	"78",
	"15",
},
},

{	img_n="sui/common/division_02.png",
	flip={	true,		false,	},
	parent="jq_right_bg",
	class="SImage",
	is_nine=false,
	name="img_7",
	pos={	212,		358,	},
	zOrder=1,		size={	"78",
	"15",
},
},

{	img_n="sui/wanfa/jl_label_bg.png",
	flip={	false,		false,	},
	parent="jq_right_bg",
	class="SImage",
	is_nine=false,
	name="img_8",
	pos={	0,		167,	},
	zOrder=1,		child={
{	str="#c98360b奖励",
	name="label_8",
	parent="img_8",
	align=1,		class="SLabel",
	fontsize="20",
	pos={	15,		4,	},
},
},
	size={
"141",

"33",
},
},

{	img_n="sui/common/btn_1.png",
	child={
{	str="进入副本",
	name="label_12",
	parent="enterfb_btn",
	align=1,		class="SLabel",
	fontsize="24",
	pos={	24,		13,	},
},
},
	class="SButton",
	zOrder=1,		img_s="sui/common/btn_1.png",
	name="enterfb_btn",
	pos={
151,	
17,	},
	parent="jq_right_bg",
	size={
"139",

"57",
},
},

{	str="#cac7132进入次数：0/1",
	name="cishu_num",
	parent="jq_right_bg",
	align=1,		class="SLabel",
	fontsize="16",
	pos={	30,		35,	},
},
},
	size={
"310",

"411",
},
},

{	img_n="sui/wanfa/juqing_bg.png",
	flip={	false,		false,	},
	parent="panel_mrjq",
	class="SPanel",
	is_nine=true,
	name="jq_left_bg",
	pos={	"9",
	"12",
},
	zOrder=1,		child={
{	str="#c4D2E0D今日主角",
	fontsize="24",
	name="jrzj_lab",
	parent="jq_left_bg",
	child={},
	class="SLabel",
	align=1,		pos={
103,	
352,	},
},

{	img_n="sui/common/division_02.png",
	flip={	false,		false,	},
	parent="jq_left_bg",
	class="SImage",
	is_nine=false,
	name="img_4",
	pos={	19,		356,	},
	zOrder=1,		size={	"78",
	"15",
},
},

{	img_n="sui/common/division_02.png",
	flip={	true,		false,	},
	parent="jq_left_bg",
	class="SImage",
	is_nine=false,
	name="img_5",
	pos={	207,		356,	},
	zOrder=1,		size={	"78",
	"15",
},
},

{	img_n="sui/wanfa/name_bg.png",
	flip={	false,		false,	},
	parent="jq_left_bg",
	class="SPanel",
	is_nine=false,
	name="name_bg",
	pos={	31,		202,	},
	child={
{	str="#c643f17我是名字",
	scroll_type="2",
	name="role_name",
	align="1",
	parent="name_bg",
	class="SLabel",
	fontsize="18",
	pos={	6,		21,	},
},
},
	zOrder=10,		size={
"31",

"124",
},
},

{	img_n="sui/common/role_bg2.png",
	flip={	false,		false,	},
	parent="jq_left_bg",
	class="SPanel",
	is_nine=false,
	name="panel_7",
	pos={	36,		60,	},
	zOrder=1,		child={},
	size={
"240",

"275",
},
},

{	img_n="sui/wanfa/renwu_bg.png",
	name="rwjs_btn",
	pos={	31,		5,	},
	parent="jq_left_bg",
	class="SButton",
	zOrder=1,		size={	"249",
	"73",
},
},

{	img_n="sui/wanfa/juqing_bg.png",
	flip={	false,		false,	},
	parent="jq_left_bg",
	class="SPanel",
	is_nine=true,
	name="rwjs_panel",
	pos={	"0",
	"0",
},
	zOrder=100,		child={
{	img_n="sui/wanfa/zhankai_btn.png",
	name="rwjs_down_btn",
	pos={	32,		380,	},
	parent="rwjs_panel",
	class="SButton",
	zOrder=1,		size={	"247",
	"31",
},
},

{	str="#c4D2E0D人物介绍",
	name="rwjs_lab",
	parent="rwjs_panel",
	align=1,		class="SLabel",
	fontsize="24",
	pos={	106,		352,	},
},

{	img_n="sui/common/division_02.png",
	flip={	false,		false,	},
	parent="rwjs_panel",
	class="SImage",
	is_nine=false,
	name="img_9",
	pos={	20,		356,	},
	zOrder=1,		size={	"78",
	"15",
},
},

{	img_n="sui/common/division_02.png",
	flip={	true,		false,	},
	parent="rwjs_panel",
	class="SImage",
	is_nine=false,
	name="img_11",
	pos={	"215",
	"356",
},
	zOrder=1,		size={	"78",
	"15",
},
},
},
	size={
"310",

"411",
},
},
},
	size={
"310",

"411",
},
},

{	str="#c643f17连丽如评书《东汉演义》中，邓禹是严子陵的徒弟，曾随刘秀到长安参加武举，在校刀劈苏天宝。后为汉军军师，位列云台三十六将，星号胶木胶。评书《东汉风云》与南阳明间传闻中吧邓禹描述为新野落风坡白云观道士。作为汉军军师辅佐刘秀建立东汉。",
	img_n="",
	parent="panel_mrjq",
	class="STextArea",
	is_nine=true,
	name="rwjs_txt",
	pos={	"54",
	"355",
},
	zOrder=100,		size={	"239",
	"320",
},
},

{	str="#c643f17妥妥河畔，刘秀被王朗追兵追赶至河面，丽华情急之下独自迎战追兵，不幸中箭，坠入冰窟......恍惚间，丽华回到少年时，阴冷的阴家庄。",
	img_n="",
	parent="panel_mrjq",
	class="STextArea",
	is_nine=true,
	name="jrjq_txt",
	pos={	354,		354,	},
	zOrder=100,		size={	"243",
	"140",
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
	size={
"670",

"521",
},
	parent="ui_root",
	zOrder=1,		pos={
"0",

"0",
},

}
