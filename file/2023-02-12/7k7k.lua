
----utf-8-------------qq blue 47 101----

-- apiids = '122';

{
        show = 1,    --是否显示入口

	{
		title = "7k7k贵族礼包",

		{
			id     = 23001,
			title  = "7k7k月费贵族",

			start_time   = '2016-12-17 00:00:00',
			end_time     = '2030-12-30 23:59:59',
			close_time   = '2030-12-31 23:59:59',

			cd_day       = 1,  --每天可领

			task_conditions = {
				vip_type_7k7k = 1,   --7k7k1级
			},

			gift = {
				{id = 12963, num = 1 }, 
				{id = 10000, num = 4},
			},

		},


		{
			id     = 23002,
			title  = "7k7k年费贵族",

			start_time   = '2016-12-17 00:00:00',
			end_time     = '2030-12-30 23:59:59',
			close_time   = '2030-12-31 23:59:59',

			cd_day       = 1,   --每天可完成

			task_conditions = {
				vip_type_7k7k = 2,
			},

			gift = {
				{id = 12963, num = 1 },
			},

		},


		{
			id     = 23003,
			title  = "7k7k贵族新手礼包",

			start_time   = '2016-12-17 00:00:00',
			end_time     = '2030-12-30 23:59:59',
			close_time   = '2030-12-31 23:59:59',

			task_conditions = {
				is_7k7k_vip = 1,     --只能领一次
			},

			gift = {
				{id = 12963, num = 3 },
				{id = 12981, num = 1 },
				{id = 10000, num = 200 },
			},

		},

	},

};



