month_card = {
	img_n="",
	child={
{	img_n="",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=true,
	name="panel_1",
	pos={	"0",
	"0",
},
	zOrder=1,		child={
{	img_n="",
	flip={	false,		false,	},
	parent="panel_1",
	class="SPanel",
	is_nine=false,
	name="panel_normal",
	pos={	0,		75,	},
	isVisible=false,
	zOrder=1,		child={
{	img_n="nopack/reward/monCard6.png",
	flip={	false,		false,	},
	parent="panel_normal",
	class="SPanel",
	is_nine=false,
	name="panel_left",
	pos={	"34",
	"20",
},
	zOrder=1,		child={
{	img_n="",
	flip={	false,		false,	},
	parent="panel_left",
	class="SPanel",
	is_nine=false,
	name="panel_left_buy",
	pos={	0,		0,	},
	child={
{	img_n="nopack/reward/yue.png",
	flip={	false,		false,	},
	parent="panel_left_buy",
	class="SPanel",
	is_nine=false,
	name="panel_left_yue",
	size={	"170",
	"177",
},
	zOrder=1,		child={},
	pos={
"115",

"174",
},
},

{	str="#c6d3713立即获得#ced462b60#c6d3713元宝",
	name="label_left_buy_text_1",
	align="2",
	parent="panel_left_buy",
	class="SLabel",
	fontsize=16,		pos={	"120",
	"294",
},
},

{	str="#c6d3713连续#ced462b30#c6d3713天，每日可获得#ced462b30#c6d3713元宝",
	name="label_left_buy_text_2",
	parent="panel_left_buy",
	align="2",
	class="SLabel",
	fontsize=16,		pos={	"120",
	"269",
},
},

{	str="",
	img_n="sui/common/btn2_s.png",
	child={
{	str="￥6",
	name="label_left_money",
	parent="btn_left_buy",
	align="2",
	class="SLabel",
	fontsize="24",
	pos={	66,		14,	},
},
},
	class="SButton",
	zOrder=1,		name="btn_left_buy",
	pos={
"52",

"17",
},
	fontsize="24",
	parent="panel_left_buy",
	size={
"139",

"57",
},
},
},
	zOrder=1,		isVisible=false,
	size={
"242",

"332",
},
},

{	img_n="",
	flip={	false,		false,	},
	child={
{	str="#c643f17月卡天数 #c8d44086/10",
	name="label_left_reward_text_1",
	parent="panel_left_reward",
	align="2",
	class="SLabel",
	fontsize="18",
	pos={	120,		293,	},
},

{	str="",
	img_n="sui/common/btn2_s.png",
	child={
{	str="领取",
	name="label_6",
	align="2",
	parent="btn_left_lq",
	class="SLabel",
	fontsize="24",
	pos={	66,		14,	},
},
},
	class="SButton",
	zOrder=1,		fontsize="24",
	size={
"139",

"57",
},
	parent="panel_left_reward",
	name="btn_left_lq",
	pos={
"51",

"17",
},
},

{	img_n="sui/common/slot_bg.png",
	name="left_slotitem",
	pos={	87,		124,	},
	parent="panel_left_reward",
	class="SSlotItem",
	zOrder=1,		size={	"78",
	"78",
},
},

{	img_n="sui/reward/yilingqu4.png",
	flip={	false,		false,	},
	parent="panel_left_reward",
	class="SImage",
	is_nine=false,
	name="left_ylq",
	isVisible=false,
	pos={	64,		23,	},
	zOrder=1,		size={	"116",
	"45",
},
},
},
	class="SPanel",
	is_nine=false,
	name="panel_left_reward",
	size={
"242",

"332",
},
	isVisible=true,
	parent="panel_left",
	zOrder=1,		pos={
"0",

"0",
},
},
},
	size={
"241",

"331",
},
},

{	img_n="nopack/reward/monCard30.png",
	flip={	false,		false,	},
	parent="panel_normal",
	class="SPanel",
	is_nine=false,
	name="panel_right",
	pos={	"325",
	"20",
},
	zOrder=1,		child={
{	img_n="",
	flip={	false,		false,	},
	child={
{	str="#c643f17月卡天数  #c8d44086/10",
	name="label_right_reward_text_1",
	parent="panel_right_reward",
	align="2",
	class="SLabel",
	fontsize="18",
	pos={	"120",
	"294",
},
},

{	str="",
	img_n="sui/common/btn2_s.png",
	child={
{	str="领取",
	name="label_6",
	align="2",
	parent="btn_right_lq",
	class="SLabel",
	fontsize="24",
	pos={	66,		14,	},
},
},
	class="SButton",
	zOrder=1,		fontsize="24",
	size={
"139",

"57",
},
	isVisible=false,
	parent="panel_right_reward",
	name="btn_right_lq",
	pos={
"51",

"17",
},
},

{	img_n="sui/common/slot_bg.png",
	name="right_slotitem",
	pos={	87,		124,	},
	parent="panel_right_reward",
	class="SSlotItem",
	zOrder=1,		size={	"78",
	"78",
},
},

{	img_n="sui/reward/yilingqu4.png",
	flip={	false,		false,	},
	parent="panel_right_reward",
	class="SImage",
	is_nine=false,
	name="right_ylq",
	size={	"116",
	"45",
},
	zOrder=1,		pos={	"64",
	"23",
},
},
},
	class="SPanel",
	is_nine=false,
	name="panel_right_reward",
	size={
"242",

"332",
},
	isVisible=true,
	parent="panel_right",
	zOrder=1,		pos={
0,	
0,	},
},

{	isVisible=false,
	flip={	false,		false,	},
	parent="panel_right",
	class="SPanel",
	is_nine=false,
	name="panel_right_buy",
	size={	"242",
	"332",
},
	img_n="",
	zOrder=1,		child={
{	img_n="nopack/reward/zun.png",
	flip={	false,		false,	},
	child={},
	class="SPanel",
	is_nine=false,
	name="panel_right_zun",
	pos={
"115",

"174",
},
	parent="panel_right_buy",
	zOrder=1,		size={
"170",

"177",
},
},

{	str="#c6d3713立即获得#ced462b60#c6d3713元宝",
	name="label_right_buy_text_1",
	parent="panel_right_buy",
	align="2",
	class="SLabel",
	fontsize=16,		pos={	"120",
	"294",
},
},

{	str="#c6d3713连续#ced462b30#c6d3713天，每日可获得#ced462b30#c6d3713元宝",
	name="label_right_buy_text_2",
	align="2",
	parent="panel_right_buy",
	class="SLabel",
	fontsize=16,		pos={	"120",
	"269",
},
},

{	str="",
	img_n="sui/common/btn2_s.png",
	child={
{	str="￥98",
	name="label_right_money",
	align="2",
	parent="btn_right_buy",
	class="SLabel",
	fontsize="24",
	pos={	66,		14,	},
},
},
	class="SButton",
	zOrder=1,		fontsize="24",
	size={
"139",

"57",
},
	parent="panel_right_buy",
	name="btn_right_buy",
	pos={
"52",

"17",
},
},
},
	pos={
"0",

"0",
},
},
},
	size={
"241",

"331",
},
},

{	img_n="sui/common/line4.png",
	flip={	false,		false,	},
	parent="panel_normal",
	class="SImage",
	is_nine=true,
	name="img_1",
	pos={	19,		0,	},
	zOrder=1,		size={	"560",
	"4",
},
},

{	img_n="sui/reward/mon_fuli.png",
	name="btn_fuli",
	size={	"249",
	"65",
},
	parent="panel_normal",
	class="SButton",
	zOrder=1,		pos={	178,		362,	},
},
},
	size={
"599",

"434",
},
},

{	img_n="",
	flip={	false,		false,	},
	parent="panel_1",
	class="SPanel",
	is_nine=false,
	name="panel_2",
	pos={	"0",
	"0",
},
	zOrder=1,		child={
{	str="#c643f171、购买月卡花费的金额可累计成VIP经验，月卡奖励需要当天领取。",
	name="label_3",
	parent="panel_2",
	align=1,		class="SLabel",
	fontsize="18",
	pos={	13,		46,	},
},

{	str="#c643f172、同时购买两种月卡，每天即可领取两份大礼~",
	name="copy_2",
	align=1,		parent="panel_2",
	class="SLabel",
	fontsize="18",
	pos={	13,		14,	},
},
},
	size={
"599",

"75",
},
},

{	img_n="",
	flip={	false,		false,	},
	parent="panel_1",
	class="SPanel",
	is_nine=false,
	name="panel_xufei",
	size={	"599",
	"434",
},
	child={
{	img_n="nopack/reward/monCard6.png",
	flip={	false,		false,	},
	parent="panel_xufei",
	class="SPanel",
	is_nine=false,
	name="panel_4",
	size={	"241",
	"331",
},
	child={
{	img_n="",
	flip={	false,		false,	},
	parent="panel_4",
	class="SPanel",
	is_nine=false,
	name="panel_xufei_left_buy",
	size={	"242",
	"332",
},
	isVisible=false,
	zOrder=1,		child={
{	img_n="nopack/reward/yue.png",
	flip={	false,		false,	},
	parent="panel_xufei_left_buy",
	class="SPanel",
	is_nine=false,
	name="panel_xufei_left_yue",
	pos={	"115",
	"174",
},
	child={},
	zOrder=1,		size={
"170",

"177",
},
},

{	str="#c6d3713立即获得#ced462b60#c6d3713元宝",
	name="label_xufei_left_buy_text_1",
	parent="panel_xufei_left_buy",
	align="2",
	class="SLabel",
	fontsize=16,		pos={	"120",
	"294",
},
},

{	str="#c6d3713连续#ced462b30#c6d3713天，每日可获得#ced462b30#c6d3713元宝",
	name="label_xufei_left_buy_text_2",
	align="2",
	parent="panel_xufei_left_buy",
	class="SLabel",
	fontsize=16,		pos={	"120",
	"269",
},
},

{	str="",
	img_n="sui/common/btn2_s.png",
	child={
{	str="￥6",
	name="label_xufei_left_money",
	align="2",
	parent="btn_xufei_left_buy",
	class="SLabel",
	fontsize="24",
	pos={	66,		14,	},
},
},
	class="SButton",
	zOrder=1,		fontsize="24",
	size={
"139",

"57",
},
	parent="panel_xufei_left_buy",
	name="btn_xufei_left_buy",
	pos={
"52",

"17",
},
},
},
	pos={
0,	
0,	},
},
},
	zOrder=1,		pos={
34,	
76,	},
},

{	img_n="nopack/reward/monCard30.png",
	flip={	false,		false,	},
	parent="panel_xufei",
	class="SPanel",
	is_nine=false,
	name="panel_5",
	size={	"241",
	"331",
},
	child={
{	isVisible=false,
	flip={	false,		false,	},
	parent="panel_5",
	class="SPanel",
	is_nine=false,
	name="panel_xufei_right_buy",
	pos={	"0",
	"0",
},
	child={
{	img_n="nopack/reward/zun.png",
	flip={	false,		false,	},
	child={},
	class="SPanel",
	is_nine=false,
	name="panel_xufei_right_zun",
	size={
"170",

"177",
},
	zOrder=1,		parent="panel_xufei_right_buy",
	pos={
"115",

"174",
},
},

{	str="#c6d3713立即获得#ced462b60#c6d3713元宝",
	name="label_xufei_right_buy_text_1",
	align="2",
	parent="panel_xufei_right_buy",
	class="SLabel",
	fontsize=16,		pos={	"120",
	"294",
},
},

{	str="#c6d3713连续#ced462b30#c6d3713天，每日可获得#ced462b30#c6d3713元宝",
	name="label_xufei_right_buy_text_2",
	parent="panel_xufei_right_buy",
	align="2",
	class="SLabel",
	fontsize=16,		pos={	"120",
	"269",
},
},

{	str="",
	img_n="sui/common/btn2_s.png",
	child={
{	str="￥98",
	name="label_xufei_right_money",
	parent="btn_xufei_right_buy",
	align="2",
	class="SLabel",
	fontsize="24",
	pos={	66,		14,	},
},
},
	class="SButton",
	zOrder=1,		fontsize="24",
	pos={
"52",

"17",
},
	name="btn_xufei_right_buy",
	parent="panel_xufei_right_buy",
	size={
"139",

"57",
},
},
},
	zOrder=1,		img_n="",
	size={
"242",

"332",
},
},
},
	zOrder=1,		pos={
325,	
76,	},
},

{	img_n="sui/common/line4.png",
	flip={	false,		false,	},
	parent="panel_xufei",
	class="SImage",
	is_nine=true,
	name="img_1",
	size={	"560",
	"4",
},
	zOrder=1,		pos={	19,		0,	},
},

{	img_n="sui/reward/mon_fanhui.png",
	name="btn_fanhui",
	pos={	178,		6,	},
	parent="panel_xufei",
	class="SButton",
	zOrder=1,		size={	"249",
	"73",
},
},
},
	zOrder=1,		isVisible=false,
	pos={
"0",

"75",
},
},
},
	size={
"599",

"509",
},
},
},
	class="SPanel",
	is_nine=true,
	name="win_root",
	size={
"637",

"525",
},
	parent="ui_root",
	zOrder=1,		pos={
5,	
5,	},

}
