
 




{
    {
        title = "官版专属福利",


       {
            id = 25001,
            title = "官方版本专属每日礼包",
            start_time = '2018-01-01 00:00:00',
            end_time = '2023-12-31 23:59:59',
            close_time = '2023-12-31 23:59:59',
            conditions = {
                version_min = "0.24.0",

            },
            task_conditions = {
                login_day = 1,
            },
            repeat_task = {
                cd = 1, --每天一个周期
                times = 1, --周期内可完成1次
                max = 1000, --最多领100次
                gift_add_up = 0,
            },
            gift = {
                { id = 12851, num = 1 },
                { id = 24805, num = 5 },
				{ id = 20032, num = 5 },
            },

        },

    },

 
{
        title = "迷你基地福利",

        {

            id = 25004,
            title = "迷你基地登录周一礼包",
            start_time = '2018-01-01 00:00:00',
            end_time = '2023-12-31 23:59:59',
            close_time = '2023-12-31 23:59:59',
            conditions = {
                version_min = "0.26.0",
            },
            task_conditions = {
                start_game_out = "help_app_login",
                week_day = 1,
            },

            action = 96,
            action_txt = '前往',
            action_url = "https://www.miniworldbox.com",


            repeat_task = {
                cd = 6, --每天一个周期
                times = 1, --周期内可完成1次
                max = 1000, --最多领100次
            },

            gift = {
                { id = 12851, num = 1 },
            },
        },


        {

            id = 25005,
            title = "迷你基地登录周二礼包",
            start_time = '2018-01-01 00:00:00',
            end_time = '2023-12-31 23:59:59',
            close_time = '2023-12-31 23:59:59',
            conditions = {
                version_min = "0.26.0",
            },
            task_conditions = {
                start_game_out = "help_app_login",
                week_day = 2,
            },

            action = 96,
            action_txt = '前往',
            action_url = "https://www.miniworldbox.com",

            repeat_task = {
                cd = 5, --每天一个周期
                times = 1, --周期内可完成1次
                max = 1000, --最多领100次
            },
            gift = {
                { id = 12963, num = 1 },
            },
        },


        {
            id = 25006,
            title = "迷你基地登录周三礼包",
            start_time = '2018-01-01 00:00:00',
            end_time = '2023-12-31 23:59:59',
            close_time = '2023-12-31 23:59:59',
            conditions = {
                version_min = "0.26.0",
            },
            task_conditions = {
                start_game_out = "help_app_login",
                week_day = 3,
            },

            action = 96,
            action_txt = '前往',
            action_url = "https://www.miniworldbox.com",

            repeat_task = {
                cd = 4, --每天一个周期
                times = 1, --周期内可完成1次
                max = 1000, --最多领100次
            },
            gift = {
                { id = 12964, num = 1 },
            },
        },

        {
            id = 25007,
            title = "迷你基地登录周四礼包",
            start_time = '2018-01-01 00:00:00',
            end_time = '2023-12-31 23:59:59',
            close_time = '2023-12-31 23:59:59',
            conditions = {
                version_min = "0.26.0",
            },
            task_conditions = {
                start_game_out = "help_app_login",
                week_day = 4,
            },

            action = 96,
            action_txt = '前往',
            action_url = "https://www.miniworldbox.com",

            repeat_task = {
                cd = 3, --每天一个周期
                times = 1, --周期内可完成1次
                max = 1000, --最多领100次
            },
            gift = {
                { id = 12962, num = 2 },
            },
        },


        {
            id = 25008,
            title = "迷你基地登录周五礼包",
            start_time = '2018-01-01 00:00:00',
            end_time = '2023-12-31 23:59:59',
            close_time = '2023-12-31 23:59:59',
            conditions = {
                version_min = "0.26.0",
            },
            task_conditions = {
                start_game_out = "help_app_login",
                week_day = 5,
            },

            action = 96,
            action_txt = '前往',
            action_url = "https://www.miniworldbox.com",


            repeat_task = {
                cd = 2, --每天一个周期
                times = 1, --周期内可完成1次
                max = 1000, --最多领100次
            },
            gift = {
                { id = 10000, num = 10 },
            },
        },


        {
            id = 25009,
            title = "迷你基地登录周六礼包",
            start_time = '2018-01-01 00:00:00',
            end_time = '2023-12-31 23:59:59',
            close_time = '2023-12-31 23:59:59',
            conditions = {
                version_min = "0.26.0",
            },
            task_conditions = {
                start_game_out = "help_app_login",
                week_day = 6,
            },
            action = 96,
            action_txt = '前往',
            action_url = "https://www.miniworldbox.com",


            repeat_task = {
                cd = 1, --每天一个周期
                times = 1, --周期内可完成1次
                max = 1000, --最多领100次
            },
            gift = {
                { id = 20035, num = 2 },
                { id = 12851, num = 1 },
            },
        },

        {
            id = 25011,
            title = "迷你基地登录周日礼包",
            start_time = '2018-01-01 00:00:00',
            end_time = '2023-12-31 23:59:59',
            close_time = '2023-12-31 23:59:59',
            conditions = {
                version_min = "0.26.0",
            },
            task_conditions = {
                start_game_out = "help_app_login",
                week_day = 7,
            },
            action = 96,
            action_txt = '前往',
            action_url = "https://www.miniworldbox.com",


            repeat_task = {
                cd = 1, --每天一个周期
                times = 1, --周期内可完成1次
                max = 1000, --最多领100次
            },
            gift = {
                { id = 20035, num = 3 },
                { id = 12851, num = 1 },
            },
        },

},



	xianqian = {		
		title="先遣服资格获取",

		txt1="如何获取先遣服资料",
		txt2="1.申请先遣服资格需为官方版本迷你号\n2.申请成功后，请耐心等待系统审核。申请结果可于次月1-10日在申请页面查询\n3.每个迷你号只允许同时使用一个先遣服账号\n4.先遣服账号超过三个月未登录将被封停",
		txt3="注: 1.申请时间为#cff0000每月11日至当月最后一日#n\n     2.先遣服账号有限，官方将视实际情况调整每月发放数量。\n        若部分时期先遣服人数达到最大值，则对应月份将不予发放先遣服账号",
		url_list = {
			pc = "s4_https://www.mini1.cn/experience/index.html",
			mb = "s4_https://www.mini1.cn/experience/",
		}
	},

};








