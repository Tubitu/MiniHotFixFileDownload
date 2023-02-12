{
	startTime = '2021-08-02';				-- 开启时间
	endTime = '2021-09-01';					-- 结束时间
	closeTime = '2021-09-07';				-- 关闭入口时间
	jump = '2021081901';								-- 跳转
	map = {									-- 地图
		51522590958645;
		18954788453385;
		5816624032945;
		49225826814832;
	};
	first = {								-- 首次抽奖
		rotate = {							-- 转盘配置
			[1] = {icon = 'https://image.mini1.cn/d/20210724/9f9bbe4c0c1005679c5b96684c7de485.png', name = '创造福袋', ratio = 0};	-- id -> 概率
			[2] = {icon = 'https://image.mini1.cn/d/20210721/d27e147c1c23d02d95c7c3934a0c0c3a.png', name = '迷你币', ratio = 0};
			[3] = {icon = 'https://image.mini1.cn/d/20210721/f66db16e8d38686e02aba60bc715ad5e.png', name = '永久装扮', ratio = 90};
			[4] = {icon = 'https://image.mini1.cn/d/20210721/d4e772f13fe240d8eb802148ea44f79e.png', name = '坐骑碎片', ratio = 10};
			[5] = {icon = 'https://image.mini1.cn/d/20210721/8dc003046a490e0b35c674fe1604f567.png', name = '角色碎片', ratio = 0};
			[6] = {icon = 'https://image.mini1.cn/d/20210721/fb3de34b793bdff491598b946964598c.png', name = '装扮体验', ratio = 0};
			[7] = {icon = 'https://image.mini1.cn/d/20210721/457c56439b9ac4185d7973fda0e312ee.png', name = '游戏道具', ratio = 0};
		};
		config = {							-- 奖励配置
			[3] = {
				rand = 1;
				{itemId = 21920, num = 1};
				{itemId = 22154, num = 1};
				{itemId = 22271, num = 1};
				{itemId = 22267, num = 1};
				{itemId = 22266, num = 1};
				{itemId = 22318, num = 1};
				{itemId = 22319, num = 1};
				{itemId = 22307, num = 1};
				{itemId = 22403, num = 1};
				{itemId = 22152, num = 1};
			};
			[4] = {							-- id -> {}
				rand = 1;			
				{itemId = 24817, num = 30};
				{itemId = 20038, num = 30};
				{itemId = 20036, num = 30};
				{itemId = 20032, num = 30};
				{itemId = 20031, num = 30};
			};
		};
	};
	default = {								-- 非首次抽奖
		rotate = {
			[1] = {icon = 'https://image.mini1.cn/d/20210724/9f9bbe4c0c1005679c5b96684c7de485.png', name = '创造福袋', ratio = 1, ratio2 = 1};	-- id -> 概率
			[2] = {icon = 'https://image.mini1.cn/d/20210721/d27e147c1c23d02d95c7c3934a0c0c3a.png', name = '迷你币', ratio = 1669, ratio2 = 3669};
			[3] = {icon = 'https://image.mini1.cn/d/20210721/f66db16e8d38686e02aba60bc715ad5e.png', name = '永久装扮', ratio = 10, ratio2 = 10};
			[4] = {icon = 'https://image.mini1.cn/d/20210721/d4e772f13fe240d8eb802148ea44f79e.png', name = '坐骑碎片', ratio = 13330, ratio2 = 13330};
			[5] = {icon = 'https://image.mini1.cn/d/20210721/8dc003046a490e0b35c674fe1604f567.png', name = '角色碎片', ratio = 18330, ratio2 = 18330};
			[6] = {icon = 'https://image.mini1.cn/d/20210721/fb3de34b793bdff491598b946964598c.png', name = '装扮体验', ratio = 33330, ratio2 = 33330};
			[7] = {icon = 'https://image.mini1.cn/d/20210721/457c56439b9ac4185d7973fda0e312ee.png', name = '游戏道具', ratio = 33330, ratio2 = 31330};
		};
		config = {
			[1] = {							-- id -> {}
				rand = 1;
				{
					{itemId = 13041, num = 1};
					{itemId = 13040, num = 1};
					{itemId = 13028, num = 1};
					{itemId = 20423, num = 1};
					{itemId = 20422, num = 1};
				};
				{
					{itemId = 20402, num = 1};
					{itemId = 20415, num = 1};
					{itemId = 13032, num = 1};
					{itemId = 20433, num = 1};
					{itemId = 20481, num = 1};
				};
				{
					{itemId = 20460, num = 1};
					{itemId = 20408, num = 1};
					{itemId = 13042, num = 1};
					{itemId = 13029, num = 1};
					{itemId = 20427, num = 1};
				};
				{
					{itemId = 20405, num = 1};
					{itemId = 20406, num = 1};
					{itemId = 20419, num = 1};
					{itemId = 20425, num = 1};
					{itemId = 20417, num = 1};
				};
				{
					{itemId = 20424, num = 1};
					{itemId = 20437, num = 1};
					{itemId = 20494, num = 1};
					{itemId = 20432, num = 1};
					{itemId = 20463, num = 1};
				};
			};
			[2] = {
				rand = 1;
				{itemId = 10002, num = 6};
			};
			[3] = {
				rand = 1;
				{itemId = 13041, num = 1};
				{itemId = 13040, num = 1};
				{itemId = 13028, num = 1};
				{itemId = 20423, num = 1};
				{itemId = 20422, num = 1};
				{itemId = 20405, num = 1};
				{itemId = 20406, num = 1};
				{itemId = 20419, num = 1};
				{itemId = 20425, num = 1};
				{itemId = 20417, num = 1};
				{itemId = 20424, num = 1};
				{itemId = 20437, num = 1};
				{itemId = 20494, num = 1};
				{itemId = 20432, num = 1};
				{itemId = 20463, num = 1};
				{itemId = 22464, num = 1};
				{itemId = 22433, num = 1};
				{itemId = 22425, num = 1};
				{itemId = 22437, num = 1};
				{itemId = 22394, num = 1};
				{itemId = 22341, num = 1};
				{itemId = 22323, num = 1};
				{itemId = 22241, num = 1};
				{itemId = 22208, num = 1};
				{itemId = 22195, num = 1};
				{itemId = 22191, num = 1};
				{itemId = 22094, num = 1};
				{itemId = 22056, num = 1};
				{itemId = 21924, num = 1};
				{itemId = 21896, num = 1};
			};
			[4] = {
				rand = 1;
				{itemId = 24817, num = 3};
				{itemId = 20038, num = 3};
				{itemId = 20036, num = 3};
				{itemId = 20032, num = 3};
				{itemId = 20031, num = 3};
			};
			[5] = {
				rand = 1;
				{itemId = 12950, num = 3};
				{itemId = 12952, num = 3};
				{itemId = 12953, num = 3};
				{itemId = 12951, num = 3};
				{itemId = 12954, num = 3};
				{itemId = 12955, num = 3};
				{itemId = 12956, num = 3};
				{itemId = 12958, num = 3};
				{itemId = 12957, num = 3};
				{itemId = 12959, num = 3};
			};
			[6] = {
				rand = 1;
				{itemId = 20626, num = 1};
				{itemId = 20628, num = 1};
				{itemId = 20634, num = 1};
				{itemId = 20655, num = 1};
				{itemId = 20656, num = 1};
				{itemId = 21435, num = 1};
				{itemId = 20670, num = 1};
				{itemId = 21438, num = 1};
				{itemId = 20622, num = 1};
				{itemId = 12991, num = 1};
				{itemId = 21441, num = 1};
				{itemId = 21419, num = 1};
				{itemId = 21420, num = 1};
				{itemId = 21421, num = 1};
				{itemId = 21422, num = 1};
				{itemId = 21423, num = 1};
				{itemId = 21424, num = 1};
				{itemId = 21425, num = 1};
				{itemId = 21366, num = 1};
				{itemId = 21367, num = 1};
				{itemId = 21368, num = 1};
				{itemId = 21369, num = 1};
				{itemId = 21370, num = 1};
				{itemId = 21371, num = 1};
				{itemId = 21372, num = 1};
				{itemId = 12993, num = 1};
				{itemId = 12999, num = 1};
				{itemId = 12998, num = 1};
				{itemId = 12994, num = 1};
				{itemId = 20510, num = 1};
				{itemId = 13007, num = 1};
				{itemId = 13006, num = 1};
				{itemId = 13001, num = 1};
				{itemId = 20501, num = 1};
				{itemId = 13004, num = 1};
				{itemId = 13005, num = 1};
				{itemId = 20514, num = 1};
				{itemId = 20515, num = 1};
				{itemId = 20516, num = 1};
				{itemId = 20517, num = 1};
				{itemId = 20518, num = 1};
				{itemId = 20519, num = 1};
				{itemId = 20520, num = 1};
				{itemId = 20521, num = 1};
				{itemId = 20522, num = 1};
				{itemId = 20523, num = 1};
				{itemId = 20524, num = 1};
				{itemId = 20525, num = 1};
				{itemId = 20533, num = 1};
			};	
			[7] = {
				rand = 1;
				{itemId = 12831, num = 1};
				{itemId = 12750, num = 1};
				{itemId = 12964, num = 1};
				{itemId = 845, num = 1};
				{itemId = 846, num = 1};
				{itemId = 1055, num = 1};
				{itemId = 1056, num = 1};
				{itemId = 12962, num = 3};
				{itemId = 12963, num = 1};
				{itemId = 12832, num = 1};
			};
		};
	};
};