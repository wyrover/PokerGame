guild_boss = {
	img_n="",
	parent="ui_root",
	class="SPanel",
	is_nine=false,
	name="win_root",
	pos={	"0",
	"0",
},
	child={
{	img_n="sui/common/win_title_bg.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=false,
	name="panel_1",
	size={	"949",
	"103",
},
	child={
{	img_n="sui/common/pj.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SImage",
	is_nine=false,
	name="img_1",
	pos={	3,		-158,	},
	zOrder=1,		size={	"42",
	"253",
},
},

{	img_n="sui/guild/guild_boss.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SPanel",
	is_nine=false,
	name="panel_5",
	pos={	109,		40,	},
	zOrder=1,		size={	"192",
	"46",
},
},
},
	zOrder=3,		pos={
2,	
537,	},
},

{	img_n="sui/common/close.png",
	name="btn_close",
	size={	"66",
	"75",
},
	parent="win_root",
	class="SButton",
	zOrder=99,		pos={	837,		562,	},
},

{	img_n="sui/common/panel11.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=true,
	name="panel_16",
	size={	"836",
	"510",
},
	child={
{	img_n="sui/common/panel12.png",
	flip={	false,		false,	},
	parent="panel_16",
	class="SPanel",
	is_nine=true,
	name="panel_right",
	size={	"417",
	"497",
},
	child={
{	str="#c663f1610分钟内击杀boss，下次则召唤更高级boss，奖励更丰厚",
	name="label_9",
	parent="panel_right",
	align=1,		class="SLabel",
	fontsize="14",
	pos={	21,		10,	},
},

{	str="#c4e2d0e最后一击",
	align="2",
	class="SLabel",
	zOrder=2,		name="label_10",
	size={	"96",
	"27",
},
	fontsize="24",
	parent="panel_right",
	pos={	209,		456,	},
},

{	img_n="sui/common/division_07.png",
	flip={	false,		false,	},
	parent="panel_right",
	class="SImage",
	is_nine=false,
	name="img_10",
	pos={	52,		463,	},
	zOrder=2,		size={	"78",
	"15",
},
},

{	img_n="sui/common/division_07.png",
	flip={	true,		false,	},
	parent="panel_right",
	class="SImage",
	is_nine=false,
	name="img_11",
	pos={	282,		463,	},
	zOrder=2,		size={	"78",
	"15",
},
},

{	img_n="sui/guild/bossTitleBg1.png",
	flip={	false,		false,	},
	parent="panel_right",
	class="SImage",
	is_nine=true,
	name="img_12",
	pos={	7,		417,	},
	zOrder=1,		child={
{	img_n="sui/guild/bossTitleBg1.png",
	flip={	true,		false,	},
	parent="img_12",
	class="SImage",
	is_nine=true,
	name="img_13",
	pos={	201,		0,	},
	zOrder=1,		size={	"202",
	"40",
},
},

{	str="#c643f0f暂无",
	align="2",
	class="SLabel",
	zOrder=2,		name="label_killer",
	size={	"67",
	"19",
},
	fontsize="18",
	parent="img_12",
	pos={	201,		7,	},
},
},
	size={
"202",

"40",
},
},

{	img_n="",
	flip={	false,		false,	},
	parent="panel_right",
	class="SPanel",
	is_nine=false,
	name="panel_zhaohuan",
	pos={	7,		40,	},
	zOrder=1,		child={
{	img_n="sui/guild/huawen1.png",
	flip={	false,		false,	},
	parent="panel_zhaohuan",
	class="SImage",
	is_nine=false,
	name="img_14",
	pos={	81,		115,	},
	zOrder=1,		size={	"242",
	"226",
},
},

{	str="#ca0561630级BOSS",
	name="boss_name2",
	parent="panel_zhaohuan",
	align="2",
	class="SLabel",
	fontsize="18",
	pos={	202,		95,	},
},

{	str="#c643f17消耗",
	name="label_13",
	parent="panel_zhaohuan",
	align=1,		class="SLabel",
	fontsize="18",
	pos={	129,		66,	},
},

{	img_n="sui/common/huobi_szcc.png",
	flip={	false,		false,	},
	parent="panel_zhaohuan",
	class="SImage",
	is_nine=false,
	name="img_15",
	pos={	180,		56,	},
	zOrder=1,		size={	"40",
	"40",
},
},

{	img_n="sui/guild/weizhaohuan.png",
	flip={	false,		false,	},
	parent="panel_zhaohuan",
	class="SImage",
	is_nine=false,
	name="img_wzh",
	pos={	134,		-2,	},
	zOrder=1,		size={	"138",
	"51",
},
},

{	str="#c965a293000",
	name="label_cost",
	parent="panel_zhaohuan",
	align=1,		class="SLabel",
	fontsize="18",
	pos={	229,		66,	},
},

{	img_s="sui/guild/zhaohuan.png",
	img_n="sui/guild/zhaohuan.png",
	name="btn_zhaohuan",
	pos={	122,		157,	},
	parent="panel_zhaohuan",
	class="SButton",
	zOrder=1,		size={	"163",
	"137",
},
},
},
	isVisible=false,
	size={
"405",

"375",
},
},

{	img_n="",
	flip={	false,		false,	},
	parent="panel_right",
	class="SPanel",
	is_nine=false,
	name="panel_challenge",
	size={	"405",
	"375",
},
	child={
{	img_n="sui/common/role_bg2.png",
	flip={	false,		false,	},
	parent="panel_challenge",
	class="SImage",
	is_nine=false,
	name="img_17",
	size={	"255",
	"292",
},
	zOrder=1,		pos={	75,		42.5,	},
},

{	img_n="sui/guild/bossNameBg.png",
	flip={	false,		false,	},
	parent="panel_challenge",
	class="SImage",
	is_nine=false,
	name="img_18",
	size={	"386",
	"32",
},
	child={
{	str="#ca0541630级BOSS",
	name="boss_name1",
	align="2",
	parent="img_18",
	class="SLabel",
	fontsize="18",
	pos={	201,		5,	},
},
},
	zOrder=1,		pos={
1,	
344,	},
},

{	size={	"139",
	"57",
},
	img_n="sui/common/btn_1.png",
	name="btn_challenge",
	parent="panel_challenge",
	child={
{	str="挑战",
	name="label_16",
	align="2",
	parent="btn_challenge",
	class="SLabel",
	fontsize="24",
	pos={	70,		14,	},
},
},
	class="SButton",
	zOrder=1,		pos={
133,	
-3,	},
},

{	str="#c643f1700:00",
	align="1",
	class="SLabel",
	zOrder=99,		name="label_time",
	pos={	285,		14,	},
	parent="panel_challenge",
	fontsize="18",
	size={	"67",
	"19",
},
},
},
	zOrder=1,		isVisible=false,
	pos={
7,	
40,	},
},
},
	zOrder=1,		pos={
410,	
5,	},
},

{	img_n="sui/guild/bossTitleBg1.png",
	flip={	false,		false,	},
	parent="panel_16",
	class="SImage",
	is_nine=true,
	name="img_2",
	size={	"203",
	"40",
},
	child={
{	str="#c4e2d0e伤害排行",
	name="label_4",
	parent="img_2",
	align=1,		class="SLabel",
	fontsize="24",
	pos={	154,		12,	},
},

{	img_n="sui/common/division_07.png",
	flip={	false,		false,	},
	parent="img_2",
	class="SImage",
	is_nine=false,
	name="img_5",
	pos={	44,		19,	},
	zOrder=1,		size={	"78",
	"15",
},
},

{	img_n="sui/common/division_07.png",
	flip={	true,		false,	},
	parent="img_2",
	class="SImage",
	is_nine=false,
	name="img_6",
	pos={	274,		19,	},
	zOrder=1,		size={	"78",
	"15",
},
},
},
	zOrder=2,		pos={
2,	
457,	},
},

{	img_n="sui/guild/bossTitleBg1.png",
	flip={	true,		false,	},
	parent="panel_16",
	class="SImage",
	is_nine=true,
	name="copy_1",
	pos={	204,		457,	},
	zOrder=1,		size={	"203",
	"40",
},
},
},
	zOrder=2,		pos={
58,	
32,	},
},

{	img_n="sui/common/win_panel.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SImage",
	is_nine=true,
	name="img_bg",
	pos={	32,		18,	},
	isVisible=true,
	zOrder=1,		child={},
	size={
"881",

"563",
},
},

{	img_n="",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=false,
	name="panel_rank",
	pos={	60,		130,	},
	child={
{	img_n="sui/other/paimingdi.png",
	flip={	false,		false,	},
	parent="panel_rank",
	class="SImage",
	is_nine=true,
	name="img_3",
	pos={	0,		318,	},
	zOrder=1,		child={
{	img_n="sui/common/line9.png",
	flip={	false,		false,	},
	parent="img_3",
	class="SImage",
	is_nine=false,
	name="img_4",
	pos={	121,		6,	},
	zOrder=1,		size={	"2",
	"28",
},
},

{	img_n="sui/common/line9.png",
	flip={	false,		false,	},
	parent="img_3",
	class="SImage",
	is_nine=false,
	name="copy_2",
	size={	"2",
	"28",
},
	zOrder=1,		pos={	275,		6,	},
},

{	str="#c643f17排名",
	name="label_1",
	parent="img_3",
	align=1,		class="SLabel",
	fontsize=16,		pos={	43,		10,	},
},

{	str="#c643f17玩家",
	name="label_2",
	parent="img_3",
	align=1,		class="SLabel",
	fontsize=16,		pos={	183,		10,	},
},

{	str="#c643f17伤害",
	name="label_3",
	parent="img_3",
	align=1,		class="SLabel",
	fontsize=16,		pos={	324,		10,	},
},
},
	size={
"406",

"40",
},
},

{	img_n="",
	parent="panel_rank",
	class="SScroll",
	is_nine=true,
	scroll_type=2,		size={	"406",
	"318",
},
	name="rank_scroll",
	zOrder=1,		pos={	0,		0,	},
},
},
	zOrder=2,		isVisible=false,
	size={
"406",

"358",
},
},

{	img_n="",
	flip={	false,		false,	},
	child={
{	img_n="sui/common/roleImage.png",
	flip={	false,		false,	},
	parent="panel_none",
	class="SImage",
	is_nine=false,
	name="img_7",
	pos={	20,		-15,	},
	zOrder=1,		child={
{	img_n="sui/common/qipao2.png",
	flip={	false,		false,	},
	parent="img_7",
	class="SImage",
	is_nine=true,
	name="img_8",
	pos={	154,		235,	},
	zOrder=1,		child={
{	str="#c643f17世族BOSS未召唤，",
	name="label_5",
	parent="img_8",
	align="1",
	class="SLabel",
	fontsize="18",
	pos={	41,		75,	},
},

{	str="#c643f17暂无排名哦~",
	name="label_6",
	parent="img_8",
	align=1,		class="SLabel",
	fontsize="18",
	pos={	41,		49,	},
},
},
	size={
"220",

"118",
},
},
},
	size={
"241",

"278",
},
},
},
	class="SPanel",
	is_nine=false,
	name="panel_none",
	size={
"406",

"358",
},
	parent="win_root",
	zOrder=2,		isVisible=false,
	pos={
"60",

"130",
},
},

{	img_n="sui/common/panel16.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=true,
	name="panel_left_d",
	size={	"400",
	"87",
},
	child={
{	img_n="sui/guild/awardBg1.png",
	flip={	false,		false,	},
	parent="panel_left_d",
	class="SImage",
	is_nine=false,
	name="img_9",
	pos={	3,		0,	},
	zOrder=1,		child={
{	str="#c643f17奖",
	name="label_7",
	parent="img_9",
	align="1",
	class="SLabel",
	fontsize="24",
	pos={	15,		42,	},
},

{	str="#c643f17励",
	name="label_8",
	parent="img_9",
	align=1,		class="SLabel",
	fontsize="24",
	pos={	15,		16,	},
},
},
	size={
"53",

"85",
},
},

{	img_n="sui/common/questCircle.png",
	name="award_rule",
	pos={	332,		22,	},
	parent="panel_left_d",
	class="SButton",
	zOrder=1,		size={	"43",
	"43",
},
},

{	img_n="sui/common/slot_bg.png",
	name="slotitem_2",
	pos={	149,		5,	},
	parent="panel_left_d",
	class="SSlotItem",
	zOrder=1,		size={	"77",
	"77",
},
},

{	img_n="sui/common/slot_bg.png",
	name="slotitem_3",
	pos={	235,		5,	},
	parent="panel_left_d",
	class="SSlotItem",
	zOrder=1,		size={	"77",
	"77",
},
},

{	img_n="sui/common/slot_bg.png",
	name="slotitem_1",
	pos={	"60",
	"5",
},
	parent="panel_left_d",
	class="SSlotItem",
	zOrder=1,		size={	"77",
	"77",
},
},
},
	zOrder=3,		pos={
63,	
37,	},
},
},
	zOrder=1,		size={
"960",

"640",
},

}
