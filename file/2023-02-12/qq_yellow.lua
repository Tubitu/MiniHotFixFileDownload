
----utf-8-------------qq yellow 47 101----

-- apiids = '109,999';

{
	{
		title = "黄钻贵族每日礼包",

		{
			id     = 22001,
			title  = "黄钻 vip1",

			start_time   = '2016-12-17 00:00:00',
			end_time     = '2030-12-30 23:59:59',
			close_time   = '2030-12-31 23:59:59',

			cd_day       = 1,  --每天可领

			task_conditions = {
				yellow_vip_level = 1,   --黄钻1级
			},

			gift = {
				{id = 12963, num = 1 },
				{id = 10000, num = 4},
			},

		},


		{
			id     = 22002,
			title  = "黄钻 vip2",

			start_time   = '2016-12-17 00:00:00',
			end_time     = '2030-12-30 23:59:59',
			close_time   = '2030-12-31 23:59:59',

			cd_day       = 1,  --每天可领

			task_conditions = {
				yellow_vip_level = 2,   --黄钻2级
			},

			gift = {
				{id = 12963, num = 1 },
				{id = 10000, num = 6 },
			},

		},


		{
			id     = 22003,
			title  = "黄钻 vip3",

			start_time   = '2016-12-17 00:00:00',
			end_time     = '2030-12-30 23:59:59',
			close_time   = '2030-12-31 23:59:59',

			cd_day       = 1,

			task_conditions = {
				yellow_vip_level = 3,   --黄钻3级
			},

			gift = {
				{id = 12963, num = 1 },
				{id = 10000, num = 8 },
			},

		},

		{
			id     = 22004,
			title  = "黄钻 vip4",

			start_time   = '2016-12-17 00:00:00',
			end_time     = '2030-12-30 23:59:59',
			close_time   = '2030-12-31 23:59:59',

			cd_day       = 1,

			task_conditions = {
				yellow_vip_level = 4,   --黄钻4级
			},

			gift = {
				{id = 12963, num = 1 },
				{id = 10000, num = 10 },
			},

		},

		{
			id     = 22005,
			title  = "黄钻 vip5",

			start_time   = '2016-12-17 00:00:00',
			end_time     = '2030-12-30 23:59:59',
			close_time   = '2030-12-31 23:59:59',

			cd_day       = 1,

			task_conditions = {
				yellow_vip_level = 5,   --黄钻5级
			},

			gift = {
				{id = 12963, num = 1 },
				{id = 10000, num = 12 },
			},

		},

		{
			id     = 22006,
			title  = "黄钻 vip6",

			start_time   = '2016-12-17 00:00:00',
			end_time     = '2030-12-30 23:59:59',
			close_time   = '2030-12-31 23:59:59',

			cd_day       = 1,

			task_conditions = {
				yellow_vip_level = 6,   --黄钻6级
			},

			gift = {
				{id = 12963, num = 1 },
				{id = 10000, num = 14 },
			},

		},

		{
			id     = 22007,
			title  = "黄钻 vip7",

			start_time   = '2016-12-17 00:00:00',
			end_time     = '2030-12-30 23:59:59',
			close_time   = '2030-12-31 23:59:59',

			cd_day       = 1,

			task_conditions = {
				yellow_vip_level = 7,   --黄钻7级
			},

			gift = {
				{id = 12963, num = 1 },
				{id = 10000, num = 16 },
			},

		},
		
	},
	


	{
		title = "黄钻额外获得",

		{
			id     = 22010,
			title  = "黄钻豪华版额外获取",

			start_time   = '2016-12-17 00:00:00',
			end_time     = '2030-12-30 23:59:59',
			close_time   = '2030-12-31 23:59:59',

			cd_day       = 1,   --每天可完成

			task_conditions = {
				is_super_yellow_vip = 1,
			},

			gift = {
				{id = 12962, num = 1 },
			},

		},


		{
			id     = 22011,
			title  = "年费黄钻贵族额外获取",

			start_time   = '2016-12-17 00:00:00',
			end_time     = '2030-12-30 23:59:59',
			close_time   = '2030-12-31 23:59:59',

			cd_day       = 1,   --每天可完成

			task_conditions = {
				is_yellow_year_vip = 1,
			},

			gift = {
				{id = 12963, num = 1 },
			},

		},


		{
			id     = 22012,
			title  = "黄钻规则新手礼包",

			start_time   = '2016-12-17 00:00:00',
			end_time     = '2030-12-30 23:59:59',
			close_time   = '2030-12-31 23:59:59',

			task_conditions = {
				is_yellow_vip = 1,         			--只能领一次
			},

			gift = {
				{id = 12963, num = 3 },
				{id = 12981, num = 1 },
				{id = 10000, num = 200 },
			},

		},

	},

};



