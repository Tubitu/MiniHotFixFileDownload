
----utf-8-------------qq blue 47 101----

-- apiids = '47,101,999';

{
	{
		title = "蓝钻贵族每日礼包",

		{
			id     = 21001,
			title  = "蓝钻 vip1",

			start_time   = '2016-12-17 00:00:00',
			end_time     = '2030-12-30 23:59:59',
			close_time   = '2030-12-31 23:59:59',

			cd_day       = 1,  --每天可领

			task_conditions = {
				blue_vip_level = 1,   --蓝钻1级
			},

			gift = {
				{id = 12963, num = 1 },
				{id = 10000, num = 4},
			},

		},


		{
			id     = 21002,
			title  = "蓝钻 vip2",

			start_time   = '2016-12-17 00:00:00',
			end_time     = '2030-12-30 23:59:59',
			close_time   = '2030-12-31 23:59:59',

			cd_day       = 1,  --每天可领

			task_conditions = {
				blue_vip_level = 2,   --蓝钻2级
			},

			gift = {
				{id = 12963, num = 1 },
				{id = 10000, num = 6 },
			},

		},


		{
			id     = 21003,
			title  = "蓝钻 vip3",

			start_time   = '2016-12-17 00:00:00',
			end_time     = '2030-12-30 23:59:59',
			close_time   = '2030-12-31 23:59:59',

			cd_day       = 1,

			task_conditions = {
				blue_vip_level = 3,   --蓝钻3级
			},

			gift = {
				{id = 12963, num = 1 },
				{id = 10000, num = 8 },
			},

		},

		{
			id     = 21004,
			title  = "蓝钻 vip4",

			start_time   = '2016-12-17 00:00:00',
			end_time     = '2030-12-30 23:59:59',
			close_time   = '2030-12-31 23:59:59',

			cd_day       = 1,

			task_conditions = {
				blue_vip_level = 4,   --蓝钻4级
			},

			gift = {
				{id = 12963, num = 1 },
				{id = 10000, num = 10 },
			},

		},

		{
			id     = 21005,
			title  = "蓝钻 vip5",

			start_time   = '2016-12-17 00:00:00',
			end_time     = '2030-12-30 23:59:59',
			close_time   = '2030-12-31 23:59:59',

			cd_day       = 1,

			task_conditions = {
				blue_vip_level = 5,   --蓝钻5级
			},

			gift = {
				{id = 12963, num = 1 },
				{id = 10000, num = 12 },
			},

		},

		{
			id     = 21006,
			title  = "蓝钻 vip6",

			start_time   = '2016-12-17 00:00:00',
			end_time     = '2030-12-30 23:59:59',
			close_time   = '2030-12-31 23:59:59',

			cd_day       = 1,

			task_conditions = {
				blue_vip_level = 6,   --蓝钻6级
			},

			gift = {
				{id = 12963, num = 1 },
				{id = 10000, num = 14 },
			},

		},

		{
			id     = 21007,
			title  = "蓝钻 vip7",

			start_time   = '2016-12-17 00:00:00',
			end_time     = '2030-12-30 23:59:59',
			close_time   = '2030-12-31 23:59:59',

			cd_day       = 1,

			task_conditions = {
				blue_vip_level = 7,   --蓝钻7级
			},

			gift = {
				{id = 12963, num = 1 },
				{id = 10000, num = 16 },
			},

		},
		
	},
	


	{
		title = "蓝钻额外获得",

		{
			id     = 21010,
			title  = "蓝钻豪华版额外获取",

			start_time   = '2016-12-17 00:00:00',
			end_time     = '2030-12-30 23:59:59',
			close_time   = '2030-12-31 23:59:59',

			cd_day       = 1,   --每天可完成

			task_conditions = {
				is_super_blue_vip = 1,
			},

			gift = {
				{id = 12962, num = 1 },
			},

		},


		{
			id     = 21011,
			title  = "年费蓝钻贵族额外获取",

			start_time   = '2016-12-17 00:00:00',
			end_time     = '2030-12-30 23:59:59',
			close_time   = '2030-12-31 23:59:59',

			cd_day       = 1,   --每天可完成

			task_conditions = {
				is_blue_year_vip = 1,
			},

			gift = {
				{id = 12963, num = 1 },
			},

		},


		{
			id     = 21012,
			title  = "蓝钻规则新手礼包",

			start_time   = '2016-12-17 00:00:00',
			end_time     = '2030-12-30 23:59:59',
			close_time   = '2030-12-31 23:59:59',

			task_conditions = {
				is_blue_vip = 1,         			--只能领一次
			},

			gift = {
				{id = 12963, num = 3 },
				{id = 12981, num = 1 },
				{id = 10000, num = 200 },
			},

		},

	},

};



