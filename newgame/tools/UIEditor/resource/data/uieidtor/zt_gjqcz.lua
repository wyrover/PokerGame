zt_gjqcz = {
	pos={	5,		5,	},
	img_n="",
	name="win_root",
	parent="ui_root",
	child={
{	img_n="",
	flip={	false,		false,	},
	parent="win_root",
	class="SPanel",
	is_nine=true,
	name="panel_1",
	pos={	"-5",
	"-5",
},
	zOrder=1,		child={
{	img_n="nopack/reward/gjqcz.png",
	flip={	false,		false,	},
	parent="panel_1",
	class="SImage",
	is_nine=false,
	name="img_2",
	pos={	10,		350,	},
	zOrder=1,		child={
{	str="#cfff0d9双倍奖励盛宴开启",
	name="label_2",
	parent="img_2",
	align=1,		class="SLabel",
	fontsize="20",
	pos={	10,		105,	},
},

{	str="#cfff0d9活动期间参与下列玩法",
	name="label_3",
	parent="img_2",
	align=1,		class="SLabel",
	fontsize="20",
	pos={	10,		80,	},
},
},
	size={
"579",

"186",
},
},

{	pos={	140,		325,	},
	img_n="sui/common/division_06.png",
	name="img_3",
	flip={	false,		false,	},
	parent="panel_1",
	class="SImage",
	is_nine=false,
	size={	78,		15,	},
},

{	size={	78,		15,	},
	img_n="sui/common/division_06.png",
	name="copy_1",
	flip={	true,		false,	},
	parent="panel_1",
	class="SImage",
	is_nine=false,
	pos={	385,		325,	},
},

{	str="#c4C2D0C今日双倍活动",
	isVisible=false,
	name="label_1",
	parent="panel_1",
	align="2",
	class="SLabel",
	fontsize="24",
	pos={	"300",
	"318",
},
},

{	img_n="sui/common/panel11_2.png",
	parent="panel_1",
	class="SScroll",
	is_nine=true,
	scroll_type=2,		pos={	13,		15,	},
	zOrder=1,		name="scroll_1",
	size={	"575",
	"300",
},
},
},
	size={
"603",

"511",
},
},
},
	class="SPanel",
	is_nine=true,
	size={
950,	
630,	},

}
