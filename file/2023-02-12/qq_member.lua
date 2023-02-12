
----utf-8-------------qq member 999----

-- apiids = '999';

{
        show = 1,    --是否显示入口

	{
		title = "会员礼包",

		{
			id     = 24001,
			title  = "会员每日礼包",

			start_time   = '2016-12-17 00:00:00',
			end_time     = '2030-12-30 23:59:59',
			close_time   = '2030-12-31 23:59:59',

			cd_day       = 1,  --每天可领

			task_conditions = {
				is_qq_member_vip = 1,
			},

			gift = {
				{id = 12963, num = 1 }, 
				{id = 10000, num = 4},
			},

		},


		{
			id     = 24010,
			title  = "会员新手礼包",

			start_time   = '2016-12-17 00:00:00',
			end_time     = '2030-12-30 23:59:59',
			close_time   = '2030-12-31 23:59:59',

			task_conditions = {
				is_qq_member_vip = 1,
			},

			gift = {
				{id = 12963, num = 3 },
				{id = 12981, num = 1 },
				{id = 10000, num = 200 },
			},

		},

	},

};



