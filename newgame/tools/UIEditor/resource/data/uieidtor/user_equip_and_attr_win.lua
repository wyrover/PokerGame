user_equip_and_attr_win = {
	img_n="",
	parent="ui_root",
	class="SPanel",
	is_nine=true,
	name="win_root",
	pos={	"0",
	"0",
},
	zOrder=1,		child={
{	img_n="sui/common/win_panel.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=true,
	name="user_data_win",
	pos={	"24",
	"12",
},
	zOrder=5,		child={
{	img_n="",
	flip={	false,		false,	},
	parent="user_data_win",
	class="SPanel",
	is_nine=false,
	size={	"860",
	"530",
},
	name="user_title",
	zOrder=1,		auto_load=0,		isVisible=false,
	child={
{	img_n="",
	flip={	false,		false,	},
	parent="user_title",
	class="SPanel",
	is_nine=true,
	name="panel",
	size={	"580",
	"460",
},
	zOrder=1,		child={
{	img_n="icon/titles/00001.pd",
	flip={	false,		false,	},
	parent="panel",
	class="SImage",
	is_nine=false,
	name="title_icon",
	pos={	215,		391,	},
	zOrder=1,		size={	"147",
	"67",
},
},

{	img_n="sui/common/division_02.png",
	flip={	false,		false,	},
	parent="panel",
	class="SImage",
	is_nine=false,
	name="img_19",
	pos={	151,		305,	},
	zOrder=1,		size={	"78",
	"15",
},
},

{	img_n="sui/common/division_02.png",
	flip={	true,		false,	},
	parent="panel",
	class="SImage",
	is_nine=false,
	name="copy_2",
	size={	"78",
	"15",
},
	zOrder=1,		pos={	352,		305,	},
},

{	img_n="sui/common/division_02.png",
	flip={	true,		false,	},
	parent="panel",
	class="SImage",
	is_nine=false,
	name="copy_3",
	pos={	352,		200,	},
	zOrder=1,		size={	"78",
	"15",
},
},

{	img_n="sui/common/division_02.png",
	flip={	false,		false,	},
	parent="panel",
	class="SImage",
	is_nine=false,
	name="copy_4",
	size={	"78",
	"15",
},
	zOrder=1,		pos={	"151",
	"200",
},
},

{	img_n="sui/common/btn_1.png",
	child={
{	str="使用",
	name="btn_name",
	align="2",
	parent="btn",
	class="SLabel",
	fontsize="24",
	pos={	"69",
	"15",
},
},
},
	class="SButton",
	zOrder=1,		name="btn",
	pos={
"218",

"5",
},
	parent="panel",
	isVisible=false,
	size={
"139",

"57",
},
},

{	str="#cea4d0f999999",
	name="add_1",
	align="1",
	parent="panel",
	class="SLabel",
	fontsize="16",
	pos={	200,		155,	},
},

{	str="#cea4d0f999999",
	name="add_2",
	parent="panel",
	align="1",
	class="SLabel",
	fontsize="16",
	pos={	430,		155,	},
},

{	str="#cea4d0f999999",
	name="add_3",
	parent="panel",
	align="1",
	class="SLabel",
	fontsize="16",
	pos={	"200",
	"115",
},
},

{	str="#cea4d0f999999",
	name="add_4",
	align="1",
	parent="panel",
	class="SLabel",
	fontsize="16",
	pos={	"430",
	"115",
},
},

{	img_n="sui/userEquipAndAttr/weihuode.png",
	flip={	false,		false,	},
	parent="panel",
	class="SImage",
	is_nine=false,
	name="no_png",
	size={	"116",
	"45",
},
	isVisible=false,
	zOrder=1,		pos={	230,		10,	},
},

{	str="#c8a5823时效：永久",
	name="time_str",
	parent="panel",
	align="1",
	class="SLabel",
	fontsize="14",
	pos={	378,		28,	},
},

{	img_n="sui/common/fengexian.png",
	flip={	false,		false,	},
	parent="panel",
	class="SImage",
	is_nine=true,
	name="img_2",
	size={	"590",
	"3",
},
	zOrder=1,		pos={	"-5",
	"230",
},
},

{	img_n="sui/common/fengexian.png",
	flip={	false,		false,	},
	parent="panel",
	class="SImage",
	is_nine=true,
	name="img_10",
	size={	"590",
	"3",
},
	zOrder=1,		pos={	"-5",
	"340",
},
},

{	str="#c4e2d0e属性加成",
	name="label_1",
	align="2",
	parent="panel",
	class="SLabel",
	fontsize="24",
	pos={	290,		195,	},
},

{	str="#c4e2d0e获得条件",
	name="label_8",
	align="2",
	parent="panel",
	class="SLabel",
	fontsize="24",
	pos={	291,		300,	},
},

{	str="#c643f17属性名称",
	name="attr_name_1",
	parent="panel",
	align=1,		class="SLabel",
	fontsize=16,		pos={	100,		155,	},
},

{	str="#c643f17属性名称",
	name="attr_name_2",
	parent="panel",
	align=1,		class="SLabel",
	fontsize=16,		pos={	330,		155,	},
},

{	str="#c643f17属性名称",
	name="attr_name_3",
	parent="panel",
	align=1,		class="SLabel",
	fontsize=16,		pos={	"100",
	"115",
},
},

{	str="#c643f17属性名称",
	name="attr_name_4",
	parent="panel",
	align=1,		class="SLabel",
	fontsize=16,		pos={	"330",
	"115",
},
},

{	str="文字控件",
	name="shuo_ming",
	align="2",
	parent="panel",
	class="SLabel",
	fontsize=16,		pos={	291,		261,	},
},

{	img_n="sui/userEquipAndAttr/yizhanshi.png",
	flip={	false,		false,	},
	parent="panel",
	class="SImage",
	is_nine=false,
	name="zhanshi",
	size={	"116",
	"45",
},
	isVisible=false,
	zOrder=1,		pos={	"230",
	"10",
},
},
},
	pos={
264,	
3,	},
},

{	img_n="sui/common/bg_01.png",
	flip={	false,		false,	},
	parent="user_title",
	class="SPanel",
	is_nine=true,
	name="panel_5",
	size={	"840",
	"38",
},
	isVisible=false,
	child={
{	str="#c643f17称号收集：",
	name="label_4",
	parent="panel_5",
	align="1",
	class="SLabel",
	fontsize="18",
	pos={	437,		23,	},
},

{	str="#c643f1710/30",
	name="title_percent",
	parent="panel_5",
	align=1,		class="SLabel",
	fontsize="18",
	pos={	524,		23,	},
},

{	str="#c643f17称号加成：",
	name="label_12",
	parent="panel_5",
	align=1,		class="SLabel",
	fontsize="18",
	pos={	598,		23,	},
},

{	img_n="sui/common/num_bg.png",
	flip={	false,		false,	},
	parent="panel_5",
	class="SImage",
	is_nine=true,
	name="img_6",
	pos={	686,		15,	},
	zOrder=1,		size={	"150",
	"35",
},
},
},
	zOrder=1,		pos={
9,	
467,	},
},

{	img_n="sui/common/panel11.png",
	flip={	false,		false,	},
	parent="user_title",
	class="SPanel",
	is_nine=true,
	name="panel_6",
	pos={	12,		11,	},
	zOrder=1,		child={
{	img_n="",
	parent="panel_6",
	class="SScroll",
	is_nine=true,
	scroll_type=2,		pos={	5,		6,	},
	child={},
	zOrder=1,		name="scroll_1",
	size={
"230",

"444",
},
},
},
	size={
"240",

"454",
},
},

{	img_n="",
	parent="user_title",
	class="SRadioButtonGroup",
	is_nine=true,
	name="groupbtn_1",
	pos={	1,		471,	},
	zOrder=100,		child={
{	img_n="sui/common/btn12.png",
	parent="groupbtn_1",
	class="SRadioButton",
	zOrder=1,		img_s="sui/common/btn11.png",
	name="select_btn1",
	pos={	12,		1,	},
	is_nine=true,
	size={	"122",
	"50",
},
},

{	img_n="sui/common/btn12_1.png",
	parent="groupbtn_1",
	class="SRadioButton",
	zOrder=1,		img_s="sui/common/btn11_1.png",
	name="select_btn2",
	size={	"132",
	"50",
},
	is_nine=true,
	pos={	129,		1,	},
},

{	img_n="sui/common/btn12.png",
	flip={	true,		false,	},
	parent="groupbtn_1",
	class="SRadioButton",
	zOrder=1,		img_s="sui/common/btn11.png",
	name="select_btn3",
	pos={	256,		1,	},
	is_nine=true,
	size={	"122",
	"50",
},
},
},
	size={
"400",

"60",
},
},
},
	pos={
"10",

"10",
},
},

{	img_n="",
	flip={	false,		false,	},
	parent="user_data_win",
	class="SPanel",
	is_nine=true,
	name="user_attr",
	size={	"860",
	"530",
},
	zOrder=18,		child={
{	img_n="sui/common/slot_bg.png",
	name="slotitem_1",
	size={	"82",
	"82",
},
	parent="user_attr",
	class="SSlotItem",
	zOrder=20,		pos={	13,		329,	},
},

{	img_n="sui/common/slot_bg.png",
	name="slotitem_2",
	size={	"82",
	"82",
},
	parent="user_attr",
	class="SSlotItem",
	zOrder=20,		pos={	13,		216,	},
},

{	img_n="sui/common/slot_bg.png",
	name="slotitem_3",
	size={	"82",
	"82",
},
	parent="user_attr",
	class="SSlotItem",
	zOrder=20,		pos={	13,		106,	},
},

{	img_n="sui/common/slot_bg.png",
	name="slotitem_4",
	size={	"82",
	"82",
},
	parent="user_attr",
	class="SSlotItem",
	zOrder=20,		pos={	370,		329,	},
},

{	img_n="sui/common/slot_bg.png",
	name="slotitem_5",
	size={	"82",
	"82",
},
	parent="user_attr",
	class="SSlotItem",
	zOrder=20,		pos={	370,		216,	},
},

{	img_n="sui/common/slot_bg.png",
	name="slotitem_6",
	size={	"82",
	"82",
},
	parent="user_attr",
	class="SSlotItem",
	zOrder=20,		pos={	370,		106,	},
},

{	img_n="sui/common/roleImage.png",
	flip={	false,		false,	},
	parent="user_attr",
	class="SImage",
	is_nine=false,
	name="role_total",
	size={	"264",
	"364",
},
	isVisible=false,
	child={},
	zOrder=2,		pos={
103,	
81,	},
},

{	img_n="sui/common/panel12_2.png",
	flip={	false,		false,	},
	parent="user_attr",
	class="SImage",
	is_nine=true,
	name="img_8",
	size={	"397",
	"499",
},
	child={
{	img_n="sui/common/panel2.png",
	flip={	false,		false,	},
	parent="img_8",
	class="SPanel",
	is_nine=true,
	name="panel_3",
	size={	"363",
	"245",
},
	child={
{	str="#c643f17外功伤害",
	name="wuligongji",
	align=1,		parent="panel_3",
	class="SLabel",
	fontsize=16,		pos={	22,		201.5,	},
},

{	str="#c965a29999999",
	name="wuligongji_value",
	align=1,		parent="panel_3",
	class="SLabel",
	fontsize=16,		pos={	104,		201.5,	},
},

{	str="#c643f17外功防御",
	name="label_15",
	fontsize=16,		parent="panel_3",
	child={},
	class="SLabel",
	align=1,		pos={
22,	
165.5,	},
},

{	str="#c643f17内功防御",
	name="daofafangyu",
	align=1,		parent="panel_3",
	class="SLabel",
	fontsize=16,		pos={	22,		129.5,	},
},

{	str="#c965a29999999",
	name="daofafangyu_value",
	align=1,		parent="panel_3",
	class="SLabel",
	fontsize=16,		pos={	104,		129.5,	},
},

{	str="#c643f17内功减伤",
	name="daofajianshang",
	align=1,		parent="panel_3",
	class="SLabel",
	fontsize=16,		pos={	22,		93,	},
},

{	str="#c965a29100%",
	name="daofajianshang_value",
	align=1,		parent="panel_3",
	class="SLabel",
	fontsize=16,		pos={	104,		92.5,	},
},

{	str="#c643f17外功减伤",
	name="wulijianshang",
	align=1,		parent="panel_3",
	class="SLabel",
	fontsize=16,		pos={	22,		57,	},
},

{	str="#c965a29100%",
	name="wulijianshang_value",
	align=1,		parent="panel_3",
	class="SLabel",
	fontsize=16,		pos={	104,		57.5,	},
},

{	str="#c643f17伤害加深",
	name="shanghaijiacheng",
	align=1,		parent="panel_3",
	class="SLabel",
	fontsize=16,		pos={	22,		21,	},
},

{	str="#c965a29100%",
	name="shanghaijiacheng_value",
	align=1,		parent="panel_3",
	class="SLabel",
	fontsize=16,		pos={	104,		20.5,	},
},

{	str="#c643f17命    中",
	name="label_20",
	parent="panel_3",
	align=1,		class="SLabel",
	fontsize=16,		pos={	205,		201,	},
},

{	str="#c965a2999999",
	name="mingzhong_value",
	align=1,		parent="panel_3",
	class="SLabel",
	fontsize=16,		pos={	290,		200.5,	},
},

{	str="#c643f17暴    击",
	name="baoji",
	align=1,		parent="panel_3",
	class="SLabel",
	fontsize=16,		pos={	205,		165,	},
},

{	str="#c965a29999999",
	name="baoji_value",
	align=1,		parent="panel_3",
	class="SLabel",
	fontsize=16,		pos={	290,		165.5,	},
},

{	str="#c643f17会    心",
	name="label_23",
	fontsize=16,		parent="panel_3",
	child={},
	class="SLabel",
	align=1,		pos={
205,	
57,	},
},

{	str="#c643f17抗    暴",
	name="kangbao",
	fontsize=16,		parent="panel_3",
	child={},
	class="SLabel",
	align=1,		pos={
205,	
93,	},
},

{	str="#c643f17闪    避",
	name="huixin",
	fontsize=16,		parent="panel_3",
	child={},
	class="SLabel",
	align=1,		pos={
205,	
129,	},
},

{	str="#c965a29999999",
	name="wulifangyu_value",
	align=1,		parent="panel_3",
	class="SLabel",
	fontsize=16,		pos={	104,		165,	},
},

{	str="#c965a29999999",
	name="shanbi_value",
	align=1,		parent="panel_3",
	class="SLabel",
	fontsize=16,		pos={	290,		129,	},
},

{	str="#c965a29100%",
	name="kangbao_value",
	align=1,		parent="panel_3",
	class="SLabel",
	fontsize=16,		pos={	290,		93,	},
},

{	str="#c965a29999999",
	name="huixin_value",
	align=1,		parent="panel_3",
	class="SLabel",
	fontsize=16,		pos={	290,		57,	},
},
},
	zOrder=1,		pos={
18,	
144,	},
},

{	str="#cce3521生命",
	name="label_5",
	align=1,		parent="img_8",
	class="SLabel",
	fontsize="18",
	pos={	36,		88,	},
},

{	str="#c1771af内力",
	name="label_6",
	align=1,		parent="img_8",
	class="SLabel",
	fontsize="18",
	pos={	36,		55,	},
},

{	str="#c45741b经验",
	name="label_7",
	align=1,		parent="img_8",
	class="SLabel",
	fontsize="18",
	pos={	36,		23,	},
},

{	img_s="sui/userPanel/progressBg.png",
	img_n="sui/userPanel/mpProgress.png",
	name="lingli",
	pos={	85,		52,	},
	parent="img_8",
	class="SProgress",
	zOrder=1,		size={	"276",
	"25",
},
},

{	img_s="sui/userPanel/progressBg.png",
	img_n="sui/userPanel/expProgress.png",
	name="exp_progress",
	pos={	85,		20,	},
	parent="img_8",
	class="SProgress",
	zOrder=1,		size={	"276",
	"25",
},
},

{	img_n="sui/userPanel/hpProgress.png",
	parent="img_8",
	class="SProgress",
	is_nine=true,
	img_s="sui/userPanel/progressBg.png",
	name="shengming",
	pos={	85,		85,	},
	zOrder=1,		size={	"276",
	"25",
},
},

{	img_n="sui/common/division_01.png",
	flip={	false,		false,	},
	parent="img_8",
	class="SImage",
	is_nine=false,
	name="img_9",
	pos={	"45",
	"437",
},
	zOrder=1,		size={	"43",
	"21",
},
},

{	img_n="sui/common/division_01.png",
	flip={	true,		false,	},
	parent="img_8",
	class="SImage",
	is_nine=false,
	name="img_13",
	pos={	191,		437,	},
	zOrder=1,		size={	"43",
	"21",
},
},

{	str="#c4e2d0e职业",
	name="zhiye",
	align="2",
	parent="img_8",
	class="SLabel",
	fontsize="26",
	pos={	140,		432,	},
},

{	img_n="sui/common/fengexian.png",
	flip={	false,		false,	},
	parent="img_8",
	class="SImage",
	is_nine=true,
	name="img_14",
	pos={	19,		402,	},
	zOrder=1,		size={	"360",
	"3",
},
},

{	img_n="sui/common/fengexian.png",
	flip={	false,		false,	},
	parent="img_8",
	class="SImage",
	is_nine=true,
	name="img_15",
	pos={	19,		120,	},
	zOrder=1,		size={	"360",
	"3",
},
},
},
	zOrder=1,		pos={
468,	
28,	},
},

{	str="#c75440d世族名字啊~！",
	name="label_2",
	fontsize="16",
	align="2",
	parent="user_attr",
	class="SLabel",
	child={},
	pos={
"233",

"456",
},
},

{	str="#c783c0b玩家名字名字",
	isVisible=false,
	align="2",
	class="SLabel",
	name="label_3",
	fontsize="22",
	parent="user_attr",
	child={},
	pos={
"233",

"481",
},
},

{	img_n="sui/common/role_bg2.png",
	flip={	false,		false,	},
	parent="user_attr",
	class="SImage",
	is_nine=false,
	name="img_1",
	pos={	95,		57,	},
	isVisible=false,
	zOrder=1,		child={},
	size={
"300",

"370",
},
},

{	img_n="sui/userEquipAndAttr/lv_bg.png",
	flip={	false,		false,	},
	parent="user_attr",
	class="SImage",
	is_nine=false,
	name="lv_bg",
	size={	"58",
	"30",
},
	child={
{	img_n="sui/userEquipAndAttr/lv.png",
	flip={	false,		false,	},
	parent="lv_bg",
	class="SImage",
	is_nine=false,
	name="img_11",
	size={	"22",
	"13",
},
	zOrder=1,		pos={	5,		4,	},
},
},
	zOrder=1,		pos={
384,	
468,	},
},

{	img_s="sui/userEquipAndAttr/rename.png",
	img_n="sui/userEquipAndAttr/rename.png",
	name="btn_rename",
	pos={	337,		465,	},
	parent="user_attr",
	class="SButton",
	zOrder=10,		size={	"34",
	"37",
},
},
},
	isVisible=false,
	pos={
"10",

"10",
},
},

{	img_n="sui/common/win_title_bg.png",
	flip={	false,		false,	},
	parent="user_data_win",
	class="SImage",
	is_nine=false,
	name="img_4",
	size={	"949",
	"103",
},
	isVisible=false,
	child={
{	img_n="sui/userEquipAndAttr/js_title_word_01.png",
	flip={	false,		false,	},
	parent="img_4",
	class="SImage",
	is_nine=false,
	name="img_5",
	size={	"94",
	"53",
},
	zOrder=1,		pos={	159,		39,	},
},

{	img_n="sui/common/pj.png",
	flip={	false,		false,	},
	parent="img_4",
	class="SImage",
	is_nine=false,
	name="img_3",
	pos={	6,		-154,	},
	zOrder=1,		size={	"42",
	"253",
},
},
},
	zOrder=5,		pos={
-22,	
518,	},
},

{	img_n="",
	flip={	false,		false,	},
	parent="user_data_win",
	class="SPanel",
	is_nine=true,
	pos={	"10",
	"10",
},
	name="user_fashion",
	isVisible=false,
	child={
{	img_n="sui/common/roleImage.png",
	flip={	false,		false,	},
	parent="user_fashion",
	class="SImage",
	is_nine=false,
	name="img_19_sz",
	pos={	103,		81,	},
	zOrder=2,		isVisible=false,
	size={	"264",
	"364",
},
},

{	img_n="sui/common/panel12_2.png",
	flip={	false,		false,	},
	parent="user_fashion",
	class="SPanel",
	is_nine=true,
	name="img_8_sz",
	pos={	468,		28,	},
	zOrder=1,		child={
{	img_n="sui/common/panel2.png",
	flip={	false,		false,	},
	parent="img_8_sz",
	class="SPanel",
	is_nine=true,
	name="panel_3_sz",
	pos={	18,		235,	},
	zOrder=1,		child={
{	str="#c643f17外功伤害",
	name="label_1_attr",
	parent="panel_3_sz",
	align=1,		class="SLabel",
	fontsize=16,		pos={	22,		137,	},
},

{	str="#c965a29999999",
	name="label_1_val",
	parent="panel_3_sz",
	align=1,		class="SLabel",
	fontsize=16,		pos={	104,		137,	},
},

{	str="#c643f17内功防御",
	name="label_3_attr",
	parent="panel_3_sz",
	align=1,		class="SLabel",
	fontsize=16,		pos={	22,		59,	},
},

{	str="#c965a29999999",
	name="label_3_val",
	parent="panel_3_sz",
	align=1,		class="SLabel",
	fontsize=16,		pos={	104,		59,	},
},

{	str="#c643f17内功减伤",
	name="label_4_attr",
	parent="panel_3_sz",
	align=1,		class="SLabel",
	fontsize=16,		pos={	"22",
	"20",
},
},

{	str="#c965a29100%",
	name="label_4_val",
	parent="panel_3_sz",
	align=1,		class="SLabel",
	fontsize=16,		pos={	"104",
	"20",
},
},

{	str="#c643f17命    中",
	name="label_5_attr",
	align=1,		parent="panel_3_sz",
	class="SLabel",
	fontsize=16,		pos={	205,		137,	},
},

{	str="#c965a2999999",
	name="label_5_val",
	parent="panel_3_sz",
	align=1,		class="SLabel",
	fontsize=16,		pos={	290,		137,	},
},

{	str="#c643f17暴    击",
	name="label_6_attr",
	parent="panel_3_sz",
	align=1,		class="SLabel",
	fontsize=16,		pos={	205,		98,	},
},

{	str="#c965a29999999",
	name="label_6_val",
	parent="panel_3_sz",
	align=1,		class="SLabel",
	fontsize=16,		pos={	290,		98,	},
},

{	str="#c643f17抗    暴",
	name="label_8_attr",
	fontsize=16,		align=1,		parent="panel_3_sz",
	class="SLabel",
	child={},
	pos={
"205",

"20",
},
},

{	str="#c643f17闪    避",
	name="label_7_attr",
	fontsize=16,		align=1,		parent="panel_3_sz",
	class="SLabel",
	child={},
	pos={
205,	
59,	},
},

{	str="#c965a29999999",
	name="label_2_val",
	parent="panel_3_sz",
	align=1,		class="SLabel",
	fontsize=16,		pos={	104,		98,	},
},

{	str="#c965a29999999",
	name="label_7_val",
	parent="panel_3_sz",
	align=1,		class="SLabel",
	fontsize=16,		pos={	290,		59,	},
},

{	str="#c965a29100%",
	name="label_8_val",
	parent="panel_3_sz",
	align=1,		class="SLabel",
	fontsize=16,		pos={	"290",
	"20",
},
},

{	str="#c643f17外功防御",
	name="label_2_attr",
	fontsize=16,		align=1,		parent="panel_3_sz",
	class="SLabel",
	child={},
	pos={
"22",

"98",
},
},
},
	size={
"366",

"176",
},
},

{	img_n="sui/common/division_07.png",
	flip={	false,		false,	},
	parent="img_8_sz",
	class="SImage",
	is_nine=false,
	name="img_9",
	size={	"78",
	"15",
},
	zOrder=1,		pos={	44,		452,	},
},

{	img_n="sui/common/division_07.png",
	flip={	true,		false,	},
	parent="img_8_sz",
	class="SImage",
	is_nine=false,
	name="img_13",
	size={	"78",
	"15",
},
	zOrder=1,		pos={	276,		452,	},
},

{	str="#c4e2d0e总属性加成",
	name="title_sz",
	parent="img_8_sz",
	align="2",
	class="SLabel",
	fontsize="26",
	pos={	199,		445,	},
},

{	img_n="sui/common/fengexian.png",
	flip={	false,		false,	},
	parent="img_8_sz",
	class="SImage",
	is_nine=true,
	name="img_14",
	size={	"360",
	"3",
},
	zOrder=1,		pos={	19,		425,	},
},

{	img_n="sui/common/fengexian.png",
	flip={	false,		false,	},
	parent="img_8_sz",
	class="SImage",
	is_nine=true,
	name="img_15",
	size={	"360",
	"3",
},
	zOrder=1,		pos={	20,		190,	},
},

{	img_n="sui/common/btn_1.png",
	child={
{	str="查看",
	name="label_21",
	align="2",
	parent="textbtn_1_sz",
	class="SLabel",
	fontsize="24",
	pos={	"69",
	"13",
},
},
},
	class="SButton",
	zOrder=5,		name="textbtn_1_sz",
	isVisible=false,
	size={
"139",

"54",
},
	parent="img_8_sz",
	pos={
25,	
10,	},
},

{	img_n="sui/common/btn_1.png",
	child={
{	str="穿戴",
	name="label_27_sz",
	align="2",
	parent="btn_5_sz",
	class="SLabel",
	fontsize="24",
	pos={	"69",
	"13",
},
},
},
	class="SButton",
	zOrder=5,		name="btn_5_sz",
	isVisible=false,
	pos={
243,	
10,	},
	parent="img_8_sz",
	size={
"139",

"54",
},
},

{	str="#c4e2d0e我的时装",
	name="copy_6",
	align="2",
	parent="img_8_sz",
	class="SLabel",
	fontsize="26",
	pos={	198,		198,	},
},

{	img_n="sui/common/division_07.png",
	flip={	false,		false,	},
	parent="img_8_sz",
	class="SImage",
	is_nine=false,
	name="copy_7",
	pos={	60,		206,	},
	zOrder=1,		size={	"78",
	"15",
},
},

{	img_n="sui/common/division_07.png",
	flip={	true,		false,	},
	parent="img_8_sz",
	class="SImage",
	is_nine=false,
	name="copy_8",
	pos={	258,		206,	},
	zOrder=1,		size={	"78",
	"15",
},
},

{	img_n="sui/common/fengexian.png",
	flip={	false,		false,	},
	parent="img_8_sz",
	class="SImage",
	is_nine=true,
	name="copy_10",
	pos={	18,		85,	},
	zOrder=1,		size={	"360",
	"3",
},
},

{	str="时效",
	name="label_25_sz",
	align="2",
	parent="img_8_sz",
	class="SLabel",
	fontsize=16,		pos={	198,		65,	},
},

{	str="#c965a29你暂无时装",
	name="label_9",
	parent="img_8_sz",
	align=1,		class="SLabel",
	fontsize="18",
	pos={	155,		150,	},
},

{	str="#c965a29请留意各类游戏活动哟~",
	name="label_10",
	parent="img_8_sz",
	align="2",
	class="SLabel",
	fontsize="18",
	pos={	210,		120,	},
},
},
	size={
"397",

"499",
},
},

{	str="#c75440d世族名字啊~！",
	name="label_2_sz",
	parent="user_fashion",
	align="2",
	class="SLabel",
	fontsize="16",
	pos={	"233",
	"456",
},
},

{	str="#c783c0b玩家名字名字",
	isVisible=false,
	name="label_3_sz",
	align="2",
	parent="user_fashion",
	class="SLabel",
	fontsize="22",
	pos={	"233",
	"481",
},
},

{	img_n="sui/userEquipAndAttr/roleBG.png",
	flip={	false,		false,	},
	parent="user_fashion",
	class="SImage",
	is_nine=false,
	name="img_1",
	size={	"234",
	"233",
},
	child={},
	zOrder=1,		isVisible=false,
	pos={
118,	
164,	},
},

{	img_n="sui/userEquipAndAttr/lv_bg.png",
	flip={	false,		false,	},
	parent="user_fashion",
	class="SImage",
	is_nine=false,
	name="lv_bg_sz",
	pos={	384,		468,	},
	zOrder=1,		child={
{	img_n="sui/userEquipAndAttr/lv.png",
	flip={	false,		false,	},
	parent="lv_bg_sz",
	class="SImage",
	is_nine=false,
	name="img_11",
	pos={	5,		4,	},
	zOrder=1,		size={	"22",
	"13",
},
},
},
	size={
"58",

"30",
},
},

{	img_n="sui/common/slot_bg.png",
	name="cloth_slot_sz",
	pos={	140,		5,	},
	parent="user_fashion",
	class="SSlotItem",
	zOrder=10,		size={	"82",
	"82",
},
},

{	img_n="sui/common/slot_bg.png",
	name="weapon_slot_sz",
	pos={	250,		5,	},
	parent="user_fashion",
	class="SSlotItem",
	zOrder=10,		size={	"82",
	"82",
},
},

{	img_n="",
	name="btn_1_sz",
	size={	"75",
	"75",
},
	parent="user_fashion",
	class="SButton",
	zOrder=1,		pos={	36,		371,	},
},
},
	zOrder=18,		auto_load="0",
	size={
"860",

"530",
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
	name="groupbtn_2",
	pos={	900,		272,	},
	zOrder=2,		child={
{	img_n="sui/common/menu_right_n.png",
	parent="groupbtn_2",
	class="SRadioButton",
	zOrder=1,		img_s="sui/common/menu_right_s.png",
	name="attr_btn",
	pos={	"0",
	192,	},
	child={},
	size={
"67",

"108",
},
},

{	img_n="sui/common/menu_right_n.png",
	parent="groupbtn_2",
	class="SRadioButton",
	zOrder=1,		img_s="sui/common/menu_right_s.png",
	name="title_btn",
	pos={	"0",
	96,	},
	child={},
	size={
"67",

"108",
},
},

{	img_n="sui/common/menu_right_n.png",
	parent="groupbtn_2",
	class="SRadioButton",
	zOrder=1,		img_s="sui/common/menu_right_s.png",
	name="fashion_btn",
	pos={	"0",
	"0",
},
	child={},
	size={
"67",

"108",
},
},
},
	isVisible=false,
	size={
"80",

"330",
},
},

{	img_n="sui/common/close.png",
	name="btn_close",
	pos={	837,		555,	},
	parent="win_root",
	class="SButton",
	zOrder=100,		size={	"66",
	"75",
},
},

{	img_n="",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=false,
	name="panel_1",
	size={	"80",
	"330",
},
	zOrder=1,		child={
{	img_n="sui/common/menu_line.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SImage",
	is_nine=false,
	name="img_12",
	pos={	25,		184,	},
	zOrder=1,		size={	"3",
	"28",
},
},

{	img_n="sui/common/menu_line.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SImage",
	is_nine=false,
	name="copy_1",
	size={	"3",
	"28",
},
	zOrder=1,		pos={	25,		95,	},
},
},
	isVisible=false,
	pos={
901,	
272,	},
},
},
	isVisible=true,
	size={
"960",

"640",
},

}