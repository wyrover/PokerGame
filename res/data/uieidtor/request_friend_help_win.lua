request_friend_help_win = {
	size={	950,		630,	},
	img_n="",
	name="win_root",
	child={
{	img_n="sui/common/tipsPanel.png",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=true,
	name="panel_1",
	pos={	192,		13,	},
	child={
{	img_n="sui/public/txt_title.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SImage",
	is_nine=false,
	name="img_1",
	size={	"336",
	"47",
},
	child={
{	img_n="sui/fuhuo/qiuzhuhaoyou.png",
	flip={	false,		false,	},
	parent="img_1",
	class="SImage",
	is_nine=false,
	name="img_22",
	size={	"96",
	"24",
},
	zOrder=1,		pos={	118,		12,	},
},
},
	zOrder=1,		pos={
97,	
526,	},
},

{	size={	"144",
	"60",
},
	img_n="sui/common/btn_1.png",
	name="help_btn",
	parent="panel_1",
	child={
{	str="#ca65813求助好友",
	name="label_15",
	align=1,		parent="help_btn",
	class="SLabel",
	fontsize="24",
	pos={	23,		18.5,	},
},
},
	class="SButton",
	zOrder=1,		pos={
199,	
22,	},
},

{	img_n="sui/common/close.png",
	name="btn_close",
	size={	"62",
	"57",
},
	parent="panel_1",
	class="SButton",
	zOrder=1,		pos={	454,		503,	},
},

{	img_n="sui/public/bg_01.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SPanel",
	is_nine=true,
	name="panel_2",
	size={	"475",
	"410",
},
	child={
{	str="#c854c0f求助名单",
	name="label_1",
	align=1,		parent="panel_2",
	class="SLabel",
	fontsize="18",
	pos={	11,		364.5,	},
},

{	str="#c854c0f留言",
	name="label_2",
	align=1,		parent="panel_2",
	class="SLabel",
	fontsize="18",
	pos={	12,		314.5,	},
},

{	size={	"122",
	"51",
},
	img_n="sui/common/btn6.png",
	name="select_friend_btn",
	parent="panel_2",
	child={
{	str="#c885e38选择好友",
	name="label_3",
	align=1,		parent="select_friend_btn",
	class="SLabel",
	fontsize="20",
	pos={	19,		14.5,	},
},
},
	class="SButton",
	zOrder=1,		pos={
351,	
349,	},
},

{	img_n="sui/common/panel5.png",
	flip={	false,		false,	},
	parent="panel_2",
	class="SPanel",
	is_nine=true,
	name="message_bg",
	size={	"450",
	"295",
},
	child={
{	str="#c734e0f0/30",
	name="word_count_lb",
	align="3",
	parent="message_bg",
	class="SLabel",
	fontsize=16,		pos={	439,		4.5,	},
},
},
	zOrder=1,		pos={
12,	
13,	},
},

{	img_n="sui/common/panel5.png",
	flip={	false,		false,	},
	parent="panel_2",
	class="SPanel",
	is_nine=true,
	name="select_bg",
	size={	"251",
	"42",
},
	zOrder=1,		child={
{	img_n="",
	parent="select_bg",
	class="SScroll",
	is_nine=true,
	scroll_type=1,		size={	"251",
	"40",
},
	name="help_list_scr",
	zOrder=1,		pos={	0,		2,	},
},
},
	pos={
95,	
355,	},
},
},
	zOrder=1,		pos={
27,	
85,	},
},
},
	zOrder=1,		size={
"530",

"565",
},
},
},
	parent="ui_root",
	class="SPanel",
	is_nine=true,
	pos={
5,	
5,	},

}