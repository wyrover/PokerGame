partner_fusion_win = {
	img_n="",
	parent="ui_root",
	class="SPanel",
	is_nine=true,
	name="win_root",
	size={	"960",
	"640",
},
	zOrder=1,		child={
{	img_n="",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=true,
	name="panel_rank",
	size={	"684",
	"516",
},
	child={
{	img_n="sui/common/close.png",
	name="btn_close",
	size={	"66",
	"75",
},
	parent="panel_rank",
	class="SButton",
	zOrder=12,		pos={	597,		449,	},
},

{	img_n="sui/common/tipsPanel.png",
	flip={	false,		false,	},
	parent="panel_rank",
	class="SImage",
	is_nine=true,
	name="img_2",
	size={	"661",
	"506",
},
	child={
{	img_n="sui/common/win_down.png",
	flip={	false,		false,	},
	parent="img_2",
	class="SImage",
	is_nine=true,
	name="img_3",
	size={	"679",
	"10",
},
	zOrder=1,		pos={	-10,		0,	},
},

{	img_n="sui/common/title_panel.png",
	flip={	false,		false,	},
	parent="img_2",
	class="SImage",
	is_nine=true,
	name="img_4",
	size={	"670",
	"57",
},
	child={
{	str="#cf3e2c5继承",
	name="label_4",
	align="2",
	parent="img_4",
	class="SLabel",
	fontsize="26",
	pos={	"335",
	"11",
},
},
},
	zOrder=1,		pos={
-3,	
456,	},
},

{	img_n="sui/common/little_win_title_bg.png",
	flip={	false,		false,	},
	parent="img_2",
	class="SPanel",
	is_nine=true,
	name="panel_20",
	isVisible=false,
	size={	"700",
	"53",
},
	child={},
	zOrder=5,		pos={
-16,	
466,	},
},
},
	zOrder=1,		pos={
10,	
0,	},
},

{	img_n="sui/common/panel12.png",
	flip={	false,		false,	},
	parent="panel_rank",
	class="SPanel",
	is_nine=true,
	name="panel_2",
	size={	"621",
	"421",
},
	child={
{	img_n="sui/common/input_frame.png",
	flip={	false,		false,	},
	parent="panel_2",
	class="SPanel",
	is_nine=true,
	name="panel_11",
	size={	"210",
	"354",
},
	child={
{	img_n="sui/partner/cgx_btm.png",
	flip={	false,		false,	},
	parent="panel_11",
	class="SPanel",
	is_nine=false,
	name="panel_13",
	size={	"187",
	"37",
},
	child={
{	str="#c4D2E0D主",
	name="label_3",
	align="2",
	parent="panel_13",
	class="SLabel",
	fontsize="22",
	pos={	93,		6,	},
},
},
	zOrder=1,		pos={
13,	
294,	},
},

{	img_n="sui/partner/cgx_hw1.png",
	flip={	false,		false,	},
	parent="panel_11",
	class="SPanel",
	is_nine=false,
	name="panel_15",
	size={	"149",
	"140",
},
	zOrder=1,		pos={	30,		149,	},
},

{	img_n="sui/common/panel2_2.png",
	flip={	false,		false,	},
	parent="panel_11",
	class="SPanel",
	is_nine=true,
	name="panel_17",
	size={	"186",
	"116",
},
	child={
{	str="#c624115等    级",
	name="label_9",
	align=1,		parent="panel_17",
	class="SLabel",
	fontsize=16,		pos={	19,		75,	},
},

{	str="#c624115潜    力",
	name="copy_5",
	parent="panel_17",
	align=1,		class="SLabel",
	fontsize=16,		pos={	19,		48,	},
},

{	str="#c624115资    质",
	name="copy_11",
	align=1,		parent="panel_17",
	class="SLabel",
	fontsize=16,		pos={	19,		21,	},
},

{	str="",
	name="lv_m",
	align=1,		parent="panel_17",
	class="SLabel",
	fontsize=16,		pos={	110,		75,	},
},

{	str="",
	name="ql_m",
	align=1,		parent="panel_17",
	class="SLabel",
	fontsize=16,		pos={	110,		48,	},
},

{	str="",
	name="zz_m",
	align=1,		parent="panel_17",
	class="SLabel",
	fontsize=16,		pos={	110,		21,	},
},
},
	zOrder=1,		pos={
12,	
12,	},
},

{	img_n="sui/common/slot_bg.png",
	name="slot_m",
	pos={	66,		178,	},
	parent="panel_11",
	class="SSlotItem",
	zOrder=2,		size={	"78",
	"78",
},
},
},
	zOrder=1,		pos={
"23",

"50",
},
},

{	img_n="sui/common/input_frame.png",
	flip={	false,		false,	},
	parent="panel_2",
	class="SPanel",
	is_nine=true,
	name="copy_1",
	pos={	390,		50,	},
	zOrder=1,		child={
{	img_n="sui/partner/cgx_btm.png",
	flip={	false,		false,	},
	parent="copy_1",
	class="SPanel",
	is_nine=false,
	name="panel_14",
	size={	"187",
	"37",
},
	child={
{	str="#c4D2E0D副",
	name="label_7",
	align="2",
	parent="panel_14",
	class="SLabel",
	fontsize="22",
	pos={	93,		5,	},
},
},
	zOrder=1,		pos={
12,	
294,	},
},

{	img_n="sui/partner/cgx_hw1.png",
	flip={	false,		false,	},
	parent="copy_1",
	class="SPanel",
	is_nine=false,
	name="panel_16",
	size={	"149",
	"140",
},
	zOrder=1,		pos={	30,		149,	},
},

{	img_n="sui/common/panel2_2.png",
	flip={	false,		false,	},
	parent="copy_1",
	class="SPanel",
	is_nine=true,
	name="panel_18",
	size={	"186",
	"116",
},
	child={
{	str="#c624115资    质",
	name="label_11",
	align=1,		parent="panel_18",
	class="SLabel",
	fontsize=16,		pos={	19,		21,	},
},

{	str="#c624115等    级",
	name="copy_12",
	parent="panel_18",
	align=1,		class="SLabel",
	fontsize=16,		pos={	19,		75,	},
},

{	str="#c624115潜    力",
	name="copy_13",
	align=1,		parent="panel_18",
	class="SLabel",
	fontsize=16,		pos={	19,		48,	},
},

{	str="",
	name="zz_s",
	align=1,		parent="panel_18",
	class="SLabel",
	fontsize=16,		pos={	108,		21,	},
},

{	str="",
	name="ql_s",
	align=1,		parent="panel_18",
	class="SLabel",
	fontsize=16,		pos={	108,		48,	},
},

{	str="",
	name="lv_s",
	align=1,		parent="panel_18",
	class="SLabel",
	fontsize=16,		pos={	108,		75,	},
},
},
	zOrder=1,		pos={
12,	
12,	},
},

{	img_n="sui/common/slot_bg.png",
	name="slot_s",
	size={	"78",
	"78",
},
	parent="copy_1",
	class="SSlotItem",
	zOrder=2,		pos={	66,		178,	},
},

{	img_n="sui/common/jia3.png",
	name="btn_slt",
	size={	"64",
	"64",
},
	parent="copy_1",
	class="SButton",
	zOrder=3,		pos={	73,		184,	},
},
},
	size={
"210",

"354",
},
},

{	img_n="sui/partner/cgx_hw2.png",
	flip={	true,		false,	},
	parent="panel_2",
	class="SPanel",
	is_nine=false,
	name="panel_12",
	size={	"88",
	"216",
},
	zOrder=1,		pos={	314,		136,	},
},

{	img_n="sui/partner/cgx_hw2.png",
	flip={	false,		false,	},
	parent="panel_2",
	class="SPanel",
	is_nine=false,
	name="copy_2",
	pos={	222,		136,	},
	zOrder=1,		size={	"88",
	"216",
},
},

{	img_n="sui/partner/cgx_hecheng.png",
	name="btn_hecheng",
	size={	"100",
	"102",
},
	parent="panel_2",
	class="SButton",
	zOrder=1,		pos={	260,		193,	},
},

{	img_n="sui/partner/cgx_eye.png",
	name="btn_yulan",
	size={	"67",
	"65",
},
	parent="panel_2",
	class="SButton",
	zOrder=1,		pos={	277,		96,	},
},

{	str="#c644116预览",
	name="label_1",
	align="2",
	parent="panel_2",
	class="SLabel",
	fontsize="18",
	pos={	310,		69,	},
},

{	str="#c885A26合成的伙伴会保留两者属性的最大值，保留主伙伴形象哦！",
	name="label_2",
	align="2",
	parent="panel_2",
	class="SLabel",
	fontsize=16,		pos={	308,		19,	},
},
},
	zOrder=1,		pos={
31,	
26,	},
},
},
	zOrder=1,		pos={
147,	
67,	},
},
},
	pos={
0,	
0,	},

}
