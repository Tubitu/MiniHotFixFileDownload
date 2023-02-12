-- type标签类型:
-- 1.新手任务，注册账号时间在7天内可激活
-- event事件类型:
-- 	1.地图体验次数, 2.地图体验时长, 3.创造地图, 4.下载地图, 5.充值, 
--	6.收藏地图, 7.任务完成数，8.跳转，9.联机地图游戏次数，10.使用迷你币次数，11.兑换CDKEY次数，
--	12.收获金果实，13.全民创造活动参赛，14.赛事页面投票，15.上传/更新地图时添加话题，16.创建自定义话题，
--  17.分享赛事作品
-- jump位置:
-- 1.商城
{
    -- 	demo --------------------------------------
	-- 	control = 1;							-- 总控 0:关闭,1:开启
    -- 	[标签id] = {							-- 标签id互相独立
    --     	type = 0; 							-- 标签类型
	--	   	duration = 10 * 24;					-- 持续时间(小时)
	--	   	startTime = '2021-05-24';			-- 开启时间
	-- 	   	endTime = '3021-06-24';				-- 结束时间
	--      versionMin = '0.0.0';				-- 最低版本限制
	--		ABTest = {key,key,..};				-- ABTest实验
	--	   	...									-- 其他自定义扩展
    --     	mission = {
    --         	[任务id] = {         			-- 单标签下id互相独立
    --             	apiid = '1,2,3,4';			-- 渠道限制
	--			   	daily = 1;					-- 每日刷新
	--				weekly = 1;					-- 每周刷新
	--			   	... 						-- 其他自定义扩展
    --             	name = "";
    --             	event = 0;					-- 事件类型
	--				jump = 0;					-- 跳转位置
    --             	target = 0;					-- 目标
    --             	bonus = {					-- 奖励
    --              	{itemId = 0, num = 0};
    --                 	{itemId = 0, num = 0};
    --            	};
	--				selectBonus = {				-- 选择性奖励
	--					[奖励id] = {
	--						maleDefault = 1;	-- 男性默认展示
	--						femaleDefault = 1;	-- 女性默认展示
	--						{itemId = 0, num = 0};
	--						{itemId = 0, num = 0};
	--					};
	--				};
    --        	};
    --     	};
	-- 	};
	control = 1;
    [1] = {
        type = 1;
		duration = 10 * 24;
		versionMin = '1.1.0';
        mission = {
			[1] = {
                name = '每日体验地图1次';
				daily = 1;
                event = 1;
                target = 1;
                bonus = {
                    {itemId = 12988, num = 1};
                };
            };
 			[2] = {
                name = '每日体验地图3次';
				daily = 1;
                event = 1;
                target = 3;
                bonus = {
                    {itemId = 20036, num = 5};
                };
            };
            [3] = {
                name = '每日单次体验地图10s';
				daily = 1;
                event = 2;
                target = 10;
                bonus = {
                    {itemId = 12961, num = 1};
                };
            };
            [4] = {
                name = '每日单次体验地图30s';
				daily = 1;
                event = 2;
                target = 30;
                bonus = {
                    {itemId = 12950, num = 10};
                };
            };
            [5] = {
                name = '每日收藏1个地图';
				daily = 1;
                event = 6;
                target = 1;
                bonus = {
                    {itemId = 12833, num = 1};
                };  
            };
            [6] = {
                name = '每日下载1个地图';
				daily = 1;
                event = 4;
                target = 1;
                bonus = {
                    {itemId = 12834, num = 1};
                };
            };
            [7] = {
                name = '每日创造1个地图';
				daily = 1;
                event = 3;
                target = 1;
                bonus = {
                    {itemId = 12851, num = 1};
                };
            };
            [8] = {
                name = '充值任意金额';
                event = 5;
                target = 1;
                bonus = {
                    {itemId = 21073, num = 1};
                };
            };
            [9] = {
                name = '每日浏览商城';
				daily = 1;
                event = 8;
				jump = 1;
                target = 1;
                bonus = {
                    {itemId = 12963, num = 1};
                };
            };
			[10] = {
				name = '完成12个任务领部件';
				event = 7;
				target = 12;
				selectBonus = {
					[1] = {
						{itemId = 22400, num = 1};
						{itemId = 22401, num = 1};
					};
					[2] = {
						maleDefault = 1;
						{itemId = 21998, num = 1};
						{itemId = 21932, num = 1};
					};
					[3] = {
						femaleDefault = 1;
						{itemId = 21614, num = 1};
						{itemId = 21754, num = 1};
					};
				};
			};
        };
    };
	[2] = {
		type = 2;
		duration = 24 * 999;
		versionMin = '1.2.5';
		auto = 1;
		mission = {
			[1] = {
                name = '联机地图游戏%d/%d次';
				startTime = '2021-05-24';
				endTime = '2021-09-01';
				daily = 1;
                event = 9;
                target = 3;
				jump = 11;
                bonus = {
                    {itemId = 'mis_item_1', num = 1};
                };
            };
			[2] = {
                name = '单次体验地图180秒';
				startTime = '2021-05-24';
				endTime = '2021-09-01';
				daily = 1;
                event = 2;
                target = 180;
				jump = 11;
                bonus = {
                    {itemId = 'mis_item_1', num = 1};
                };
            };
			[3] = {
                name = '下载%d/%d个地图';
				startTime = '2021-05-24';
				endTime = '2021-09-01';
				daily = 1;
                event = 4;
                target = 2;
				jump = 10;
                bonus = {
                    {itemId = 'mis_item_1', num = 1};
                };
            };
			[4] = {
                name = '商城使用迷你币购物';
				startTime = '2021-05-24';
				endTime = '2021-09-01';
				daily = 1;
                event = 10;
                target = 1;
				jump = 30;
                bonus = {
                    {itemId = 'mis_item_1', num = 1};
                };
            };
			[5] = {
                name = '成功兑换%d/%d次cdkey';
				startTime = '2021-05-24';
				endTime = '2021-09-01';
				daily = 1;
                event = 11;
                target = 1;
				jump = 9;
                bonus = {
                    {itemId = 'mis_item_1', num = 1};
                };
            };
			[6] = {
                name = '使用迷你豆收获%d/%d次金果实';
				startTime = '2021-05-24';
				endTime = '2021-09-01';
				daily = 1;
                event = 12;
                target = 1;
				jump = 6;
                bonus = {
                    {itemId = 'mis_item_1', num = 1};
                };
            };
			[7] = {
                name = '全民创造节活动参赛';
				startTime = '2021-07-12';
				endTime = '2021-08-31';
                event = 13;
                target = 1;
				jump = 's4_https://sso.mini1.cn/ssourl/#/transit?url=https://qmcz.mini1.cn/join';
                bonus = {
                    {itemId = 'mis_item_1', num = 1};
                };
            };
			[8] = {
                name = '赛事页面进行1次点赞';
				startTime = '2021-07-12';
				endTime = '2021-08-31';
				daily = 1;
                event = 14;
                target = 1;
				jump = 's4_https://sso.mini1.cn/ssourl/#/transit?url=https://qmcz.mini1.cn/works/';
                bonus = {
                    {itemId = 'mis_item_1', num = 1};
                };
            };
			[9] = {
                name = '分享1次赛事作品';
				startTime = '2021-07-12';
				endTime = '2021-08-31';
				daily = 1;
                event = 17;
                target = 1;
				jump = 's4_https://sso.mini1.cn/ssourl/#/transit?url=https://qmcz.mini1.cn/works/';
                bonus = {
                    {itemId = 'mis_item_1', num = 1};
                };
            };
			[10] = {
                name = '上传/更新地图时添加话题';
				startTime = '2021-08-24';
				endTime = '2021-08-31';
                event = 15;
                target = 1;
				jump = 42;
                bonus = {
                    {itemId = 'mis_item_1', num = 1};
                };
            };
		};
		random = {
			daily = 1;
			refreshTime = 1800;
			time = 3;
			once = 1;
			pool = {
				first = 'rand(1|1,2|50,3|1)';
				default = 'rand(1|5,2|10,3|5,4|1,5|1,6|2)';
			};
		};
	};
    [3] = {
        type          = 3,            -- 长流失类型
        ver_min       = '1.5.0',      -- 最小版本
        lost_day      = 30,           -- 长流失天数
        mission_day   = 7,           -- 长流失可做任务天数
        startTime     = '2021-08-01 00:00:00', --开始时间
        endTime       = '2025-09-30 23:59:59', --结束时间
        has_back_flag_year = 1,            -- 标记1年内已触发过用户的走短流失任务系统
		--ABTest = 'exp_hp_backflow',
		new_ui_ver_min       = '1.20.0',      --新UI开关版本

        --首次联机奖励
        first_online_award = {
            [1]={id=10000,num=88},
            [2]={id=12988,num=3},
            [3]={id=20038,num=30},
        },
		star_score_award = {
			[1]={need_star_score=1,id = 12851},
			[2]={need_star_score=3,id = 12928},
			[3]={need_star_score=8,id = 0},
		},
        mission = {                         -- 任务界面
            [1] = {
                name = '登录游戏',
                event = 18,
				id_order = 1,
                --1为每日任务
                --0为总任务频率
                every_task_flag = 1,

                --长流失任务完成次数与奖励
                target_bonus = {
                    [1]={target = 1, id = 12858, num = 1},
					[2]={target = 3, star_score=3},
                },

            },

            [2] = {
                name = '参与联机地图',
                event = 9,
				id_order = 3;
                --1为每日任务
                --0为总任务频率
                every_task_flag = 1,

                --长流失任务完成次数与奖励
                target_bonus = {
                    [1]={target = 2, id = 12964, num = 1},
                    [2]={target = 4, id = 12960, num = 5},
					[3]={target = 3, star_score=1},
                },

            },

            [3] = {
                name = '单次体验地图',
                event = 2,
				id_order = 5,
                --1为每日任务
                --0为总任务频率
                every_task_flag = 1,

                --长流失任务完成次数与奖励
                target_bonus = {
                    [1]={target = 1, id = 12858, num = 1, time = 60},
                    [2]={target = 1, id = 20038, num = 10,time = 120},
                },

            },

            [4] = {
                name = '与好友联机地图1次',
                event = 19,
				id_order = 6,
                --1为每日任务
                --0为总任务频率
                every_task_flag = 1,

                --长流失任务完成次数与奖励
                target_bonus = {
                    [1]={target = 1, id = 12988, num = 1},
					[2]={target = 1, star_score=1},
                },

            },

            [5] = {
                name = '收藏地图5张',
                event = 6,
				id_order = 7,
                --1为每日任务
                --0为总任务频率
                every_task_flag = 0,

                --长流失任务完成次数与奖励
                target_bonus = {
                    {target = 5, id = 12858, num = 5},
                },

            },

            [6] = {
                name = '下载地图3张',
                event = 4,
				id_order = 8,
                --1为每日任务
                --0为总任务频率
                every_task_flag = 0,

                --长流失任务完成次数与奖励
                target_bonus = {
                    {target = 3, id = 12961, num = 3},
                },

            },

            [7] = {
                name = '创造地图1张',
                event = 3,
				id_order = 9,
                --1为每日任务
                --0为总任务频率
                every_task_flag = 0,

                --长流失任务完成次数与奖励
                target_bonus = {
                    {target = 1, id = 20038, num = 15},
                },

            },

            [8] = {
                name = '添加3位好友',
                event = 20,
				id_order = 10,
                --1为每日任务
                --0为总任务频率
                every_task_flag = 0,

                --长流失任务完成次数与奖励
                target_bonus = {
                    {target = 3, id = 12948, num = 1},
                },

            },

            [9] = {
                name = '绑定手机号',
                event = 60,
				id_order = 11,
                --1为每日任务
                --0为总任务频率
                every_task_flag = 0,

                --短流失任务完成次数与奖励
                target_bonus = {
                    [1]={target = 1, id = 20038, num = 15},
					[2]={target = 1, star_score=1},
                },

            },

            [10] = {
                name = '打开设备通知权限',
                event = 61,
				id_order = 12,
                --1为每日任务
                --0为总任务频率
                every_task_flag = 0,

                --短流失任务完成次数与奖励
                target_bonus = {
                    [1]={target = 1, id = 20038, num = 15},
					[2]={target = 1, star_score=1},
                },

            },
            [11] = {
                name = '累计任务奖励',
                event = 7,
				id_order = 13,
                --1为每日任务
                --0为总任务频率
                every_task_flag = 0,

                --长流失任务完成次数与奖励
                target_bonus = {
                    [1]={
                        target = 15, 
						[1]={
                            {id=22148,num=1},
                            {id=22149,num=1},
                        },
                        [2]={
                            {id=22269,num=1},
                            {id=22270,num=1},
                        },
                        [3]={
                            {id=21903,num=1},
                            {id=21908,num=1},
                        },
						
                    
                    },
					[2]={
							target = 15, 
							star_score=1,
							[1]={
                            --{id=22148,num=1},
                            --{id=22149,num=1},
							{id=37317,num=1},
							{id=37306,num=1},
							{id=37563,num=1},
                        },
                        [2]={
                            --{id=22269,num=1},
                            --{id=22270,num=1},
							{id=37710,num=1},
							{id=37555,num=1},
							{id=37705,num=1},
                        },
                        [3]={
                            --{id=21903,num=1},
                            --{id=21908,num=1},
							{id=22219,num=1},
							{id=21699,num=1},
                        },
						[4]={
                            --{id=21903,num=1},
                            --{id=21908,num=1},
							{id=22457,num=1},
                        },
						[5]={
                            --{id=21903,num=1},
                            --{id=21908,num=1},
							{id=21717,num=1},
							{id=21962,num=1},
							{id=21715,num=1},
                        },
					},

                },

            },
			
			[12] = {
                name = '进行1次任意地图',
                event = 1,
				id_order = 2,
                --1为每日任务
                --0为总任务频率
                every_task_flag = 0,

                --短流失任务完成次数与奖励
                target_bonus = {
                    {target = 1, star_score=1},
                },

            },
			[13] = {
                name = '在冒险玩法中存活3天',
                event = 64,
				id_order = 4,
                --1为每日任务
                --0为总任务频率
                every_task_flag = 0,

                --短流失任务完成次数与奖励
                target_bonus = {
                    {target = 1,star_score=1},
                },

            },
        },

    };

    [4] = {
        type          = 4,            -- 短流失类型
        lost_day      = 7,           -- 短流失天数
        mission_day   = 7,            -- 短流失可做任务天数
        ver_min       = '1.5.0',      -- 最小版本
        startTime     = '2021-08-01 00:00:00',   --开始时间
        endTime       = '2025-09-30 23:59:59',   --结束时间
		--ABTest = 'exp_hp_backflow',
		new_ui_ver_min       = '1.20.0',      --新UI开关版本

        --首次联机奖励
        first_online_award = {
            [1]={id=12928,num=1},
            [2]={id=12988,num=1},
            [3]={id=20038,num=10},
        },
		star_score_award = {
			[1]={need_star_score=1,id = 12851},
			[2]={need_star_score=3,id = 12928},
			[3]={need_star_score=8,id = 0},
		},
        mission = {                         -- 任务界面
            [1] = {
                name = '登录游戏',
                event = 18,
				id_order = 1,

                --1为每日任务
                --0为总任务频率
                every_task_flag = 1,

                --短流失任务完成次数与奖励
                target_bonus = {
                    [1]={target = 1, id = 12858, num = 1},
					[2]={target = 3, star_score=3},
                },

            },

            [2] = {
                name = '参与联机地图',
                event = 9,
				id_order = 3,

                --1为每日任务
                --0为总任务频率
                every_task_flag = 1,

                --短流失任务完成次数与奖励
                target_bonus = {
                    [1]={target = 1, id = 12964, num = 1},
                    [2]={target = 3, id = 12960, num = 3},
					[3]={target = 3, star_score=1},
                },

            },

            [3] = {
                name = '单次体验地图',
                event = 2,
				id_order = 5,

                --1为每日任务
                --0为总任务频率
                every_task_flag = 1,

                --短流失任务完成次数与奖励
                target_bonus = {
                    [1]={target = 1, id = 12858, num = 1, time = 30},
                    [2]={target = 1, id = 20038, num = 5, time = 60},
                },

            },

            [4] = {
                name = '与好友联机地图1次',
                event = 19,
				id_order = 6,

                --1为每日任务
                --0为总任务频率
                every_task_flag = 1,

                --短流失任务完成次数与奖励
                target_bonus = {
                    [1]={target = 1, id = 12988, num = 1},
					[2]={target = 1, star_score=1},
                },

            },

            [5] = {
                name = '收藏地图3张',
                event = 6,
				id_order = 7,
                --1为每日任务
                --0为总任务频率
                every_task_flag = 0,

                --短流失任务完成次数与奖励
                target_bonus = {
                    {target = 3, id = 12858, num = 3},
                },

            },

            [6] = {
                name = '下载地图2张',
                event = 4,
				id_order = 8,
                --1为每日任务
                --0为总任务频率
                every_task_flag = 0,

                --短流失任务完成次数与奖励
                target_bonus = {
                    {target = 2, id = 12961, num = 3},
                },

            },

            [7] = {
                name = '创造地图1张',
                event = 3,
				id_order = 9,
                --1为每日任务
                --0为总任务频率
                every_task_flag = 0,

                --短流失任务完成次数与奖励
                target_bonus = {
                    {target = 1, id = 20038, num = 15},
                },

            },

            [8] = {
                name = '添加2位好友',
                event = 20,
				id_order = 10,
                --1为每日任务
                --0为总任务频率
                every_task_flag = 0,

                --短流失任务完成次数与奖励
                target_bonus = {
                    {target = 2, id = 12948, num = 1},
                },

            },

            [9] = {
                name = '绑定手机号',
                event = 60,
				id_order = 11,
                --1为每日任务
                --0为总任务频率
                every_task_flag = 0,

                --短流失任务完成次数与奖励
                target_bonus = {
                    [1]={target = 1, id = 20038, num = 15},
					[2]={target = 1, star_score=1},
                },

            },

            [10] = {
                name = '打开设备通知权限',
                event = 61,
				id_order = 12,
                --1为每日任务
                --0为总任务频率
                every_task_flag = 0,

                --短流失任务完成次数与奖励
                target_bonus = {
                    [1]={target = 1, id = 20038, num = 15},
					[2]={target = 1, star_score=1},
                },

            },

            [11] = {
                name = '累计任务奖励',
                event = 7,
				id_order = 13,
                --1为每日任务
                --0为总任务频率
                every_task_flag = 0,

                --短流失任务完成次数与奖励
                target_bonus = {
                    [1]={
                        target = 10,
						[1]={
                            {id=21147,num=1},
                            {id=21148,num=1},
                        },
                        [2]={
                            {id=21268,num=1},
                            {id=21269,num=1},
                        },
                        [3]={
                            {id=20902,num=1},
                            {id=20907,num=1},
                        }, 
						
                       
                    },
					[2]={
						 target = 10,
							star_score=1,
						 [1]={
                            --{id=21147,num=1},
                            --{id=21148,num=1},
							{id=34317,num=1},
							{id=34306,num=1},
							{id=34563,num=1},
                        },
                        [2]={
                            --{id=21268,num=1},
                            --{id=21269,num=1},
							{id=34710,num=1},
							{id=34555,num=1},
							{id=34705,num=1},
                        },
                        [3]={
                            --{id=20902,num=1},
                            --{id=20907,num=1},
							{id=21218,num=1},
							{id=20698,num=1},
                        },
                        [4]={
                            --{id=21268,num=1},
                            --{id=21269,num=1},
							{id=21456,num=1},
						
                        },
                        [5]={
                            --{id=20902,num=1},
                            --{id=20907,num=1},
							{id=20716,num=1},
							{id=20961,num=1},
							{id=20714,num=1},
                        },
					},

                },

            },
			[12] = {
                name = '进行1次任意地图',
                event = 1,
				id_order = 2,
                --1为每日任务
                --0为总任务频率
                every_task_flag = 0,

                --短流失任务完成次数与奖励
                target_bonus = {
                    {target = 1, star_score=1},
                },

            },
			[13] = {
                name = '在冒险玩法中存活3天',
                event = 64,
				id_order = 4,
                --1为每日任务
                --0为总任务频率
                every_task_flag = 0,

                --短流失任务完成次数与奖励
                target_bonus = {
                    {target = 1,star_score=1},
                },

            },


        },

    };
    [5] = {
        type = 5;
        startTime = '2021-09-19 10:00:00';
        task_endTime  = '2021-10-10 23:59:59'; --做任务结束时间
        endTime = '2021-10-13 23:59:59'; --活动总结束时间

        jump = '2021081901';                                -- 跳转
        map = {                                 -- 地图
        98122825420532;
        28910484202560;
        60753372039864;
    };

        --兑换奖励
        exchange_award = {
            [1]={coupons_cost=50,id=22307,num=1,ModelID=712},
            [2]={coupons_cost=50,id=22154,num=1,ModelID=559},
            [3]={coupons_cost=50,id=22152,num=1,ModelID=557},
			[4]={coupons_cost=50,id=22271,num=1,ModelID=676},
			[5]={coupons_cost=50,id=22202,num=1,ModelID=607},
			[6]={coupons_cost=6,id=24810,num=10},
			[7]={coupons_cost=6,id=24802,num=10},
			[8]={coupons_cost=6,id=24807,num=10},
			[9]={coupons_cost=6,id=24803,num=10},
			[10]={coupons_cost=6,id=20036,num=5},
			[11]={coupons_cost=6,id=20032,num=5},
			[12]={coupons_cost=6,id=24817,num=5},
			[13]={coupons_cost=30,id=12948,num=1},
			[14]={coupons_cost=3,id=12964,num=1},
			[15]={coupons_cost=3,id=12988,num=1},
        };

        mission = {
            [1] = {
                name = '登陆游戏';
                startTime = '2021-09-19 10:00:00';
                endTime = '2021-10-13 23:59:59';
                event = 18;
                target = 1;
                coupons = 1; --游园券
                
            };
            [2] = {
                name = '每日单次体验地图60秒';
                startTime = '2021-09-19 10:00:00';
                endTime = '2021-09-20 23:59:59';
                time = 60; --秒单位
                event = 2;
                target = 1;
                coupons = 1; --游园券
                jump = 11;
            };
            [3] = {
                name = '每日单次体验地图120秒';
                startTime = '2021-09-19 10:00:00';
                endTime = '2021-09-20 23:59:59';
                time = 120; --秒单位
                event = 2;
                target = 1;
                coupons = 2; --游园券
                jump = 11;
                
            };
            [4] = {
                name = '每日进行联机地图两次';
                startTime = '2021-09-19 10:00:00';
                endTime = '2021-10-13 23:59:59';
                event = 9;
                target = 2;
                coupons = 1; --游园券
                jump = 11;
                
            };
            [5] = {
                name = '每日进行联机地图五次';
                startTime = '2021-09-19 10:00:00';
                endTime = '2021-10-13 23:59:59';
                event = 9;
                target = 5;
                coupons = 2; --游园券
                jump = 11;
                
            };
            [6] = {
                name = '每日分享地图一次';
                startTime = '2021-09-19 10:00:00';
                endTime = '2021-10-13 23:59:59';
                event = 21;
                target = 1;
                coupons = 2; --游园券
                jump = 10;
                
            };
            [7] = {
                name = '每日在线时长六分钟';
                startTime = '2021-09-19 10:00:00';
                endTime = '2021-09-20 23:59:59';
                time = 360; --秒单位
                event = 22;
                target = 1;
                coupons = 1; --游园券
                
            };
            [8] = {
                name = '每日下载地图一次';
                startTime = '2021-09-19 10:00:00';
                endTime = '2021-10-13 23:59:59';
                event = 4;
                target = 1;
                coupons = 1; --游园券
                jump = 10;
               
            };
            [9] = {
                name = '每日浏览商城十五秒';
                startTime = '2021-09-19 10:00:00';
                endTime = '2021-10-13 23:59:59';
                time = 15; --秒单位
                event = 23;
                target = 1;
                coupons = 2; --游园券
                jump = 1;
                
            };
            [10] = {
                name = '进入一次洛阳城';
                startTime = '2021-10-09 00:00:00';
                endTime = '2021-10-10 23:59:59';
                event = 25;
                target = 1;
                coupons = 1; --游园券
                specify_map = 28455183095701;--跳转指定地图
               
            },
        },
    };
-- 成长守护计划
    [6] = {
        type = 6;
        test_offset_time = ''; 	--只在debug环境下读这个字段，指定后端时间：1970-01-01 00:00:00，如果是空的或者不配置，则不生效
        mission = {
            [1] = {
                name = '开启奖励';
                bonus = {
                    {itemId = 12988, num = 3};
                    {itemId = 12963, num = 3};
                    {itemId = 20032, num = 5};
                };
            };
            [2] = {
                name = '助力1次奖励';
                bonus = {
                    {itemId = 12988, num = 3};
                    {itemId = 12961, num = 1};
                    {itemId = 20032, num = 10};
                };
            };
            [3] = {
                name = '助力2次奖励';
                bonus = {
                    {itemId = 12988, num = 3};
                    {itemId = 12928, num = 1};
                    {itemId = 20032, num = 20};
                };
            };
            [4] = {
                name = '助力3次奖励';
                bonus = {
                    {itemId = 20315, num = 1};
                    {itemId = 12988, num = 3};
                    {itemId = 12851, num = 3};
                    {itemId = 20032, num = 30};
                };
            };
        };
    };
    -- 国宝复刻
    [7] = {
        type = 7;
        startTime     = '2021-11-09 00:00:00'; --开始时间
        endTime       = '2021-11-18 23:59:59'; --结束时间

        test_offset_time = ''; 	--只在debug环境下读这个字段，指定后端时间：1970-01-01 00:00:00，如果是空的或者不配置，则不生效

        -- 任务配置
        mission = {
            [1] = {
                name = '登陆游戏';
                event = 18;
                target = 1;
                vote_ticket = 1;                -- 奖励投票券
            };
            [2] = {
                name = '观看广告';
                apiid_allow = {                 -- 包含渠道
                    1,2,3,7,11,12,13,15,18,19,21,28,29,32,34,36,39,45,55,56,57,58,60,62,63,64,65,66,68,69,70,71,72,73,74,75,76,77,78,79,80,82,83,92,93,94,10,49,50,96					-- 渠道列表
                };
                event = 26;
                target = 1;
                vote_ticket = 2;                -- 奖励投票券
            };
            [3] = {
                name = '游玩参赛地图';
                event = 1;
                target = 1;
                vote_ticket = 2;                -- 奖励投票券
            };
            [4] = {
                name = '分享参赛地图';
                event = 21;
                target = 1;
                vote_ticket = 2;                -- 奖励投票券
            };
        };

        -- 参赛地图
        vote_map = {
			[1] = {
                map_id = "22823950138657",
            };
            [2] = {
                map_id = "57252128146230",
            };
            [3] = {
                map_id = "6597110386601",
            };
            [4] = {
                map_id = "78916086124114",
            };
            [5] = {
                map_id = "98793351733470",
            };
            [6] = {
                map_id = "96654283798932",
            };
            [7] = {
                map_id = "76232048475694",
            };
            [8] = {
                map_id = "85057706823710",
            };
            [9] = {
                map_id = "96633061378308",
            };
            [10] = {
                map_id = "4776023008815",
            };
			[11] = {
                map_id = "33728499089709",
            };
            [12] = {
                map_id = "85062311632809",
            };
            [13] = {
                map_id = "58923609457412",
            };
            [14] = {
                map_id = "37967650601892",
            };
            [15] = {
                map_id = "50595550039422",
            };
            [16] = {
                map_id = "26706150107770",
            };
            [17] = {
                map_id = "6610211761698",
            };
            [18] = {
                map_id = "12936706880865",
            };
            [19] = {
                map_id = "28292267075846",
            };
			[20] = {
                map_id = "57411711534005",
            };
            [21] = {
                map_id = "32913764684270",
            };
            [22] = {
                map_id = "94068457590213",
            };
            [23] = {
                map_id = "16502365435070",
            };
            [24] = {
                map_id = "94309664689713",
            };
            [25] = {
                map_id = "57716266260749",
            };
            [26] = {
                map_id = "46248230777249",
            };
        };

        -- 投票奖励
        vote_award = {
            [1] = {
                vote_count = 1;                 -- 需要投票数
                bonus = {
                    {itemId = 21281, num = 1};
                };
            };
            [2] = {
                vote_count = 5;                 -- 需要投票数
                bonus = {
                    {itemId = 845, num = 1};
                };
            };
            [3] = {
                vote_count = 10;                 -- 需要投票数
                bonus = {
                    {itemId = 12928, num = 1};
                };
            };
            [4] = {
                vote_count = 20;                 -- 需要投票数
                bonus = {
                    {itemId = 12961, num = 3};
                };
            };
            [5] = {
                vote_count = 30;                 -- 需要投票数
                bonus = {
                    {itemId = 12988, num = 7};
                };
            };
            [6] = {
                vote_count = 40;                 -- 需要投票数
                bonus = {
                    {itemId = 12948, num = 1};
                };
            };
            [7] = {
                vote_count = 50;                 -- 需要投票数
                bonus = {
                    {itemId = 20038, num = 30};
                };
            };
        };
    };
	[8] = {                                      -- 音乐嘉年华1
		control = 1;                                        -- 总控 0:关闭,1:开启	
		--apiid = '999';                      				-- 渠道限制
		versionMin = '0.0.0';                           	-- 最低版本限制
		startTime = '2021-11-27';                       	-- 活动开启时间
		endTime = '2022-01-07';                         	-- 活动结束时间		
		noteUrl = 'http://';								-- 音符图片url（无用）
		
		noteStore = {
			startTime = '2021-11-27';                       -- 商店开启时间
			endTime = '2022-01-07';                         -- 商店结束时间
			versionMin = '0.0.0';                           -- 最低版本限制
			
			goods = {										-- 音符兑换商店列表
				[1] = {items = {[1] = {id = 37352, num = 1}}, price=300, limit=1};				
				[2] = {items = {[1] = {id = 20038, num = 3}}, price = 12, limit = 0};
				[3] = {items = {[1] = {id = 20036, num = 3}}, price = 12, limit = 0};
				[4] = {items = {[1] = {id = 20032, num = 3}}, price = 12, limit = 0};
				[5] = {items = {[1] = {id = 24810, num = 5}}, price = 10, limit = 0};
				[6] = {items = {[1] = {id = 24821, num = 5}}, price = 10, limit = 0};
				[7] = {items = {[1] = {id = 24807, num = 5}}, price = 10, limit = 0};
				[8] = {items = {[1] = {id = 24803, num = 5}}, price = 10, limit = 0};
				[9] = {items = {[1] = {id = 20035, num = 5}}, price = 10, limit = 0};
				[10] = {items = {[1] = {id = 12963, num = 1}}, price = 5, limit = 0};
				[11] = {items = {[1] = {id = 12962, num = 1}}, price = 5, limit = 0};
				[12] = {items = {[1] = {id = 12964, num = 1}}, price = 8, limit = 0};
				[13] = {items = {[1] = {id = 12851, num = 1}}, price = 8, limit = 0};
				[14] = {items = {[1] = {id = 12988, num = 1}}, price = 8, limit = 0};
			};
		};

        -- 分享文本前缀
        shareTextPrefix = "打开迷你世界领音符，密码：";

		-- 音乐密码前缀		
        codePrefix = {
            "花小楼","迷斯拉","兔美美","熊孩子","卡卡","妮妮","胖哒","月无双",
            "蛙太郎","古筝","二胡","唢呐","琵琶","笛子","鼓"
        };

        -- 音乐密码兑换音符数量
        codeExchangeNote = 10;

		taskList = {
			[1] = {												-- 迷你音乐节
				startTime = '2021-12-01';                       -- 开启时间
				endTime = '2022-01-04';                         -- 结束时间
				auto = 1;                                       -- 自动领取

				tabTime ={										-- 页签时间
					[1]={startTime = '2021-12-01', endTime = '2022-01-04'};
				};

				mission = {
					[1] = {                              		-- 进入地图
						type = 0;              					
						name = "登陆游戏";
						daily = 1;
						event = 18;                           	
						target = 1;              				
						bonus = {                               
							{itemId = 'mis_item_2', num = 2};
						};
					};
					[2] = {                              		-- 好友使用你的音乐密码时长
						type = 0;              					
						name = "分享音乐密码并被使用1次";
						daily = 1;
						event = 29;                           	
						target = 1;              				
						bonus = {                               
							{itemId = 'mis_item_2', num = 4};
						};
					};
					[3] = {                              		-- 好友使用你的音乐密码时长
						type = 0;              					
						name = "分享音乐密码并被使用2次";
						daily = 1;
						event = 29;                           	
						target = 2;              				
						bonus = {                               
							{itemId = 'mis_item_2', num = 6};
						};
					};
					[4] = {                              		-- 使用好友的分音乐密码
						type = 0;              					
						name = "使用1次好友分享的音乐密码";
						daily = 1;
						event = 28;                           	
						target = 1;              				
						bonus = {                               
							{itemId = 'mis_item_2', num = 4};
						};
					};
					[5] = {                              		-- 使用好友的分音乐密码
						type = 0;              					
						name = "使用2次好友分享的音乐密码";
						daily = 1;
						event = 28;                           	
						target = 2;              				
						bonus = {                               
							{itemId = 'mis_item_2', num = 6};
						};
					};
					[6] = {                              		-- 拥有指定皮肤
						type = 0;              					
						name = "拥有电音天后莎莎（永久）";
                        gain_item = 184;                       -- 皮肤id
						event = 30;                           	
						target = 1;              				
						bonus = {                               
							{itemId = 'mis_item_2', num = 10};
						};
					};
					[7] = {                              		-- 观看广告
						type = 0;              					
						name = "观看1次广告";
                apiid_allow = {                 -- 包含渠道
                    1,2,3,7,11,12,13,15,18,19,21,28,29,32,34,36,39,45,55,56,57,58,60,62,63,64,65,66,68,69,70,71,72,73,74,75,76,77,78,79,80,82,83,92,93,94,10,49,50,96					-- 渠道列表
                };
						daily = 1;
						event = 26;                           	
						target = 1;              				
						bonus = {                               
							{itemId = 'mis_item_2', num = 2};
						};
					};
					[8] = {                              		-- 观看广告
						type = 0;              					
						name = "观看3次广告";
                apiid_allow = {                 -- 包含渠道
                    1,2,3,7,11,12,13,15,18,19,21,28,29,32,34,36,39,45,55,56,57,58,60,62,63,64,65,66,68,69,70,71,72,73,74,75,76,77,78,79,80,82,83,92,93,94,10,49,50,96					-- 渠道列表
                };
						daily = 1;
						event = 26;                           	
						target = 3;              				
						bonus = {                               
							{itemId = 'mis_item_2', num = 4};
						};
					};
					[9] = {                              		-- 联机地图
						type = 0;              					
						name = "游玩2次联机地图";
						daily = 1;
						event = 26;                           	
						target = 2;              				
						bonus = {                               
							{itemId = 'mis_item_2', num = 2};
						};
					};
				};
			};
			[3] = {												-- 花小楼合奏会
				startTime = '2021-12-28';                       -- 开启时间
				endTime = '2021-12-31';                         -- 结束时间
				auto = 1;                                       -- 自动领取
				mapId = "89614533250985";						-- 地图ID

				tabTime ={										-- 页签时间
					[1]={startTime = '2021-12-28', endTime = '2021-12-31'};
				};

				mission = {
					[1] = {                              		-- 进入指定地图
						name = "进入花小楼合奏会";
						event = 1;                           	-- 事件类型
						target = 1;              				-- 目标
						bonus = {                               -- 奖励
							{itemId = 'mis_item_2', num = 5};
						};
					};
					[2] = {                              		-- 地图时长
						name = "合奏会游玩5分钟";
						event = 2;                  
						target = 300;              				
						bonus = {                              
							{itemId = 'mis_item_2', num = 5};
						};
					};
					[3] = {                              		-- 地图时长
						name = "合奏会游玩10分钟";
						event = 2;                  
						target = 600;              				
						bonus = {                              
							{itemId = 'mis_item_2', num = 5};
						};
					};
					[4] = {                              		-- 地图时长
						name = "合奏会游玩15分钟";
						event = 2;                  
						target = 900;              				
						bonus = {                              
							{itemId = 'mis_item_2', num = 10};
						};
					};
				};
			};
	[4] = {												-- 电音派对
				startTime = '2021-12-31';                       -- 开启时间
				endTime = '2022-01-04';                         -- 结束时间
				auto = 1;                                       -- 自动领取
				
				tabTime ={										-- 页签时间
					[1]={startTime = '2021-12-31', endTime = '2022-01-04'};
				};
				actTime ={										-- 活动时间
					[1]={startTime = '2022-01-01 20:00', endTime = '2022-01-01 21:00'};
					[2]={startTime = '2022-01-02 20:00', endTime = '2022-01-02 21:00'};
					[3]={startTime = '2022-01-03 20:00', endTime = '2022-01-03 21:00'};
				};
				mission = {
					[1] = {                              		-- 进入地图
						type = 0;              					
						name = "进入地图参加电音派对";
						event = 1;                           	
						target = 1;              				
						bonus = {                               
							{itemId = 'mis_item_2', num = 5};
						};
					};
					[2] = {                              		-- 地图时长
						type = 0;              					
						name = "电音派对游玩5分钟";
						event = 2;                           	
						target = 300;              				
						bonus = {                               
							{itemId = 'mis_item_2', num = 5};
						};
					};
					[3] = {                              		-- 地图时长
						type = 0;              					
						name = "电音派对游玩10分钟";
						event = 2;                           	
						target = 600;              				
						bonus = {                               
							{itemId = 'mis_item_2', num = 5};
						};
					};
					[4] = {                              		-- 地图时长
						type = 0;              					
						name = "电音派对游玩15分钟";
						event = 2;                           	
						target = 900;              				
						bonus = {                               
							{itemId = 'mis_item_2', num = 10};
						};
					};
				};
			};
			[5] = {												-- 电音派对 预约配置
				startTime = '2021-12-03';                       -- 预约开启时间
				endTime = '2021-12-10';                         -- 预约结束时间
				auto = 1;                                       -- 自动领取
				
				appointList ={									-- 写入手机本地的日程安排
					[1]={startTime = '2021-12-10 19:55', endTime = '2021-12-10 21:00'};
					[2]={startTime = '2021-12-11 19:55', endTime = '2021-12-11 21:00'};
					[3]={startTime = '2021-12-12 19:55', endTime = '2021-12-12 21:00'};
				};

				mission = {
					[1] = {                              		-- 预约
						name = "演唱会预约";
						daily = 1;
						event = 27;                           	
						target = 1;              				
						bonus = {                               
							{itemId = 'mis_item_2', num = 10};
						};
					};
				};
			};
			[6] = {												-- 年度精选地图
				startTime = '2021-12-24';                       -- 开启时间
				endTime = '2022-01-04';                         -- 结束时间
				auto = 1;                                       -- 自动领取
				mapId = "76244259439695";						-- 地图ID

				tabTime ={										-- 页签时间
					[1]={startTime = '2021-12-20', endTime = '2022-01-04'};
				};

				mission = {
					[1] = {                              		-- 进入指定地图
						name = "进入精选地图";
						event = 1;                           	-- 事件类型
						target = 1;              				-- 目标
						bonus = {                               -- 奖励
							{itemId = 'mis_item_2', num = 10};
						};
					};
				};
			};
		};
	};

	[9] = {                                                 -- 新手任务（新版）
		control = 1;                                        -- 总控 0:关闭,1:开启	
		versionMin = '1.8.5';                           	-- 最低版本限制
		startTime = '2021-11-15';                       	-- 开启时间
		endTime = '2221-12-29';                         	-- 结束时间

        duration = 10;                                      -- 新手任务有效期（单位：天）
        final_award_target = 11;                            -- 大奖需要完成的任务数量
        pending_duration = 30;                             -- 新手任务等待接受有效期（单位：天）

        -- ABTest，不配或者置空则关闭ABTest
        -- ABTest = "exp_growth_new_user_03";

        -- 消息推送
        push = {
            send = 1, -- 发送开关：1 打开，其他关闭，注意：是否发送也受活动时间控制
            start_time = "2022-06-22 00:00", -- 开始推送时间（防止后端上线后就触发了）
            send_time = "19:00", -- 几点几分发送
            send_delay = 1, -- 推迟几天发送
            test_uin = {}, -- 测试白名单，正式上线后务必清空！如果不为空，则只有在白名单中的uin能收到推送
        };
		-- 每日签到
        daily_sign_award = {
            [1] = {
                {itemId = 10011, num = 1, jumpId = 6};
            };
            [2] = {
                {itemId = 80047, num = 1, jumpId = 57};
            };
            [3] = {
                {itemId = 10028, num = 1, jumpId = 1000};
            };
			[4] = {
                {itemId = 10010, num = 1, jumpId = 1002};
            };
			[5] = {
                {itemId = 10012, num = 1, jumpId = 56};
            };
        };

		-- 新用户进入商城赠送迷你豆
		new_user_award = {{itemId = 10000, num = 300}};

		-- 旧端不展示新增任务
        new_event_conf = {
            new_event = {[1]=62, [2]=63};           --所有新增类型任务
            show_event = {                              --客户端展示新增任务
               [1] = {[1]=62, [2]=63};
            };
        };
        -- 试穿3选1套装配置
        try_suit_award = {
            [1] = {
                {itemId = 34224, num = 1};
                {itemId = 34225, num = 1};
                {itemId = 34226, num = 1};
            };
            [2] = {
                {itemId = 34232, num = 1};
                {itemId = 34234, num = 1};
                {itemId = 34233, num = 1};
            };
            [3] = {
                {itemId = 21399, num = 1};
                {itemId = 21400, num = 1};
            };
        };

		-- 大奖3选1套装配置
        final_suit_award = {
            [1] = {
                {itemId = 37224, num = 1};
                {itemId = 37225, num = 1};
                {itemId = 37226, num = 1};
            };
            [2] = {
                {itemId = 37232, num = 1};
                {itemId = 37234, num = 1};
                {itemId = 37233, num = 1};
            };
            [3] = {
                {itemId = 22400, num = 1};
                {itemId = 22401, num = 1};
            };
        };

        -- 任务配置
        mission = {
            [1] = {                              		    -- 登录游戏
                name = "每日登录游戏";
                daily = 1;
                event = 18;                           	
                target = 1;              				
                bonus = {                               
                    {itemId = 20035, num = 3};
                };
            };
            [2] = {
                name = '每日单次体验地图30s';
                daily = 1;
                event = 2;
                target = 30;
                bonus = {
                    {itemId = 12961, num = 1};
                };
            };
            [3] = {
                name = '每日单次体验地图60s';
                daily = 1;
                event = 2;
                target = 60;
                bonus = {
                    {itemId = 20035, num = 6};
                };
            };
            [4] = {
                name = '每日联机地图2次';
                daily = 1;
                event = 9;
                target = 2;
                bonus = {
                    {itemId = 12851, num = 1};
                };
            };
            [5] = {
                name = '每日联机地图4次';
                daily = 1;
                event = 9;
                target = 4;
                bonus = {
                    {itemId = 20035, num = 9};
                };
            };
            [7] = {
                name = '添加1位好友';
                daily = 0;
                event = 20;
                target = 1;
                bonus = {
                    {itemId = 20338, num = 1};
                };
            };
            [8] = {
                name = '下载2张地图';
                daily = 0;
                event = 4;
                target = 2;
                bonus = {
                    {itemId = 21341, num = 1};
                };
            };
            [9] = {
                name = '创造1张地图';
                daily = 0;
                event = 3;
                target = 1;
                bonus = {
                    {itemId = 21092, num = 1};
                };
            };
            [10] = {
                name = '充值任意金额';
                daily = 0;
                event = 5;
                target = 1;
                bonus = {
                    {itemId = 20315, num = 1};
                };
            };
            [11] = {
                name = '收获1次家园果实';
                daily = 1;
                event = 62;
                target = 1;
                bonus = {
                    {itemId = 20315, num = 1};
                };
            };
            [12] = {
                name = '在商城购买1件装扮';
                daily = 1;
                event = 63;
                target = 1;
                bonus = {
                    {itemId = 20315, num = 1};
                };
            };
        };
    };
	[10] = {                                      -- 地图作者评选
		control = 1;                                        -- 总控 0:关闭,1:开启	
		-- apiids  = '999,1,45';                      				-- 渠道限制
		versionMin = '1.8.5';                           	-- 最低版本限制
		moreMap = 'https://kfz.mini1.cn/activity/presentation/index.html';   --更多年度作品跳转链接
		startTime = '2021-12-31 00:00:00';                               --活动开启时间
		startEndTime = '2022-01-19 23:59:59';                        --投票结束时间
		publishTime = '2022-01-20 00:00:00';                          --活动公布时间
		endTime = '2022-01-23 23:59:59';                               --活动结束时间
		
		auto = 1;                                     		-- 自动领取
		map_id = 25026774434910;    						--地图ID
		exchange_type = 1;									-- 兑换方式 0:奖励券 1:兑奖券

  -- 候选人（uin=迷你号，initial_vote=初始得票数）
        candidate = {
            [1] = {uin = 731528656, initial_vote = 9900, resume = 1001461,  head_id = 20289, NickName = "樱桃",  head_url = "ui/roleicons/83.png"};
            [2] = {uin = 1080732679, initial_vote = 3500, resume = 1001462,  head_id = 20283, NickName = "小o笼o包",  head_url = "ui/roleicons/2.png"};
            [3] = {uin = 5269274, initial_vote = 18500, resume = 1001463,  head_id = 1, NickName = "锁爱OL游戏解说",  head_url = "ui/roleicons/282.png"};
            [4] = {uin = 864141360, initial_vote = 14300, resume = 1001464,  head_id =20289, NickName = "蜜柚",  head_url = "ui/roleicons/217.png"};
            [5] = {uin = 57916222, initial_vote = 12800, resume = 1001465,  head_id = 20220, NickName = "喜哒-撕九哒",  head_url = "ui/roleicons/281.png"};
            [6] = {uin = 149314886, initial_vote = 13570, resume = 1001466,  head_id = 20211, NickName = "子瓜茸/",  head_url = "ui/roleicons/276.png"};
            [7] = {uin = 493508306, initial_vote = 12440, resume = 1001467,  head_id = 20289, NickName = "一家迷路哥",  head_url = "ui/roleicons/56.png"};
            [8] = {uin = 304843, initial_vote = 9900, resume = 1001468,  head_id = 20205, NickName = "九块二",  head_url = "ui/roleicons/244.png"};
            [9] = {uin = 958497351, initial_vote = 7900, resume = 1001469,  head_id = 20290, NickName = "李yuki",  head_url = "ui/roleicons/9.png"};
            [10] = {uin = 276869238, initial_vote = 19800, resume = 1001470,  head_id = 20220, NickName = "将★军",  head_url = "ui/roleicons/81.png"};
            [11] = {uin = 2576116, initial_vote = 25000, resume = 1001471,  head_id = 20220, NickName = "迷之ぅ",  head_url = "ui/roleicons/294.png"};
            [12] = {uin = 139072032, initial_vote = 18777, resume = 1001472,  head_id = 20290, NickName = "是【施主】呢",  head_url = "ui/roleicons/294.png"};
            [13] = {uin = 139705252, initial_vote = 21300, resume = 1001473,  head_id = 33035, NickName = "寒风￥",  head_url = "ui/roleicons/315.png"};
            [14] = {uin = 393262271, initial_vote = 11900, resume = 1001474,  head_id = 20241, NickName = "三醉倾麒麟",  head_url = "ui/roleicons/265.png"};
            [15] = {uin = 958497472, initial_vote = 9400, resume = 1001475,  head_id = 20213, NickName = "鹤岚月",  head_url = "ui/roleicons/214.png"};
            [16] = {uin = 40619945, initial_vote = 12500, resume = 1001476,  head_id = 20211, NickName = "柚茶",  head_url = "ui/roleicons/10.png"};
            [17] = {uin = 83873221, initial_vote = 6300, resume = 1001477,  head_id = 20207, NickName = "_单默_",  head_url = "ui/roleicons/10.png"};
            [18] = {uin = 133213732, initial_vote = 26800, resume = 1001478,  head_id = 33025, NickName = "老半仙仙仙仙仙",  head_url = "ui/roleicons/215.png"};
            [19] = {uin = 274496134, initial_vote = 19900, resume = 1001479,  head_id = 20224, NickName = "千醉倾天天",  head_url = "ui/roleicons/281.png"};
            [20] = {uin = 308836469, initial_vote = 8500, resume = 1001480,  head_id = 20230, NickName = "格拉迪＋",  head_url = "ui/roleicons/31.png"};
            [21] = {uin = 1080736527, initial_vote = 9500, resume = 1001481,  head_id = 20270, NickName = "毕莎莎",  head_url = "ui/roleicons/301.png"};
            [22] = {uin = 673791076, initial_vote = 21500, resume = 1001482,  head_id = 20236, NickName = "宝藏女孩_乔皖&",  head_url = "ui/roleicons/322.png"};
            [23] = {uin = 405195631, initial_vote = 7200, resume = 1001483,  head_id = 20205, NickName = "TYS-小M",  head_url = "ui/roleicons/32.png"};
            [24] = {uin = 391254142, initial_vote = 11900, resume = 1001484,  head_id = 20220, NickName = "吴大爷①",  head_url = "ui/roleicons/32.png"};
            [25] = {uin = 66173425, initial_vote = 15500, resume = 1001485,  head_id = 20213, NickName = "华琪琪丶",  head_url = "ui/roleicons/207.png"};
            [26] = {uin = 784363540, initial_vote = 8700, resume = 1001486,  head_id = 20253, NickName = "贾马尔三世",  head_url = "ui/roleicons/6.png"};
            [27] = {uin = 40095300, initial_vote = 22100, resume = 1001487,  head_id = 20220, NickName = "柠/雨陌",  head_url = "ui/roleicons/317.png"};
            [28] = {uin = 414220953, initial_vote = 8015, resume = 1001488,  head_id = 20289, NickName = "萌眼星-乌鸦",  head_url = "ui/roleicons/313.png"};
            [29] = {uin = 92375007, initial_vote = 5980, resume = 1001489,  head_id = 20225, NickName = "迪美萝",  head_url = "ui/roleicons/265.png"};
            [30] = {uin = 223810260, initial_vote = 15200, resume = 1001490,  head_id = 20220, NickName = "锦世界",  head_url = "ui/roleicons/53.png"};
        };
		
        -- 活动规则介绍
        activity_rule_text = 1001431;

		store = {
			startTime = '2021-12-31';                       -- 商店开启时间
			endTime = '2022-01-23';                         -- 商店结束时间
			versionMin = '1.8.5';                           -- 最低版本限制
			
			goods = {										-- 商店列表
				[1] = {items = {[1]= {id=22154, num=1}}, price=60, limit=1};
				[2] = {items = {[1]= {id=22402, num=1}}, price=60, limit=1};
				[3] = {items = {[1]= {id=22307, num=1}}, price=60, limit=1};
				[4] = {items = {[1]= {id=22271, num=1}}, price=60, limit=1};
				[5] = {items = {[1]= {id=12948, num=1}}, price=25, limit=0};
				[6] = {items = {[1]= {id=20038, num=5}}, price=5, limit=0};
				[7] = {items = {[1]= {id=24817, num=5}}, price=5, limit=0};
				[8] = {items = {[1]= {id=24807, num=10}}, price=5, limit=0};
				[9] = {items = {[1]= {id=24803, num=10}}, price=5, limit=0};
				[10] = {items = {[1]= {id=12988, num=1}}, price=2, limit=0};
				[11] = {items = {[1]= {id=12964, num=1}}, price=2, limit=0};
				[12] = {items = {[1]= {id=12963, num=1}}, price=1, limit=0};
			};
		};

		mission = {
			[1] = {                              		-- 进入地图
				type = 0;              					
				name = "登录游戏";
				daily = 1;
				event = 18;                           	
				target = 1;              				
				bonus = {                               
					{itemId = 'mis_item_3', num = 1};
				};
			};
			[2] = {                              		-- 地图时长
				type = 0;              					
				name = "体验游戏作品3分钟";
				daily = 1;
				event = 2;                           	
				target = 180;              				
				bonus = {                               
					{itemId = 'mis_item_3', num = 1};
				};
			};
			[3] = {                              		-- 观看广告
				type = 0;              					
				name = "观看1次广告";
				apiid_allow = {1,2,3,7,11,12,13,15,18,19,21,28,29,32,34,36,39,45,55,56,57,58,60,62,63,64,65,66,68,69,70,71,72,73,74,75,76,77,78,79,80,82,83,92,93,94,10,49,50,96};				-- 包含渠道
				daily = 1;
				event = 26;                           	
				target = 1;              				
				bonus = {                               
					{itemId = 'mis_item_3', num = 2};
				};
			};
			[4] = {                              		-- 联机地图
				type = 0;              					
				name = "每日进行联机游戏2次";
				daily = 1;
				event = 9;                           	
				target = 2;              				
				bonus = {                               
					{itemId = 'mis_item_3', num = 1};
				};
			};
			[5] = {
				name = '每日在线时长6分钟';
				daily = 1;
				event = 22;
				target = 360;
				bonus = {                               
					{itemId = 'mis_item_3', num = 1};
				};
			};
			[6] = {
				name = '公开上传1个作品';
				daily = 1;
				event = 15;
				target = 1;
				bonus = {
					{itemId = 'mis_item_3', num = 1};
				};
			};
			[7] = {
				name = '每日下载作品2次';
				daily = 1;
				event = 4;
				target = 2;
				bonus = {                               
					{itemId = 'mis_item_3', num = 1};
				};               
			};
		};
	};
	[11] = {                                      -- 视频作者评选
		control = 1;                                        -- 总控 0:关闭,1:开启	
		-- apiids  = '999,1,45';                      				-- 渠道限制
		versionMin = '1.8.5';                           	-- 最低版本限制
		startTime = '2022-02-16 00:00:00';                               --活动开启时间
		startEndTime = '2022-02-26 23:59:59';                        --投票结束时间
		publishTime = '2022-02-27 00:00:00';                          --活动公布时间
		endTime = '2022-02-28 23:59:59';                                   --活动结束时间	
		auto = 1;                                     		-- 自动领取
		exchange_type = 1;									-- 兑换方式 0:奖励券 1:兑奖券

        -- 候选人（uin=迷你号，initial_vote=初始得票数）
candidate = {
            [1] = {uin = 133213732, initial_vote = 0, resume = 1001491,  head_id = 33025, NickName = "刘半仙解说",  head_url = "ui/roleicons/56.png"};
            [2] = {uin = 668767690, initial_vote = 0, resume = 1001492,  head_id = 1, NickName = "二狗子玩游戏",  head_url = "ui/roleicons/2.png"};
            [3] = {uin = 762875080, initial_vote = 0, resume = 1001493,  head_id = 20289, NickName = "真人版迷斯拉",  head_url = "ui/roleicons/33.png"};
            [4] = {uin = 273273900, initial_vote = 0, resume = 1001494,  head_id =20272, NickName = "入梦txf",  head_url = "ui/roleicons/282.png"};
            [5] = {uin = 722524258, initial_vote = 0, resume = 1001495,  head_id = 33025, NickName = "萌虎妹子",  head_url = "ui/roleicons/277.png"};
            [6] = {uin = 333739663, initial_vote = 0, resume = 1001496,  head_id = 33005, NickName = "墨渊游戏解说",  head_url = "ui/roleicons/33.png"};
            [7] = {uin = 925259635, initial_vote = 0, resume = 1001497,  head_id = 1, NickName = "迷你世界汉堡吖",  head_url = "ui/roleicons/280.png"};
            [8] = {uin = 356151799, initial_vote = 0, resume = 1001498,  head_id = 33010, NickName = "忆涵游戏解说",  head_url = "ui/roleicons/33.png"};
            [9] = {uin = 480918060, initial_vote = 0, resume = 1001499,  head_id = 20289, NickName = "忆涵家的表妹",  head_url = "ui/roleicons/265.png"};
            [10] = {uin = 374722524, initial_vote = 0, resume = 1001500,  head_id = 33038, NickName = "可爱的半拉",  head_url = "ui/roleicons/52.png"};
            [11] = {uin = 422599955, initial_vote = 0, resume = 1001501,  head_id = 1, NickName = "狗华解说",  head_url = "ui/roleicons/31.png"};
            [12] = {uin = 527042542, initial_vote = 0, resume = 1001502,  head_id = 33025, NickName = "迷你世界羊纸",  head_url = "ui/roleicons/40.png"};
            [13] = {uin = 193722116, initial_vote = 0, resume = 1001503,  head_id = 20289, NickName = "迷你世界依诺",  head_url = "ui/roleicons/310.png"};
            [14] = {uin = 532895613, initial_vote = 0, resume = 1001504,  head_id = 1, NickName = "迷你世界帝王",  head_url = "ui/roleicons/214.png"};
            [15] = {uin = 883446394, initial_vote = 0, resume = 1001505,  head_id = 1, NickName = "小松解说z",  head_url = "ui/roleicons/212.png"};
            [16] = {uin = 345023926, initial_vote = 0, resume = 1001506,  head_id = 204289, NickName = "小宇mn本人",  head_url = "ui/roleicons/249.png"};
            [17] = {uin = 376906978, initial_vote = 0, resume = 1001507,  head_id = 1, NickName = "小乾游戏解说",  head_url = "ui/roleicons/33.png"};
            [18] = {uin = 634313780, initial_vote = 0, resume = 1001508,  head_id = 20215, NickName = "王不畏游戏解说",  head_url = "ui/roleicons/1.png"};
            [19] = {uin = 908836199, initial_vote = 0, resume = 1001509,  head_id = 1, NickName = "迷你世界辣条",  head_url = "ui/roleicons/68.png"};
            [20] = {uin = 335324989, initial_vote = 0, resume = 1001510,  head_id = 33003, NickName = "迷你世界皮皮",  head_url = "ui/roleicons/89.png"};
            [21] = {uin = 898511270, initial_vote = 0, resume = 1001511,  head_id = 20260, NickName = "迷你世界苏泽",  head_url = "ui/roleicons/215.png"};
            [22] = {uin = 1071300885, initial_vote = 0, resume = 1001512,  head_id = 20271, NickName = "龙宝（绿皮龙）",  head_url = "ui/roleicons/53.png"};
            [23] = {uin = 237630209, initial_vote = 0, resume = 1001513,  head_id = 33041, NickName = "MT蜜糖",  head_url = "ui/roleicons/337.png"};
            [24] = {uin = 237610578, initial_vote = 0, resume = 1001514,  head_id = 20289, NickName = "OY涓涓",  head_url = "ui/roleicons/240.png"};
            [25] = {uin = 650764493, initial_vote = 0, resume = 1001515,  head_id = 1, NickName = "鸡汁哥游戏解说",  head_url = "ui/roleicons/33.png"};
            [26] = {uin = 630423944, initial_vote = 0, resume = 1001516,  head_id = 20289, NickName = "猫儿游戏",  head_url = "ui/roleicons/331.png"};
            [27] = {uin = 861255515, initial_vote = 0, resume = 1001517,  head_id = 20289, NickName = "迷你世界安妮",  head_url = "ui/roleicons/304.png"};
            [28] = {uin = 66890090, initial_vote = 0, resume = 1001518,  head_id = 20213, NickName = "黑曳",  head_url = "ui/roleicons/87.png"};
            [29] = {uin = 527674730, initial_vote = 0, resume = 1001519,  head_id = 33035, NickName = "迷你世界暖男",  head_url = "ui/roleicons/274.png"};
            [30] = {uin = 511094580, initial_vote = 0, resume = 1001520,  head_id = 20252, NickName = "小燕子游戏解说",  head_url = "ui/roleicons/30.png"};
        };
        -- 活动规则介绍
        activity_rule_text = 1001433;
		
		store = {
			startTime = '2022-02-16';                       -- 商店开启时间
			endTime = '2022-02-29';                         -- 商店结束时间
			versionMin = '1.8.5';                           -- 最低版本限制
			
			goods = {										-- 商店列表
				[1] = {items = {[1]= {id=22154, num=1}}, price=60, limit=1};
				[2] = {items = {[1]= {id=22402, num=1}}, price=60, limit=1};
				[3] = {items = {[1]= {id=22271, num=1}}, price=60, limit=1};
				[4] = {items = {[1]= {id=22202, num=1}}, price=60, limit=1};
				[5] = {items = {[1]= {id=12948, num=1}}, price=25, limit=0};
				[6] = {items = {[1]= {id=20038, num=5}}, price=5, limit=0};
				[7] = {items = {[1]= {id=20032, num=5}}, price=5, limit=0};
				[8] = {items = {[1]= {id=24807, num=10}}, price=5, limit=0};
				[9] = {items = {[1]= {id=20037, num=10}}, price=5, limit=0};
				[10] = {items = {[1]= {id=12988, num=1}}, price=2, limit=0};
				[11] = {items = {[1]= {id=12964, num=1}}, price=2, limit=0};
				[12] = {items = {[1]= {id=12963, num=1}}, price=1, limit=0};
			};
		};

		mission = {
			[1] = {                              		-- 进入地图
				type = 0;              					
				name = "登录游戏";
				daily = 1;
				event = 18;                           	
				target = 1;              				
				bonus = {                               
					{itemId = 'mis_item_3', num = 1};
				};
			};
			[2] = {                              		-- 地图时长
				type = 0;              					
				name = "体验游戏作品3分钟";
				daily = 1;
				event = 2;                           	
				target = 180;              				
				bonus = {                               
					{itemId = 'mis_item_3', num = 1};
				};
			};
			[3] = {                              		-- 观看广告
				type = 0;              					
				name = "观看1次广告";
				apiid_allow = {1,2,3,7,11,12,13,15,18,19,21,28,29,32,34,36,39,45,55,56,57,58,60,62,63,64,65,66,68,69,70,71,72,73,74,75,76,77,78,79,80,82,83,92,93,94,10,49,50,96};				-- 包含渠道
				daily = 1;
				event = 26;                           	
				target = 1;              				
				bonus = {                               
					{itemId = 'mis_item_3', num = 2};
				};
			};
			[4] = {                              		-- 联机地图
				type = 0;              					
				name = "每日进行联机游戏2次";
				daily = 1;
				event = 9;                           	
				target = 2;              				
				bonus = {                               
					{itemId = 'mis_item_3', num = 1};
				};
			};
			[5] = {
				name = '每日在线时长6分钟';
				daily = 1;
				event = 22;
				target = 360;
				bonus = {                               
					{itemId = 'mis_item_3', num = 1};
				};
			};
			[6] = {
				name = '公开上传1个作品';
				daily = 1;
				event = 15;
				target = 1;
				bonus = {
					{itemId = 'mis_item_3', num = 1};
				};
			};
			[7] = {
				name = '每日下载作品2次';
				daily = 1;
				event = 4;
				target = 2;
				bonus = {                               
					{itemId = 'mis_item_3', num = 1};
				};               
			};
		};
	};
	[12] = {                                      -- 社区作者评选
		control = 1;                                        -- 总控 0:关闭,1:开启	
		--apiids  = '999,1,45';                      				-- 渠道限制
		versionMin = '1.8.5';                           	-- 最低版本限制
                                startTime = '2022-03-01 00:00:00';                               --活动开启时间
		startEndTime = '2022-03-11 23:59:59';                        --投票结束时间
		publishTime = '2022-03-12 00:00:00';                          --活动公布时间
		endTime = '2022-03-13 23:59:59';                               --活动结束时间
		auto = 1;                                     		-- 自动领取
		exchange_type = 1;									-- 兑换方式 0:奖励券 1:兑奖券

        -- 候选人（uin=迷你号，initial_vote=初始得票数）
        candidate = {
            [1] = {uin = 92612374, initial_vote = 0, resume = 1001521,  head_id = 20241, NickName = "彬",  head_url = "ui/roleicons/56.png", link = "https://minichat.mini1.cn/share/sharePage.html?articleId=135776225672966144"};
            [2] = {uin = 112387545, initial_vote = 0, resume = 1001522,  head_id = 20208, NickName = "月亮哥哥",  head_url = "ui/roleicons/242.png", link = "https://minichat.mini1.cn/share/sharePage.html?articleId=133488600778018816"};
            [3] = {uin = 1211281, initial_vote = 0, resume = 1001523,  head_id = 20230, NickName = ">0-0<乐妹",  head_url = "ui/roleicons/240.png", link = "https://minichat.mini1.cn/share/sharePage.html?articleId=126664679783723008"};
            [4] = {uin = 396857727, initial_vote = 0, resume = 1001524,  head_id =20236, NickName = "贝蒂莎莉^V^",  head_url = "ui/roleicons/83.png", link = "https://minichat.mini1.cn/share/sharePage.html?articleId=126664805843529728"};
            [5] = {uin = 953123588, initial_vote = 0, resume = 1001525,  head_id = 20220, NickName = "Luminaryら沐时う",  head_url = "ui/roleicons/313.png"};
            [6] = {uin = 63412239, initial_vote = 0, resume = 1001526,  head_id = 20251, NickName = "南谭",  head_url = "ui/roleicons/42.png"};
            [7] = {uin = 199459292, initial_vote = 0, resume = 1001527,  head_id = 20289, NickName = "可乐",  head_url = "ui/roleicons/61.png", link = "https://minichat.mini1.cn/share/sharePage.html?articleId=126655073426665472"};
            [8] = {uin = 279456004, initial_vote = 0, resume = 1001528,  head_id = 20208, NickName = "TYS-余念",  head_url = "ui/roleicons/39.png", link = "https://minichat.mini1.cn/share/sharePage.html?articleId=126665503213678592"};
            [9] = {uin = 66170865, initial_vote = 0, resume = 1001529,  head_id = 33041, NickName = "盛世小檀",  head_url = "ui/roleicons/51.png", link = "https://minichat.mini1.cn/share/sharePage.html?articleId=126665117744558080"};
            [10] = {uin = 70443711, initial_vote = 0, resume = 1001530,  head_id = 20213, NickName = "叶蓝斯",  head_url = "ui/roleicons/215.png", link = "https://minichat.mini1.cn/share/sharePage.html?articleId=126655156146728960"};
            [11] = {uin = 112687422, initial_vote = 0, resume = 1001531,  head_id = 20279, NickName = "小杰",  head_url = "ui/roleicons/54.png", link = "https://minichat.mini1.cn/share/sharePage.html?articleId=137041301012885504"};
            [12] = {uin = 831983094, initial_vote = 0, resume = 1001532,  head_id = 20282, NickName = "七缘",  head_url = "ui/roleicons/294.png", link = "https://minichat.mini1.cn/share/sharePage.html?articleId=129832877093875712"};
            [13] = {uin = 72884752, initial_vote = 0, resume = 1001533,  head_id = 20250, NickName = "桃心",  head_url = "ui/roleicons/313.png", link = "https://minichat.mini1.cn/share/sharePage.html?articleId=129832843103236096"};
            [14] = {uin = 355196595, initial_vote = 0, resume = 1001534,  head_id = 20291, NickName = "创世的蔷薇",  head_url = "ui/roleicons/206.png", link = "https://minichat.mini1.cn/share/sharePage.html?articleId=126659746074259456"};
            [15] = {uin = 707926365, initial_vote = 0, resume = 1001535,  head_id = 33012, NickName = "鱼病",  head_url = "ui/roleicons/259.png", link = "https://minichat.mini1.cn/share/sharePage.html?articleId=126664445854806016"};
            [16] = {uin = 549889651, initial_vote = 0, resume = 1001536,  head_id = 20251, NickName = "◇阿糖◇",  head_url = "ui/roleicons/49.png", link = "https://minichat.mini1.cn/share/sharePage.html?articleId=126664934256340992"};
            [17] = {uin = 57567738, initial_vote = 0, resume = 1001537,  head_id = 20208, NickName = "莜离",  head_url = "ui/roleicons/310.png", link = "https://api.miniworldbox.com/post/3088782"};
            [18] = {uin = 554072085, initial_vote = 0, resume = 1001538,  head_id = 20261, NickName = "离染染",  head_url = "ui/roleicons/315.png"};
            [19] = {uin = 751026091, initial_vote = 0, resume = 1001539,  head_id = 20292, NickName = "Summer锦柚",  head_url = "ui/roleicons/66.png"};
            [20] = {uin = 517178192, initial_vote = 0, resume = 1001540,  head_id = 33016, NickName = "浪奈",  head_url = "ui/roleicons/286.png"};
            [21] = {uin = 262728251, initial_vote = 0, resume = 1001541,  head_id = 33035, NickName = "猎狐",  head_url = "ui/roleicons/32.png"};
            [22] = {uin = 423914531, initial_vote = 0, resume = 1001542,  head_id = 20269, NickName = "牛奶不吃药",  head_url = "ui/roleicons/239.png", link = "https://minichat.mini1.cn/share/sharePage.html?articleId=126666118409023488"};
            [23] = {uin = 1086900, initial_vote = 0, resume = 1001543,  head_id = 20260, NickName = "久叔",  head_url = "ui/roleicons/49.png"};
            [24] = {uin = 924171729, initial_vote = 0, resume = 1001544,  head_id = 20234, NickName = "柚",  head_url = "ui/roleicons/205.png", link = "https://minichat.mini1.cn/share/sharePage.html?articleId=126652112885575680"};
            [25] = {uin = 575231423, initial_vote = 0, resume = 1001545,  head_id = 20232, NickName = "辞染诺诺",  head_url = "ui/roleicons/39.png", link = "https://minichat.mini1.cn/share/sharePage.html?articleId=131302120773005312"};
            [26] = {uin = 604044025, initial_vote = 0, resume = 1001546,  head_id = 33025, NickName = "sandm衣绘.",  head_url = "ui/roleicons/265.png", link = "https://minichat.mini1.cn/share/sharePage.html?articleId=126662771631255552"};
            [27] = {uin = 702015995, initial_vote = 0, resume = 1001547,  head_id = 20249, NickName = "豆砸",  head_url = "ui/roleicons/240.png", link = "https://minichat.mini1.cn/share/moment.html?articleId=137378614986698752"};
            [28] = {uin = 400291307, initial_vote = 0, resume = 1001548,  head_id = 20255, NickName = "花开&落雨",  head_url = "ui/roleicons/34.png", link = "https://minichat.mini1.cn/share/sharePage.html?articleId=126661272897384448"};
            [29] = {uin = 93932374, initial_vote = 0, resume = 1001549,  head_id = 20292, NickName = "云琛",  head_url = "ui/roleicons/71.png", link = "https://minichat.mini1.cn/share/sharePage.html?articleId=126661384407150592"};
            [30] = {uin = 676821963, initial_vote = 0, resume = 1001550,  head_id = 20208, NickName = "流泪BB",  head_url = "ui/roleicons/91.png", link = "https://minichat.mini1.cn/share/sharePage.html?articleId=126664832561246208" };
        };

        -- 活动规则介绍
        activity_rule_text = 1001434;
		
		store = {
			startTime = '2022-03-01';                       -- 商店开启时间
			endTime = '2022-03-14';                         -- 商店结束时间
			versionMin = '1.8.5';                           -- 最低版本限制
			
			goods = {										-- 商店列表
				[1] = {items = {[1]= {id=22154, num=1}}, price=60, limit=1};
				[2] = {items = {[1]= {id=22402, num=1}}, price=60, limit=1};
				[3] = {items = {[1]= {id=22152, num=1}}, price=60, limit=1};
				[4] = {items = {[1]= {id=22202, num=1}}, price=60, limit=1};
				[5] = {items = {[1]= {id=12948, num=1}}, price=25, limit=0};
				[6] = {items = {[1]= {id=20038, num=5}}, price=5, limit=0};
				[7] = {items = {[1]= {id=20036, num=5}}, price=5, limit=0};
				[8] = {items = {[1]= {id=24807, num=10}}, price=5, limit=0};
				[9] = {items = {[1]= {id=24810, num=10}}, price=5, limit=0};
				[10] = {items = {[1]= {id=12988, num=1}}, price=2, limit=0};
				[11] = {items = {[1]= {id=12964, num=1}}, price=2, limit=0};
				[12] = {items = {[1]= {id=12963, num=1}}, price=1, limit=0};
			};
		};

		mission = {
			[1] = {                              		-- 进入地图
				type = 0;              					
				name = "登录游戏";
				daily = 1;
				event = 18;                           	
				target = 1;              				
				bonus = {                               
					{itemId = 'mis_item_3', num = 1};
				};
			};
			[2] = {                              		-- 地图时长
				type = 0;              					
				name = "体验游戏作品3分钟";
				daily = 1;
				event = 2;                           	
				target = 180;              				
				bonus = {                               
					{itemId = 'mis_item_3', num = 1};
				};
			};
			[3] = {                              		-- 观看广告
				type = 0;              					
				name = "观看1次广告";
				apiid_allow = {1,2,3,7,11,12,13,15,18,19,21,28,29,32,34,36,39,45,55,56,57,58,60,62,63,64,65,66,68,69,70,71,72,73,74,75,76,77,78,79,80,82,83,92,93,94,10,49,50,96};				-- 包含渠道
				daily = 1;
				event = 26;                           	
				target = 1;              				
				bonus = {                               
					{itemId = 'mis_item_3', num = 2};
				};
			};
			[4] = {                              		-- 联机地图
				type = 0;              					
				name = "每日进行联机游戏2次";
				daily = 1;
				event = 9;                           	
				target = 2;              				
				bonus = {                               
					{itemId = 'mis_item_3', num = 1};
				};
			};
			[5] = {
				name = '每日在线时长6分钟';
				daily = 1;
				event = 22;
				target = 360;
				bonus = {                               
					{itemId = 'mis_item_3', num = 1};
				};
			};
			[6] = {
				name = '公开上传1个作品';
				daily = 1;
				event = 15;
				target = 1;
				bonus = {
					{itemId = 'mis_item_3', num = 1};
				};
			};
			[7] = {
				name = '每日下载作品2次';
				daily = 1;
				event = 4;
				target = 2;
				bonus = {                               
					{itemId = 'mis_item_3', num = 1};
				};               
			};
		};
	};
	[13] = {                                      				-- 大唐中国年
		control = 1;                                        -- 总控 0:关闭,1:开启	
		--apiid = '999';                      				-- 渠道限制
		versionMin = '2.9.0';                           	-- 最低版本限制
		startTime = '2022-01-19 00:00:00';                       	-- 活动开启时间
		endTime = '2022-02-15 23:59:59';                         	-- 活动结束时间
		
		store = {
			startTime = '2022-01-19 00:00:00';                       -- 商店开启时间
			endTime = '2022-02-15 23:59:59';                         -- 商店结束时间
			versionMin = '0.0.0';                           -- 最低版本限制
			
			goods = {										-- 红包兑换商店列表
				[1] = {items = {[1] = {id = 27073, num = 1}}, price=288, limit=1, unique=0, type = 1};				
				[2] = {items = {[1] = {id = 13015, num = 1}}, price = 10, limit=999, unique=0, type = 3};
				[3] = {items = {[1] = {id = 12836, num = 1}}, price = 10, limit=999, unique=0, type = 3};
				[4] = {items = {[1] = {id = 938, num = 1}}, price = 10, limit=999, unique=0, type = 3};
				[5] = {items = {[1] = {id = 20084, num = 1}}, price = 10, limit=999, unique=0, type = 3};
				[6] = {items = {[1] = {id = 20085, num = 1}}, price = 10, limit=3, unique=0, type = 3};
				[7] = {items = {[1] = {id = 20086, num = 1}}, price = 10, limit=4, unique=0, type = 3};
				[8] = {items = {[1] = {id = 20087, num = 1}}, price = 10, limit=5, unique=0, type = 3};
				[9] = {items = {[1] = {id = 20088, num = 1}}, price = 10, limit=6, unique=0, type = 3};
				[10] = {items = {[1] = {id = 20147, num = 1}}, price = 10, limit=12, unique=0, type = 3};
				[11] = {items = {[1] = {id = 12270, num = 1}}, price = 10, limit=999, unique=0, type = 3};
				[12] = {items = {[1] = {id = 12567, num = 1}}, price = 10, limit=999, unique=0, type = 3};
				[13] = {items = {[1] = {id = 944, num = 1}}, price = 10, limit=999, unique=0, type = 3};
				[14] = {items = {[1] = {id = 12058, num = 1}}, price = 10, limit=999, unique=0, type = 3};
				[15] = {items = {[1] = {id = 20093, num = 1}}, price = 10, limit=8, unique=0, type = 3};
				[16] = {items = {[1] = {id = 12837, num = 1}}, price = 10, limit=999, unique=0, type = 3};
				[17] = {items = {[1] = {id = 20089, num = 1}}, price = 10, limit=10, unique=0, type = 3};
				[18] = {items = {[1] = {id = 20139, num = 1}}, price = 8, limit=10, unique=0, type = 3};
				[19] = {items = {[1] = {id = 20140, num = 1}}, price = 8, limit=4, unique=0, type = 3};
				[20] = {items = {[1] = {id = 24810, num = 5}}, price = 30, limit=999, unique=0, type = 2};
				[21] = {items = {[1] = {id = 24807, num = 5}}, price = 30, limit=999, unique=0, type = 2};
				[22] = {items = {[1] = {id = 24802, num = 5}}, price = 30, limit=999, unique=0, type = 2};
				[23] = {items = {[1] = {id = 24803, num = 5}}, price = 30, limit=999, unique=0, type = 2};
				[24] = {items = {[1] = {id = 20037, num = 5}}, price = 30, limit=999, unique=0, type = 2};
				[25] = {items = {[1] = {id = 20036, num = 5}}, price = 30, limit=999, unique=0, type = 2};
				[26] = {items = {[1] = {id = 20038, num = 5}}, price = 30, limit=999, unique=0, type = 2};
				[27] = {items = {[1] = {id = 24817, num = 5}}, price = 30, limit=999, unique=0, type = 2};
				[28] = {items = {[1] = {id = 20032, num = 5}}, price = 30, limit=999, unique=0, type = 2};
			};
		};

		taskList = {
			[1] = {												-- 小唐人
				startTime = '2022-01-19 00:00:00';              -- 开启时间
				endTime = '2022-02-15 23:59:59';                         -- 结束时间
				mapId = "13237089207286";						-- 地图ID
				auto = 1;                                       -- 自动领取
				tabTime ={										-- 页签时间
					[1]={startTime = '2022-01-19 00:00:00', endTime = '2022-02-15 23:59:59'};
				};

                shareCode = {
                    prefix = {                                  -- 新春密语前缀
                        "小唐人","中国年","华清池","长安城","新年","新春","过大年","赏灯","聚宝盆"
                    };
                    init = 38032637;                            -- 新春密语初始值
                    max = 60466175;                             -- 新春密语最大值
                    maxExchange = 2;                            -- 新春密语最大兑换次数
                    expireType = 1;                             -- 新春密语过期方式：1 当天有效
                    maxLength = 20;                             -- 新春密语最大长度(字节数，用于快速校验，由开发填写，默认是20);
                    pattern = "^%W+%d[0-9a-zA-Z]+$";            -- 新春密语正则匹配(用于快速校验，由开发填写，默认是：^%W+%d[0-9a-zA-Z]+$)
                    format = "uint36"                            -- 格式化（目前支持：uint36 36进制整数）
                };

				mission = {
					[1] = {                              		-- 进入地图
						type = 0;              					
						name = "登陆游戏";
						daily = 1;
						event = 18;                           	
						target = 1;              				
						bonus = {                               
							{itemId = 'mis_item_3', num = 1};
						};
					};
					[2] = {                              		-- 进入地图
						type = 0;              					
						name = "进入长安城";
						daily = 1;
						event = 1;                           	
						target = 1;              				
						bonus = {                               
							{itemId = 'mis_item_3', num = 2};
						};
					};
					[3] = {                              		-- 好友使用你的新春密语
						type = 0;              					
						name = "分享新春密语并被使用1次";
						daily = 1;
						event = 29;                           	
						target = 1;              				
						bonus = {                               
							{itemId = 'mis_item_3', num = 3};
						};
					};
					[4] = {                              		-- 使用好友的分音乐密码
						type = 0;              					
						name = "使用1次好友分享的新春密语";
						daily = 1;
						event = 28;                           	
						target = 1;              				
						bonus = {                               
							{itemId = 'mis_item_3', num = 3};
						};
					};
					
					[5] = {                              		-- 观看广告
						type = 0;              					
						name = "观看1次广告";
                apiid_allow = {                 -- 包含渠道
                    1,2,3,7,11,12,13,15,18,19,21,28,29,32,34,36,39,45,55,56,57,58,60,62,63,64,65,66,68,69,70,71,72,73,74,75,76,77,78,79,80,82,83,92,93,94,10,49,50,96					-- 渠道列表
                };
						daily = 1;
						event = 26;                           	
						target = 1;              				
						bonus = {                               
							{itemId = 'mis_item_3', num = 2};
						};
					};
					[6] = {                              		-- 观看广告
						type = 0;              					
						name = "观看3次广告";
                apiid_allow = {                 -- 包含渠道
                    1,2,3,7,11,12,13,15,18,19,21,28,29,32,34,36,39,45,55,56,57,58,60,62,63,64,65,66,68,69,70,71,72,73,74,75,76,77,78,79,80,82,83,92,93,94,10,49,50,96					-- 渠道列表
                };
						daily = 1;
						event = 26;                           	
						target = 3;              				
						bonus = {                               
							{itemId = 'mis_item_3', num = 3};
						};
					};
					[7] = {                              		-- 使用好友的分音乐密码
						type = 0;              					
						name = "分享1次大唐中国年";
                apiid_allow = {                 -- 包含渠道
                    1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,49,50,51,52,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,88,85,86,87,89,91,92,93,94,95,96,97,99					-- 渠道列表
                };
						daily = 1;
						event = 24;                           	
						target = 1;              				
						bonus = {                               
							{itemId = 'mis_item_3', num = 2};
						};
					};
					[8] = {                              		-- 好友使用你的新春密语
						type = 0;              					
						name = "分享新春密语并被使用2次";
						daily = 1;
						event = 29;                           	
						target = 2;              				
						bonus = {                               
							{itemId = 'mis_item_3', num = 6};
						};
					};
					[9] = {                              		-- 使用好友的分音乐密码
						type = 0;              					
						name = "使用2次好友分享的新春密语";
						daily = 1;
						event = 28;                           	
						target = 2;              				
						bonus = {                               
							{itemId = 'mis_item_3', num = 6};
						};
					};
					[10] = {                              		-- 地图体验时长
						type = 0;              					
						name = "长安城游玩5分钟";
						daily = 1;
						event = 2;                           	
						target = 300;              				
						bonus = {                               
							{itemId = 'mis_item_3', num = 2};
						};
					};
				};
			};
			[2] = {												-- 上元节
				startTime = '2022-02-11 00:00:00';                       -- 开启时间
				endTime = '2022-02-15 23:59:59';                         -- 结束时间
				mapId = "23695334573266";						-- 地图ID
				auto = 0;                                       -- 自动领取
				exchange_type = 0;								-- 兑换方式 0:奖励券 1:兑奖券
				tabTime ={										-- 页签时间
					[1]={startTime = '2022-02-11 00:00:00', endTime = '2022-02-15 23:59:59'};
				};

				mapId = "23695334573266";						-- 上元节地图ID
				giftId = "4097";						-- 地图礼盒ID

                max_daily_fire = 20;							-- 每天最多能获得希望之火的数量

				mission = {
					[1] = {                              		-- 花灯1
						type = 0;              					
						name = "花灯1";
						event = 30;                           	
						gain_item = 12935;                      -- 希望之火id
						target = 1;             				
						bonus = {                               
							{itemId = 'mis_item_3', num = 20};  -- 奖励红包
						};
					};
					[2] = {                              		-- 花灯2
						type = 0;              					
						name = "花灯2";
						event = 30;                           	
						gain_item = 12935;                      -- 希望之火id
						target = 5;             				
						bonus = {                               
							{itemId = 'mis_item_3', num = 30};  -- 奖励红包
						};
					};
					[3] = {                              		-- 花灯3
						type = 0;              					
						name = "花灯3";
						event = 30;                           	
						gain_item = 12935;                      -- 希望之火id
						target = 15;             				
						bonus = {                               
							{itemId = 'mis_item_3', num = 40};  -- 奖励红包
						};
					};
					[4] = {                              		-- 花灯4
						type = 0;              					
						name = "花灯4";
						event = 30;                           	
						gain_item = 12935;                      -- 希望之火id
						target = 25;             				
						bonus = {                               
							{itemId = 'mis_item_3', num = 50};  -- 奖励红包
						};
					};
					[5] = {                              		-- 花灯5
						type = 0;              					
						name = "花灯5";
						event = 30;                           	
						gain_item = 12935;                      -- 希望之火id
						target = 40;             				
						bonus = {                               
							{itemId = 'mis_item_3', num = 60};  -- 奖励红包
						};
					};
				};
			};
			[3] = {												-- 迎财神
				block_max = 500;								-- 瓜分奖池熔断上限
				
				mapId = "19348827669714";						-- 迎财神地图ID
				giftId = "4107";						-- 财神券ID
				award_pool= 10000060;							-- 奖池数
				red_envelope = 20;								-- 每日可领取红包数
				startTime = '2022-01-19 00:00:00';                       -- 开启时间
				endTime = '2022-02-06 23:59:59';                         -- 结束时间
				auto = 1;                                       -- 自动领取
				exchange_type = 0;								-- 兑换方式 0:奖励券 1:兑奖券
				tabTime ={										-- 活动时间段
					[1]={startTime = '2022-01-19 00:00:00', endTime = '2022-01-31 19:59:59'};	-- 预约阶段 
					[2]={startTime = '2022-01-31 20:00:00', endTime = '2022-01-31 23:59:58'};	-- 财神降临
					[3]={startTime = '2022-01-31 23:59:59', endTime = '2022-02-06 23:59:59'};	-- 瓜分奖池
				};
				
				appointList ={									-- 写入手机本地的日程安排
					[1]={startTime = '2022-01-31 19:55', endTime = '2022-01-31 21:00'};
				};
				
				--显示给用户的假数据
				time_pool_list = {
	[1]={startTime = '2022-01-19 00:00:00', endTime = '2022-01-31 23:59:59', show_pool_num = 10000000};
	[2]={startTime = '2022-02-01 00:00:00', endTime = '2022-02-01 23:59:59', show_pool_num = 1593116};
	[3]={startTime = '2022-02-02 00:00:00', endTime = '2022-02-02 23:59:59', show_pool_num = 441112};
	[4]={startTime = '2022-02-03 00:00:00', endTime = '2022-02-03 23:59:59', show_pool_num = 245084};
	[5]={startTime = '2022-02-04 00:00:00', endTime = '2022-02-04 23:59:59', show_pool_num = 116424};
	[6]={startTime = '2022-02-05 00:00:00', endTime = '2022-02-05 23:59:59', show_pool_num = 15876};
	[7]={startTime = '2022-02-06 00:00:00', endTime = '2022-02-15 23:59:59', show_pool_num = 3528};

	--以上活动时间对不上,默认用下面值
	[8]={show_pool_num = 10000000};
				};
				
				mini_coin_prob = 100;							--抽中迷你币概率35%,剩下就是红包

				minicoin_award_pool = { 					--迷你币分数配置
					[1] = { money = 2022,count = 10 },			--前面是金额，后面是份数
					[2] = { money = 888,count = 10 },
					[3] = { money = 388,count = 10 },
					[4] = { money = 188,count = 10 },
					[5] = { money = 28,count = 355900 },
				};

				red_envelope_award_pool = {				--红包配置
					[1] = { envelope = 268,prob = 10 },			--前面是红包数量，后面是概率
					[2] = { envelope = 168,prob = 20 },
					[3] = { envelope = 88,prob = 70 },
				};
				
				low_value_user = {								--低价值用户
					time = '2022-01-19 00:00:00',				--注册时间边界
					day  = 5,									--小于5天且未付费
				};
				
				assist_man_count = 4;							--助力人数
				share_copywriting = '复制助力码登陆迷你世界、助我领取财神大奖、助力码：'; -- 分享文案
				mission = {
					[1] = {                              		-- 进入地图
						type = 0;
						daily = 1;              					
						name = "预约红包";
						event = 27;                           	
						target = 1;              				
						bonus = {                               
							{itemId = 'mis_item_3', num = 20};
						};
					};
				};
			};
			[4] = {												-- 迎唐年
				startTime = '2022-01-19 00:00:00';                       -- 开启时间
				endTime = '2022-02-06 23:59:59';                         -- 结束时间
				auto = 1;                                       -- 自动领取
				mapId = "33122787787986";						-- 地图ID
				giftId = "4101";								-- 奖杯ID
				exchange_type = 0;								-- 兑换方式 0:奖励券 1:兑奖券

				mission = {
					[1] = {                              		-- 进入地图
						name = "参与1次迎唐年活动";
						daily = 1;
						event = 1;                           	
						target = 1;              				
						bonus = {                               
							{itemId = 'mis_item_3', num = 2};
						};
					};
					[2] = {                              		-- 进入地图
						name = "参与3次迎唐年活动";
						daily = 1;
						event = 1;                           	
						target = 3;              				
						bonus = {                               
							{itemId = 'mis_item_3', num = 3};
						};
					};
					[3] = {                              		-- 进入地图
						name = "活动中获得前3名";
						daily = 1;
						event = 31;                           	
						target = 1;              				
						bonus = {                               
							{itemId = 'mis_item_3', num = 5};
						};
					};
				};
			};
			[5] = {												-- 战年兽
				startTime = '2022-01-31 00:00:00';                       -- 开启时间
				endTime = '2022-02-06 23:59:59';                         -- 结束时间
				auto = 1;                                       -- 自动领取
				mapId = "7387343750354";						-- 地图ID
				exchange_type = 0;								-- 兑换方式 0:奖励券 1:兑奖券

				tabTime ={										-- 页签时间
					[1]={startTime = '2022-01-31 00:00:00', endTime = '2022-02-06 23:59:59'};
				};

				mission = {
					[1] = {                              		-- 进入指定地图
						name = "成功挑战1次年兽";
						event = 32;                           	-- 事件类型
						target = 1;              				-- 目标
						bonus = {                               -- 奖励
							{itemId = 'mis_item_3', num = 20};
						};
					};
					[2] = {                              		-- 进入指定地图
						name = "全服累计挑战年兽";
						event = 33;                           	-- 事件类型
						target = 10000;              				-- 目标
						bonus = {                               -- 奖励
							{itemId = 'mis_item_3', num = 40};
						};
					};
					[3] = {                              		-- 进入指定地图
						name = "全服累计挑战年兽";
						event = 33;                           	-- 事件类型
						target = 50000;              				-- 目标
						bonus = {                               -- 奖励
							{itemId = 'mis_item_3', num = 60};
						};
					};
					[4] = {                              		-- 进入指定地图
						name = "全服累计挑战年兽";
						event = 33;                           	-- 事件类型
						target = 100000;              				-- 目标
						bonus = {                               -- 奖励
							{itemId = 'mis_item_3', num = 80};
						};
					};
				};
			};
            [6] = {                                             -- 开宝箱
				startTime = '2022-01-19 00:00:00';                       -- 开启时间
				endTime = '2022-02-15 23:59:59';                         -- 结束时间

                shareRoll = {                                   -- 开宝箱
                    daily = 1;                                  -- 次数每日刷新
                    freeCount = 1;                              -- 免费次数
                    videoCount = 3;                            -- 看视频次数
                    minVideoInterval = 2;                       -- 视频观看最小间隔
                    videoApiidAllow = {                         -- 看广告包含渠道
                    1,2,3,7,11,12,13,15,18,19,21,28,29,32,34,36,39,45,55,56,57,58,60,62,63,64,65,66,68,69,70,71,72,73,74,75,76,77,78,79,80,82,83,92,93,94,10,49,50,96
                    };

                    awards = {                                  -- 开箱奖励
                        [1] = {itemId = 'mis_item_3', num = 38, weight = 1};
                        [2] = {itemId = 'mis_item_3', num = 28, weight = 5};
                        [3] = {itemId = 'mis_item_3', num = 18, weight = 15};
                        [4] = {itemId = 'mis_item_3', num = 12, weight = 30};
                        [5] = {itemId = 'mis_item_3', num = 8,  weight = 45};
                        [6] = {itemId = 12950,      num = 3, weight = 35};
                        [7] = {itemId = 12951,      num = 3, weight = 25};
                        [8] = {itemId = 12952,      num = 3, weight = 25};
                        [9] = {itemId = 12953,      num = 3, weight = 25};
                        [10] = {itemId = 12954,     num = 3, weight = 20};
                        [11] = {itemId = 12988,     num = 1, weight = 35};
                        [12] = {itemId = 12963,     num = 1,  weight = 50};
                        [13] = {itemId = 12962,     num = 1,  weight = 50};
                        [14] = {itemId = 12851,     num = 1, weight = 40};
                        [15] = {itemId = 12964,     num = 1, weight = 35};
						[16] = {itemId = 10027,     num = 1, weight = 5};
                    };
                };

				mission = {};
            };
			[7] = {												-- 分享红包
				startTime = '2022-01-19 00:00:00';                       -- 开启时间
				endTime = '2022-02-15 23:59:59';                         -- 结束时间
				auto = 0;                                       -- 自动领取
				exchange_type = 0;								-- 兑换方式 0:奖励券 1:兑奖券

				mission = {
					[1] = {                              		-- 每日分享
						name = "分享活动";
						event = 21;                           	
						target = 1;              				
						bonus = {                               
							{itemId = 'mis_item_3', num = 10};
						};
					};
				};
			};
		};
	};
	[14] = {                                      			-- 铠甲勇士活动
		control = 1;                                        -- 总控 0:关闭,1:开启	
		apiid = '999';                      				-- 渠道限制
		versionMin = '0.0.0';                           	-- 最低版本限制
		startTime = '2022-01-19 00:00:00';                  -- 活动开启时间
		endTime = '2022-01-26 23:59:59';                    -- 活动结束时间

		-- 地图展示
		maps = {
			 [1] = '31431702949025';
			 [2] = '30671493737633';
			 [3] = '9596089216161';
			 [4] = '26574094937249';
		}
	};
	[15] = {												-- 花小楼专辑
		startTime = '2022-02-18 10:00:00';                  -- 活动开启时间
		endTime = '2022-02-20 23:59:59'; 				    -- 活动关闭时间
		control = 1;                                        -- 总控 0:关闭,1:开启
		mapID = '11029476017254'; --大地图ID

		-- 地图展示
		maps = {
			 [1] = {mapid='8289286882406',time = 5 ,name = '星辰入梦'};
			 [2] = {mapid='51887499904102',time = 5 ,name = '飞天说'};
			 [3] = {mapid='76227079570534',time = 5 ,name = '不觉晓'};
			 [4] = {mapid='43344809952358',time = 5 ,name = '你可不可以跟我一起看彩虹'};
			 [5] = {mapid='71279277245542',time = 5 ,name = '河洛会'};
		};

		-- 活动奖励
		unlock_award = {
			[1] = {id = 12963, num = 2};
			[2] = {id = 12851, num = 2};
			[3] = {id = 12988, num = 2};
			[4] = {id = 24810, num = 10};
			[5] = {id = 24810, num = 20};
		};
		
		--逻辑占位字符,不用动
		store={goods={};};
		candidate={};
		mission = {
					[1] = {                              		-- 进入指定地图
						event = 1;                           	-- 事件类型
						bonus = {                               -- 奖励
						};
					};
					[2] = {                              		-- 进入指定地图
						event = 2;                           	-- 事件类型
						bonus = {                               -- 奖励
						};
					};
					[3] = {                              		-- 进入指定地图
						event = 3;                           	-- 事件类型
						bonus = {                               -- 奖励
						};
					};
					[4] = {                              		-- 进入指定地图
						event = 4;                           	-- 事件类型
						bonus = {                               -- 奖励
						};
					};
					[5] = {                              		-- 进入指定地图
						event = 5;                           	-- 事件类型
						bonus = {                               -- 奖励
						};
					};
				};
	};
	[17] = {                                      			-- 周年庆典 共筑长城
		control = 1;                                		-- 总控 0:关闭,1:开启	
		--apiid = '999';                      				-- 渠道限制
		versionMin = '1.11.0';                           	-- 最低版本限制
		startTime = '2022-03-16 10:00:00';                  -- 活动开启时间
		endTime = '2022-04-05 23:59:59';                    -- 活动结束时间

		programmingstartTime = '2022-03-17 11:00:00';		-- 教育开始时间
		programmingendTime = '2022-04-05 23:59:59';			-- 教育结束时间
		programming = 'https://course.miniaixue.com/activity?id=6zhounian&fromType=1054&utm_source=%E5%91%A8%E5%B9%B4%E5%BA%86%E6%B4%BB%E5%8A%A8%E9%A1%B5&utm_medium=cpm&utm_term=%E5%88%9B%E4%BD%9C%E6%8C%91%E6%88%98%E8%B5%9B&utm_content=%E5%88%9B%E4%BD%9C%E6%8C%91%E6%88%98%E8%B5%9B&utm_campaign=20220302-%E5%91%A8%E5%B9%B4%E5%BA%86-%E8%BF%B7%E4%BD%A0%E4%B8%96%E7%95%8C-%E6%B4%BB%E5%8A%A8%E9%A1%B5%E5%85%A5%E5%8F%A3-%E5%88%9B%E4%BD%9C%E6%8C%91%E6%88%98%E8%B5%9B-1054&_channel_track_key=J2adSwQj&openBrowser=1';                       -- 迷你编程跳转链接
		
		skinstartTime = '2022-03-16 10:00:00'; 				-- 一元皮肤开始时间
		skinendTime = '2022-04-05 23:59:59';   				-- 一元皮肤结束时间
		skin = 's4_https://sso.mini1.cn/#/transit?url=https%3A%2F%2Fh5.mini1.cn%2Fact%2Fc5m%2Fsix-years-celebration%2F%23%2Ffriend%2F&openBrowser=3&portrait=2';                		        -- 一元皮肤跳转链接
		
		desirestartTime = '2022-03-16 10:00:00'; 			-- 许愿池开始时间
		desireendTime = '2022-04-05 23:59:59';				-- 许愿池结束时间
		desire = 's4_https://sso.mini1.cn/#/transit?url=https%3A%2F%2Fh5.mini1.cn%2Fact%2Fc5m%2Fsix-years-celebration%2F%23%2F&openBrowser=3&portrait=2';                           -- 许愿池跳转链接

		currency = {										-- 代币奖励配置
			allowAdd = 1;									-- 允许赠送 0:不允许 1:允许
			exchange_type = 0;								-- 兑换方式 0:奖励券 1:兑奖券
			addCurrencyTotalValue = 70;                     -- 迷你编程代币单次最大数值（不配就不限制）
			--addCurrencyUpperValue = 10;                     -- 迷你编程代币单次最大数值（不配就不限制）
			--addCurrencyUpperCount = 7;                      -- 迷你编程代币最大次数（不配就不限制）
			specialItemId = 12936;							-- 活动币对应的道具id
		};
		
		store = {
			startTime = '2022-03-16 10:00:00';              -- 商店开启时间
			endTime = '2022-04-05 23:59:59';                -- 商店结束时间
			versionMin = '1.11.0';                           -- 最低版本限制
			
			goods = {										-- 星愿兑换商店列表
				[1] = {items = {[1] = {id = 27093, num = 1}}, price=188, limit=1, unique=0, type = 1};	
				[2] = {items = {[1] = {id = 20032, num = 3}}, price = 20, limit=999, unique=0, type = 2};
				[3] = {items = {[1] = {id = 20036, num = 3}}, price = 20, limit=999, unique=0, type = 2};
				[4] = {items = {[1] = {id = 20035, num = 5}}, price = 20, limit=999, unique=0, type = 2};
				[5] = {items = {[1] = {id = 20037, num = 5}}, price = 20, limit=999, unique=0, type = 2};
				[6] = {items = {[1] = {id = 24803, num = 5}}, price = 20, limit=999, unique=0, type = 2};
				[7] = {items = {[1] = {id = 24821, num = 5}}, price = 20, limit=999, unique=0, type = 2};
				[8] = {items = {[1] = {id = 12950, num = 3}}, price = 20, limit=999, unique=0, type = 2};
				[9] = {items = {[1] = {id = 12951, num = 3}}, price = 20, limit=999, unique=0, type = 2};
				[10] = {items = {[1] = {id = 845, num = 1}}, price = 20, limit=999, unique=0, type = 3};
				[11] = {items = {[1] = {id = 13016, num = 1}}, price = 10, limit=999, unique=0, type = 3};
				[12] = {items = {[1] = {id = 12573, num = 1}}, price = 10, limit=999, unique=0, type = 3};
				[13] = {items = {[1] = {id = 13508, num = 1}}, price = 10, limit=999, unique=0, type = 3};
				[14] = {items = {[1] = {id = 12574, num = 1}}, price = 10, limit=999, unique=0, type = 3};
				[15] = {items = {[1] = {id = 12963, num = 1}}, price = 10, limit=999, unique=0, type = 3};
				[16] = {items = {[1] = {id = 12851, num = 1}}, price = 10, limit=999, unique=0, type = 3};
				[17] = {items = {[1] = {id = 12962, num = 1}}, price = 10, limit=999, unique=0, type = 3};
			};
		};
		
		taskList = {
			[1] = {												-- 迷你派对
				startTime = '2022-03-16 10:00:00';              -- 开启时间
				endTime = '2022-04-05 23:59:59';                -- 结束时间
				mapId = "16449724744694";						-- 地图ID
				exchange_type = 0;								-- 兑换方式 0:奖励券 1:兑奖券
				bonus = {itemId = 'mis_item_3', num = 10};		-- 奖励

				giftIds = {
					[1]={ mapItemId=4100, itemId=12937, limit=1 },-- 地图道具Id 食材Id
					[2]={ mapItemId=4104, itemId=12938, limit=1 },
					[3]={ mapItemId=4101, itemId=12939, limit=1 },
					[4]={ mapItemId=4102, itemId=12940, limit=1 },
					[5]={ mapItemId=4103, itemId=12941, limit=1 },
					[6]={ mapItemId=4099, itemId=12942, limit=1 },
				};
				cake   = {
					[1]={ id=12937, num=1 },
					[2]={ id=12938, num=1 },
					[3]={ id=12939, num=1 },
					[4]={ id=12940, num=1 },
					[5]={ id=12941, num=1 },
					[6]={ id=12942, num=1 }, 
				};

				mission = {
					[1] = {                              		
						name = "水果";
						daily = 1;
						event = 30;                           	-- 事件类型
						target = 1;              				-- 每天最多能获得食材数量
						gain_item = 12937;                      -- 水果
					};
					[2] = {                              		
						name = "牛奶";
						daily = 1;
						event = 30;                           	-- 事件类型
						target = 1;              				-- 每天最多能获得食材数量
						gain_item = 12938;                      -- 牛奶
					};
					[3] = {                              		
						name = "面粉";
						daily = 1;
						event = 30;                           	-- 事件类型
						target = 1;              				-- 每天最多能获得食材数量
						gain_item = 12939;                      -- 面粉
					};
					[4] = {                              		
						name = "鸡蛋";
						daily = 1;
						event = 30;                           	-- 事件类型
						target = 1;              				-- 每天最多能获得食材数量
						gain_item = 12940;                      -- 鸡蛋
					};
					[5] = {                              		
						name = "奶油";
						daily = 1;
						event = 30;                           	-- 事件类型
						target = 1;              				-- 每天最多能获得食材数量
						gain_item = 12941;                      -- 奶油
					};
					[6] = {                              		
						name = "砂糖";
						daily = 1;
						event = 30;                           	-- 事件类型
						target = 1;              				-- 每天最多能获得食材数量
						gain_item = 12942;                      -- 砂糖
					};
				};
			};
			[2] = {												-- 共筑长城
				startTime = '2022-03-16 10:00:00';              -- 开启时间
				endTime = '2022-03-31 23:59:59';                -- 结束时间
				mapId = "1370094568428";						-- 地图ID
				giftId = "4102";								-- 奖杯ID
				exchange_type = 0;								-- 兑换方式 0:奖励券 1:兑奖券
				
				mission = {
					[1] = {                              		-- 进入指定地图
						name = "参与1次共筑长城";
						daily = 1;
						event = 1;                           	-- 事件类型
						target = 1;              				-- 目标
						bonus = {                               -- 奖励
							{itemId = 'mis_item_3', num = 2};
						};
					};
					[2] = {                              		-- 进入指定地图
						name = "参与3次共筑长城";
						daily = 1;
						event = 1;                           	-- 事件类型
						target = 3;              				-- 目标
						bonus = {                               -- 奖励
							{itemId = 'mis_item_3', num = 4};
						};
					};
					[3] = {                              		-- 排名奖励
						name = "共筑长城中获得前3名";
						daily = 1;
						event = 31;                           	-- 事件类型
						target = 1;              				-- 目标
						bonus = {                               -- 奖励
							{itemId = 'mis_item_3', num = 4};
						};
					};
				};
			};
			[3] = {												-- 护卫队
				startTime = '2022-03-16 10:00:00';              -- 开启时间
				endTime = '2022-04-05 23:59:59';                         -- 结束时间
				exchange_type = 0;								-- 兑换方式 0:奖励券 1:兑奖券
				auto = 1;                                    -- 自动领取
				teamCapacity = 5;                               -- 队伍人数
				mission = {
					[1] = {                              		-- 登录游戏
						type = 0;              					
						name = "登陆游戏";
						daily = 1;
						event = 18;                           	
						target = 1;              				
						bonus = {                               
							{itemId = 'mis_item_3', num = 30};
						};
					};
					[2] = {                              		-- 队伍满2人
						type = 0;              					
						name = "队伍满2人可领";
						daily = 1;
						event = 33;                           	
						target = 2;              				
						bonus = {                               
							{itemId = 'mis_item_3', num = 10};
						};
					};
					[3] = {                              		-- 队伍满5人
						type = 0;              					
						name = "队伍满5人可领";
						daily = 1;
						event = 33;                           	
						target = 5;              				
						bonus = {                               
							{itemId = 'mis_item_3', num = 10};
						};
					};
				};
			};
			[4] = {												-- 虚空入侵
				startTime = '2022-04-01 00:00:00';                       -- 开启时间
				endTime = '2022-04-05 23:59:59';                         -- 结束时间
				-- auto = 1;                                       -- 自动领取
				exchange_type = 0;								-- 兑换方式 0:奖励券 1:兑奖券
				tabTime ={										-- 页签时间
					[1]={startTime = '2022-04-01 00:00:00', endTime = '2022-04-05 23:59:59'};
				};

				mapId = "17355962844140";						-- 虚空地图ID
				giftId = "4098";						        -- 地图星愿ID
				score_unit = 1;                                 -- 地图星愿兑换比例

				mission = {
					[1] = {                              		-- 击败虚空军团
						type = 0;              					
						name = "击败虚空军团";
						daily = 1;
						event = 32;                           	
						target = 40;             				
						bonus = {
						};
					};
				};
			};
            [5] = {                                             -- 开宝箱
				startTime = '2022-03-16 10:00:00';                       -- 开启时间
				endTime = '2022-04-05 23:59:59';                         -- 结束时间

                shareRoll = {                                   -- 开宝箱
                    daily = 1;                                  -- 次数每日刷新
                    freeCount = 1;                              -- 免费次数
                    videoCount = 3;                             -- 看视频次数
                    videoApiidAllow = {                         -- 看广告包含渠道
                    1,2,3,7,11,12,13,15,18,19,21,28,29,32,34,36,39,45,55,56,57,58,60,62,63,64,65,66,68,69,70,71,72,73,74,75,76,77,78,79,80,82,83,92,93,94,10,49,50,96
                    };
				    exchange_type = 0;							-- 兑换方式 0:奖励券 1:兑奖券

                    awards = {                                  -- 开箱奖励
                        [1] = {itemId = 'mis_item_3', num = 38, weight = 1};
                        [2] = {itemId = 'mis_item_3', num = 28, weight = 5};
                        [3] = {itemId = 'mis_item_3', num = 18, weight = 15};
                        [4] = {itemId = 'mis_item_3', num = 12, weight = 30};
                        [5] = {itemId = 'mis_item_3', num = 8,  weight = 45};
                        [6] = {itemId = 12950,      num = 3, weight = 35};
                        [7] = {itemId = 12951,      num = 3, weight = 25};
                        [8] = {itemId = 12952,      num = 3, weight = 25};
                        [9] = {itemId = 12953,      num = 3, weight = 25};
                        [10] = {itemId = 12954,     num = 3, weight = 20};
                        [11] = {itemId = 12988,     num = 1, weight = 35};
                        [12] = {itemId = 12963,     num = 1,  weight = 50};
                        [13] = {itemId = 12962,     num = 1,  weight = 50};
                        [14] = {itemId = 12851,     num = 1, weight = 40};
                        [15] = {itemId = 12964,     num = 1, weight = 35};
                    };
                };
            };
		};
	};
	-- 迷你打工人
    -- mission_type = mini_worker
	[21] = {
        control    = 1, -- 总控 0:关闭,1:开启	
        --apiid      = '999', -- 渠道限制
        versionMin = '1.12.0', -- 最低版本限制
        startTime  = '2022-04-27 10:00:00', -- 活动开启时间
        endTime    = '2022-05-16 23:59:59', -- 活动结束时间

        -- 商城
        store = {
            startTime  = '2022-04-27 10:00:00';             -- 商店开启时间
            endTime    = '2022-05-16 23:59:59';             -- 商店结束时间
            versionMin = '1.12.0';                           -- 最低版本限制
            
            goods = {										-- 兑换商店列表
                [1] = {items = {[1] = {id = 22307,        num = 1}}, price =  200,  limit=999,};
                [2] = {items = {[1] = {id = 22306,        num = 1}}, price =  100, limit=999,  };
                [3] = {items = {[1] = {id = 21910,        num = 1}}, price =  150,  limit=999,  };
                [4] = {items = {[1] = {id = 21911,        num = 1}}, price =  150,  limit=999,  };
                [5] = {items = {[1] = {id = 26020,        num = 1}}, price =  30,  limit=999,  };
                [6] = {items = {[1] = {id = 26021,        num = 1}}, price =  30,  limit=999,  };
                [7] = {items = {[1] = {id = 21092,        num = 1}}, price =  60,  limit=999,  };
                [8] = {items = {[1] = {id = 21341,        num = 1}}, price =  60,  limit=999,  };
                [9] = {items = {[1] = {id = 20038,        num = 3}}, price =  20,  limit=999,  };
                [10] = {items = {[1] = {id = 20036,        num = 3}}, price =  20,  limit=999,  };
                [11] = {items = {[1] = {id = 20035,        num = 5}}, price =  20,  limit=999,  };
                [12] = {items = {[1] = {id = 24810,        num = 5}}, price =  20,  limit=999,  };
                [13] = {items = {[1] = {id = 12964,        num = 1}}, price =  20,  limit=999,  };
                [14] = {items = {[1] = {id = 12834,        num = 1}}, price =  10,  limit=999,  };
                [15] = {items = {[1] = {id = 12963,        num = 1}}, price =  10,  limit=999,  };
                [16] = {items = {[1] = {id = 12962,        num = 1}}, price =  10,  limit=999,  };
            };
        };

        taskList = {
            [1] = {
                -- 任务
                name       = '迷你打工人',
                mapID      = '7876970022098',
                startTime  = '2022-04-27 10:00:00', -- 活动开启时间
                endTime    = '2022-05-15 23:59:59', -- 活动结束时间
                control    = 1, -- 总控 0:关闭,1:开启	

                mission = {
                    [1] = {
                        name = "每日登录奖励",
                        daily = 1,
                        event = 18,
                        target = 1,
                        bonus = {{itemId = 'mis_item_3', num = 20}}
                    },
                    [2] = {
                        name = "累计赚取100金币",
                        event = 7;                           	
                        gain_item = 4098;                      -- 打工人金币
                        target = 100,
                        bonus = {{itemId = 'mis_item_3', num = 10}}
                    },
                    [3] = {
                        name = "累计赚取1000金币",
                        event = 7;                           	
                        gain_item = 4098;                      -- 打工人金币
                        target = 1000,
                        bonus = {{itemId = 'mis_item_3', num = 20}}
                    },
                    [4] = {
                        name = "累计赚取2000金币",
                        event = 7;                           	
                        gain_item = 4098;                      -- 打工人金币
                        target = 2000,
                        bonus = {{itemId = 'mis_item_3', num = 20}}
                    },
                    [5] = {
                        name = "累计赚取5000金币",
                        event = 7;                           	
                        gain_item = 4098;                      -- 打工人金币
                        target = 5000,
                        bonus = {{itemId = 'mis_item_3', num = 30}}
                    },
                    [6] = {
                        name = "累计赚取8000金币",
                        event = 7;                           	
                        gain_item = 4098;                      -- 打工人金币
                        target = 8000,
                        bonus = {{itemId = 'mis_item_3', num = 30}}
                    },
                    [7] = {
                        name = "累计赚取12000金币",
                        event = 7;                           	
                        gain_item = 4098;                      -- 打工人金币
                        target = 12000,
                        bonus = {{itemId = 'mis_item_3', num = 40}}
                    },
                    [8] = {
                        name = "累计赚取16000金币",
                        event = 7;                           	
                        gain_item = 4098;                      -- 打工人金币
                        target = 16000,
                        bonus = {{itemId = 'mis_item_3', num = 40}}
                    },
                    [9] = {
                        name = "累计赚取24000金币",
                        event = 7;                           	
                        gain_item = 4098;                      -- 打工人金币
                        target = 24000,
                        bonus = {{itemId = 'mis_item_3', num = 50}}
                    },
                }
            }
        }
    };
-- 端午活动
	[22] = {
        control    = 1, -- 总控 0:关闭,1:开启        
        -- apiid      = '999', -- 渠道限制
        versionMin = '1.13.0', -- 最低版本限制
        startTime  = '2022-05-31 10:00:00', -- 活动开启时间
        endTime    = '2022-06-19 23:59:59', -- 活动结束时间

        -- 商城
        store = {
            startTime  = '2022-05-31 10:00:00';             -- 商店开启时间
            endTime    = '2022-06-19 23:59:59';             -- 商店结束时间
            versionMin = '1.13.0';                           -- 最低版本限制
            goods = {                                       -- 兑换商店列表
                [1] = {items = {[1] = {id = 20239,        num = 1}}, price =  180,  limit=1,  };
                [2] = {items = {[1] = {id = 22266,        num = 1}}, price =  120,  limit=1,  };
                [3] = {items = {[1] = {id = 22267,        num = 1}}, price =  120,  limit=1,  };
                [4] = {items = {[1] = {id = 13806,        num = 1}}, price =  20,  limit=999,  };
                [5] = {items = {[1] = {id = 12575,        num = 1}}, price =  20,  limit=999,  };
                [6] = {items = {[1] = {id = 20916,        num = 1}}, price =  60,  limit=999,  };
                [7] = {items = {[1] = {id = 20915,        num = 1}}, price =  60,  limit=999,  };
                [8] = {items = {[1] = {id = 20038,        num = 3}}, price =  20,  limit=999,  };
                [9] = {items = {[1] = {id = 20036,        num = 3}}, price =  20,  limit=999,  };
                [10] = {items = {[1] = {id = 24807,        num = 3}}, price =  20,  limit=999,  };
                [11] = {items = {[1] = {id = 20035,        num = 5}}, price =  20,  limit=999,  };
                [12] = {items = {[1] = {id = 20037,        num = 5}}, price =  20,  limit=999,  };
                [13] = {items = {[1] = {id = 12964,        num = 1}}, price =  20,  limit=999,  };
                [14] = {items = {[1] = {id = 12834,        num = 1}}, price =  10,  limit=999,  };
                [15] = {items = {[1] = {id = 12963,        num = 1}}, price =  10,  limit=999,  };
                [16] = {items = {[1] = {id = 12962,        num = 1}}, price =  10,  limit=999,  };
            };
        };
        -- 排行榜
        rank = {
            [1] = { -- 包粽子:
                id = 16750372455414,
                name      = '包粽子',
                eventItem = 4115,
                orderBy = 'DES',    -- 获得数量从高到低
                updates = 'INC',    -- 增量更新
                showNum = 100
            }, 
            [2] = { -- 赛龙舟
                id = 16737487553526,
                name      = '赛龙舟',
               eventItem = { start = 4121, final = 4122 },
                orderBy = 'ASC',    -- 通关时间从快到慢
                updates = 'FUL',    -- 全量更新
                showNum = 100,
				limit_min = 50,     -- 上报数值小于这个值不上榜
				limit_max = 99999, -- 上报数值大于这个值不上榜
            }, 
        };

        taskList = {
            [1] = {
                -- 任务
                name       = '端午节活动',
                startTime  = '2022-05-31 10:00:00', -- 活动开启时间
                endTime    = '2022-06-19 23:59:59', -- 活动结束时间
                control    = 0, -- 总控 0:关闭,1:开启        
	auto = 1;                                       -- 自动领取
                shareCode = {
                    prefix = {       -- 秘籍前缀
                        "端午","粽子", "幸福","安康","龙舟"
                    },
                    init = 38032637, -- 秘籍初始值
                    max = 60466175,  -- 秘籍最大值
                    maxExchange = 2, -- 秘籍最大兑换次数
                    expireType = 1,  -- 秘籍过期方式：1 当天有效
                    maxLength = 20,  -- 秘籍最大长度(字节数，用于快速校验，由开发填写，默认是20);
                    pattern = "^%W+%d[0-9a-zA-Z]+$", -- 新春密语正则匹配(用于快速校验，由开发填写，默认是：^%W+%d[0-9a-zA-Z]+$)
                    format = "uint36", -- 格式化（目前支持：uint36 36进制整数）
				    -- 分享文本前缀
			        shareTextPrefix = "打开迷你世界参与端午节活动，复制密语：",
                },

                mission = {
                    [1] = {
                        name = "每日登录奖励",
                        daily = 1,
                        event = 18,
                        target = 1,
                        bonus = {{itemId = 'mis_item_3', num = 5}}
                    },
                    [2] = {
                        name = "制作1个粽子",
                        daily = 1,
                        event = 31;
                        target = 1,
                        mapItemId = 9999,
                        mapId = 16750372455414,
                        bonus = {{itemId = 'mis_item_3', num = 2}}
                    },
                    [3] = {
                        name = "参加1次打水仗",
                        daily = 1,
                        event = 30;                                   
                        target = 1,
                        mapItemId = 9999,
	       gain_item = 4117,
                        mapId = 16750372455414,
                        bonus = {{itemId = 'mis_item_3', num = 2}}
                    },
                    [4] = {
                        name = "参加1次赛龙舟",
                        daily = 1,
                        event = 7;                                   
                        target = 1,
                        mapItemId = 9999,
                        mapId = 16737487553526,
                        bonus = {{itemId = 'mis_item_3', num = 1}}
                    },
                    [5] = {
                        name = "参加3次赛龙舟",
                        daily = 1,
                        event = 7;                                   
                        target = 3,
                        mapItemId = 9999,
                        mapId = 16737487553526,
                        bonus = {{itemId = 'mis_item_3', num = 2}}
                    },
                    [6] = {
                        name = "参加5次赛龙舟",
                        daily = 1,
                        event = 7;                                   
                        target = 5,
                        mapItemId = 9999,
                        mapId = 16737487553526,
                        bonus = {{itemId = 'mis_item_3', num = 3}}
                    },
                    [7] = {
                        name = "在赛龙舟活动中获得前3名",
                        event = 32,
                        daily = 1,
                        target = 1,
                        mapItemId = 9999,
                        mapId = 16737487553526,
                        bonus = {{itemId = 'mis_item_3', num = 3}}
                    },
                    [8] = {
                        name = "分享端午密语并被使用",
                        daily = 1,
                        event = 29,
                        target = 1,
                        bonus = {{itemId = 'mis_item_3', num = 3}}
                    },
                    [9] = {
                        name = "使用好友分享的端午密语",
                        daily = 1,
                        event = 28,
                        target = 1,
                        bonus = {{itemId = 'mis_item_3', num = 3}}
                    },
                    [10] = {
                        name = "分享端午密语并被使用",
                        daily = 1,
                        event = 29,
                        target = 2,
                        bonus = {{itemId = 'mis_item_3', num = 6}}
                    },
                    [11] = {
                        name = "使用好友分享的端午密语",
                        daily = 1,
                        event = 28,
                        target = 2,
                        bonus = {{itemId = 'mis_item_3', num = 6}}
                    }
                },
            },
        },

        bind_phone = {
            rewards = {itemId = 'mis_item_3', num = 66},
            startTime  = '2022-05-31 10:00:00', -- 活动开启时间
            endTime    = '2022-06-19 23:59:59', -- 活动结束时间
            no_appids  = {21,345}, --排除的 appid 列表，例如 {999,998,997}
        }, 

    };


	[23] = { -- 全民创造节活动配置
        control    = 1, -- 总控 0:关闭,1:开启        
        apiid      = '999', -- 渠道限制
        versionMin = '1.14.0', -- 最低版本限制
        startTime  = '2022-07-01 00:00:00', -- 活动开启时间
        endTime    = '2022-09-01 00:00:00', -- 活动结束时间

        -- 商城
        store = {
            startTime  = '2022-07-01 00:00:00';             -- 商店开启时间
            endTime    = '2022-09-01 00:00:00';             -- 商店结束时间
            versionMin = '1.14.0';                           -- 最低版本限制
            goods = {                                       -- 兑换商店列表
                [1] = {items = {[1] = {id = 20244,        num = 1}}, price =  500,  limit=1,  };
                [2] = {items = {[1] = {id = 22304,        num = 1}}, price =  300,  limit=1,  };
                [3] = {items = {[1] = {id = 22305,        num = 1}}, price =  150,  limit=1,  };
                [4] = {items = {[1] = {id = 22207,        num = 1}}, price =  300,  limit=1,  };
                [5] = {items = {[1] = {id = 22152,        num = 1}}, price =  300,  limit=1,  };
                [6] = {items = {[1] = {id = 22154,        num = 1}}, price =  300,  limit=1,  };
                [7] = {items = {[1] = {id = 21920,        num = 1}}, price =  300,  limit=1,  };
                [8] = {items = {[1] = {id = 49005,        num = 1}}, price =  50,  limit=999,  };
                [9] = {items = {[1] = {id = 49018,        num = 1}}, price =  50,  limit=999,  };
                [10] = {items = {[1] = {id = 49017,        num = 1}}, price =  30,  limit=999,  };
                [11] = {items = {[1] = {id = 12988,        num = 1}}, price =  30,  limit=999,  };
                [12] = {items = {[1] = {id = 12964,        num = 1}}, price =  30,  limit=999,  };
                [13] = {items = {[1] = {id = 12851,        num = 1}}, price =  20,  limit=999,  };
                [14] = {items = {[1] = {id = 12833,        num = 1}}, price =  10,  limit=999,  };
                [15] = {items = {[1] = {id = 12962,        num = 1}}, price =  10,  limit=999,  };
                [16] = {items = {[1] = {id = 12963,        num = 1}}, price =  10,  limit=999,  };
            };
        };
		taskList = {
            [1] = {
                -- 任务
                name       = '全民创造节',
                startTime  = '2022-07-01 00:00:00', -- 活动开启时间
                endTime    = '2022-09-01 00:00:00', -- 活动结束时间
                control    = 1, -- 总控 0:关闭,1:开启        

                mission = {
                    [1] = {
                        name = "每日登录奖励",
                        daily = 1,
                        event = 18,
                        target = 1,
                        bonus = {{itemId = 'mis_item_3', num = 10}}
                    },
                    [2] = {
                        name = "创作作品10分钟",
                        daily = 1,
                        event = 31;
                        target = 600,
                        bonus = {{itemId = 'mis_item_3', num = 50}}
                    },
                    [3] = {
                        name = "邀请好友体验自己的作品",
                        daily = 1,
                        event = 7;                
                        target = 1,
                        bonus = {{itemId = 'mis_item_3', num = 10}}
                    },
                    [4] = {
                        name = "上传1张添加#2022全民创造节#标签的作品",
                        event = 40;                                   
                        target = 1,
                        bonus = {{itemId = 'mis_item_3', num = 100}}
                    },
                    [5] = {
                        name = "上传3张添加#2022全民创造节#标签的作品",
                        event = 40;                                   
                        target = 3,
                        bonus = {{itemId = 'mis_item_3', num = 500}}
                    },
                },
            },
        },
	};

	[24] = { -- 斗罗大陆配置
		control    = 1, -- 总控 0:关闭,1:开启        
        apiid      = '', -- 渠道限制
        versionMin = '1.15.0', -- 最低版本限制
        startTime  = '2022-07-06 10:00:00', -- 活动开启时间
        endTime    = '2022-08-31 23:59:59', -- 活动结束时间

 		-- 排行榜
        rank = {
            [1] = {   -- 斗罗大陆 胜场数
                id = 10000001,  --固定排行榜id
                name      = '斗魂场胜场数',
                orderBy = 'DES',    -- 获得胜场数从高到低
                updates = 'INC',    -- 增量更新
                showNum = 100,
				daily = 1,			-- 每日清理
            }, 
            [2] = {  -- 斗罗大陆 积分榜
                id = 10000002,
                name      = '斗罗大陆 积分榜',
                orderBy = 'DES',    -- 获得积分从高到低
                updates = 'FUL',    -- 全量更新
                showNum = 100,
            }, 
        };

        -- 兑换商店配置
        store = {
            startTime  = '2022-07-06 10:00:00';             -- 商店开启时间
            endTime    = '2022-08-31 23:59:59';             -- 商店结束时间
            versionMin = '1.15.0';                           -- 最低版本限制
            goods = {                                       -- 兑换商店列表
                [1] = {items = {[1] = {id = 27126,        num = 1}}, price =  1000,  limit=1, type = 1,  };
                [2] = {items = {[1] = {id = 22307,        num = 1}}, price =  600,  limit=1, type = 2, };
                [3] = {items = {[1] = {id = 22271,        num = 1}}, price =  600,  limit=1, type = 2, };
                [4] = {items = {[1] = {id = 22402,        num = 1}}, price =  600,  limit=1, type = 2, };
                [5] = {items = {[1] = {id = 22403,        num = 1}}, price =  600,  limit=1, type = 2, };
                [6] = {items = {[1] = {id = 49018,        num = 1}}, price =  300,  limit=999, type = 2, };
                [7] = {items = {[1] = {id = 49017,        num = 1}}, price =  200,  limit=999, type = 2, };
                [8] = {items = {[1] = {id = 49020,        num = 3}}, price =  400,  limit=999, type = 2, };
                [9] = {items = {[1] = {id = 49019,        num = 3}}, price =  200,  limit=999, type = 2, };
                [10] = {items = {[1] = {id = 12948,        num = 3}}, price =  300,  limit=999, type = 3, };
                [11] = {items = {[1] = {id = 49005,        num = 5}}, price =  200,  limit=999, type = 3, };
                [12] = {items = {[1] = {id = 12988,        num = 5}}, price =  200,  limit=999, type = 3, };
                [13] = {items = {[1] = {id = 12964,        num = 1}}, price =  100,  limit=999, type = 3, };
                [14] = {items = {[1] = {id = 12962,        num = 1}}, price =  50,  limit=999, type = 3, };
                [15] = {items = {[1] = {id = 12963,        num = 1}}, price =  50,  limit=999, type = 3, };
                [16] = {items = {[1] = {id = 12851,        num = 1}}, price =  100,  limit=999, type = 3, };
				[17] = {items = {[1] = {id = 12833,        num = 1}}, price =  50,  limit=999, type = 3, };
            };
        };
		ready_rewards = { --预约奖励
			rewards = {{id = 12951 , num = 30}},
            startTime  = '2022-07-06 10:00:00', -- 活动开启时间
            endTime    = '2022-07-08 09:59:59', -- 活动结束时间
            no_appids  = {}, --排除的 appid 列表，例如 {999,998,997}
			url = 'http://mdownload.mini1.cn/latest/huacheng/dl_qz1.mp4';
		},
		appointList ={									-- 写入手机本地的日程安排
			[1]={startTime = '2022-07-08 19:55', endTime = '2022-07-08 21:00', title ='上号！斗罗联动阶段一开启，前往冰火极地修炼，拯救花小楼。'};
			[2]={startTime = '2022-07-09 19:55', endTime = '2022-07-09 21:00', title ='上号！斗罗联动阶段一开启，前往冰火极地修炼，拯救花小楼。'};
			[3]={startTime = '2022-07-10 19:55', endTime = '2022-07-10 21:00', title ='上号！斗罗联动阶段一开启，前往冰火极地修炼，拯救花小楼。'};
			[4]={startTime = '2022-07-15 19:55', endTime = '2022-07-15 21:00', title ='上号！斗罗联动阶段二开启，前往传说之地，突破封号斗罗'};
			[5]={startTime = '2022-07-16 19:55', endTime = '2022-07-16 21:00', title ='上号！斗罗联动阶段二开启，前往传说之地，突破封号斗罗'};
			[6]={startTime = '2022-07-17 19:55', endTime = '2022-07-17 21:00', title ='上号！斗罗联动阶段二开启，前往传说之地，突破封号斗罗'};
			[7]={startTime = '2022-07-22 19:55', endTime = '2022-07-22 21:00', title ='上号！斗罗联动最终章开启，决战邪恶比比东'};
			[8]={startTime = '2022-07-23 19:55', endTime = '2022-07-23 21:00', title ='上号！斗罗联动最终章开启，决战邪恶比比东'};
			[9]={startTime = '2022-07-24 19:55', endTime = '2022-07-24 21:00', title ='上号！斗罗联动最终章开启，决战邪恶比比东'};
		};
		bind_phone = {  --绑定手机奖励
            rewards = {{id = 'mis_item_3', num = 500}},
            startTime  = '2022-07-06 10:00:00', -- 活动开启时间
            endTime    = '2022-08-31 23:59:59', -- 活动结束时间
            no_appids  = {21}, --排除的 appid 列表，例如 {999,998,997}
        },
		login_rewards = { --登录奖励
			rewards = {{id = 'mis_item_3', num = 50}},
            startTime  = '2022-07-06 10:00:00', -- 活动开启时间
            endTime    = '2022-08-31 23:59:59', -- 活动结束时间
            no_appids  = {}, --排除的 appid 列表，例如 {999,998,997}
		},
		team_rewards = { --小队集结奖励
			rewards = {{id = 'mis_item_3', num = 500}},
            startTime  = '2022-07-06 10:00:00', -- 活动开启时间
            endTime    = '2022-08-31 23:59:59', -- 活动结束时间
            no_appids  = {}, --排除的 appid 列表，例如 {999,998,997}
		},
		vip_rewards = { --vip奖励
			rewards = {{id = 'mis_item_3', num = 50}},
            startTime  = '2022-07-06 10:00:00', -- 活动开启时间
            endTime    = '2022-08-31 23:59:59', -- 活动结束时间
            no_appids  = {}, --排除的 appid 列表，例如 {999,998,997}
		},
		badge_level = {	--徽章等级
			[1] = {
				level = 1,
				level_name = "铁徽章",
				mapID     = '84499186582738',
				score_rewards = {
					[1]= {	--胜利
						score = 20, --积分
						items = {{id = 'mis_item_3', num = 10}}, --奖励
					}, 
					[2] = { -- 2：失败
						score = 10, --积分
						items = {{id = 'mis_item_3', num = 5}}, --奖励
					}
				},
				score_max = 100,			-- 升级到下一级所需积分
			},
			[2] = {
				level = 2,
				level_name = "铜徽章",
				mapID     = '84499186582738',
				score_rewards = {
					[1]= {	--胜利
						score = 20, --积分
						items = {{id = 'mis_item_3', num = 12}}, --奖励
					}, 
					[2] = { -- 2：失败
						score = 5, --积分
						items = {{id = 'mis_item_3', num = 6}}, --奖励
					}
				},
				score_max = 100,			-- 升级到下一级所需积分
			},
			[3] = {
				level = 3,
				level_name = "银徽章",
				mapID     = '2031519532242',
				score_rewards = {
					[1]= {	--胜利
						score = 20, --积分
						items = {{id = 'mis_item_3', num = 14}}, --奖励
					}, 
					[2] = { -- 2：失败
						score = -5, --积分
						items = {{id = 'mis_item_3', num = 7}}, --奖励
					}
				},
				score_max = 100,			-- 升级到下一级所需积分
			},
			[4] = {
				level = 4,
				level_name = "金徽章",
				mapID     = '2031519532242',
				score_rewards = {
					[1]= {	--胜利
						score = 20, --积分
						items = {{id = 'mis_item_3', num = 16}}, --奖励
					}, 
					[2] = { -- 2：失败
						score = -10, --积分
						items = {{id = 'mis_item_3', num = 8}}, --奖励
					}
				},
				score_max = 100,			-- 升级到下一级所需积分
			},
			[5] = {
				level = 5,
				level_name = "紫金徽章",
				mapID     = '2031519532242',
				score_rewards = {
					[1]= {	--胜利
						score = 20, --积分
						items = {{id = 'mis_item_3', num = 18}}, --奖励
					}, 
					[2] = { -- 2：失败
						score = -15, --积分
						items = {{id = 'mis_item_3', num = 9}}, --奖励
					}
				},
				score_max = 100,			-- 升级到下一级所需积分
			},
			[6] = {
				level = 6,
				level_name = "红宝石徽章",
				mapID     = '2035814499538',
				score_rewards = {
					[1]= {	--胜利
						score = 20, --积分
						items = {{id = 'mis_item_3', num = 20}}, --奖励
					}, 
					[2] = { -- 2：失败
						score = -20, --积分
						items = {{id = 'mis_item_3', num = 10}}, --奖励
					}
				},
				score_max = 100,			-- 升级到下一级所需积分
			},
			[7] = {
				level = 7,
				level_name = "钻石徽章",
				mapID     = '2035814499538',
				score_rewards = {
					[1]= {	--胜利
						score = 20, --积分
						items = {{id = 'mis_item_3', num = 22}}, --奖励
					}, 
					[2] = { -- 2：失败
						score = -25, --积分
						items = {{id = 'mis_item_3', num = 11}}, --奖励
					}
				},
				score_max = 100,			-- 升级到下一级所需积分
			},
		},
		daily_max_limit = 50,  --每日上限
		stage = {
            [1] = {  --第一阶段 
                startTime = '2022-07-08 10:00:00', -- 开启时间
		        endTime   = '2022-08-31 23:59:59', -- 活动结束时间
				Active_eject = '1',                -- 主动弹出
                url = "http://mdownload.mini1.cn/latest/huacheng/dl_jd1.mp4",
                map = {
                    [1] = {
                        name      = '极热之地',
                        mapID     = '84134114362578',
                        level_limit = {1,30},              -- 建议1-10级
                    };
                    [2] = {
                        name      = '极寒之地',
                        mapID     = '84138409329874',
                        level_limit = {25,60},              -- 建议1-10级
                    };
                };
            };
            [2] = { --第二阶段 
                startTime = '2022-07-15 10:00:00', -- 开启时间
		        endTime   = '2022-08-31 23:59:59', -- 活动结束时间
				Active_eject = '1',                -- 主动弹出
                url = "http://mdownload.mini1.cn/latest/huacheng/dl_jd2.mp4",
                map = {
                    [1] = {
                        name      = '传说之地',
                        mapID     = '84851373901010',
                        level_limit = {55,90},              -- 建议1-10级
                    };
                };
            };
            [3] = { --第三阶段 
                startTime = '2022-07-22 10:00:00', -- 开启时间
		        endTime   = '2022-08-31 23:59:59', -- 活动结束时间
				Active_eject = '1',                -- 主动弹出
                url = "http://mdownload.mini1.cn/latest/huacheng/dl_jd3.mp4",
                map = {
                    [1] = {
                        name      = '终极之战',
                        mapID     = '84829899064530',
                        level_limit = {85,100},              -- 建议1-10级
                    };
                };
            };
        };

		vip_exp = { --vip 加成配置
			dorp_exp = 10,   --经验加成
			dorp_star_ring = 10,  --极品魂环加成
		};
		query_data_mapid = "1000004";
		giftId = "4500";						        -- 斗魂场获胜物品ID
		fail = "4501";						            -- 斗魂场失败物品ID
	};





    -- 会员主题活动
    -- mission_type = vip_theme
	[25] = {
        control    = 1, -- 总控 0:关闭,1:开启	
        apiid_no      = '9999', -- 渠道限制
        versionMin = '1.14.0', -- 最低版本限制
        startTime  = '2022-06-22 00:00:00', -- 活动开启时间
        endTime    = '2022-07-31 23:59:59', -- 活动结束时间
		-- 会员主题活动奖励信息
		vip_theme = 
        {
			versionMin = '1.14.0', -- 最低版本限制
			startTime  = '2022-06-22 00:00:00', -- 活动开启时间
			endTime    = '2022-07-17 23:59:59', -- 活动结束时间
			-- 任务可以完成最大次数
			task_max_times = 
			{  
				-- 子任务对应
				[1] = {[1]=10, [2]=10, [3]=10, [4]=10},
			},
			upgrade_price = 128,    --升级奖励需要迷你币
			friend_times = 3,   --友谊之光,3次机会
			discount = {
                    [2] = {rate = 0.88, item = {{id = 10000, num = 100}}}, 
                    [3] = {rate = 0.55, item = {{id = 10000, num = 200}}}, 
                    [4] = {rate = 0.55, item = {{id = 10000, num = 200}}}, 
                    [5] = {rate = 0.33, item = {{id = 10000, num = 300}}}, 
					},
			group_storeid = 1001,  -- 组团购买ID
			friend_storeid = 1002, -- 友谊之光购买ID
			group_mail = {
				    title = "组团成功",
                    body  = "欢迎加入迷你大会员！你成功与%s组团成功！快开始游戏，体验会员的各大特权吧！！",
			},
			
			friend_mail = {
				    title = "赠送成功",
                    body  = "赠送给%s的礼物：一个月会员。已成功发送至游戏账号。",
			},
			friend_mail_get = {
				    title = "收到礼物",
                    body  = "收到来自%s的礼物：一个月会员 .\\n祝福你：%s",
			},
			luckdraw = {  --抽奖配置
				 startTime  = '2022-07-06 10:00:00', -- 活动开启时间
       			 endTime    = '2022-07-31 23:59:59', -- 活动结束时间
				 max_free_times = 1,  --每日免费次数
                 max_vip_times  = 1,  -- 会员每日额外免费次数
				 active_times   = 5,  -- 每开通会员 赠送免费抽奖次数
                 ticket_price   = 20, -- 抽奖券价格[迷你币]
				 gift_id        = 70001,  -- 抽奖配置ID
				 storeid        = 1001,   -- 会员购买ID
                 luckylimit = 66,
                 max_present_month = 10,
                 showlist={
	SS={
		{id=13029,num=1,},
        {id=13030,num=1,},
        {id=13042,num=1,},
        {id=20402,num=1,},
        {id=20407,num=1,},
        {id=20408,num=1,},
        {id=20415,num=1,},
        {id=20431,num=1,},
        {id=20427,num=1,},
        {id=20433,num=1,},
        {id=20460,num=1,},
        {id=20481,num=1,},
        {id=13022,num=1,},
        {id=27080,num=1,},
        {id=13032,num=1,},
	},
	S={
		{id=10032,num=10,},
		{id=13023,num=1,},
{id=13024,num=1,},
{id=13031,num=1,},
{id=13021,num=1,},
{id=13028,num=1,},
{id=13033,num=1,},
{id=13034,num=1,},
{id=13035,num=1,},
{id=13036,num=1,},
{id=13037,num=1,},
{id=13038,num=1,},
{id=13039,num=1,},
{id=13040,num=1,},
{id=13041,num=1,},
{id=13043,num=1,},
{id=20401,num=1,},
{id=20403,num=1,},
{id=20405,num=1,},
{id=20406,num=1,},
{id=20409,num=1,},
{id=20410,num=1,},
{id=20414,num=1,},
{id=20417,num=1,},
{id=20418,num=1,},
{id=20419,num=1,},
{id=20420,num=1,},
{id=20421,num=1,},
{id=20422,num=1,},
{id=20423,num=1,},
{id=20424,num=1,},
{id=20425,num=1,},
{id=20432,num=1,},
{id=20436,num=1,},
{id=20437,num=1,},
{id=20439,num=1,},
{id=20446,num=1,},
{id=20456,num=1,},
{id=20463,num=1,},
{id=20482,num=1,},
{id=20483,num=1,},
{id=20485,num=1,},
{id=20486,num=1,},
{id=20494,num=1,},
{id=20499,num=1,},
{id=27002,num=1,},
{id=27004,num=1,},
{id=27009,num=1,},
{id=27012,num=1,},
{id=27033,num=1,},
{id=27040,num=1,},
{id=27042,num=1,},
{id=27046,num=1,},
{id=27049,num=1,},
{id=27051,num=1,},
{id=27053,num=1,},
{id=27056,num=1,},
{id=27057,num=1,},
{id=27060,num=1,},
{id=27066,num=1,},
{id=27067,num=1,},
{id=27069,num=1,},
{id=27081,num=1,},
{id=27084,num=1,},
{id=27090,num=1,},
{id=27092,num=1,},
{id=20428,num=1,},
{id=27054,num=1,},
{id=27070,num=1,},
	},
	A={
	{id=22470,num=1,},
{id=22434,num=1,},
{id=22469,num=1,},
{id=22395,num=1,},
{id=22373,num=1,},
{id=22343,num=1,},
{id=22282,num=1,},
{id=22265,num=1,},
{id=22220,num=1,},
{id=22194,num=1,},
{id=22151,num=1,},
{id=22096,num=1,},
{id=22071,num=1,},
{id=21972,num=1,},
{id=21971,num=1,},
{id=21625,num=1,},
{id=21635,num=1,},
{id=21671,num=1,},
{id=21672,num=1,},
{id=21714,num=1,},
{id=21729,num=1,},
{id=21731,num=1,},
{id=21745,num=1,},
{id=21756,num=1,},
{id=21760,num=1,},
{id=21772,num=1,},
{id=21780,num=1,},
{id=21781,num=1,},
{id=21825,num=1,},
{id=21843,num=1,},
{id=21844,num=1,},
{id=21845,num=1,},
{id=21877,num=1,},
{id=21886,num=1,},
{id=21892,num=1,},
{id=21893,num=1,},
{id=21895,num=1,},
{id=21896,num=1,},
{id=21919,num=1,},
{id=21921,num=1,},
{id=21923,num=1,},
{id=21924,num=1,},
{id=21950,num=1,},
{id=21951,num=1,},
{id=21980,num=1,},
{id=22054,num=1,},
{id=22056,num=1,},
{id=22057,num=1,},
{id=22094,num=1,},
{id=22179,num=1,},
{id=22191,num=1,},
{id=22195,num=1,},
{id=22208,num=1,},
{id=22213,num=1,},
{id=22241,num=1,},
{id=22260,num=1,},
{id=22316,num=1,},
{id=22317,num=1,},
{id=22323,num=1,},
{id=22324,num=1,},
{id=22328,num=1,},
{id=22338,num=1,},
{id=22341,num=1,},
{id=22375,num=1,},
{id=22376,num=1,},
{id=22394,num=1,},
{id=22414,num=1,},
{id=22415,num=1,},
{id=22425,num=1,},
{id=22433,num=1,},
{id=22437,num=1,},
{id=22453,num=1,},
{id=22454,num=1,},
{id=22464,num=1,},
{id=22478,num=1,},
{id=22481,num=1,},
{id=22514,num=1,},
{id=21646,num=1,},
{id=21652,num=1,},
{id=21658,num=1,},
{id=21663,num=1,},
{id=21677,num=1,},
{id=21683,num=1,},
{id=21689,num=1,},
{id=21694,num=1,},
{id=21700,num=1,},
{id=21709,num=1,},
{id=21713,num=1,},
{id=21719,num=1,},
{id=21759,num=1,},
{id=21775,num=1,},
{id=21808,num=1,},
{id=21809,num=1,},
{id=21810,num=1,},
{id=21811,num=1,},
{id=21812,num=1,},
{id=21813,num=1,},
{id=21848,num=1,},
{id=21849,num=1,},
{id=21850,num=1,},
	},
	B={
	{id=10012,num=1,},
{id=10011,num=1,},
{id=12961,num=3,},
{id=12988,num=1,},
{id=49017,num=2,},
{id=49018,num=1,},
{id=49019,num=2,},
{id=49020,num=1,},
{id=49005,num=1,},
{id=49005,num=3,},
	},
	C={
	{id=10000,num=66,},
{id=10000,num=88,},
{id=10000,num=99,},
{id=1056,num=1,},
{id=846,num=1,},
{id=12964,num=3,},
{id=10024,num=3,},
	},
},
			},
			prize = 
            {
				[1] = {   --普通奖励
						[1] ={ score = 0, item = {{id = 10028, num = 1}}},
						[2] ={ score = 15, item = {{id = 12928, num = 1}}},
						[3] ={ score = 30, item = {{id = 10027, num = 5}}},
						[4] ={ score = 50, item = {{id = 12988, num = 3}}},
						[5] ={ score = 70, item = {{id = 10029, num = 1}}},
                        [6] ={ score = 85, item = {{id = 10011, num = 1}}},
                        [7] ={ score = 100, item = {{id = 10027, num = 14}}},
					  },
				[2] = {   --进阶奖励
						[1] ={ score = 0, item = {{id = 10011, num = 1}}},
						[2] ={ score = 15, item = {{id = 49005, num = 1}}},
						[3] ={ score = 30, item = {{id = 37581, num = 1}}},
						[4] ={ score = 50, item = {{id = 49005, num = 1}}},
						[5] ={ score = 70, item = {{id = 37582, num = 1}}},
                        [6] ={ score = 85, item = {{id = 49005, num = 1}}},
                        [7] ={ score = 100, item = {{id = 33079, num = 1}}},
					  },
			},
		};

 		taskList = {
            [1] = {
                -- 任务
                name       = '会员主题',
                mapID      = '7876970022098',
                startTime  = '2022-06-22 00:00:00', -- 活动开启时间
                endTime    = '2022-07-17 23:59:59', -- 活动结束时间
                control    = 1, -- 总控 0:关闭,1:开启	
				auto = 1,
                mission = {
                    [1] = {
                        name = "每日登录",
                        daily = 1,
                        event = 18,
                        target = 1,
                        bonus = {{itemId = 'mis_item_6', num = 2}}
                    },
                    [2] = {
                        name = "每日分享",
						daily = 1,
                        event = 24,                           	
                        target = 1,
                        bonus = {{itemId = 'mis_item_6', num = 2}}
                    },
                    [3] = {
                        name = "完成一次联机",
                        event = 9;                           	
                        target = 1,
                        bonus = {{itemId = 'mis_item_6', num = 3}}
                    },
					[4] = {
                        name = "每消耗50迷你豆",
                        event = 59;                           	
                        target = 50,
                        bonus = {{itemId = 'mis_item_6', num = 3}}
                    },
                },
            };
        };
      
    };

-- 觉醒活动
    -- mis_item_3 : 奖券/电影票
    -- mis_item_4 : 虚空之力
    -- mis_item_5 : 起源之力
    [20] = {
        control    = 1, -- 总控 0:关闭,1:开启	
        apiid      = '', -- 渠道限制
        versionMin = '1.16.0', -- 最低版本限制
        startTime  = '2022-07-28 10:00:00', -- 活动开启时间
        endTime    = '2022-08-14 23:59:59', -- 活动结束时间
        buyTickets = 1, --抢购按钮是否展示1:展示,0:不展示
        -- 觉醒等级
        level = {
            levelMax = 39,
            levelUp = {
                [1] = {	-- 0级升1级
                    costItem  = {{ id = 'mis_item_4', num = 50}, { id = 'mis_item_5', num = 50}},
                    awardItem = {{ id = 'mis_item_3', num = 20}},
                },
                -- 无配置按上一级配置算
            }
        },

        -- 副本地图信息.
        map = {
            [1] = {
                name      = '圣树广场',
                mapID     = '71455370904556',
                startTime = '2022-07-28 10:00:00', -- 开启时间
		        endTime   = '2022-08-14 23:59:59', -- 活动结束时间
				award     = {{ mapItemId=4120, id = 'mis_item_5', limit = 20, dailyLimit = 1}}
            },
            [2] = {	
                name      = '乱斗训练场',
                mapID     = '41961830482924',
                startTime = '2022-07-28 10:00:00', -- 开启时间
		        endTime   = '2022-08-14 23:59:59', -- 活动结束时间
				award     = {{ mapItemId=4129, id = 'mis_item_4', limit = 30, dailyLimit = 1}},
                eventItem = { pass = 4131 }
            },
            [3] = {
                name      = '龙之塔',
                mapID     = '8138963026934',
                startTime = '2022-07-28 10:00:00', -- 开启时间
		        endTime   = '2022-08-14 23:59:59', -- 活动结束时间
				award     = {{ mapItemId=4103, id = 'mis_item_5', limit = 20, dailyLimit = 1}},
                eventItem = { start = 4117, final = 4118 }
            },
            [4] = {
                name      = '黑龙领地',
                mapID     = '16501264352246',
                startTime = '2022-07-28 10:00:00', -- 开启时间
		        endTime   = '2022-08-14 23:59:59', -- 活动结束时间
				award     = {{ mapItemId=4103, id = 'mis_item_5', limit = 20, dailyLimit = 1}},
                eventItem = { treasure = 4104 }
            },
            [5] = {
                name      = '地下宫殿',
                mapID     = '41957535515628',
                startTime = '2022-07-28 10:00:00', -- 开启时间
		        endTime   = '2022-08-14 23:59:59', -- 活动结束时间
				award     = {{ mapItemId=4111, id = 'mis_item_4', limit = 30, dailyLimit = 1}},
                eventItem = { killboss = 4119 }
            }
        },

		-- 排行榜
        rank = {
            [1] = { -- 乱斗训练场:
                id = '41961830482924',
				name      = '乱斗训练场',
                orderBy = 'DES',    -- 胜利场次从高到低
                updates = 'INC',    -- 增量更新
                showNum = 100,
                -- profile = 'mis_rank_profile', -- 角色库名（默认是mis_rank_profile库，注意：数据结构相同才能使用默认库）
            }, 
            [2] = { -- 龙之塔
                id = '8138963026934',
				name      = '龙之塔',
                orderBy = 'ASC',    -- 通关时间从快到慢
                updates = 'FUL',    -- 全量更新
                showNum = 100,
                -- profile = 'mis_rank_profile', -- 角色库名（默认是mis_rank_profile库，注意：数据结构相同才能使用默认库）
            }, 
            [3] = { -- 黑龙领地:
                id = '16501264352246',
				name      = '黑龙领地',
                orderBy = 'DES',    -- 宝藏总数从高到低
                updates = 'INC',    -- 增量更新
                showNum = 100,
                -- profile = 'mis_rank_profile', -- 角色库名（默认是mis_rank_profile库，注意：数据结构相同才能使用默认库）
            }, 
            [4] = { -- 地下宫殿
                id = '41957535515628',
				name      = '地下宫殿',
                orderBy = 'DES',    -- 击杀总数从高到低
                updates = 'INC',    -- 增量更新
                showNum = 100,
                -- profile = 'mis_rank_profile', -- 角色库名（默认是mis_rank_profile库，注意：数据结构相同才能使用默认库）
            }
        };

        -- 商城
		store = {
			startTime  = '2022-07-28 10:00:00';             -- 商店开启时间
			endTime    = '2022-08-14 23:59:59';             -- 商店结束时间
			versionMin = '1.16.0';                           -- 最低版本限制
			movieTicket = 1;                              -- 电影票库存展示1:展示，0:关闭
			goods = {										-- 兑换商店列表
                -- mis_item_3 电影票
				[1] = {items = {[1] = {id = 'mis_item_3', num = 1}}, price = 500, limit=1,   unique=0};
				[2] = {items = {[1] = {id = 10028,        num = 1}}, price =  120, limit=3, unique=0};
				[3] = {items = {[1] = {id = 10011,        num = 1}}, price =  80, limit=5, unique=0};
				[4] = {items = {[1] = {id = 10027,        num = 1}}, price =  50, limit=5, unique=0};
				[5] = {items = {[1] = {id = 12948,        num = 1}}, price =  50, limit=5, unique=0};
				[6] = {items = {[1] = {id = 49005,        num = 1}}, price =  30, limit=999, unique=0};
				[7] = {items = {[1] = {id = 24802,        num = 5}}, price =  20, limit=999, unique=0};
				[8] = {items = {[1] = {id = 24810,        num = 5}}, price =  20, limit=999, unique=0};
				[9] = {items = {[1] = {id = 12950,        num = 3}}, price =  20, limit=999, unique=0};
				[10] = {items = {[1] = {id = 12951,        num = 3}}, price =  20, limit=999, unique=0};
				[11] = {items = {[1] = {id = 12952,        num = 3}}, price =  20, limit=999, unique=0};
				[12] = {items = {[1] = {id = 12953,        num = 3}}, price =  20, limit=999, unique=0};
				[13] = {items = {[1] = {id = 12954,        num = 3}}, price =  20, limit=999, unique=0};
				[14] = {items = {[1] = {id = 12964,        num = 1}}, price =  15, limit=999, unique=0};
				[15] = {items = {[1] = {id = 12962,        num = 1}}, price =  10, limit=999, unique=0};
				[16] = {items = {[1] = {id = 12963,        num = 1}}, price =  10, limit=999, unique=0};
			};
		};

        taskList = {
            -- 主页活动 : 
			-- mission_type : awakening_homepage
            [1] = {
                mission = {
                    [1] = {
                        name = "每日领奖",
                        daily = 1,
                        event = 18,
                        target = 1,
                        bonus = {{itemId = 'mis_item_3', num = 20}}
                    },
                }
            },
            -- 秘籍分享	: 
			-- mission_type : awakening_books
            [2] = {
                shareCode = {
                    prefix = {       -- 秘籍前缀
                        "觉醒","虚空之力","起源之力","熊孩子","卡卡","妮妮","酋长"
                    },
                    init = 38032637, -- 秘籍初始值
                    max = 60466175,  -- 秘籍最大值
                    maxExchange = 2, -- 秘籍最大兑换次数
                    expireType = 1,  -- 秘籍过期方式：1 当天有效
                    maxLength = 20,  -- 秘籍最大长度(字节数，用于快速校验，由开发填写，默认是20);
                    pattern = "^%W+%d[0-9a-zA-Z]+$", -- 新春密语正则匹配(用于快速校验，由开发填写，默认是：^%W+%d[0-9a-zA-Z]+$)
                    format = "uint36", -- 格式化（目前支持：uint36 36进制整数）
				    -- 分享文本前缀
			        shareTextPrefix = "打开迷你世界参与觉醒活动，复制秘籍：",
                },
        
                mission = {
                    [1] = {
                        name = "分享秘籍并被使用1次",
                        daily = 1,
                        event = 29,
                        target = 1,
                        bonus = {{itemId = 'mis_item_4', num = 20}}
                    },
                    [2] = {
                        name = "使用好友分享的觉醒秘籍1次",
                        daily = 1,
                        event = 28,
                        target = 1,
                        bonus = {{itemId = 'mis_item_5', num = 20}}
                    },
                    [3] = {
                        name = "分享秘籍并被使用2次",
                        daily = 1,
                        event = 29,
                        target = 2,
                        bonus = {{itemId = 'mis_item_4', num = 20}}
                    },
                    [4] = {
                        name = "使用好友分享的觉醒秘籍2次",
                        daily = 1,
                        event = 28,
                        target = 2,
                        bonus = {{itemId = 'mis_item_5', num = 20}}
                    }
                }
            },
            -- 电影发布会:
			-- mission_type : awakening_movie
            [3] = {
                name       = '发布会',
                mapID      = '40621800686671',
       	        startTime  = '2022-07-29 20:00:00', -- 活动开启时间
        		endTime    = '2022-07-29 21:00:00', -- 活动结束时间
                auto       = 1, -- 自动领取
				control    = 1, -- 总控 0:关闭,1:开启	
                -- 购票链接
				movie_url  = 'https://activity-oss.zmaxfilm.com/bank/hy-gameSkin/index.html#/index?activityId=515',
    
                mission = {
                    [1] = {
                        name = "观看发布会5分钟",
                        daily = 1,
                        event = 2,
                        target = 300,
                        bonus = {{itemId = 'mis_item_4', num = 5}}
                    },
                    [2] = {
                        name = "观看发布会10分钟",
                        daily = 1,
                        event = 2,
                        target = 600,
                        bonus = {{itemId = 'mis_item_5', num = 5}}
                    },
                    [3] = {
                        name = "观看发布会15分钟",
                        daily = 1,
                        event = 2,
                        target = 900,
                        bonus = {{itemId = 'mis_item_4', num = 5}}
                    },
                    [4] = {
                        name = "观看发布会20分钟",
                        daily = 1,
                        event = 2,
                        target = 1200,
                        bonus = {{itemId = 'mis_item_5', num = 5}}
                    }
                }
            }
        }
    };

[26] = {        --联机地图分享
        control    = 1, -- 总控 0:关闭,1:开启        
        --apiids      = '999', -- 渠道限制
        versionMin = '0.0.0', -- 最低版本限制
        startTime  = '2022-03-01 00:00:00', -- 活动开启时间
        endTime    = '2023-06-19 19:55:59', -- 活动结束时间


        shareCode = {
                                        tickOpt=1,                 -- 添加好友验证勾选项，默认勾选(0 不勾选，1勾选)
                    suffix = 6,                  -- 分享码后缀，默认6个字符 (0-9 A-Z)
                    maxExchange = 50, -- 分享码最大兑换次数
                                        maxUserExchange = 3, -- 分享码单个用户最大兑换次数
                    expireType = 2,  -- 分享码过期方式：1 当天有效，2 按时间倒计时
                                        expireTime =172800,         -- 分享码过期时间，默认2天（单位：秒）
                    pattern = "#%w", -- 新春密语正则匹配(用于快速校验，由开发填写，默认是：#%w)
                                    -- 分享文本前缀
                                shareTextPrefix = "复制邀请码打开迷你世界，房间已建好就等你开黑:",
                },
    };
[27] = {	--地图口令分享
        control    = 1, -- 总控 0:关闭,1:开启        
        --apiids     = '999', -- 渠道限制
        versionMin = '0.0.0', -- 最低版本限制
        startTime  = '2022-03-01 00:00:00', -- 活动开启时间
        endTime    = '2023-06-19 19:55:59', -- 活动结束时间


        shareCode = {
					tickOpt=0,		 -- 添加好友验证勾选项，默认勾选(0 不勾选，1勾选)
                    suffix = 6,		  -- 分享码后缀，默认6个字符 (0-9 A-Z)
                    maxExchange = 50, -- 分享码最大兑换次数50
					maxUserExchange = 20, -- 分享码单个用户最大兑换次数
                    expireType = 2,  -- 分享码过期方式：1 当天有效，2 按时间倒计时
					expireTime =604800,	 -- 分享码过期时间，默认2天172800（单位：秒）
                    pattern = "#%w", -- 新春密语正则匹配(用于快速校验，由开发填写，默认是：#%w)
				    -- 分享文本前缀
			        shareTextPrefix = "复制迷你口令打开迷你世界，一起来冒险吧：",
                },
        -- 大V口令特殊处理
		specialCode = {
			[1] = {uin=623047860,maxExchange=20000},
			[2] = {uin=1000,maxExchange=20000},
			[3] = {uin=1000,maxExchange=20000},
                },
    };
	-- 新手任务（20221214版本）
	[29] = {                                             
		control = 1;                                        -- 总控 1开启 (注释--)则代表关闭	
		version_min = '1.8.0';                           	-- 最低版本限制
		version_max = '1.99.0';
		startTime = '2022-11-15';                       	-- 开启时间
		endTime = '2032-12-29';                         	-- 结束时间
		--apiids = '4,5,6';									--渠道白名单
		--apiids_no = '1,2,3';								--渠道黑名单			
		
        duration = 8;                                       -- 新手任务有效期（单位：天）
        pending_duration = 2;                             	-- 新手任务等待接受有效期（单位：天）
 
        -- 任务配置
        task_cfg  = {
			task_list = {
				[1] =	{
					day_task_id = 1,						--天数（1为1天，2为2天，以此类推)
					name = '第一次登录迷你世界',	
					target = 1,
					event = 18,
					bonus = {
						itemId = 10000,
						num = 60,
					},
				};
				[2] =	{
					day_task_id = 1,						
					name = '在地图里移动超过100格',	
					target = 100,
					event = 4001,
					bonus = {
						itemId = 10023,
						num = 1,
					},
				};
				[3] =	{
					day_task_id = 1,						
					name = '体验地图时长超过90秒',	
					target = 90,
					event = 25,
					bonus = {
						itemId = 10011,
						num = 1,
					},
				};
				[4] =	{
					day_task_id = 2,						
					name = '收获1次果实',	
					target = 1,
					event = 62,
					bonus = {
						itemId = 10012,
						num = 1,
					},
				};
				[5] =	{
					day_task_id = 2,						
					name = '添加1位好友',	
					target = 1,
					event = 20,
					bonus = {
						itemId = 49005,
						num = 1,
					},
				};
				[6] =	{
					day_task_id = 2,						
					name = '在联机大厅玩1张地图',	
					target = 1,
					event = 4002,
					bonus = {
						itemId = 10000,
						num = 60,
					},
				};
				[7] =	{
					invalid =  1,			--默认不填，填了则代表取消该任务
					day_task_id = 2,						
					name = '在好友的家园里完成1次浇水',	
					target = 1,
					event = 4003,
					bonus = {
						itemId = 10000,
						num = 60,
					},
				};
				[8] =	{
					day_task_id = 3,						
					name = '拥有第1件装扮',	
					target = 1,
					event = 63,
					bonus = {
						itemId = 80047,
						num = 1,
					},
				};
				[9] =	{
					day_task_id = 3,						
					name = '使用闪电锯装扮',	
					target = 1,
					event = 4004,
					special_key = 80047,
					bonus = {
						itemId = 12851,
						num = 1,
					},
				};
				[10] =	{
					day_task_id = 3,						
					name = '前往1次筑梦礼盒',	
					target = 1,
					event = 4005,
					bonus = {
						itemId = 10000,
						num = 60,
					},
				};
				[11] =	{
					day_task_id = 4,						
					name = '收藏1张喜爱的游戏地图',	
					target = 1,
					event = 6,
					bonus = {
						itemId = 10010,
						num = 1,
					},
				};
				[12] =	{
					day_task_id = 4,						
					name = '在资源工坊下载1次资源',	
					target = 1,
					event = 4010,
					bonus = {
						itemId = 12988,
						num = 1,
					},
				};
				[13] =	{
					day_task_id = 4,						
					name = '在迷你工坊下载2张地图',	
					target = 2,
					event = 4,
					bonus = {
						itemId = 10000,
						num = 60,
					},
				};
				[14] =	{
					day_task_id = 5,						
					name = '创造1个冒险模式地图',	
					target = 1,
					event = 4006,
					bonus = {
						itemId = 10028,
						num = 1,
					},
				};
				[15] =	{
					invalid =  1,
					day_task_id = 5,						
					name = '收集5个樱桃木',	
					target = 5,
					event = 4007,
					bonus = {
						itemId = 13401,
						num = 3,
					},
				};
				[16] =	{
					day_task_id = 5,						
					name = '诞生1只新的沃沃兽',	
					target = 1,
					event = 4008,
					bonus = {
						itemId = 10000,
						num = 60,
					},
				};
				[17] =	{
					day_task_id = 5,					
					name = '每日登录游戏',	
					target = 1,
					event = 18,
					bonus = {
						itemId = 13401,
						num = 3,
					},
				};		
			};
		};
	};
[30] = {
       	--线下面对面组队活动
		control    = 0, -- 总控 0:关闭,1:开启
        apiids     = '2,5,7,12,36,31,13,1,3,11,45,89,35,32,34,4,6,8,9,10,14,15,16,17,18,19,20,21,29,30,32,33,37,38,39,40,41,42,43,44,47,49,50,999,53,99,51,60,61,22,24,345,69,65,64,71,74,62,73,72,70,68,67,66,63,75,85,86,76,90,77,78,79,87,91,80,54,81,82,83,84,88,92,93,94,299,95,96,97,52,55,56,57,58,992,59,28,991', -- 渠道限制
        versionMin = '1.0.0', -- 最低版本限制
        startTime = '2023-01-14  12:00:00';--活动开始时间
        endTime = '2023-01-28  23:59:59'; --活动结束时间
		prize_list = {
			[1] = {itemId=10000, num=50},
			[2] = {itemId=10043, num=5},
            [3] = {itemId=10000, num=100},
			[4] = {itemId=20529, num=3},
			[5] = {itemId=10000, num=150},
		};
       
    };
};