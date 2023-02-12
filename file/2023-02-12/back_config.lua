
{
	-- 冒险归来
	[1] = {
		lost_day = 30,				-- 流失天数
		mission_day = 15,			-- 可做任务天数
		show_day = 20,				-- 可兑换天数
		mail = {					-- 联机邮件奖励
			{itemId = 10000, num = 66},
			{itemId = 12988, num = 3 },
			{itemId = 20036, num = 15},
		},
		progress = {					-- 进度条
			[1] = {
				itemId = 12928,
				num = 1,
				price = 10,
			},
			[2] = {
				itemId = 12964,
				num = 3,
				price = 25,
			},
			[3] = {
				price = 50,
				option={
                   {itemId = 20038, num = 50, },
                   {itemId = 20036, num = 50, },
                 },	-- 可选奖励表
			},
			[4] = {
				price = 75,
				option={
                   {itemId = 20037, num = 100, },
                   {itemId = 24802, num = 100, },
                   {itemId = 24803, num = 100, },
                   {itemId = 24810, num = 100, },
                   {itemId = 24807, num = 100, },
                 },	-- 可选奖励表
			},
			[5] = {
				price = 100,
				option={
                   {itemId = 22269, num = 1, },
                   {itemId = 22148, num = 1, },
                   {itemId = 22150, num = 1, },
                   {itemId = 22146, num = 1, },
                   {itemId = 22270, num = 1, },
                   {itemId = 22149, num = 1, },
                   {itemId = 21941, num = 1, },
                   {itemId = 21940, num = 1, },
                   {itemId = 21932, num = 1, },
                   {itemId = 21931, num = 1, },
                   {itemId = 22268, num = 1, },
                   {itemId = 22206, num = 1, },
                   {itemId = 22204, num = 1, },
                   {itemId = 22147, num = 1, },
                   {itemId = 22271, num = 1, },
                   {itemId = 22207, num = 1, },
                   {itemId = 22202, num = 1, },
                   {itemId = 22154, num = 1, },
                   {itemId = 22152, num = 1, },
                   {itemId = 21920, num = 1, },
                 },	-- 可选奖励表
			},
		},
	
----------------------------------------------------------------------------------------------
	
		bonus = {					-- 奖励界面
			[1] = {itemId = 12858, num = 1, price = 10, limit = 20 },
			[2] = {itemId = 12948, num = 1, price = 30, limit = 20 },
			[3] = {itemId = 24802, num = 5, price = 10, limit = 20 },
			[4] = {itemId = 24803, num = 5, price = 10, limit = 20 },
			[5] = {itemId = 24810, num = 5, price = 10, limit = 20 },
			[6] = {itemId = 24807, num = 5, price = 10, limit = 20 },
			[7] = {itemId = 20037, num = 5, price = 10, limit = 20 },
			[8] = {itemId = 20035, num = 5, price = 10, limit = 20 },
			[9] = {itemId = 20038, num = 3, price = 10, limit = 20 },
			[10] = {itemId = 20036, num = 3, price = 10, limit = 20 },
			[11] = {itemId = 12964, num = 1, price = 3, limit = 20 },
			[12] = {itemId = 12988, num = 1, price = 3, limit = 20 },
		},

-----------------------------------------------------------------------------------------------
		-- target: 目标
		-- recycle: 重复
		-- heir：累计进度
		-- event：事件列表
		-- 1	签到
		-- 2	连续登录
		-- 3	累计登录
		-- 4	参与联机
		-- 5	替好友浇水
		-- 6	邀请好友联机
		-- step_type: 步进方式
		-- 1	顺序方式
		-- 2	随机方式
		mission = {					-- 任务界面
			[1] = {
				name  = "每日签到",
				{event = 1, score = 5, recycle = 1}
			},
			[2] = {
				heir = 1,
				event = 2,
				step_type = 1,
				name = '连续登录_天',
				{target = 2, score = 5},
				{target = 3, score = 5},
				{target = 4, score = 8},
				{target = 5, score = 8},
				{target = 6, score = 8},
				{target = 7, score = 10},
				{target = 8, score = 10},
				{target = 9, score = 10},
				{target = 10, score = 12},
				{target = 11, score = 12},
				{target = 12, score = 12},
				{target = 13, score = 15},
				{target = 14, score = 15},
				{target = 15, score = 15},
			},
			[3] = {
				heir = 1,
				event = 3,
				step_type = 1,
				name = '累计登录_天',
				{target = 3, score = 5},
				{target = 5, score = 10},
				{target = 7, score = 15},
			},
			[4] = {
				event = 4,
				step_type = 2,
				name = '完成联机模式_次',
				{target = 1, score = 1},
				{target = 2, score = 2},
				{target = 3, score = 3},
			},
			[5] = {
				name = '替好友浇水_次',
				{event = 5, target=1, score = 2, recycle = 1}
			},
			[6] = {
				name = '邀请好友一起联机_次',
				{event = 6, target=1, score = 3, recycle = 1}
			}
		},

----------------------------------------------------------------------------------------------

	}
}