contact_win = {
	img_n="",
	child={
{	img_n="sui/common/win_panel.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=true,
	name="panel_1",
	size={	"913",
	"605",
},
	zOrder=1,		child={
{	img_n="",
	flip={	false,		false,	},
	parent="panel_1",
	class="SPanel",
	is_nine=true,
	size={	"860",
	"525",
},
	name="panel_team",
	zOrder=1,		child={
{	img_n="",
	flip={	false,		false,	},
	parent="panel_team",
	class="SPanel",
	is_nine=true,
	name="panel_team_mine",
	pos={	"0",
	"0",
},
	zOrder=1,		child={
{	str="",
	img_n="sui/common/btn_1.png",
	parent="panel_team_mine",
	class="STextButton",
	zOrder=1,		name="tbtn_follow",
	pos={	9,		-2,	},
	fontsize="24",
	align=1,		child={
{	img_n="sui/btn_name/gensuiduizhang.png",
	flip={	false,		false,	},
	parent="tbtn_follow",
	class="SImage",
	is_nine=false,
	name="img_gsdz",
	size={	"96",
	"25",
},
	zOrder=1,		pos={	23,		18,	},
},
},
	size={
"144",

"60",
},
},

{	str="",
	img_n="sui/common/btn_1.png",
	parent="panel_team_mine",
	class="STextButton",
	zOrder=1,		pos={	10,		-3,	},
	fontsize="24",
	name="tbtn_call",
	align=1,		isVisible=false,
	child={
{	img_n="sui/btn_name/zhaohuanduiyou.png",
	flip={	false,		false,	},
	parent="tbtn_call",
	class="SImage",
	is_nine=false,
	name="img_39",
	size={	"96",
	"25",
},
	zOrder=1,		pos={	23,		18,	},
},
},
	size={
"144",

"60",
},
},

{	str="",
	img_n="sui/common/btn2_s.png",
	parent="panel_team_mine",
	class="STextButton",
	zOrder=1,		name="tbtn_diss",
	size={	"144",
	"60",
},
	align=1,		fontsize="24",
	child={
{	img_n="sui/btn_name/jiesanduiwu.png",
	flip={	false,		false,	},
	parent="tbtn_diss",
	class="SImage",
	is_nine=false,
	name="img_40",
	size={	"96",
	"25",
},
	zOrder=1,		pos={	23,		18,	},
},
},
	pos={
362,	
-2,	},
},

{	str="",
	img_n="sui/common/btn_1.png",
	parent="panel_team_mine",
	class="STextButton",
	zOrder=1,		name="tbtn_create",
	pos={	"715",
	"-2",
},
	fontsize="24",
	align=1,		child={
{	img_n="sui/btn_name/chuangjianduiwu.png",
	flip={	false,		false,	},
	parent="tbtn_create",
	class="SImage",
	is_nine=false,
	name="img_42",
	size={	"96",
	"25",
},
	zOrder=1,		pos={	24,		18,	},
},
},
	size={
"144",

"60",
},
},

{	str="",
	img_n="sui/common/btn2_n.png",
	parent="panel_team_mine",
	class="STextButton",
	zOrder=1,		name="tbtn_leave",
	pos={	714,		-3,	},
	fontsize="24",
	align=1,		child={
{	img_n="sui/btn_name/likaiduiwu.png",
	flip={	false,		false,	},
	parent="tbtn_leave",
	class="SImage",
	is_nine=false,
	name="img_41",
	size={	"96",
	"25",
},
	zOrder=1,		pos={	23,		18,	},
},
},
	size={
"144",

"60",
},
},

{	img_n="sui/common/panel2.png",
	flip={	false,		false,	},
	parent="panel_team_mine",
	class="SPanel",
	is_nine=true,
	name="panel_4",
	size={	"845",
	"416",
},
	child={
{	img_n="sui/contact/friendTitleBg.png",
	flip={	false,		false,	},
	parent="panel_4",
	class="SPanel",
	is_nine=true,
	name="panel_duiyuan",
	pos={	1,		382,	},
	isVisible=false,
	zOrder=1,		child={
{	str="#c986a34队员名称",
	name="label_7",
	parent="panel_duiyuan",
	align=1,		class="SLabel",
	fontsize=16,		pos={	96,		6.5,	},
},

{	str="#c986a34职业",
	name="label_8",
	parent="panel_duiyuan",
	align=1,		class="SLabel",
	fontsize=16,		pos={	"306",
	"6",
},
},

{	str="#c986a34操作",
	name="label_9",
	parent="panel_duiyuan",
	align=1,		class="SLabel",
	fontsize=16,		pos={	"743",
	"6",
},
},

{	str="#c986a34等级",
	name="label_10",
	parent="panel_duiyuan",
	align=1,		class="SLabel",
	fontsize=16,		pos={	"455",
	"6",
},
},

{	str="#c986a34战力",
	name="label_11",
	parent="panel_duiyuan",
	align=1,		class="SLabel",
	fontsize=16,		pos={	"603",
	"6",
},
},

{	img_n="sui/contact/straightString.png",
	flip={	false,		false,	},
	parent="panel_duiyuan",
	class="SPanel",
	is_nine=false,
	name="panel_7",
	size={	"5",
	"31",
},
	zOrder=1,		pos={	259,		1,	},
},

{	img_n="sui/contact/straightString.png",
	flip={	false,		false,	},
	parent="panel_duiyuan",
	class="SPanel",
	is_nine=false,
	name="copy_2",
	pos={	386,		1,	},
	zOrder=1,		size={	"5",
	"31",
},
},

{	img_n="sui/contact/straightString.png",
	flip={	false,		false,	},
	parent="panel_duiyuan",
	class="SPanel",
	is_nine=false,
	name="copy_3",
	size={	"5",
	"31",
},
	zOrder=1,		pos={	554,		1,	},
},

{	img_n="sui/contact/straightString.png",
	flip={	false,		false,	},
	parent="panel_duiyuan",
	class="SPanel",
	is_nine=false,
	name="copy_4",
	pos={	"680",
	"1",
},
	zOrder=1,		size={	"5",
	"31",
},
},
},
	size={
"843",

"33",
},
},

{	str="#ca174333/3",
	name="lbl_page_num",
	parent="panel_4",
	align=1,		class="SLabel",
	fontsize=16,		pos={	417,		5.5,	},
},

{	img_n="",
	parent="panel_4",
	class="SScroll",
	is_nine=true,
	pos={	1,		2,	},
	scroll_type=2,		zOrder=1,		child={},
	name="panel_team_team",
	isVisible=false,
	size={
"845",

"378",
},
},

{	img_n="sui/common/roleImage.png",
	flip={	false,		false,	},
	parent="panel_4",
	class="SPanel",
	is_nine=false,
	name="panel_duiwu_body",
	pos={	45,		38,	},
	isVisible=true,
	zOrder=1,		size={	"200",
	"241",
},
},

{	img_n="sui/contact/talk_pop.png",
	flip={	false,		false,	},
	parent="panel_4",
	class="SPanel",
	is_nine=false,
	name="panel_duiwu_1",
	pos={	255,		157,	},
	zOrder=1,		child={
{	str="#ca45f21你还未加入队伍哦！快去创建属于自己",
	name="label_17",
	parent="panel_duiwu_1",
	align=1,		class="SLabel",
	fontsize="16",
	pos={	85,		98.5,	},
},

{	str="#ca45f21的队伍吧！",
	name="label_19",
	parent="panel_duiwu_1",
	align=1,		class="SLabel",
	fontsize="16",
	pos={	86,		58.5,	},
},
},
	size={
"425",

"179",
},
},
},
	zOrder=1,		isVisible=false,
	pos={
10,	
59,	},
},
},
	isVisible=true,
	size={
"855",

"475",
},
},

{	img_n="",
	parent="panel_team",
	class="SRadioButtonGroup",
	is_nine=true,
	name="groupbtn_3",
	pos={	2,		474,	},
	zOrder=1,		child={
{	img_n="sui/common/btn_n.png",
	parent="groupbtn_3",
	class="SRadioButton",
	zOrder=1,		img_s="sui/common/btn_s.png",
	name="team_rbtns_1",
	pos={	"10",
	"0",
},
	child={},
	size={
"141",

"44",
},
},

{	img_n="sui/common/btn_n.png",
	parent="groupbtn_3",
	class="SRadioButton",
	zOrder=1,		img_s="sui/common/btn_s.png",
	name="team_rbtns_2",
	pos={	147,		0,	},
	child={},
	size={
"141",

"44",
},
},

{	img_n="sui/common/btn_n.png",
	parent="groupbtn_3",
	class="SRadioButton",
	zOrder=1,		img_s="sui/common/btn_s.png",
	name="team_rbtns_3",
	pos={	284,		0,	},
	child={},
	size={
"141",

"44",
},
},

{	img_s="sui/common/btn_s.png",
	img_n="sui/common/btn_n.png",
	name="team_rbtns_4",
	pos={	421,		0,	},
	parent="groupbtn_3",
	class="SRadioButton",
	zOrder=1,		size={	"141",
	"44",
},
},
},
	size={
"600",

"44",
},
},

{	img_n="",
	flip={	false,		false,	},
	parent="panel_team",
	class="SPanel",
	is_nine=true,
	name="panel_team_abteam",
	size={	"855",
	"475",
},
	child={
{	img_n="sui/common/panel2.png",
	flip={	false,		false,	},
	child={
{	img_n="sui/contact/friendTitleBg.png",
	flip={	false,		false,	},
	parent="panel_4",
	class="SPanel",
	is_nine=true,
	name="panel_3",
	size={	"843",
	"33",
},
	child={
{	str="#c986a34队长名称",
	name="label_7",
	align=1,		parent="panel_3",
	class="SLabel",
	fontsize=16,		pos={	96,		6.5,	},
},

{	str="#c986a34等级",
	name="label_8",
	align=1,		parent="panel_3",
	class="SLabel",
	fontsize=16,		pos={	"455",
	"6",
},
},

{	str="#c986a34职业",
	name="label_9",
	align=1,		parent="panel_3",
	class="SLabel",
	fontsize=16,		pos={	"306",
	"6",
},
},

{	str="#c986a34战力",
	name="label_10",
	align=1,		parent="panel_3",
	class="SLabel",
	fontsize=16,		pos={	"603",
	"6",
},
},

{	str="#c986a34操作",
	name="label_11",
	align=1,		parent="panel_3",
	class="SLabel",
	fontsize=16,		pos={	"743",
	"6",
},
},

{	img_n="sui/contact/straightString.png",
	flip={	false,		false,	},
	parent="panel_3",
	class="SPanel",
	is_nine=false,
	name="panel_8",
	size={	"5",
	"31",
},
	zOrder=1,		pos={	"259",
	"2",
},
},

{	img_n="sui/contact/straightString.png",
	flip={	false,		false,	},
	parent="panel_3",
	class="SPanel",
	is_nine=false,
	name="copy_6",
	pos={	"386",
	"1",
},
	zOrder=1,		size={	"5",
	"31",
},
},

{	img_n="sui/contact/straightString.png",
	flip={	false,		false,	},
	parent="panel_3",
	class="SPanel",
	is_nine=false,
	name="copy_7",
	size={	"5",
	"31",
},
	zOrder=1,		pos={	554,		1,	},
},

{	img_n="sui/contact/straightString.png",
	flip={	false,		false,	},
	parent="panel_3",
	class="SPanel",
	is_nine=false,
	name="copy_8",
	pos={	"680",
	"0",
},
	zOrder=1,		size={	"5",
	"31",
},
},
},
	zOrder=1,		isVisible=false,
	pos={
1,	
441,	},
},

{	img_n="",
	parent="panel_4",
	class="SScroll",
	is_nine=true,
	size={	"840",
	"437",
},
	name="panel_team_scroll",
	scroll_type=2,		child={},
	zOrder=1,		isVisible=false,
	pos={
2,	
2,	},
},
},
	class="SPanel",
	is_nine=true,
	name="panel_4",
	pos={
"10",

"0",
},
	zOrder=1,		parent="panel_team_abteam",
	isVisible=false,
	size={
"845",

"475",
},
},
},
	zOrder=1,		isVisible=false,
	pos={
"0",

"0",
},
},

{	img_n="",
	flip={	false,		false,	},
	parent="panel_team",
	class="SPanel",
	is_nine=true,
	name="panel_team_abplayer",
	pos={	"0",
	"0",
},
	zOrder=1,		child={
{	img_n="sui/common/panel2.png",
	flip={	false,		false,	},
	child={
{	img_n="sui/contact/friendTitleBg.png",
	flip={	false,		false,	},
	parent="panel_4",
	class="SPanel",
	is_nine=true,
	name="panel_3",
	pos={	1,		441,	},
	zOrder=1,		child={
{	str="#c986a34名称",
	name="label_7",
	parent="panel_3",
	align=1,		class="SLabel",
	fontsize=16,		pos={	116,		6.5,	},
},

{	str="#c986a34等级",
	name="label_8",
	parent="panel_3",
	align=1,		class="SLabel",
	fontsize=16,		pos={	"455",
	"6",
},
},

{	str="#c986a34职业",
	name="label_9",
	parent="panel_3",
	align=1,		class="SLabel",
	fontsize=16,		pos={	"306",
	"6",
},
},

{	str="#c986a34战力",
	name="label_10",
	parent="panel_3",
	align=1,		class="SLabel",
	fontsize=16,		pos={	"603",
	"6",
},
},

{	str="#c986a34操作",
	name="label_11",
	parent="panel_3",
	align=1,		class="SLabel",
	fontsize=16,		pos={	"743",
	"6",
},
},

{	img_n="sui/contact/straightString.png",
	flip={	false,		false,	},
	parent="panel_3",
	class="SPanel",
	is_nine=false,
	name="panel_9",
	pos={	"259",
	"1",
},
	zOrder=1,		size={	"5",
	"31",
},
},

{	img_n="sui/contact/straightString.png",
	flip={	false,		false,	},
	parent="panel_3",
	class="SPanel",
	is_nine=false,
	name="copy_5",
	size={	"5",
	"31",
},
	zOrder=1,		pos={	"386",
	"1",
},
},

{	img_n="sui/contact/straightString.png",
	flip={	false,		false,	},
	parent="panel_3",
	class="SPanel",
	is_nine=false,
	name="copy_9",
	pos={	"554",
	"1",
},
	zOrder=1,		size={	"5",
	"31",
},
},

{	img_n="sui/contact/straightString.png",
	flip={	false,		false,	},
	parent="panel_3",
	class="SPanel",
	is_nine=false,
	name="copy_10",
	size={	"5",
	"31",
},
	zOrder=1,		pos={	"680",
	"1",
},
},
},
	size={
"843",

"33",
},
},

{	img_n="",
	parent="panel_4",
	class="SScroll",
	is_nine=true,
	pos={	2,		2,	},
	name="panel_player_scroll",
	isVisible=false,
	zOrder=1,		child={},
	scroll_type=2,		size={
"840",

"437",
},
},
},
	class="SPanel",
	is_nine=true,
	name="panel_4",
	size={
"845",

"475",
},
	parent="panel_team_abplayer",
	zOrder=1,		isVisible=false,
	pos={
"10",

"0",
},
},
},
	isVisible=false,
	size={
"855",

"475",
},
},

{	img_n="sui/common/panel2.png",
	flip={	false,		false,	},
	parent="panel_team",
	class="SPanel",
	is_nine=true,
	name="team_invate_page",
	size={	"845",
	"475",
},
	isVisible=true,
	zOrder=20,		child={
{	img_n="sui/contact/friendTitleBg.png",
	flip={	false,		false,	},
	parent="team_invate_page",
	class="SPanel",
	is_nine=true,
	name="panel_13",
	size={	"843",
	"33",
},
	child={
{	img_n="sui/contact/straightString.png",
	flip={	false,		false,	},
	parent="panel_13",
	class="SImage",
	is_nine=false,
	name="img_43",
	size={	"5",
	"31",
},
	zOrder=1,		pos={	"259",
	"1",
},
},

{	img_n="sui/contact/straightString.png",
	flip={	false,		false,	},
	parent="panel_13",
	class="SImage",
	is_nine=false,
	name="img_44",
	size={	"5",
	"31",
},
	zOrder=1,		pos={	"386",
	"1",
},
},

{	img_n="sui/contact/straightString.png",
	flip={	false,		false,	},
	parent="panel_13",
	class="SImage",
	is_nine=false,
	name="img_45",
	size={	"5",
	"31",
},
	zOrder=1,		pos={	"554",
	"1",
},
},

{	img_n="sui/contact/straightString.png",
	flip={	false,		false,	},
	parent="panel_13",
	class="SImage",
	is_nine=false,
	name="img_46",
	size={	"5",
	"31",
},
	zOrder=1,		pos={	"680",
	"1",
},
},

{	str="#c986a34名称",
	name="label_1",
	align=1,		parent="panel_13",
	class="SLabel",
	fontsize=16,		pos={	"116",
	"6",
},
},

{	str="#c986a34职业",
	name="label_2",
	align=1,		parent="panel_13",
	class="SLabel",
	fontsize=16,		pos={	"306",
	"6",
},
},

{	str="#c986a34等级",
	name="label_3",
	align=1,		parent="panel_13",
	class="SLabel",
	fontsize=16,		pos={	"455",
	"6",
},
},

{	str="#c986a34战力",
	name="label_4",
	align=1,		parent="panel_13",
	class="SLabel",
	fontsize=16,		pos={	"603",
	"6",
},
},

{	str="#c986a34操作",
	name="label_5",
	align=1,		parent="panel_13",
	class="SLabel",
	fontsize=16,		pos={	"743",
	"6",
},
},
},
	zOrder=1,		isVisible=false,
	pos={
"1",

"441",
},
},

{	img_n="",
	parent="team_invate_page",
	class="SScroll",
	is_nine=true,
	scroll_type=2,		pos={	"2",
	"2",
},
	zOrder=1,		isVisible=false,
	name="invate_scroll",
	size={	"840",
	"437",
},
},
},
	pos={
"10",

"0",
},
},
},
	auto_load="0",
	isVisible=false,
	pos={
"25",

"25",
},
},

{	img_n="",
	flip={	false,		false,	},
	parent="panel_1",
	class="SPanel",
	is_nine=true,
	pos={	"25",
	"25",
},
	name="panel_friend",
	auto_load="0",
	child={
{	img_n="",
	parent="panel_friend",
	class="SRadioButtonGroup",
	is_nine=true,
	name="groupbtn_2",
	size={	"720",
	"50",
},
	child={
{	img_n="sui/common/btn_n.png",
	parent="groupbtn_2",
	class="SRadioButton",
	zOrder=1,		img_s="sui/common/btn_s.png",
	name="radiobtn_4",
	size={	"141",
	"44",
},
	child={},
	pos={
0,	
0,	},
},

{	img_n="sui/common/btn_n.png",
	parent="groupbtn_2",
	class="SRadioButton",
	zOrder=1,		img_s="sui/common/btn_s.png",
	name="radiobtn_5",
	size={	"141",
	"44",
},
	child={},
	isVisible=true,
	pos={
137,	
0,	},
},

{	img_n="sui/common/btn_n.png",
	parent="groupbtn_2",
	class="SRadioButton",
	zOrder=1,		img_s="sui/common/btn_s.png",
	name="radiobtn_6",
	size={	"141",
	"44",
},
	child={},
	pos={
274,	
0,	},
},

{	img_n="sui/common/btn_n.png",
	parent="groupbtn_2",
	class="SRadioButton",
	zOrder=1,		img_s="sui/common/btn_s.png",
	name="radiobtn_7",
	size={	"141",
	"44",
},
	child={},
	pos={
411,	
0,	},
},

{	img_n="sui/common/btn_n.png",
	parent="groupbtn_2",
	class="SRadioButton",
	zOrder=1,		img_s="sui/common/btn_s.png",
	name="radiobtn_8",
	size={	"141",
	"44",
},
	child={},
	pos={
548,	
0,	},
},
},
	zOrder=1,		isVisible=false,
	pos={
12,	
474,	},
},

{	img_n="sui/common/panel2.png",
	flip={	false,		false,	},
	parent="panel_friend",
	class="SPanel",
	is_nine=true,
	name="friend_page",
	size={	"845",
	"416",
},
	isVisible=false,
	child={
{	img_n="sui/contact/friendTitleBg.png",
	flip={	false,		false,	},
	parent="friend_page",
	class="SImage",
	is_nine=true,
	name="img_1",
	pos={	1,		382,	},
	zOrder=1,		child={
{	img_n="sui/contact/straightString.png",
	flip={	false,		false,	},
	parent="img_1",
	class="SImage",
	is_nine=false,
	name="img_2",
	size={	"5",
	"31",
},
	zOrder=1,		pos={	"259",
	"1",
},
},

{	img_n="sui/contact/straightString.png",
	flip={	false,		false,	},
	parent="img_1",
	class="SImage",
	is_nine=false,
	name="img_5",
	size={	"5",
	"31",
},
	zOrder=1,		pos={	"386",
	"1",
},
},

{	img_n="sui/contact/straightString.png",
	flip={	false,		false,	},
	parent="img_1",
	class="SImage",
	is_nine=false,
	name="img_6",
	size={	"5",
	"31",
},
	zOrder=1,		pos={	"554",
	"1",
},
},

{	img_n="sui/contact/straightString.png",
	flip={	false,		false,	},
	parent="img_1",
	class="SImage",
	is_nine=false,
	name="img_7",
	size={	"5",
	"31",
},
	zOrder=1,		pos={	"680",
	"1",
},
},

{	str="#c986a34名称",
	name="label_44",
	align=1,		parent="img_1",
	class="SLabel",
	fontsize=16,		pos={	112,		6,	},
},

{	str="#c986a34等级",
	name="label_45",
	align=1,		parent="img_1",
	class="SLabel",
	fontsize=16,		pos={	306,		6,	},
},

{	str="#c986a34亲密度等级",
	name="label_46",
	align=1,		parent="img_1",
	class="SLabel",
	fontsize=16,		pos={	428,		6,	},
},

{	str="#c986a34状态",
	name="label_47",
	align=1,		parent="img_1",
	class="SLabel",
	fontsize=16,		pos={	603,		6,	},
},

{	str="#c986a34操作",
	name="label_48",
	align=1,		parent="img_1",
	class="SLabel",
	fontsize=16,		pos={	743,		6,	},
},
},
	size={
"843",

"33",
},
},

{	str="好友数量：0/99",
	name="label_12",
	parent="friend_page",
	align="2",
	class="SLabel",
	fontsize=16,		pos={	412,		-40,	},
},
},
	zOrder=2,		pos={
"10",

"59",
},
},

{	img_n="sui/common/panel2.png",
	flip={	false,		false,	},
	parent="panel_friend",
	class="SPanel",
	is_nine=true,
	name="recommondPage",
	pos={	"10",
	"59",
},
	child={
{	img_n="sui/contact/friendTitleBg.png",
	flip={	false,		false,	},
	parent="recommondPage",
	class="SImage",
	is_nine=true,
	name="img_8",
	size={	"843",
	"33",
},
	child={
{	str="#c986a34名称",
	isVisible=true,
	name="label_24",
	parent="img_8",
	align=1,		class="SLabel",
	fontsize=16,		pos={	112,		6,	},
},

{	str="#c986a34职业",
	name="label_25",
	parent="img_8",
	align=1,		class="SLabel",
	fontsize=16,		pos={	306,		6,	},
},

{	str="#c986a34等级",
	isVisible=true,
	name="label_26",
	parent="img_8",
	align=1,		class="SLabel",
	fontsize=16,		pos={	455,		6,	},
},

{	str="#c986a34战力",
	name="label_27",
	parent="img_8",
	align="1",
	class="SLabel",
	fontsize=16,		pos={	603,		6,	},
},

{	str="#c90581f操作",
	name="label_28",
	parent="img_8",
	align=1,		class="SLabel",
	fontsize=16,		pos={	743,		6,	},
},

{	img_n="sui/contact/straightString.png",
	flip={	false,		false,	},
	parent="img_8",
	class="SImage",
	is_nine=false,
	name="img_9",
	size={	"5",
	"31",
},
	zOrder=1,		pos={	"259",
	"1",
},
},

{	img_n="sui/contact/straightString.png",
	flip={	false,		false,	},
	parent="img_8",
	class="SImage",
	is_nine=false,
	name="img_10",
	size={	"5",
	"31",
},
	zOrder=1,		pos={	"386",
	"1",
},
},

{	img_n="sui/contact/straightString.png",
	flip={	false,		false,	},
	parent="img_8",
	class="SImage",
	is_nine=false,
	name="img_11",
	size={	"5",
	"31",
},
	zOrder=1,		pos={	"554",
	"1",
},
},

{	img_n="sui/contact/straightString.png",
	flip={	false,		false,	},
	parent="img_8",
	class="SImage",
	is_nine=false,
	name="img_12",
	size={	"5",
	"31",
},
	zOrder=1,		pos={	"680",
	"1",
},
},
},
	zOrder=1,		pos={
"1",

"382",
},
},
},
	zOrder=2,		isVisible=false,
	size={
"845",

"416",
},
},

{	img_n="sui/common/panel2.png",
	flip={	false,		false,	},
	parent="panel_friend",
	class="SPanel",
	is_nine=true,
	name="friend_apply_page",
	pos={	"10",
	"59",
},
	child={
{	img_n="sui/contact/friendTitleBg.png",
	flip={	false,		false,	},
	parent="friend_apply_page",
	class="SImage",
	is_nine=true,
	name="img_23",
	size={	"843",
	"33",
},
	isVisible=false,
	child={
{	str="#c986a34名称",
	name="label_29",
	parent="img_23",
	align=1,		class="SLabel",
	fontsize=16,		pos={	112,		6,	},
},

{	str="#c986a34职业",
	name="label_30",
	parent="img_23",
	align=1,		class="SLabel",
	fontsize=16,		pos={	306,		6,	},
},

{	str="#c986a34等级",
	name="label_31",
	parent="img_23",
	align=1,		class="SLabel",
	fontsize=16,		pos={	455,		6,	},
},

{	str="#c986a34战力",
	name="label_32",
	parent="img_23",
	align=1,		class="SLabel",
	fontsize=16,		pos={	603,		6,	},
},

{	str="#c986a34操作",
	name="label_33",
	parent="img_23",
	align=1,		class="SLabel",
	fontsize=16,		pos={	743,		6,	},
},

{	img_n="sui/contact/straightString.png",
	flip={	false,		false,	},
	parent="img_23",
	class="SImage",
	is_nine=false,
	name="img_24",
	size={	"5",
	"31",
},
	zOrder=1,		pos={	"259",
	"1",
},
},

{	img_n="sui/contact/straightString.png",
	flip={	false,		false,	},
	parent="img_23",
	class="SImage",
	is_nine=false,
	name="img_25",
	size={	"5",
	"31",
},
	zOrder=1,		pos={	"386",
	"1",
},
},

{	img_n="sui/contact/straightString.png",
	flip={	false,		false,	},
	parent="img_23",
	class="SImage",
	is_nine=false,
	name="img_26",
	size={	"5",
	"31",
},
	zOrder=1,		pos={	"554",
	"1",
},
},

{	img_n="sui/contact/straightString.png",
	flip={	false,		false,	},
	parent="img_23",
	class="SImage",
	is_nine=false,
	name="img_27",
	size={	"5",
	"31",
},
	zOrder=1,		pos={	"680",
	"1",
},
},
},
	zOrder=1,		pos={
1,	
382,	},
},
},
	zOrder=2,		isVisible=false,
	size={
"845",

"416",
},
},

{	img_n="sui/common/panel2.png",
	flip={	false,		false,	},
	parent="panel_friend",
	class="SPanel",
	is_nine=true,
	name="black_page",
	pos={	"10",
	"59",
},
	child={
{	img_n="sui/contact/friendTitleBg.png",
	flip={	false,		false,	},
	parent="black_page",
	class="SImage",
	is_nine=true,
	name="img_13",
	size={	"843",
	"33",
},
	child={
{	str="#c986a34名称",
	name="label_34",
	parent="img_13",
	align=1,		class="SLabel",
	fontsize=16,		pos={	112,		6,	},
},

{	str="#c986a34职业",
	name="label_35",
	parent="img_13",
	align=1,		class="SLabel",
	fontsize=16,		pos={	306,		6,	},
},

{	str="#c986a34等级",
	name="label_36",
	parent="img_13",
	align=1,		class="SLabel",
	fontsize=16,		pos={	455,		6,	},
},

{	str="#c986a34战力",
	name="label_37",
	parent="img_13",
	align=1,		class="SLabel",
	fontsize=16,		pos={	603,		6,	},
},

{	str="#c986a34操作",
	name="label_38",
	parent="img_13",
	align=1,		class="SLabel",
	fontsize=16,		pos={	743,		6,	},
},

{	img_n="sui/contact/straightString.png",
	flip={	false,		false,	},
	parent="img_13",
	class="SImage",
	is_nine=false,
	name="img_14",
	size={	"5",
	"31",
},
	zOrder=1,		pos={	"259",
	"1",
},
},

{	img_n="sui/contact/straightString.png",
	flip={	false,		false,	},
	parent="img_13",
	class="SImage",
	is_nine=false,
	name="img_15",
	size={	"5",
	"31",
},
	zOrder=1,		pos={	"386",
	"1",
},
},

{	img_n="sui/contact/straightString.png",
	flip={	false,		false,	},
	parent="img_13",
	class="SImage",
	is_nine=false,
	name="img_16",
	size={	"5",
	"31",
},
	zOrder=1,		pos={	"554",
	"1",
},
},

{	img_n="sui/contact/straightString.png",
	flip={	false,		false,	},
	parent="img_13",
	class="SImage",
	is_nine=false,
	name="img_17",
	size={	"5",
	"31",
},
	zOrder=1,		pos={	"680",
	"1",
},
},
},
	zOrder=2,		pos={
1,	
382,	},
},
},
	zOrder=2,		isVisible=false,
	size={
"845",

"416",
},
},

{	img_n="sui/common/panel2.png",
	flip={	false,		false,	},
	parent="panel_friend",
	class="SPanel",
	is_nine=true,
	name="enemy_page",
	pos={	"10",
	"59",
},
	zOrder=2,		child={
{	img_n="sui/contact/friendTitleBg.png",
	flip={	false,		false,	},
	parent="enemy_page",
	class="SImage",
	is_nine=true,
	name="img_18",
	size={	"843",
	"33",
},
	child={
{	str="#c986a34名称",
	name="label_39",
	parent="img_18",
	align=1,		class="SLabel",
	fontsize=16,		pos={	"112",
	"6",
},
},

{	str="#c986a34战力",
	name="label_40",
	parent="img_18",
	align=1,		class="SLabel",
	fontsize=16,		pos={	306,		6,	},
},

{	str="#c986a34击杀次数",
	name="label_41",
	parent="img_18",
	align=1,		class="SLabel",
	fontsize=16,		pos={	437,		6,	},
},

{	str="#c986a34被杀次数",
	name="label_42",
	parent="img_18",
	align=1,		class="SLabel",
	fontsize=16,		pos={	585,		6,	},
},

{	str="#c986a34操作",
	name="label_43",
	parent="img_18",
	align=1,		class="SLabel",
	fontsize=16,		pos={	"743",
	"6",
},
},

{	img_n="sui/contact/straightString.png",
	flip={	false,		false,	},
	parent="img_18",
	class="SImage",
	is_nine=false,
	name="img_19",
	size={	"5",
	"31",
},
	zOrder=1,		pos={	"259",
	"1",
},
},

{	img_n="sui/contact/straightString.png",
	flip={	false,		false,	},
	parent="img_18",
	class="SImage",
	is_nine=false,
	name="img_20",
	size={	"5",
	"31",
},
	zOrder=1,		pos={	"386",
	"1",
},
},

{	img_n="sui/contact/straightString.png",
	flip={	false,		false,	},
	parent="img_18",
	class="SImage",
	is_nine=false,
	name="img_21",
	size={	"5",
	"31",
},
	zOrder=1,		pos={	"554",
	"1",
},
},

{	img_n="sui/contact/straightString.png",
	flip={	false,		false,	},
	parent="img_18",
	class="SImage",
	is_nine=false,
	name="img_22",
	size={	"5",
	"31",
},
	zOrder=1,		pos={	"680",
	"1",
},
},
},
	zOrder=1,		isVisible=false,
	pos={
1,	
382,	},
},
},
	isVisible=false,
	size={
"845",

"416",
},
},

{	str="",
	img_n="sui/common/btn_1.png",
	parent="panel_friend",
	class="STextButton",
	zOrder=1,		fontsize="24",
	pos={	10,		-3,	},
	child={
{	img_n="sui/btn_name/shoudongtianjia.png",
	flip={	false,		false,	},
	parent="commonBtn1",
	class="SImage",
	is_nine=false,
	name="img_30",
	pos={	24,		19,	},
	zOrder=1,		size={	"95",
	"24",
},
},
},
	name="commonBtn1",
	align=1,		size={
"144",

"60",
},
},

{	str="",
	img_n="sui/common/btn2_s.png",
	parent="panel_friend",
	class="STextButton",
	zOrder=1,		fontsize="24",
	pos={	714,		-3,	},
	child={
{	img_n="sui/btn_name/huanyipi.png",
	flip={	false,		false,	},
	parent="commonBtn2",
	class="SImage",
	is_nine=false,
	name="img_31",
	pos={	37,		19,	},
	zOrder=1,		size={	"72",
	"24",
},
},
},
	name="commonBtn2",
	align=1,		size={
"144",

"60",
},
},
},
	isVisible=false,
	zOrder=1,		size={
"860",

"525",
},
},

{	img_n="",
	flip={	false,		false,	},
	parent="panel_1",
	class="SPanel",
	is_nine=true,
	size={	"860",
	"525",
},
	name="panel_mail",
	zOrder=1,		child={
{	img_n="",
	parent="panel_mail",
	class="SRadioButtonGroup",
	is_nine=true,
	name="mail_groupbtn_page_btn",
	pos={	5,		474,	},
	child={
{	img_n="sui/common/btn_n.png",
	parent="mail_groupbtn_page_btn",
	class="SRadioButton",
	zOrder=1,		img_s="sui/common/btn_s.png",
	name="mail_radiobtn_inbox",
	pos={	12,		0,	},
	child={},
	size={
"141",

"44",
},
},

{	img_n="sui/common/btn_n.png",
	parent="mail_groupbtn_page_btn",
	class="SRadioButton",
	zOrder=1,		img_s="sui/common/btn_s.png",
	name="mail_radiobtn_writemail",
	pos={	149,		0,	},
	child={},
	size={
"141",

"44",
},
},
},
	zOrder=1,		size={
"350",

"45",
},
},

{	img_n="sui/common/panel2.png",
	flip={	false,		false,	},
	parent="panel_mail",
	class="SPanel",
	is_nine=true,
	name="panel_5",
	pos={	301,		10,	},
	zOrder=1,		size={	"546",
	"461",
},
},

{	img_n="sui/common/panel1.png",
	flip={	false,		false,	},
	parent="panel_mail",
	class="SPanel",
	is_nine=true,
	name="panel_2",
	pos={	12,		10,	},
	zOrder=1,		size={	"282",
	"461",
},
},

{	img_n="",
	flip={	false,		false,	},
	parent="panel_mail",
	class="SPanel",
	is_nine=false,
	name="mail_inbox_page",
	pos={	"12",
	"10",
},
	isVisible=false,
	zOrder=1,		child={
{	img_n="",
	parent="mail_inbox_page",
	class="SScroll",
	is_nine=true,
	scroll_type=2,		pos={	"3",
	"78",
},
	zOrder=1,		name="mail_inbox_scroll",
	size={	"275",
	"380",
},
},

{	str="",
	img_n="sui/common/btn_1.png",
	parent="mail_inbox_page",
	class="STextButton",
	zOrder=1,		fontsize="24",
	pos={	72,		3,	},
	child={
{	img_n="sui/btn_name/yijianlingqu.png",
	flip={	false,		false,	},
	parent="mail_inbox_yijianlingqu",
	class="SImage",
	is_nine=false,
	name="img_35",
	size={	"96",
	"24",
},
	zOrder=1,		pos={	"24",
	"18",
},
},
},
	name="mail_inbox_yijianlingqu",
	align=1,		size={
"144",

"60",
},
},

{	img_n="",
	flip={	false,		false,	},
	parent="mail_inbox_page",
	class="SPanel",
	is_nine=false,
	name="mail_inbox_right_panel",
	pos={	290,		1,	},
	child={
{	img_n="sui/mail/name_bg.png",
	flip={	false,		false,	},
	parent="mail_inbox_right_panel",
	class="SImage",
	is_nine=true,
	name="img_28",
	pos={	52,		412,	},
	zOrder=1,		child={
{	str="#c854c0f来自:",
	name="label_16",
	parent="img_28",
	align=1,		class="SLabel",
	fontsize="18",
	pos={	-44,		5.5,	},
},

{	str="翠花",
	name="mail_inbox_label_name1",
	parent="img_28",
	align=2,		class="SLabel",
	fontsize="20",
	pos={	"97",
	"6",
},
},

{	str="三天前",
	name="mail_inbox_label_time",
	parent="img_28",
	align=1,		class="SLabel",
	fontsize="18",
	pos={	215,		5.5,	},
},
},
	size={
"194",

"37",
},
},

{	img_n="sui/common/panel4.png",
	flip={	false,		false,	},
	parent="mail_inbox_right_panel",
	class="SPanel",
	is_nine=true,
	name="panel_6",
	pos={	7,		67,	},
	zOrder=1,		child={
{	str="    阿萨德阿萨德阿斯打算倒萨倒萨是撒打算打算",
	img_n="",
	parent="panel_6",
	class="STextArea",
	is_nine=true,
	name="mail_inbox_text_body",
	pos={	17,		322,	},
	zOrder=1,		fontsize="18",
	size={	"496",
	"264",
},
},
},
	size={
"532",

"342",
},
},

{	str="删除",
	img_n="sui/common/btn2_s.png",
	parent="mail_inbox_right_panel",
	class="STextButton",
	zOrder=1,		img_s="sui/common/btn2_s.png",
	fontsize="24",
	pos={	385,		0,	},
	name="mail_inbox_textbtn_shanchu",
	align=1,		isVisible=true,
	size={	"144",
	"60",
},
},

{	str="",
	img_n="sui/common/btn2_n.png",
	parent="mail_inbox_right_panel",
	class="STextButton",
	zOrder=1,		img_s="sui/common/btn2_n.png",
	fontsize="24",
	size={	"144",
	"60",
},
	child={
{	img_n="sui/btn_name/lingqu2.png",
	flip={	false,		false,	},
	parent="mail_inbox_textbtn_lingqu",
	class="SImage",
	is_nine=false,
	name="img_36",
	size={	"48",
	"24",
},
	zOrder=1,		pos={	"48",
	"18",
},
},
},
	align=1,		name="mail_inbox_textbtn_lingqu",
	pos={
385,	
0,	},
},
},
	zOrder=1,		size={
"546",

"461",
},
},
},
	size={
"845",

"461",
},
},

{	img_n="",
	flip={	false,		false,	},
	parent="panel_mail",
	class="SPanel",
	is_nine=false,
	name="mail_write_page",
	size={	"845",
	"461",
},
	child={
{	img_n="",
	parent="mail_write_page",
	class="SScroll",
	is_nine=true,
	scroll_type=2,		size={	"275",
	"400",
},
	isVisible=true,
	name="mail_write_scroll",
	zOrder=1,		pos={	3,		13,	},
},

{	img_n="",
	flip={	false,		false,	},
	parent="mail_write_page",
	class="SPanel",
	is_nine=false,
	name="mail_write_right_panel",
	size={	"546",
	"461",
},
	zOrder=1,		child={
{	str="#c804b12收件人",
	name="label_50",
	parent="mail_write_right_panel",
	align=1,		class="SLabel",
	fontsize="18",
	pos={	9,		416.5,	},
},

{	str="#c804b12主  题",
	name="label_51",
	parent="mail_write_right_panel",
	align=1,		class="SLabel",
	fontsize="18",
	pos={	8,		358.5,	},
},

{	str="",
	img_n="sui/common/btn2_n.png",
	parent="mail_write_right_panel",
	class="STextButton",
	zOrder=1,		img_s="sui/common/btn2_n.png",
	fontsize="24",
	pos={	"385",
	"0",
},
	child={
{	img_n="sui/btn_name/fasong.png",
	flip={	false,		false,	},
	parent="mail_write_textbtn_fasong",
	class="SImage",
	is_nine=false,
	name="img_34",
	size={	"48",
	"24",
},
	zOrder=1,		pos={	"48",
	"18",
},
},
},
	name="mail_write_textbtn_fasong",
	align=1,		size={
"144",

"60",
},
},

{	img_n="sui/common/tongbi2.png",
	flip={	false,		false,	},
	parent="mail_write_right_panel",
	class="SImage",
	is_nine=false,
	name="img_29",
	pos={	304,		18,	},
	child={
{	str="99999",
	name="mail_write_label_money",
	parent="img_29",
	align=1,		class="SLabel",
	fontsize=16,		pos={	28,		1.5,	},
},
},
	zOrder=1,		size={
"21",

"21",
},
},

{	img_n="sui/common/panel5.png",
	flip={	false,		false,	},
	parent="mail_write_right_panel",
	class="SImage",
	is_nine=true,
	name="img_32",
	size={	"470",
	"40",
},
	child={},
	zOrder=1,		pos={
68,	
408,	},
},

{	img_n="sui/common/panel5.png",
	flip={	false,		false,	},
	parent="mail_write_right_panel",
	class="SImage",
	is_nine=true,
	name="img_33",
	size={	"470",
	"40",
},
	child={},
	zOrder=1,		pos={
68,	
350,	},
},

{	img_n="",
	parent="mail_write_right_panel",
	class="SEditBox",
	maxnum=15,		fontsize=16,		pos={	72,		346,	},
	zOrder=2,		align=1,		name="mail_write_editbox_title",
	size={	"460",
	"45",
},
},

{	img_n="",
	parent="mail_write_right_panel",
	class="SEditBox",
	maxnum=15,		fontsize=16,		pos={	72,		405,	},
	zOrder=2,		align=1,		name="mail_write_editbox_name",
	size={	"460",
	"45",
},
},
},
	isVisible=false,
	pos={
290,	
1,	},
},

{	img_n="sui/common/title_bg.png",
	flip={	false,		false,	},
	parent="mail_write_page",
	class="SImage",
	is_nine=true,
	name="img_37",
	size={	"236",
	"34",
},
	child={
{	img_n="sui/mail/haoyouliebiao.png",
	flip={	false,		false,	},
	parent="img_37",
	class="SImage",
	is_nine=false,
	name="img_38",
	size={	"91",
	"26",
},
	zOrder=1,		pos={	73,		5,	},
},
},
	zOrder=1,		pos={
26,	
419,	},
},
},
	zOrder=1,		isVisible=false,
	pos={
"12",

"10",
},
},

{	img_n="sui/common/line2.png",
	flip={	false,		false,	},
	parent="panel_mail",
	class="SPanel",
	is_nine=false,
	name="panel_11",
	pos={	10,		473,	},
	zOrder=1,		size={	"850",
	"4",
},
},
},
	auto_load="0",
	isVisible=false,
	pos={
"25",

"25",
},
},

{	img_n="sui/common/win_title_bg.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SImage",
	is_nine=false,
	name="img_3",
	pos={	-11,		551,	},
	zOrder=1,		child={
{	img_n="sui/common/pj.png",
	flip={	false,		false,	},
	parent="img_3",
	class="SImage",
	is_nine=false,
	name="img_4",
	pos={	17,		-143,	},
	child={},
	zOrder=1,		size={
"36",

"209",
},
},

{	img_n="sui/contact/cont_title.png",
	flip={	false,		false,	},
	parent="img_3",
	class="SPanel",
	is_nine=false,
	name="panel_10",
	pos={	55,		19,	},
	zOrder=1,		size={	"92",
	"35",
},
},
},
	size={
"926",

"70",
},
},

{	img_n="sui/common/close.png",
	name="btn_close",
	pos={	828,		554,	},
	parent="panel_1",
	class="SButton",
	zOrder=1,		size={	"62",
	"57",
},
},
},
	pos={
22,	
5,	},
},

{	img_n="",
	parent="win_root",
	class="SRadioButtonGroup",
	is_nine=true,
	name="groupbtn_1",
	size={	"51",
	"300",
},
	child={
{	img_n="sui/common/menu_right_n.png",
	parent="groupbtn_1",
	class="SRadioButton",
	zOrder=12,		img_s="sui/common/menu_right_s.png",
	name="radiobtn_1",
	size={	"47",
	"88",
},
	child={},
	pos={
0,	
211,	},
},

{	img_n="sui/common/menu_right_n.png",
	parent="groupbtn_1",
	class="SRadioButton",
	zOrder=1,		img_s="sui/common/menu_right_s.png",
	name="radiobtn_2",
	size={	"47",
	"88",
},
	child={},
	pos={
0,	
125,	},
},

{	img_n="sui/common/menu_right_n.png",
	parent="groupbtn_1",
	class="SRadioButton",
	zOrder=1,		img_s="sui/common/menu_right_s.png",
	name="radiobtn_3",
	pos={	0,		39,	},
	child={},
	size={
"47",

"88",
},
},
},
	zOrder=12,		pos={
914,	
236,	},
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