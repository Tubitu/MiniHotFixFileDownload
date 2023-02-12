{
	version_min='0.52.5',
	price=10,				-- 价格
	red_spot=1,				-- 红点配置 0:关闭, -1:只显示一次, 大于0:每日显示次数
	notify={				-- 奖励公示
		status=1,			-- 0：关闭，1：开启
		lang={0}			-- 语言列表
	}, 


	welfare_weight = 2,		-- 商店 福利默认选中 1装扮 2定制 3坐骑 4角色 5道具


	-- 迷你点商城产能up图标开关
    up_icon= {
        version_min = '3.0.0', -- 当前配置可用的最小版本号
        apiids = "1,2,3,7,11,12,13,15,21,28,29,32,34,36,39,45,55,56,57,58,60,62,63,64,65,66,68,69,70,71,72,73,74,75,76,77,78,79,80,82,83,92,93,94,10,49,50,96,999", -- 功能启用的渠道  
    },

	-- 迷你点商城福利抽奖页签开关
    lottery_tab = {
        version_min = '1.3.0', -- 当前配置可用的最小版本号
        apiids = "1,2,3,7,11,12,13,15,21,28,29,32,33,34,36,39,45,55,56,58,60,62,63,64,65,66,68,69,70,71,72,73,74,75,76,78,79,80,82,83,91,92,93,94,10,49,50,96,999", -- 功能启用的渠道  
    },
	-- 迷你点商城迷你点消耗奖励图标开关
    expend_award = {
        version_min = '1.3.0', -- 当前配置可用的最小版本号
        apiids = "1,2,3,7,11,12,13,15,21,28,29,32,33,34,36,39,45,55,56,58,60,62,63,64,65,66,68,69,70,71,72,73,74,75,76,78,79,80,82,83,91,92,93,94,10,49,50,96,999", -- 功能启用的渠道  
    },


	desc='1、玩家花费迷你点可参与福利抽奖，获取各种实用道具及珍稀装扮、坐骑碎片等奖励\n2、迷你点通过观看广告获得，当获取奖励次数到达上限后，无法再通过观看广告获得迷你点\n3、活动解释权归迷你世界官方所有',				-- 活动介绍
	desc_x='默认',
	desc_1='英语',
	desc_2='繁体',
	desc_3='泰语',
	desc_4='西语',
	desc_5='葡语',
	desc_6='法语',
	desc_7='日语',
	desc_8='无',
	desc_9='韩语',
	desc_10='越南语',
	desc_11='俄语',
	desc_12='土耳其语',
	desc_13='意大利',
	desc_14='德语',
	desc_15='印度尼西亚',
	itemList={				-- 奖励列表, 最后一项的概率会自动(由1-前面的总和)补充，可以填任意值
		{itemId=13036, probability=0.001, num=1, level=1, skinId=16,unique=1},
{itemId=22088, probability=0.01, num=1, level=1,avatarId=493,unique=1}, 
{itemId=21904, probability=0.01, num=1, level=2,avatarId=309,unique=1}, 
{itemId=21764, probability=0.015, num=1, level=2,avatarId=169,unique=1}, 
{itemId=21710, probability=0.015, num=1, level=2,avatarId=115,unique=1}, 
{itemId=22057, probability=0.015, num=1, level=2,avatarId=461,unique=1}, 
{itemId=24817, probability=0.295, num=2, level=3}, 
{itemId=24803, probability=0.295, num=2, level=3}, 
{itemId=12851, probability=0.344, num=1, level=3},
	},



	-- 新迷你抽奖和任务奖励数据
	shop_lottery_cfg = {
		opentime = 1623062059,
		endtime = 1625654059,
		ver = '1.1.0',--最低版本号限制
		lottery_ticket_id = 10054, --迷你点抽奖券apiids='1,2,3,7,11,12,13,15,18,19,21,28,29,32,33,34,36,39,45,55,56,57,58,60,62,63,64,65,66,68,69,70,71,72,73,74,75,76,77,78,79,80,82,83,91,92,93,94,10,49,50,96,999',
		--apiids_no = '1,10,999',
		--抽奖的配置
		["lottery"] = {
			["base"] = {
				[1] = {
					start_time = 1624002822,
					end_time =1625457599,
					choose_start_time = 1624002822,	
					choose_end_time = 1625457599,
					award ={56,53,41,46,43,20,33,44,12,50,57,42,30,16,31,24,39,28,21,14,45,19,54,18,37,32,51,26,17,47,52,23,34,48,49,40,36,55,25,35,29,38,13,22,11,27,15},
					choose={1,2,3,4,5,6,7,8,9,10},
					one_cost = 20,		--单抽消耗10
					ten_cost = 200,		--十连抽消耗100
					choose_cost = 20,	--选择自选大奖消耗迷你点
					default_choose = 1,--默认大奖顺序
				},	
				[2] = {
					start_time = 1625457601,
					end_time =1626667201,
					choose_start_time = 1625457601,	
					choose_end_time = 1626667201,
					award ={56,53,41,46,43,20,33,44,12,50,57,42,30,16,31,24,39,28,21,14,45,19,54,18,37,32,51,26,17,47,52,23,34,48,49,40,36,55,25,35,29,38,13,22,11,27,15},
					choose={58,1,2,3,4,5,6,7,8,9,10},
					one_cost = 20,		--单抽消耗10
					ten_cost = 200,		--十连抽消耗100
					choose_cost = 20,	--选择自选大奖消耗迷你点
					default_choose = 58,--默认大奖顺序
				},	

			[3] = {
					start_time = 1626667201,
					end_time =1630296000,
					choose_start_time = 1626667201,	
					choose_end_time = 1630296000,
					award ={56,53,41,46,43,20,33,44,12,50,57,42,30,16,31,24,39,28,21,14,45,19,54,18,37,32,51,26,17,47,52,23,34,48,49,40,36,55,25,35,29,38,13,22,11,27,15},
					choose={1,2,3,4,5,6,7,8,9,10},
					one_cost = 20,		--单抽消耗10
					ten_cost = 200,		--十连抽消耗100
					choose_cost = 20,	--选择自选大奖消耗迷你点
					default_choose = 1,--默认大奖顺序
				},

			[4] = {
					start_time = 1630296001,
					end_time =1643601600,
					choose_start_time = 1630296001,	
					choose_end_time = 1643601600,
					award ={56,53,41,46,43,20,33,44,12,50,57,42,30,16,31,24,39,28,21,14,45,19,54,18,37,32,51,26,17,47,52,23,34,48,49,40,36,55,25,35,29,38,13,22,11,27,15},
					choose={1,2,3,4,5,6,7,8,9,10},
					one_cost = 20,		--单抽消耗10
					ten_cost = 200,		--十连抽消耗100
					choose_cost = 20,	--选择自选大奖消耗迷你点
					default_choose = 1,--默认大奖顺序
				},

			[5] = {
					start_time = 1644811201,
					end_time =1662955200,
					choose_start_time = 1644811201,	
					choose_end_time = 1662955200,
					award ={113,100,108,83,91,116,76,84,72,77,112,106,110,95,88,103,99,85,75,102,105,90,89,78,98,74,114,104,115,107,87,79,86,101,94,81,80,109,93,82,71,70,111,97,73,96,92},
					choose={60,61,62,63,64,65,66,67,68,69},
					one_cost = 20,		--单抽消耗10
					ten_cost = 200,		--十连抽消耗100
					choose_cost = 20,	--选择自选大奖消耗迷你点
					default_choose = 60,--默认大奖顺序
				},

			[6] = {
					start_time = 1662955201,
					end_time =1672632000,
					choose_start_time = 1662955201,	
					choose_end_time = 1672632000,
					award ={173,172,155,152,149,120,123,162,146,117,126,151,161,160,145,153,138,169,129,119,150,121,124,118,140,142,133,130,168,147,128,132,135,170,171,156,134,159,137,167,165,122,166,154,131,143,148,127,144,164,125,157,136,139,158,141,163},
					choose={117,118,119,120,121,122,123,124,125,126},
					one_cost = 20,		--单抽消耗10
					ten_cost = 200,		--十连抽消耗100
					choose_cost = 20,	--选择自选大奖消耗迷你点
					default_choose = 117,--默认大奖顺序
				},

			[7] = {
					start_time = 1672632001,
					end_time = 1676260800,
					choose_start_time = 1672632001,	
					choose_end_time = 1676260800,
					award ={56,53,41,46,43,20,33,44,12,50,57,42,30,16,31,24,39,28,21,14,45,19,54,18,37,32,51,26,17,47,52,23,34,48,49,40,36,55,25,35,29,38,13,22,11,27,15},
					choose={1,2,3,4,5,6,7,8,9,10},
					one_cost = 20,		--单抽消耗10
					ten_cost = 200,		--十连抽消耗100
					choose_cost = 20,	--选择自选大奖消耗迷你点
					default_choose = 1,--默认大奖顺序
				},



			},
			--普通奖池
			-- tag 0或不填不展示标签，1 新品， 2限定 
			["award"] = {
[117] = {itemId=13041, probability=20, num=1, level=1, skinId=51,unique=1,tag = 1},
[118] = {itemId=20403, probability=20, num=1, level=1, skinId=26,unique=1,tag = 1},
[119] = {itemId=20405, probability=20, num=1, level=1, skinId=28,unique=1,tag = 0},
[120] = {itemId=13031, probability=20, num=1, level=1, skinId=11,unique=1,tag = 0},
[121] = {itemId=20421, probability=20, num=1, level=1, skinId=44,unique=1,tag = 0},
[122] = {itemId=20424, probability=20, num=1, level=1, skinId=47,unique=1,tag = 0},
[123] = {itemId=20409, probability=20, num=1, level=1, skinId=32,unique=1,tag = 0},
[124] = {itemId=13038, probability=20, num=1, level=1, skinId=18,unique=1,tag = 0},
[125] = {itemId=22485, probability=20, num=1, level=1, avatarId=890,unique=1,tag = 2},
[126] = {itemId=22556, probability=20, num=1, level=1, avatarId=961,unique=1,tag = 2},
[127] = {itemId=20032, probability=400, num=2, level=2,tag = 0},
[128] = {itemId=20032, probability=300, num=5, level=2,tag = 0},
[129] = {itemId=20032, probability=200, num=8, level=3,tag = 0},
[130] = {itemId=24816, probability=400, num=2, level=2,tag = 0},
[131] = {itemId=24816, probability=300, num=5, level=2,tag = 0},
[132] = {itemId=24816, probability=200, num=8, level=3,tag = 0},
[133] = {itemId=25021, probability=400, num=2, level=2,tag = 0},
[134] = {itemId=25021, probability=300, num=5, level=2,tag = 0},
[135] = {itemId=25021, probability=200, num=8, level=3,tag = 0},
[136] = {itemId=24827, probability=400, num=2, level=2,tag = 0},
[137] = {itemId=24827, probability=300, num=5, level=2,tag = 0},
[138] = {itemId=24827, probability=200, num=8, level=3,tag = 0},
[139] = {itemId=24821, probability=400, num=2, level=2,tag = 0},
[140] = {itemId=24821, probability=300, num=5, level=2,tag = 0},
[141] = {itemId=24821, probability=200, num=8, level=3,tag = 0},
[142] = {itemId=24803, probability=400, num=2, level=2,tag = 0},
[143] = {itemId=24803, probability=300, num=5, level=2,tag = 0},
[144] = {itemId=24803, probability=200, num=8, level=3,tag = 0},
[145] = {itemId=24810, probability=400, num=2, level=2,tag = 0},
[146] = {itemId=24810, probability=300, num=5, level=2,tag = 0},
[147] = {itemId=24810, probability=200, num=8, level=3,tag = 0},
[148] = {itemId=12851, probability=350, num=1, level=2,tag = 0},
[149] = {itemId=12963, probability=350, num=1, level=2,tag = 0},
[150] = {itemId=12962, probability=350, num=1, level=2,tag = 0},
[151] = {itemId=12960, probability=400, num=2, level=2,tag = 0},
[152] = {itemId=12960, probability=300, num=3, level=2,tag = 0},
[153] = {itemId=12960, probability=200, num=4, level=3,tag = 0},
[154] = {itemId=22315, probability=30, num=1, level=1, avatarId=720,unique=1,tag = 0},
[155] = {itemId=21314, probability=250, num=1, level=2,tag = 0},
[156] = {itemId=21969, probability=30, num=1, level=1, avatarId=374,unique=1,tag = 0},
[157] = {itemId=20968, probability=250, num=1, level=2,tag = 0},
[158] = {itemId=21957, probability=30, num=1, level=1, avatarId=362,unique=1,tag = 0},
[159] = {itemId=20956, probability=250, num=1, level=2,tag = 0},
[160] = {itemId=22330, probability=30, num=1, level=1, avatarId=735,unique=1,tag = 0},
[161] = {itemId=21329, probability=250, num=1, level=2,tag = 0},
[162] = {itemId=22017, probability=25, num=1, level=1, avatarId=422,unique=1,tag = 0},
[163] = {itemId=21016, probability=250, num=1, level=2,tag = 0},
[164] = {itemId=21967, probability=25, num=1, level=1, avatarId=372,unique=1,tag = 0},
[165] = {itemId=20966, probability=250, num=1, level=2,tag = 0},
[166] = {itemId=21713, probability=30, num=1, level=1, avatarId=118,unique=1,tag = 0},
[167] = {itemId=20712, probability=250, num=1, level=2,tag = 0},
[168] = {itemId=21758, probability=30, num=1, level=1, avatarId=163,unique=1,tag = 0},
[169] = {itemId=20757, probability=250, num=1, level=2,tag = 0},
[170] = {itemId=21852, probability=30, num=1, level=1, avatarId=257,unique=1,tag = 0},
[171] = {itemId=20851, probability=250, num=1, level=2,tag = 0},
[172] = {itemId=21826, probability=30, num=1, level=1, avatarId=231,unique=1,tag = 0},
[173] = {itemId=20825, probability=250, num=1, level=2,tag = 0},




[1] = {itemId=20463, probability=20, num=1, level=1, skinId=85,unique=1,tag = 1},
[2] = {itemId=20428, probability=20, num=1, level=1, skinId=51,unique=1,tag = 1},
[3] = {itemId=20439, probability=20, num=1, level=1, skinId=62,unique=1,tag = 0},
[4] = {itemId=20456, probability=20, num=1, level=1, skinId=79,unique=1,tag = 0},
[5] = {itemId=13041, probability=20, num=1, level=1, skinId=51,unique=1,tag = 0},
[6] = {itemId=20403, probability=20, num=1, level=1, skinId=26,unique=1,tag = 0},
[7] = {itemId=20405, probability=20, num=1, level=1, skinId=28,unique=1,tag = 0},
[8] = {itemId=13031, probability=20, num=1, level=1, skinId=11,unique=1,tag = 0},
[9] = {itemId=22485, probability=20, num=1, level=1, avatarId=890,unique=1,tag = 2},
[10] = {itemId=22556, probability=20, num=1, level=1, avatarId=961,unique=1,tag = 2},
[11] = {itemId=20032, probability=400, num=2, level=2,tag = 0},
[12] = {itemId=20032, probability=300, num=5, level=2,tag = 0},
[13] = {itemId=20032, probability=200, num=8, level=3,tag = 0},
[14] = {itemId=20036, probability=400, num=2, level=2,tag = 0},
[15] = {itemId=20036, probability=300, num=5, level=2,tag = 0},
[16] = {itemId=20036, probability=200, num=8, level=3,tag = 0},
[17] = {itemId=25010, probability=400, num=2, level=2,tag = 0},
[18] = {itemId=25010, probability=300, num=5, level=2,tag = 0},
[19] = {itemId=25010, probability=200, num=8, level=3,tag = 0},
[20] = {itemId=24821, probability=400, num=2, level=2,tag = 0},
[21] = {itemId=24821, probability=300, num=5, level=2,tag = 0},
[22] = {itemId=24821, probability=200, num=8, level=3,tag = 0},
[23] = {itemId=24822, probability=400, num=2, level=2,tag = 0},
[24] = {itemId=24822, probability=300, num=5, level=2,tag = 0},
[25] = {itemId=24822, probability=200, num=8, level=3,tag = 0},
[26] = {itemId=24807, probability=400, num=2, level=2,tag = 0},
[27] = {itemId=24807, probability=300, num=5, level=2,tag = 0},
[28] = {itemId=24807, probability=200, num=8, level=3,tag = 0},
[29] = {itemId=24803, probability=400, num=2, level=2,tag = 0},
[30] = {itemId=24803, probability=300, num=5, level=2,tag = 0},
[31] = {itemId=24803, probability=200, num=8, level=3,tag = 0},
[32] = {itemId=12851, probability=350, num=1, level=2,tag = 0},
[33] = {itemId=12963, probability=350, num=1, level=2,tag = 0},
[34] = {itemId=12962, probability=350, num=1, level=2,tag = 0},
[35] = {itemId=12960, probability=400, num=2, level=2,tag = 0},
[36] = {itemId=12960, probability=300, num=3, level=2,tag = 0},
[37] = {itemId=12960, probability=200, num=4, level=3,tag = 0},
[38] = {itemId=22094, probability=30, num=1, level=1, avatarId=499,unique=1,tag = 0},
[39] = {itemId=21093, probability=250, num=1, level=2,tag = 0},
[40] = {itemId=22127, probability=30, num=1, level=1, avatarId=532,unique=1,tag = 0},
[41] = {itemId=21126, probability=250, num=1, level=2,tag = 0},
[42] = {itemId=22279, probability=30, num=1, level=1, avatarId=684,unique=1,tag = 0},
[43] = {itemId=21278, probability=250, num=1, level=2,tag = 0},
[44] = {itemId=22226, probability=30, num=1, level=1, avatarId=631,unique=1,tag = 0},
[45] = {itemId=21225, probability=250, num=1, level=2,tag = 0},
[46] = {itemId=21755, probability=25, num=1, level=1, avatarId=160,unique=1,tag = 0},
[47] = {itemId=20754, probability=250, num=1, level=2,tag = 0},
[48] = {itemId=22082, probability=25, num=1, level=1, avatarId=487,unique=1,tag = 0},
[49] = {itemId=21081, probability=250, num=1, level=2,tag = 0},
[50] = {itemId=22017, probability=30, num=1, level=1, avatarId=422,unique=1,tag = 0},
[51] = {itemId=21016, probability=250, num=1, level=2,tag = 0},
[52] = {itemId=21885, probability=30, num=1, level=1, avatarId=290,unique=1,tag = 0},
[53] = {itemId=20884, probability=250, num=1, level=2,tag = 0},
[54] = {itemId=22288, probability=30, num=1, level=1, avatarId=693,unique=1,tag = 0},
[55] = {itemId=21287, probability=250, num=1, level=2,tag = 0},
[56] = {itemId=21984, probability=30, num=1, level=1, avatarId=389,unique=1,tag = 0},
[57] = {itemId=20983, probability=250, num=1, level=2,tag = 0},






			},
 			--抽奖大奖
			["choose"] = {
[117] = {itemId=13041, probability=20, num=1, level=1, skinId=51,unique=1,tag = 1},
[118] = {itemId=20403, probability=20, num=1, level=1, skinId=26,unique=1,tag = 1},
[119] = {itemId=20405, probability=20, num=1, level=1, skinId=28,unique=1,tag = 0},
[120] = {itemId=13031, probability=20, num=1, level=1, skinId=11,unique=1,tag = 0},
[121] = {itemId=20421, probability=20, num=1, level=1, skinId=44,unique=1,tag = 0},
[122] = {itemId=20424, probability=20, num=1, level=1, skinId=47,unique=1,tag = 0},
[123] = {itemId=20409, probability=20, num=1, level=1, skinId=32,unique=1,tag = 0},
[124] = {itemId=13038, probability=20, num=1, level=1, skinId=18,unique=1,tag = 0},
[125] = {itemId=22485, probability=20, num=1, level=1, avatarId=890,unique=1,tag = 2},
[126] = {itemId=22556, probability=20, num=1, level=1, avatarId=961,unique=1,tag = 2},


[1] = {itemId=20463, probability=20, num=1, level=1, skinId=85,unique=1,tag = 1},
[2] = {itemId=20428, probability=20, num=1, level=1, skinId=51,unique=1,tag = 1},
[3] = {itemId=20439, probability=20, num=1, level=1, skinId=62,unique=1,tag = 0},
[4] = {itemId=20456, probability=20, num=1, level=1, skinId=79,unique=1,tag = 0},
[5] = {itemId=13041, probability=20, num=1, level=1, skinId=51,unique=1,tag = 0},
[6] = {itemId=20403, probability=20, num=1, level=1, skinId=26,unique=1,tag = 0},
[7] = {itemId=20405, probability=20, num=1, level=1, skinId=28,unique=1,tag = 0},
[8] = {itemId=13031, probability=20, num=1, level=1, skinId=11,unique=1,tag = 0},
[9] = {itemId=22485, probability=20, num=1, level=1, avatarId=890,unique=1,tag = 2},
[10] = {itemId=22556, probability=20, num=1, level=1, avatarId=961,unique=1,tag = 2},
			},
		},
		["progress"]={
			["base"] = {
				[24] = {
					start_time = 1673582401,
					end_time = 1673841600,
					conf =3,--conf index序号
				},
				[1] = {
					start_time = 1673841601,
					end_time = 1674014400,
					conf =4,--conf index序号
				},
				[2] = {
					start_time = 1674014401,
					end_time = 1674187200,
					conf =5,--conf index序号
				},
				[3] = {
					start_time = 1674187201,
					end_time = 1674446400,
					conf =2,--conf index序号
				},
				[4] = {
					start_time = 1674446401,
					end_time = 1674619200,
					conf =3,--conf index序号
				},
				[5] = {
					start_time = 1674619201,
					end_time = 1674792000,
					conf =3,--conf index序号
				},
				[6] = {
					start_time = 1674792001,
					end_time = 1675051200,
					conf =4,--conf index序号
				},
				[7] = {
					start_time = 1675051201,
					end_time = 1675224000,
					conf =5,--conf index序号
				},
				[8] = {
					start_time = 1675224001,
					end_time = 1675396800,
					conf =2,--conf index序号
				},
				[9] = {
					start_time = 1675396801,
					end_time = 1675656000,
					conf =3,--conf index序号
				},
				[10] = {
					start_time = 1675656001,
					end_time = 1675828800,
					conf =4,--conf index序号
				},
				[11] = {
					start_time = 1675828801,
					end_time = 1676001600,
					conf =5,--conf index序号
				},
				[12] = {
					start_time = 1676001601,
					end_time = 1676260800,
					conf =2,--conf index序号
				},
			},
			["def"] =
			{
				conf = 99, --默认奖励序号
			},

			["conf"] = {
				[99] =  --默认奖励类型
				{
					['award'] ={
						[1] = {1,20456},
						[2] = {2, 21715},
						[3] = {3, 845},
						[4] = {4, 12963},
						[5] = {5, 12832},
						},
					['opentype'] = 99,
				},
				[2] = {	
					['award'] ={
						[1] = {8,248161},
						[2] = {15, 248162},
						[3] = {25, 248163},
						[4] = {40, 248164},
						[5] = {60, 248165},
						},
					['opentype'] = 2,--1表示任务是消耗迷你点,2表示任务是观看广告
				},
				[3] = {	
					['award'] ={
						[1] = {60,200361},
						[2] = {100, 200362},
						[3] = {200, 200363},
						[4] = {300, 200364},
						[5] = {500, 200365},
						},
					['opentype'] = 1,--1表示任务是消耗迷你点,2表示任务是观看广告
				},
				[4] = {	
					['award'] ={
						[1] = {60,200381},
						[2] = {100, 200382},
						[3] = {200, 200383},
						[4] = {300, 200384},
						[5] = {500, 200385},
						},
					['opentype'] = 1,--1表示任务是消耗迷你点,2表示任务是观看广告
				},	
				[5] = {	
					['award'] ={
						[1] = {8,200381},
						[2] = {15, 200382},
						[3] = {25, 200383},
						[4] = {40, 200384},
						[5] = {60, 200385},
						},
					['opentype'] = 2,--1表示任务是消耗迷你点,2表示任务是观看广告
				},	
		
			},
			["award"] = {
				[20456] = {itemId=20456,  num=1, level=1, skinId=79,unique=1},
				[21715] = {itemId=21715, num=1, level=1, skinId=79,unique=1},
				[12962] = {itemId=12962, num=1, level=2},
				[12963] = {itemId=12963, num=1, level=2},
				[12851] = {itemId=12851, num=1, level=2},
				[200321] = {itemId=20032, num=5, level=3},
				[200322] = {itemId=20032, num=10, level=3},
				[248161] = {itemId=24816, num=2, level=2},
				[248162] = {itemId=24816, num=3, level=2},
				[248163] = {itemId=24816, num=5, level=2},
				[248164] = {itemId=24816, num=8, level=3},
				[248165] = {itemId=24816, num=10, level=3},
				[248221] = {itemId=24822, num=2, level=2},
				[248222] = {itemId=24822, num=3, level=2},
				[248223] = {itemId=24822, num=5, level=2},
				[248224] = {itemId=24822, num=8, level=3},
				[248225] = {itemId=24822, num=10, level=3},
				[200321] = {itemId=20032, num=2, level=2},
				[200322] = {itemId=20032, num=3, level=2},
				[200323] = {itemId=20032, num=5, level=2},
				[200324] = {itemId=20032, num=8, level=3},
				[200325] = {itemId=20032, num=10, level=3},
				[200361] = {itemId=20036, num=2, level=2},
				[200362] = {itemId=20036, num=3, level=2},
				[200363] = {itemId=20036, num=5, level=2},
				[200364] = {itemId=20036, num=8, level=3},
				[200365] = {itemId=20036, num=10, level=3},
				[200381] = {itemId=20038, num=2, level=2},
				[200382] = {itemId=20038, num=3, level=2},
				[200383] = {itemId=20038, num=5, level=2},
				[200384] = {itemId=20038, num=8, level=3},
				[200385] = {itemId=20038, num=10, level=3},
			},
		},
	},
}