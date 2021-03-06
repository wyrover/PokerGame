activity_win = {
	img_n="",
	child={
{	img_n="sui/common/win_panel.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=true,
	name="panel_1",
	size={	"880",
	"565",
},
	isVisible=false,
	child={
{	img_n="",
	flip={	false,		false,	},
	parent="panel_1",
	class="SPanel",
	is_nine=true,
	size={	"860",
	"530",
},
	name="panel_ys",
	auto_load=0,		child={
{	img_n="sui/common/panel11.png",
	flip={	false,		false,	},
	parent="panel_ys",
	class="SPanel",
	is_nine=true,
	name="panel_13",
	size={	"830",
	"500",
},
	child={
{	img_n="",
	flip={	false,		false,	},
	parent="panel_13",
	class="SPanel",
	is_nine=false,
	name="panel_down",
	size={	"830",
	"170",
},
	child={
{	img_n="sui/common/division_275_15.png",
	flip={	false,		false,	},
	parent="panel_down",
	class="SImage",
	is_nine=false,
	name="img_15",
	size={	"275",
	"15",
},
	zOrder=1,		scroll_type="2",
	pos={	-6,		142,	},
},

{	img_n="",
	flip={	false,		false,	},
	parent="panel_down",
	class="SImage",
	is_nine=false,
	name="img_19",
	size={	"169",
	"40",
},
	child={
{	str="#c4e2d0e[协作] 精英BOSS",
	name="boss_type",
	align="2",
	parent="img_19",
	class="SLabel",
	fontsize="24",
	pos={	84,		10,	},
},
},
	zOrder=1,		pos={
321,	
127,	},
},

{	img_n="sui/common/division_275_15.png",
	flip={	true,		false,	},
	parent="panel_down",
	class="SImage",
	is_nine=false,
	name="img_20",
	size={	"275",
	"15",
},
	zOrder=1,		pos={	549,		143,	},
},

{	str="#c8a5823小提示：对BOSS最后一击的玩家可获得掉落奖励",
	name="prompt",
	align="1",
	parent="panel_down",
	class="SLabel",
	fontsize=16,		pos={	4,		115,	},
},

{	img_n="sui/wanfa/shuoming_bg.png",
	flip={	false,		false,	},
	parent="panel_down",
	class="SImage",
	is_nine=true,
	name="rank_bg",
	size={	"371",
	"43",
},
	child={
{	str="#c643f17最高伤害",
	name="rank_txt",
	align="1",
	parent="rank_bg",
	class="SLabel",
	fontsize="18",
	pos={	97,		11,	},
},

{	str="#c8d4408玩家一二三四",
	name="player_name",
	align="1",
	parent="rank_bg",
	class="SLabel",
	fontsize="18",
	pos={	"176",
	"11",
},
},
},
	zOrder=1,		pos={
432,	
85,	},
},

{	size={	"139",
	"57",
},
	img_n="sui/common/btn_1.png",
	name="suchuan_btn",
	parent="panel_down",
	child={
{	str="速传",
	name="label_15",
	parent="suchuan_btn",
	align="2",
	class="SLabel",
	fontsize="24",
	pos={	"69",
	"14",
},
},
},
	class="SButton",
	zOrder=1,		pos={
438,	
23,	},
},

{	size={	"139",
	"57",
},
	img_n="sui/common/btn2_s.png",
	name="qianwang_btn",
	parent="panel_down",
	child={
{	str="前往",
	name="label_28",
	parent="qianwang_btn",
	align="2",
	class="SLabel",
	fontsize="24",
	pos={	"69",
	"15",
},
},
},
	class="SButton",
	zOrder=1,		pos={
680,	
23,	},
},

{	img_n="",
	parent="panel_down",
	class="SScroll",
	is_nine=true,
	scroll_type="1",
	size={	"275",
	"85",
},
	name="award_scroll",
	zOrder=10,		pos={	57,		19,	},
},

{	pos={	345,		21,	},
	img_n="sui/wanfa/shph.png",
	name="activity_rule",
	child={},
	parent="panel_down",
	class="SButton",
	zOrder=1,		size={
"78",

"83",
},
},

{	img_n="icon/item/28102.pd",
	flip={	false,		false,	},
	parent="panel_down",
	class="SImage",
	is_nine=false,
	name="xiezi_img",
	size={	"33",
	"33",
},
	zOrder=1,		pos={	589,		35,	},
},

{	str="#c8a582320",
	name="xiezi_num",
	align=1,		parent="panel_down",
	class="SLabel",
	fontsize="18",
	pos={	638,		42,	},
},

{	img_n="sui/wanfa/jiangli_bg.png",
	flip={	false,		false,	},
	parent="panel_down",
	class="SImage",
	is_nine=false,
	name="img_7",
	pos={	6,		20,	},
	zOrder=10,		child={
{	str="#c4e2d0e奖励",
	scroll_type="2",
	name="label_31",
	align="2",
	parent="img_7",
	class="SLabel",
	fontsize="22",
	pos={	26,		17,	},
},
},
	size={
"53",

"85",
},
},

{	img_n="sui/common/panel15.png",
	flip={	false,		false,	},
	parent="panel_down",
	class="SPanel",
	is_nine=true,
	name="panel_15",
	pos={	"1",
	"17",
},
	zOrder=1,		size={	"333",
	"90",
},
},
},
	zOrder=1,		pos={
"5",

"-10",
},
},

{	img_n="",
	parent="panel_13",
	class="SScroll",
	is_nine=true,
	scroll_type="1",
	size={	"820",
	"340",
},
	name="boss_scroll",
	zOrder=1,		pos={	5,		157,	},
},
},
	zOrder=1,		pos={
10,	
10,	},
},
},
	zOrder=1,		isVisible=false,
	pos={
18,	
14,	},
},

{	img_n="sui/common/win_title_bg.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SPanel",
	is_nine=false,
	name="panel_8",
	pos={	-23,		521,	},
	zOrder=1,		child={
{	img_n="sui/wanfa/wanfa_title.png",
	flip={	false,		false,	},
	parent="panel_8",
	class="SPanel",
	is_nine=false,
	name="panel_9",
	pos={	166,		39,	},
	zOrder=1,		isVisible=true,
	size={	"90",
	"49",
},
},

{	img_n="sui/common/pj.png",
	flip={	false,		false,	},
	parent="panel_8",
	class="SPanel",
	is_nine=false,
	name="panel_11",
	pos={	11,		-111,	},
	zOrder=1,		isVisible=true,
	size={	"36",
	"209",
},
},
},
	isVisible=false,
	size={
"949",

"103",
},
},

{	img_n="",
	flip={	false,		false,	},
	parent="panel_1",
	class="SPanel",
	is_nine=true,
	pos={	"0",
	"0",
},
	name="panel_hd",
	isVisible=false,
	zOrder=5,		child={
{	img_n="sui/common/panel11.png",
	flip={	false,		false,	},
	parent="panel_hd",
	class="SPanel",
	is_nine=true,
	name="panel_3",
	pos={	"24",
	"20",
},
	isVisible=false,
	zOrder=1,		child={
{	img_n="",
	parent="panel_3",
	class="SScroll",
	is_nine=true,
	name="hd_scroll",
	pos={	"3",
	"3",
},
	zOrder=1,		scroll_type=2,		isVisible=false,
	size={	"186",
	"498",
},
},
},
	size={
"192",

"504",
},
},

{	img_n="",
	flip={	false,		false,	},
	parent="panel_hd",
	class="SPanel",
	is_nine=false,
	name="panel_info_hd",
	size={	"640",
	"506",
},
	isVisible=false,
	zOrder=1,		pos={	"219",
	"20",
},
},
},
	auto_load=0,		size={
"880",

"565",
},
},

{	img_n="",
	flip={	false,		false,	},
	parent="panel_1",
	class="SPanel",
	is_nine=true,
	size={	"860",
	"530",
},
	name="panel_fb",
	auto_load=0,		child={
{	img_n="sui/common/panel11.png",
	flip={	false,		false,	},
	parent="panel_fb",
	class="SPanel",
	is_nine=true,
	name="panel_3",
	size={	"195",
	"505",
},
	isVisible=false,
	child={
{	isVisible=false,
	parent="panel_3",
	class="SScroll",
	is_nine=true,
	name="fb_scroll",
	size={	"185",
	"495",
},
	img_n="",
	scroll_type=2,		zOrder=1,		pos={	"5",
	"5",
},
},
},
	zOrder=1,		pos={
10,	
12,	},
},

{	img_n="sui/common/panel12.png",
	flip={	false,		false,	},
	parent="panel_fb",
	class="SPanel",
	is_nine=true,
	name="panel_info_fb",
	size={	"640",
	"508",
},
	isVisible=false,
	child={
{	str="#c9f4c08【单人】副本名称",
	name="fb_title",
	align="2",
	parent="panel_info_fb",
	class="SLabel",
	fontsize="24",
	pos={	"320",
	"470",
},
},

{	img_n="sui/common/division_07.png",
	flip={	true,		false,	},
	parent="panel_info_fb",
	class="SPanel",
	is_nine=false,
	name="panel_2",
	size={	"78",
	"15",
},
	zOrder=1,		pos={	441,		477,	},
},

{	img_n="sui/common/division_07.png",
	flip={	false,		false,	},
	parent="panel_info_fb",
	class="SPanel",
	is_nine=false,
	name="copy_2",
	pos={	123,		477,	},
	zOrder=1,		size={	"78",
	"15",
},
},

{	str="#c643f17等级限制",
	name="label_5",
	align=1,		parent="panel_info_fb",
	class="SLabel",
	fontsize="16",
	pos={	29,		424.5,	},
},

{	str="#c643f17推荐战力",
	name="label_6",
	align=1,		parent="panel_info_fb",
	class="SLabel",
	fontsize="16",
	pos={	31,		382.5,	},
},

{	str="#c643f17活动时间",
	name="label_7",
	align=1,		parent="panel_info_fb",
	class="SLabel",
	fontsize="16",
	pos={	31,		340.5,	},
},

{	str="#c643f17进入次数",
	name="label_8",
	align=1,		parent="panel_info_fb",
	class="SLabel",
	fontsize="16",
	pos={	31,		298.5,	},
},

{	str="#c501f0499",
	name="fb_lbl_lv",
	align=1,		parent="panel_info_fb",
	class="SLabel",
	fontsize="16",
	pos={	132,		424.5,	},
},

{	str="#c643f17人数限制",
	name="label_10",
	align=1,		parent="panel_info_fb",
	class="SLabel",
	fontsize="16",
	pos={	248,		424.5,	},
},

{	str="#c501f049",
	name="fb_person_num",
	align=1,		parent="panel_info_fb",
	class="SLabel",
	fontsize="16",
	pos={	344,		424.5,	},
},

{	str="#c501f049999999",
	name="fb_fight_num",
	align=1,		parent="panel_info_fb",
	class="SLabel",
	fontsize="16",
	pos={	132,		382.5,	},
},

{	str="#c501f0400:00 - 00:00",
	name="fb_time",
	align=1,		parent="panel_info_fb",
	class="SLabel",
	fontsize="16",
	pos={	132,		340.5,	},
},

{	str="#c501f049/9",
	name="fb_enter_num",
	align=1,		parent="panel_info_fb",
	class="SLabel",
	fontsize="16",
	pos={	132,		298.5,	},
},

{	str="#c501f049/9",
	name="fb_vip_num",
	align=1,		parent="panel_info_fb",
	class="SLabel",
	fontsize="16",
	pos={	344,		298.5,	},
},

{	img_n="sui/common/panel2_2.png",
	flip={	false,		false,	},
	parent="panel_info_fb",
	class="SPanel",
	is_nine=true,
	name="panel_6",
	size={	"595",
	"188",
},
	child={
{	str="#ca27535打完通关回家睡觉(几百年没睡过，真的好吗)",
	img_n="",
	parent="panel_6",
	class="STextArea",
	is_nine=true,
	fontsize="18",
	size={	"280",
	"90",
},
	isVisible=false,
	zOrder=1,		name="fb_word",
	pos={	19,		113,	},
},

{	img_n="sui/common/slot_bg.png",
	name="fb_slotitem_1",
	size={	"78",
	"78",
},
	parent="panel_6",
	class="SSlotItem",
	zOrder=1,		pos={	330,		35,	},
},

{	img_n="sui/common/slot_bg.png",
	name="fb_slotitem_2",
	size={	"78",
	"78",
},
	parent="panel_6",
	class="SSlotItem",
	zOrder=1,		pos={	414,		35,	},
},

{	img_n="sui/common/slot_bg.png",
	name="fb_slotitem_3",
	size={	"78",
	"78",
},
	parent="panel_6",
	class="SSlotItem",
	zOrder=1,		pos={	498,		35,	},
},

{	img_n="sui/common/division_02.png",
	flip={	false,		false,	},
	child={},
	class="SPanel",
	is_nine=true,
	name="panel_4",
	size={
"78",

"15",
},
	parent="panel_6",
	zOrder=1,		pos={
"25",

"150",
},
},

{	str="#c4e2d0e玩法介绍",
	name="label_19",
	parent="panel_6",
	align="2",
	class="SLabel",
	fontsize="24",
	pos={	164,		143,	},
},

{	str="#c4e2d0e奖励",
	name="copy_5",
	align="2",
	parent="panel_6",
	class="SLabel",
	fontsize="24",
	pos={	455,		143,	},
},

{	img_n="sui/common/line10.png",
	flip={	false,		false,	},
	parent="panel_6",
	class="SPanel",
	is_nine=false,
	name="panel_12",
	size={	"2",
	"175",
},
	zOrder=1,		pos={	313,		11,	},
},

{	img_n="sui/common/division_02.png",
	flip={	false,		false,	},
	child={},
	class="SPanel",
	is_nine=true,
	name="copy_7",
	pos={
333,	
150,	},
	zOrder=1,		parent="panel_6",
	size={
"78",

"15",
},
},

{	img_n="sui/common/division_02.png",
	flip={	true,		false,	},
	child={},
	class="SPanel",
	is_nine=true,
	name="copy_8",
	pos={
"222",

"150",
},
	zOrder=1,		parent="panel_6",
	size={
"78",

"15",
},
},

{	img_n="sui/common/division_02.png",
	flip={	true,		false,	},
	child={},
	class="SPanel",
	is_nine=true,
	name="copy_9",
	size={
"78",

"15",
},
	parent="panel_6",
	zOrder=1,		pos={
494,	
150,	},
},
},
	zOrder=1,		isVisible=false,
	pos={
"22",

"70",
},
},

{	str="",
	img_n="sui/common/btn_1.png",
	parent="panel_info_fb",
	class="STextButton",
	zOrder=1,		fontsize="24",
	size={	"139",
	"54",
},
	align=1,		name="fb_btn_enter",
	child={
{	str="进入副本",
	name="label_3",
	parent="fb_btn_enter",
	align="2",
	class="SLabel",
	fontsize="24",
	pos={	"69",
	"13",
},
},
},
	pos={
491,	
10,	},
},

{	str="",
	img_n="sui/common/btn2_s.png",
	parent="panel_info_fb",
	class="STextButton",
	zOrder=1,		name="fb_btn_call",
	pos={	"250",
	"10",
},
	fontsize="24",
	align=1,		child={
{	str="喊人",
	name="label_16",
	parent="fb_btn_call",
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

{	str="",
	img_n="sui/common/btn2_s.png",
	parent="panel_info_fb",
	class="STextButton",
	zOrder=1,		name="fb_btn_team",
	size={	"139",
	"57",
},
	align=1,		fontsize="24",
	child={
{	str="自动匹配",
	name="label_14",
	parent="fb_btn_team",
	align="2",
	class="SLabel",
	fontsize="24",
	pos={	"69",
	"15",
},
},

{	img_n="sui/common/pipeiing.png",
	flip={	false,		false,	},
	parent="fb_btn_team",
	class="SImage",
	is_nine=false,
	name="pipeiing_di",
	pos={	-14,		51,	},
	zOrder=1,		child={
{	str="#cffeac5正在匹配中.",
	name="pipeiing_lab",
	parent="pipeiing_di",
	align="2",
	class="SLabel",
	fontsize=16,		pos={	85,		19,	},
},
},
	size={
"169",

"49",
},
},
},
	pos={
9,	
10,	},
},

{	size={	"107",
	"43",
},
	img_n="sui/common/btn14.png",
	name="fb_nandu_2",
	child={
{	str="困难",
	name="label_12",
	fontsize="20",
	child={},
	parent="fb_nandu_2",
	class="SLabel",
	align="2",
	pos={
"53",

"10",
},
},

{	img_n="sui/common/btn13_light.png",
	flip={	false,		false,	},
	parent="fb_nandu_2",
	class="SImage",
	is_nine=false,
	name="img_btn2",
	size={	"119",
	"52",
},
	zOrder=1,		isVisible=false,
	pos={	"-6",
	"-4.5",
},
},
},
	parent="panel_info_fb",
	class="SButton",
	zOrder=1,		pos={
515,	
348,	},
},

{	size={	"107",
	"43",
},
	img_n="sui/common/btn15.png",
	name="fb_nandu_3",
	child={
{	str="深渊",
	name="label_13",
	parent="fb_nandu_3",
	align="2",
	class="SLabel",
	fontsize="20",
	pos={	"53",
	"10",
},
},

{	img_n="sui/common/btn13_light.png",
	flip={	false,		false,	},
	parent="fb_nandu_3",
	class="SImage",
	is_nine=false,
	name="img_btn3",
	pos={	"-6",
	"-4.5",
},
	zOrder=1,		isVisible=false,
	size={	"119",
	"52",
},
},
},
	parent="panel_info_fb",
	class="SButton",
	zOrder=1,		pos={
515,	
290,	},
},

{	img_n="sui/common/fengexian.png",
	flip={	true,		false,	},
	parent="panel_info_fb",
	class="SPanel",
	is_nine=true,
	name="copy_3",
	pos={	"15",
	"455",
},
	zOrder=1,		size={	"610",
	"3",
},
},

{	img_n="sui/common/fengexian.png",
	flip={	false,		false,	},
	parent="panel_info_fb",
	class="SPanel",
	is_nine=true,
	name="copy_6",
	size={	"610",
	"3",
},
	zOrder=1,		pos={	15,		264,	},
},

{	str="#c643f17vip",
	name="fb_vip_title",
	align=1,		parent="panel_info_fb",
	class="SLabel",
	fontsize="16",
	pos={	248,		298.5,	},
},

{	size={	"107",
	"43",
},
	img_n="sui/common/btn13.png",
	name="fb_nandu_1",
	parent="panel_info_fb",
	child={
{	img_n="sui/common/btn13_light.png",
	flip={	false,		false,	},
	parent="fb_nandu_1",
	class="SImage",
	is_nine=false,
	name="img_btn1",
	size={	"119",
	"52",
},
	zOrder=1,		isVisible=false,
	pos={	"-6",
	"-4.5",
},
},

{	str="简单",
	name="label_11",
	align="2",
	parent="fb_nandu_1",
	class="SLabel",
	fontsize="20",
	pos={	"53",
	"10",
},
},
},
	class="SButton",
	zOrder=1,		pos={
"515",

"406",
},
},

{	str="#c9d7633组队副本每天17点额外刷新挑战次数哟",
	name="label_30",
	align="2",
	parent="panel_info_fb",
	class="SLabel",
	fontsize=16,		pos={	310,		272,	},
},
},
	zOrder=1,		pos={
209,	
11,	},
},
},
	zOrder=1,		isVisible=false,
	pos={
"10",

"10",
},
},

{	img_n="",
	flip={	false,		false,	},
	parent="panel_1",
	class="SPanel",
	is_nine=false,
	pos={	11,		15,	},
	name="panel_tj",
	child={
{	img_n="",
	parent="panel_tj",
	class="SRadioButtonGroup",
	is_nine=false,
	name="groupbtn_tj",
	size={	"600",
	"50",
},
	isVisible=false,
	child={
{	img_s="sui/common/btn11.png",
	img_n="sui/common/btn12.png",
	name="radiobtn_tj_1",
	size={	"122",
	"50",
},
	parent="groupbtn_tj",
	class="SRadioButton",
	zOrder=1,		pos={	"5",
	"0",
},
},

{	img_n="sui/common/btn12_1.png",
	parent="groupbtn_tj",
	class="SRadioButton",
	zOrder=1,		img_s="sui/common/btn11_1.png",
	name="radiobtn_tj_2",
	size={	"119",
	"50",
},
	isVisible=true,
	pos={	122,		0,	},
},

{	img_n="sui/common/btn12_1.png",
	parent="groupbtn_tj",
	class="SRadioButton",
	zOrder=1,		img_s="sui/common/btn11_1.png",
	name="radiobtn_tj_3",
	size={	"119",
	"50",
},
	child={},
	pos={
234,	
0,	},
},

{	img_n="sui/common/btn12.png",
	flip={	true,		false,	},
	parent="groupbtn_tj",
	class="SRadioButton",
	zOrder=1,		img_s="sui/common/btn11.png",
	name="radiobtn_tj_4",
	size={	"122",
	"50",
},
	pos={	348,		0,	},
},
},
	zOrder=1,		pos={
10,	
467,	},
},

{	img_n="sui/common/panel11.png",
	flip={	false,		false,	},
	parent="panel_tj",
	class="SPanel",
	is_nine=true,
	size={	"836",
	"463",
},
	name="panel_tj_1",
	isVisible=false,
	child={
{	img_n="",
	parent="panel_tj_1",
	class="SScroll",
	is_nine=true,
	pos={	10,		10,	},
	scroll_type=1,		child={},
	zOrder=1,		name="scroll_1",
	isVisible=false,
	size={
"816",

"443",
},
},

{	img_n="",
	flip={	false,		false,	},
	parent="panel_tj_1",
	class="SPanel",
	is_nine=false,
	name="panel_7",
	pos={	"10",
	"10",
},
	isVisible=false,
	zOrder=2,		child={
{	img_n="sui/common/roleImage.png",
	flip={	false,		false,	},
	parent="panel_7",
	class="SImage",
	is_nine=false,
	name="img_17",
	pos={	72,		30,	},
	zOrder=1,		size={	"297",
	"342",
},
},

{	img_n="sui/common/qipao.png",
	flip={	false,		false,	},
	parent="panel_7",
	class="SImage",
	is_nine=true,
	name="img_18",
	pos={	332,		308,	},
	zOrder=1,		child={
{	str="#ca45f21世间一片太平，未有通缉犯出现",
	name="label_4",
	parent="img_18",
	align="2",
	class="SLabel",
	fontsize="16",
	pos={	160,		54,	},
},
},
	size={
"320",

"100",
},
},
},
	size={
"816",

"443",
},
},
},
	zOrder=2,		auto_load="0",
	pos={
"13",

"8",
},
},

{	img_n="sui/common/panel11.png",
	flip={	false,		false,	},
	parent="panel_tj",
	class="SPanel",
	is_nine=true,
	size={	"836",
	"463",
},
	name="panel_tj_2",
	child={
{	img_n="sui/common/panel11.png",
	flip={	false,		false,	},
	parent="panel_tj_2",
	class="SPanel",
	is_nine=true,
	name="panel_5",
	pos={	3,		4,	},
	zOrder=1,		child={
{	img_n="",
	parent="panel_5",
	class="SScroll",
	is_nine=true,
	scroll_type=2,		pos={	"5",
	"5",
},
	isVisible=false,
	zOrder=1,		name="scroll_2",
	size={	"276",
	"415",
},
},

{	img_n="sui/common/division_9.png",
	flip={	false,		false,	},
	parent="panel_5",
	class="SImage",
	is_nine=false,
	name="img_5",
	size={	"40",
	"15",
},
	zOrder=1,		pos={	37,		429,	},
},

{	img_n="sui/common/division_9.png",
	flip={	true,		false,	},
	parent="panel_5",
	class="SImage",
	is_nine=false,
	name="img_10",
	size={	"40",
	"15",
},
	zOrder=1,		pos={	"208",
	"428",
},
},

{	str="#c4D2E0D仇人列表",
	name="label_20",
	align="2",
	parent="panel_5",
	class="SLabel",
	fontsize="24",
	pos={	"143",
	"422",
},
},
},
	size={
"286",

"455",
},
},

{	img_n="",
	flip={	false,		false,	},
	parent="panel_tj_2",
	class="SPanel",
	is_nine=false,
	name="panel_22",
	pos={	286,		6,	},
	zOrder=1,		child={
{	img_n="sui/common/input_frame.png",
	parent="panel_22",
	class="SPanel",
	is_nine=true,
	pos={	100,		400,	},
	fontsize=16,		maxnum=15,		zOrder=1,		align=1,		name="editbox_1",
	size={	"437",
	"42",
},
},

{	str="#c643f17通 缉 人",
	name="label_1",
	parent="panel_22",
	align=1,		class="SLabel",
	fontsize="18",
	pos={	13,		410.5,	},
},

{	str="#c643f17通缉等级",
	name="label_2",
	parent="panel_22",
	align=1,		class="SLabel",
	fontsize="18",
	pos={	13,		350,	},
},

{	size={	"32",
	"32",
},
	img_n="sui/common/select_bg.png",
	name="select_bg_1",
	parent="panel_22",
	child={
{	img_n="sui/common/select.png",
	flip={	false,		false,	},
	parent="select_bg_1",
	class="SImage",
	is_nine=false,
	name="select_img_1",
	size={	"29",
	"29",
},
	zOrder=1,		isVisible=false,
	pos={	2,		1,	},
},
},
	class="SPanel",
	zOrder=1,		pos={
110,	
340,	},
},

{	pos={	110,		295,	},
	img_n="sui/common/select_bg.png",
	name="select_bg_2",
	child={
{	img_n="sui/common/select.png",
	flip={	false,		false,	},
	parent="select_bg_2",
	class="SImage",
	is_nine=false,
	name="select_img_2",
	pos={	2,		1,	},
	zOrder=1,		isVisible=false,
	size={	"29",
	"29",
},
},
},
	parent="panel_22",
	class="SPanel",
	zOrder=1,		size={
"32",

"32",
},
},

{	size={	"32",
	"32",
},
	img_n="sui/common/select_bg.png",
	name="select_bg_3",
	parent="panel_22",
	child={
{	img_n="sui/common/select.png",
	flip={	false,		false,	},
	parent="select_bg_3",
	class="SImage",
	is_nine=false,
	name="select_img_3",
	size={	"29",
	"29",
},
	zOrder=1,		isVisible=false,
	pos={	2,		1,	},
},
},
	class="SPanel",
	zOrder=1,		pos={
110,	
250,	},
},

{	str="#c965a29小偷小摸",
	name="select_lab_1",
	align=1,		parent="panel_22",
	class="SLabel",
	fontsize="18",
	pos={	"160",
	"345",
},
},

{	str="#c965a29江洋大盗",
	name="select_lab_2",
	parent="panel_22",
	align=1,		class="SLabel",
	fontsize="18",
	pos={	"160",
	"300",
},
},

{	str="#c965a29朝廷要犯",
	name="select_lab_3",
	align=1,		parent="panel_22",
	class="SLabel",
	fontsize="18",
	pos={	"160",
	"255",
},
},

{	str="#c965a29赏金",
	name="select_sj_1",
	parent="panel_22",
	align=1,		class="SLabel",
	fontsize="18",
	pos={	270,		345,	},
},

{	str="#c965a29赏金",
	name="select_sj_2",
	align=1,		parent="panel_22",
	class="SLabel",
	fontsize="18",
	pos={	270,		300,	},
},

{	str="#c965a29赏金",
	name="select_sj_3",
	parent="panel_22",
	align=1,		class="SLabel",
	fontsize="18",
	pos={	270,		255,	},
},

{	img_n="sui/common/huobi_tongbi.png",
	flip={	false,		false,	},
	parent="panel_22",
	class="SImage",
	is_nine=false,
	name="select_icon_1",
	size={	"45",
	"45",
},
	zOrder=1,		pos={	330,		335,	},
},

{	img_n="sui/common/huobi_yupei.png",
	flip={	false,		false,	},
	parent="panel_22",
	class="SImage",
	is_nine=false,
	name="select_icon_2",
	pos={	330,		290,	},
	zOrder=1,		size={	"45",
	"45",
},
},

{	img_n="sui/common/huobi_yuanbao.png",
	flip={	false,		false,	},
	parent="panel_22",
	class="SImage",
	is_nine=false,
	name="select_icon_3",
	size={	"45",
	"45",
},
	zOrder=1,		pos={	330,		245,	},
},

{	str="#c965a29999999",
	name="copy_23",
	align=1,		parent="panel_22",
	class="SLabel",
	fontsize="18",
	pos={	"388",
	"345",
},
},

{	str="#c965a29999999",
	name="copy_24",
	parent="panel_22",
	align=1,		class="SLabel",
	fontsize="18",
	pos={	"388",
	"300",
},
},

{	str="#c965a29999999",
	name="copy_25",
	align=1,		parent="panel_22",
	class="SLabel",
	fontsize="18",
	pos={	"388",
	"255",
},
},

{	str="#c643f17战力限制",
	name="copy_28",
	align="1",
	parent="panel_22",
	class="SLabel",
	fontsize="18",
	pos={	13,		166,	},
},

{	str="#c987a4f150",
	name="copy_29",
	parent="panel_22",
	align=1,		class="SLabel",
	fontsize="16",
	pos={	"100",
	"136",
},
},

{	str="#c987a4f123456789",
	name="copy_30",
	align="3",
	parent="panel_22",
	class="SLabel",
	fontsize="16",
	pos={	"534",
	"136",
},
},

{	str="#c643f17留言",
	name="copy_31",
	parent="panel_22",
	align=1,		class="SLabel",
	fontsize="18",
	pos={	13,		105,	},
},

{	img_n="sui/common/input_frame.png",
	parent="panel_22",
	class="SPanel",
	is_nine=true,
	size={	"312",
	"113",
},
	name="copy_32",
	maxnum=15,		fontsize=16,		align=1,		zOrder=1,		pos={	100,		12,	},
},

{	img_n="sui/common/huobi_yupei.png",
	flip={	false,		false,	},
	parent="panel_22",
	class="SImage",
	is_nine=false,
	name="copy_33",
	size={	"45",
	"45",
},
	zOrder=1,		pos={	415,		90,	},
},

{	img_n="sui/common/huobi_yuanbao.png",
	flip={	false,		false,	},
	parent="panel_22",
	class="SImage",
	is_nine=false,
	name="copy_34",
	pos={	415,		50,	},
	zOrder=1,		size={	"45",
	"45",
},
},

{	str="#c773c151/3",
	name="copy_35",
	align=1,		parent="panel_22",
	class="SLabel",
	fontsize="20",
	pos={	468,		100,	},
},

{	str="#c773c1512345",
	name="copy_36",
	parent="panel_22",
	align=1,		class="SLabel",
	fontsize="20",
	pos={	468,		60,	},
},

{	str="",
	img_n="sui/common/btn13.png",
	parent="panel_22",
	class="STextButton",
	zOrder=1,		fontsize="24",
	size={	"107",
	"46",
},
	align=1,		name="textbtn_1",
	child={
{	str="发布通缉",
	name="label_21",
	align=1,		parent="textbtn_1",
	class="SLabel",
	fontsize="18",
	pos={	15,		13,	},
},
},
	pos={
423,	
4,	},
},

{	str="100",
	img_n="sui/common/blood.png",
	parent="panel_22",
	class="SDragBar",
	zOrder=1,		img_s="sui/common/progressBg.png",
	name="dragbar_1",
	size={	"437",
	"25",
},
	pos={	100,		164,	},
},

{	img_n="sui/wanted/zlszbg.png",
	flip={	false,		false,	},
	parent="panel_22",
	class="SPanel",
	is_nine=false,
	name="img_16",
	pos={	247,		193,	},
	zOrder=1,		child={
{	str="#c854c0f123456789",
	name="label_25",
	parent="img_16",
	align="2",
	class="SLabel",
	fontsize="18",
	pos={	70,		17.5,	},
},
},
	size={
"142",

"49",
},
},

{	img_n="sui/common/huobi_yupei.png",
	flip={	false,		false,	},
	parent="panel_22",
	class="SImage",
	is_nine=false,
	name="copy_26",
	pos={	457,		245,	},
	zOrder=1,		size={	"45",
	"45",
},
},

{	str="#c965a29111",
	name="copy_27",
	parent="panel_22",
	align=1,		class="SLabel",
	fontsize="18",
	pos={	508,		255,	},
},
},
	isVisible=false,
	size={
"545",

"453",
},
},
},
	auto_load="0",
	isVisible=false,
	zOrder=2,		pos={
"13",

"8",
},
},

{	img_n="sui/common/panel11.png",
	flip={	false,		false,	},
	parent="panel_tj",
	class="SPanel",
	is_nine=true,
	size={	"836",
	"463",
},
	name="panel_tj_3",
	auto_load="0",
	isVisible=false,
	zOrder=2,		child={
{	img_n="sui/common/panel11.png",
	flip={	false,		false,	},
	parent="panel_tj_3",
	class="SPanel",
	is_nine=true,
	name="copy_37",
	size={	"286",
	"455",
},
	child={
{	img_n="",
	parent="copy_37",
	class="SScroll",
	is_nine=true,
	name="scroll_3",
	size={	"276",
	"415",
},
	scroll_type=2,		zOrder=1,		isVisible=false,
	pos={	"5",
	"5",
},
},

{	str="#c4D2E0D已接列表",
	name="label_22",
	align="2",
	parent="copy_37",
	class="SLabel",
	fontsize="24",
	pos={	"143",
	"422",
},
},

{	img_n="sui/common/division_9.png",
	flip={	false,		false,	},
	parent="copy_37",
	class="SImage",
	is_nine=false,
	name="img_24",
	size={	"40",
	"15",
},
	zOrder=1,		pos={	"37",
	"429",
},
},

{	img_n="sui/common/division_9.png",
	flip={	true,		false,	},
	parent="copy_37",
	class="SImage",
	is_nine=false,
	name="img_25",
	size={	"40",
	"15",
},
	zOrder=1,		pos={	208,		428,	},
},
},
	zOrder=1,		isVisible=false,
	pos={
"3",

"4",
},
},

{	img_n="sui/common/division_07.png",
	flip={	true,		false,	},
	parent="panel_tj_3",
	class="SImage",
	is_nine=false,
	name="img_9",
	size={	"78",
	"15",
},
	zOrder=2,		pos={	"624",
	"430",
},
},

{	img_n="sui/common/division_07.png",
	flip={	false,		false,	},
	parent="panel_tj_3",
	class="SImage",
	is_nine=false,
	name="copy_38",
	pos={	405,		430,	},
	zOrder=2,		size={	"78",
	"15",
},
},

{	img_n="sui/common/role_bg2.png",
	flip={	false,		false,	},
	parent="panel_tj_3",
	class="SImage",
	is_nine=false,
	name="img_11",
	size={	"219",
	"255",
},
	child={
{	str="#c4D2E0D江洋大盗",
	name="label_23",
	align=1,		parent="img_11",
	class="SLabel",
	fontsize="24",
	pos={	50,		305,	},
},
},
	zOrder=1,		pos={
455,	
118,	},
},

{	str="",
	name="label_17",
	align="2",
	parent="panel_tj_3",
	class="SLabel",
	fontsize="20",
	pos={	342,		140,	},
},

{	str="#c643f17剩余时间",
	name="label_24",
	align=1,		parent="panel_tj_3",
	class="SLabel",
	fontsize="18",
	pos={	"654",
	"130",
},
},

{	str="#c643f17战力限制",
	name="copy_39",
	parent="panel_tj_3",
	align=1,		class="SLabel",
	fontsize="18",
	pos={	653,		98,	},
},

{	str="",
	name="copy_40",
	parent="panel_tj_3",
	align=1,		class="SLabel",
	fontsize="18",
	pos={	741,		129.5,	},
},

{	str="",
	name="copy_41",
	align=1,		parent="panel_tj_3",
	class="SLabel",
	fontsize="18",
	pos={	741,		98,	},
},

{	img_n="sui/common/line12.png",
	flip={	false,		false,	},
	parent="panel_tj_3",
	class="SImage",
	is_nine=false,
	name="img_13",
	size={	"514",
	"4",
},
	zOrder=1,		pos={	313,		84,	},
},

{	str="#c643f17赏金",
	name="copy_42",
	parent="panel_tj_3",
	align=1,		class="SLabel",
	fontsize="18",
	pos={	326,		50,	},
},

{	img_n="sui/common/huobi_yupei.png",
	flip={	false,		false,	},
	parent="panel_tj_3",
	class="SImage",
	is_nine=false,
	name="img_14",
	size={	"45",
	"45",
},
	zOrder=1,		pos={	373,		38,	},
},

{	str="",
	name="copy_44",
	align=1,		parent="panel_tj_3",
	class="SLabel",
	fontsize="18",
	pos={	421,		53,	},
},

{	str="",
	name="copy_45",
	parent="panel_tj_3",
	align=1,		class="SLabel",
	fontsize="18",
	pos={	421,		14,	},
},

{	str="",
	img_n="sui/common/btn_1.png",
	parent="panel_tj_3",
	class="STextButton",
	zOrder=1,		pos={	651,		13,	},
	name="copy_46",
	child={
{	str="领取赏金",
	name="label_34",
	align=1,		parent="copy_46",
	class="SLabel",
	fontsize="24",
	pos={	24,		15,	},
},
},
	fontsize="24",
	align=1,		isVisible=false,
	size={
"144",

"60",
},
},

{	img_n="sui/reward/yilingqu3.png",
	flip={	false,		false,	},
	parent="panel_tj_3",
	class="SImage",
	is_nine=false,
	name="img_26",
	size={	"116",
	"45",
},
	isVisible=false,
	zOrder=1,		pos={	666,		19,	},
},

{	img_n="",
	flip={	false,		false,	},
	parent="panel_tj_3",
	class="SPanel",
	is_nine=false,
	name="panel_14",
	pos={	"632",
	"24",
},
	zOrder=1,		child={
{	str="目标",
	name="label_18",
	align="1",
	parent="panel_14",
	class="SLabel",
	fontsize="20",
	pos={	39,		8,	},
},

{	img_n="icon/item/28102.pd",
	flip={	false,		false,	},
	parent="panel_14",
	class="SImage",
	is_nine=false,
	name="img_6",
	pos={	"0",
	"0",
},
	zOrder=1,		size={	"37",
	"37",
},
},
},
	size={
"180",

"37",
},
},

{	img_n="sui/common/huobi_yuanbao.png",
	flip={	false,		false,	},
	parent="panel_tj_3",
	class="SImage",
	is_nine=false,
	name="img_1",
	pos={	373,		2,	},
	zOrder=1,		size={	"45",
	"45",
},
},

{	img_n="sui/common/roleImage.png",
	flip={	false,		false,	},
	parent="panel_tj_3",
	class="SImage",
	is_nine=false,
	name="yj_tisi",
	size={	"297",
	"342",
},
	child={
{	img_n="sui/common/qipao.png",
	flip={	false,		false,	},
	parent="yj_tisi",
	class="SImage",
	is_nine=true,
	name="img_3",
	pos={	"230",
	"230",
},
	zOrder=1,		child={
{	str="#ca45f21您暂无接取任何通缉榜单哦~",
	name="label_32",
	parent="img_3",
	align="2",
	class="SLabel",
	fontsize="16",
	pos={	"140",
	"56",
},
},
},
	size={
"300",

"105",
},
},
},
	zOrder=10,		pos={
300,	
75,	},
},
},
	pos={
"13",

"8",
},
},

{	img_n="sui/common/panel11.png",
	flip={	false,		false,	},
	parent="panel_tj",
	class="SPanel",
	is_nine=true,
	pos={	"13",
	"8",
},
	name="panel_tj_4",
	child={
{	img_n="sui/common/panel11.png",
	flip={	false,		false,	},
	parent="panel_tj_4",
	class="SPanel",
	is_nine=true,
	name="copy_37",
	pos={	"3",
	"4",
},
	zOrder=1,		child={
{	img_n="",
	parent="copy_37",
	class="SScroll",
	is_nine=true,
	name="scroll_4",
	pos={	"5",
	"5",
},
	zOrder=1,		scroll_type=2,		isVisible=false,
	size={	"276",
	"415",
},
},

{	str="#c4D2E0D已发列表",
	name="label_26",
	align="2",
	parent="copy_37",
	class="SLabel",
	fontsize="24",
	pos={	"143",
	"422",
},
},

{	img_n="sui/common/division_9.png",
	flip={	false,		false,	},
	parent="copy_37",
	class="SImage",
	is_nine=false,
	name="img_27",
	size={	"40",
	"15",
},
	zOrder=1,		pos={	"37",
	"429",
},
},

{	img_n="sui/common/division_9.png",
	flip={	true,		false,	},
	parent="copy_37",
	class="SImage",
	is_nine=false,
	name="img_28",
	size={	"40",
	"15",
},
	zOrder=1,		pos={	"208",
	"428",
},
},
},
	isVisible=false,
	size={
"286",

"455",
},
},

{	img_n="sui/common/division_07.png",
	flip={	true,		false,	},
	parent="panel_tj_4",
	class="SImage",
	is_nine=false,
	name="img_9",
	pos={	"624",
	"430",
},
	zOrder=2,		size={	"78",
	"15",
},
},

{	img_n="sui/common/division_07.png",
	flip={	false,		false,	},
	parent="panel_tj_4",
	class="SImage",
	is_nine=false,
	name="copy_38",
	size={	"78",
	"15",
},
	zOrder=2,		pos={	"405",
	"430",
},
},

{	img_n="sui/common/role_bg2.png",
	flip={	false,		false,	},
	child={
{	img_n="",
	flip={	false,		false,	},
	parent="img_11",
	class="SImage",
	is_nine=false,
	name="img_412",
	pos={	2,		38,	},
	zOrder=1,		isVisible=false,
	child={},
	size={
"180",

"260",
},
},

{	img_n="sui/wanted/ybjq.png",
	flip={	false,		false,	},
	parent="img_11",
	class="SImage",
	is_nine=false,
	name="img_22",
	size={	"73",
	"73",
},
	zOrder=1,		pos={	266,		211,	},
},

{	str="#c4D2E0D江洋大盗",
	name="label_27",
	align=1,		parent="img_11",
	class="SLabel",
	fontsize="24",
	pos={	"50",
	"305",
},
},
},
	class="SImage",
	is_nine=false,
	name="img_11",
	pos={
"455",

"118",
},
	zOrder=1,		parent="panel_tj_4",
	size={
"219",

"255",
},
},

{	str="我是名字",
	name="label_417",
	parent="panel_tj_4",
	align="2",
	class="SLabel",
	fontsize="20",
	pos={	342,		140,	},
},

{	str="#c643f17剩余时间",
	name="label_424",
	parent="panel_tj_4",
	align=1,		class="SLabel",
	fontsize="18",
	pos={	"654",
	"130",
},
},

{	str="#c643f17战力限制",
	name="copy_439",
	align=1,		parent="panel_tj_4",
	class="SLabel",
	fontsize="18",
	pos={	"653",
	"98",
},
},

{	str="#c773c15--:--",
	name="copy_440",
	align=1,		parent="panel_tj_4",
	class="SLabel",
	fontsize="18",
	pos={	739,		129.5,	},
},

{	str="",
	name="copy_441",
	parent="panel_tj_4",
	align=1,		class="SLabel",
	fontsize="18",
	pos={	721,		97.5,	},
},

{	img_n="sui/common/line12.png",
	flip={	false,		false,	},
	parent="panel_tj_4",
	class="SImage",
	is_nine=false,
	name="img_13",
	pos={	"313",
	"84",
},
	zOrder=1,		size={	"514",
	"4",
},
},

{	str="#c643f17赏金",
	name="copy_442",
	align=1,		parent="panel_tj_4",
	class="SLabel",
	fontsize="18",
	pos={	417,		33,	},
},

{	img_n="sui/common/huobi_yupei.png",
	flip={	false,		false,	},
	parent="panel_tj_4",
	class="SImage",
	is_nine=false,
	name="img_414",
	pos={	463,		21,	},
	zOrder=1,		size={	"45",
	"45",
},
},

{	str="#c8d440812",
	name="copy_444",
	parent="panel_tj_4",
	align=1,		class="SLabel",
	fontsize="20",
	pos={	515,		31,	},
},

{	img_n="sui/common/huobi_yuanbao.png",
	flip={	false,		false,	},
	parent="panel_tj_4",
	class="SImage",
	is_nine=false,
	name="img_2",
	pos={	590,		21,	},
	zOrder=1,		size={	"45",
	"45",
},
},

{	str="#c8d4408123456789",
	name="label_29",
	parent="panel_tj_4",
	align=1,		class="SLabel",
	fontsize="20",
	pos={	640,		31,	},
},

{	img_n="sui/common/roleImage.png",
	flip={	false,		false,	},
	parent="panel_tj_4",
	class="SImage",
	is_nine=false,
	name="yf_tisi",
	size={	"297",
	"342",
},
	child={
{	img_n="sui/common/qipao.png",
	flip={	false,		false,	},
	parent="yf_tisi",
	class="SImage",
	is_nine=true,
	name="img_21",
	size={	"280",
	"105",
},
	child={
{	str="#ca45f21您暂无任何已发榜单哦~",
	name="label_33",
	align="2",
	parent="img_21",
	class="SLabel",
	fontsize="16",
	pos={	140,		56,	},
},
},
	zOrder=1,		pos={
"230",

"230",
},
},
},
	zOrder=1,		pos={
300,	
75,	},
},
},
	zOrder=2,		isVisible=false,
	auto_load="0",
	size={
"836",

"463",
},
},
},
	zOrder=1,		auto_load="0",
	isVisible=false,
	size={
"860",

"530",
},
},
},
	zOrder=5,		pos={
"24",

"12",
},
},

{	img_n="",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=false,
	name="panel_10",
	size={	"80",
	"400",
},
	child={
{	img_n="sui/common/menu_line.png",
	flip={	false,		false,	},
	parent="panel_10",
	class="SImage",
	is_nine=false,
	name="img_23",
	size={	"3",
	"28",
},
	zOrder=1,		pos={	25,		86,	},
},

{	img_n="sui/common/menu_line.png",
	flip={	false,		false,	},
	parent="panel_10",
	class="SImage",
	is_nine=false,
	name="copy_1",
	pos={	25,		191,	},
	zOrder=1,		size={	"3",
	"28",
},
},

{	img_n="sui/common/menu_line.png",
	flip={	false,		false,	},
	parent="panel_10",
	class="SImage",
	is_nine=false,
	name="copy_4",
	pos={	25,		285,	},
	zOrder=1,		size={	"3",
	"28",
},
},
},
	zOrder=1,		isVisible=true,
	pos={
900,	
184,	},
},

{	img_n="sui/common/close.png",
	name="btn_close",
	pos={	837,		557,	},
	parent="win_root",
	class="SButton",
	zOrder=50,		size={	"66",
	"75",
},
},

{	img_n="",
	parent="win_root",
	class="SRadioButtonGroup",
	is_nine=true,
	name="groupbtn_1",
	size={	"80",
	"420",
},
	child={
{	img_n="sui/common/menu_right_n.png",
	parent="groupbtn_1",
	class="SRadioButton",
	zOrder=1,		img_s="sui/common/menu_right_s.png",
	name="radiobtn_1",
	size={	"67",
	"108",
},
	child={},
	pos={
"0",

"285",
},
},

{	img_n="sui/common/menu_right_n.png",
	parent="groupbtn_1",
	class="SRadioButton",
	zOrder=1,		img_s="sui/common/menu_right_s.png",
	name="radiobtn_2",
	size={	"67",
	"108",
},
	child={},
	pos={
"0",

"190",
},
},

{	img_n="sui/common/menu_right_n.png",
	parent="groupbtn_1",
	class="SRadioButton",
	zOrder=1,		img_s="sui/common/menu_right_s.png",
	name="radiobtn_3",
	size={	"67",
	"108",
},
	child={},
	pos={
0,	
95,	},
},

{	img_s="sui/common/menu_right_s.png",
	img_n="sui/common/menu_right_n.png",
	name="radiobtn_4",
	pos={	"0",
	"0",
},
	parent="groupbtn_1",
	class="SRadioButton",
	zOrder=1,		size={	"67",
	"108",
},
},
},
	zOrder=2,		pos={
900,	
184,	},
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
