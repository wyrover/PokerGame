guild_praying_award = {
	img_n="",
	parent="ui_root",
	class="SPanel",
	is_nine=true,
	name="win_root",
	size={	"910",
	"615",
},
	zOrder=1,		child={
{	img_n="",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=true,
	name="award_qifu_panel",
	size={	"450",
	"510",
},
	isVisible=false,
	zOrder=2,		child={
{	img_n="sui/common/title_panel.png",
	flip={	false,		false,	},
	parent="award_qifu_panel",
	class="SPanel",
	is_nine=true,
	name="panel_7",
	size={	"444",
	"57",
},
	child={
{	img_n="sui/common/little_win_title_bg.png",
	flip={	false,		false,	},
	parent="panel_7",
	class="SImage",
	is_nine=true,
	name="img_1",
	size={	"480",
	"53",
},
	child={
{	str="#cf3e2c5祈福成功",
	name="label_1",
	align="2",
	parent="img_1",
	class="SLabel",
	fontsize="26",
	pos={	238,		2,	},
},
},
	zOrder=1,		pos={
-12,	
13,	},
},
},
	zOrder=2,		pos={
3,	
440,	},
},

{	img_n="sui/common/close.png",
	name="sward_qifu_btn_close",
	size={	"66",
	"75",
},
	parent="award_qifu_panel",
	class="SButton",
	zOrder=3,		pos={	"381",
	"437",
},
},

{	img_n="sui/common/panel11.png",
	flip={	false,		false,	},
	parent="award_qifu_panel",
	class="SPanel",
	is_nine=true,
	name="panel_8",
	size={	"401",
	"298",
},
	child={
{	img_n="sui/guild/bg.png",
	flip={	false,		false,	},
	parent="panel_8",
	class="SImage",
	is_nine=false,
	name="img_91",
	size={	"235",
	"41",
},
	child={
{	str="#c824e23获得奖励",
	name="label_31",
	align=1,		parent="img_91",
	class="SLabel",
	fontsize="22",
	pos={	"15",
	"10",
},
},
},
	zOrder=1,		pos={
"-15",

"304",
},
},

{	img_n="",
	parent="panel_8",
	class="SScroll",
	is_nine=true,
	scroll_type=2,		size={	"391",
	"288",
},
	name="scroll_award_qifu",
	zOrder=1,		pos={	"5",
	"5",
},
},
},
	zOrder=2,		pos={
"24",

"83",
},
},

{	str="",
	img_n="sui/common/btn_1.png",
	parent="award_qifu_panel",
	class="SButton",
	zOrder=2,		name="sward_qifu_btn_sure",
	size={	"138",
	"57",
},
	is_nine=false,
	fontsize="24",
	child={
{	str="确定",
	name="label_2",
	align="2",
	parent="sward_qifu_btn_sure",
	class="SLabel",
	fontsize="24",
	pos={	"69",
	"14",
},
},
},
	pos={
"148",

"21",
},
},

{	img_n="sui/common/tipsPanel.png",
	flip={	false,		false,	},
	parent="award_qifu_panel",
	class="SPanel",
	is_nine=true,
	name="panel_1",
	size={	"440",
	"492",
},
	zOrder=1,		pos={	"5",
	"0",
},
},
},
	pos={
"230",

"52.5",
},
},
},
	pos={
"25",

"0",
},

}
