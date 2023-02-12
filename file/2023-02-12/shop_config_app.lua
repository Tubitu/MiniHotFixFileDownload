{
    -- 商城追踪引导弹窗开关
    shop_ad_track = {
        version_min = '0.52.5', -- 当前配置可用的最小版本号
        apiids = "95,96", -- 功能启用的渠道  
        Tracking_Options = 1, -- 1代表打开引导弹窗，0代表关闭弹窗
    },

    -- 定制avatar置顶
    top_avatar = {
        id = {759,760,761,762,763},    --部件ID
        apiids =  "999,110,1",       --置顶功能启用的渠道
        startime = 1615174297,    --置顶开始时间
        endtime = 1617075097,     --置顶结束时间
    },

   skinTags = {
            -----20210220热卖变化
            {
                title = "热卖",
                id = {160,149,150,151,158},
            },

            {
                title = "武侠系列",
                id = {120,21,24,20,46,45,8,13,43,69,23,108,104},
            },

            {

                title = "魔法系列",
                id = {138,139,127,122,130,118,89,105,33,32,41,79,59,107,62},
            },

            {
                title = "迷萌系列",
                id = {85,47,4,3,1,26,60,55,113},
            },


            {
                title = "科幻系列",
                id = {51,48,40,42,44,28,29},
            },

            {
                title = "冒险系列",
                id = {11,18,19,14,17},
            },

            {
                title = "经典",
                id = {16,15},
            },
            {
                title = "巴啦啦小魔仙",
                id = {156,155,154,141,143,144,145},
            },
            {
                title = "精灵梦叶罗丽",
                id = {123,117,116},
            },


         },

    --计费点与渠道ID的映射关系，苹果，华为，官版
    --苹果为分段,完整商品ID=iOS_Product_Pre+iOS_Product_ID
	products_to_fee_id_config = 
	{
		iOS_Product_Pre = 'com.minitech.miniworld.',
		iOS_Product_ID = {         
			monthly1 	= 10001,
			monthly2 	= 10004,  
			monthly3 	= 10007,

		},
		HW_Product_ID = {
			[111] = 10001,     

			[114] = 10004,

			[116] = 10007,
		},
		OFCIAL_Product_ID = {
		}
	},
	
	--充值配置
	shop_recharge = { 

        -- 双倍充值奖励开关配置
        double_reward = {
        
            version_min = '1.0.5', -- 当前配置可用的最小版本号
            apiids =  "95,96",  -- 功能启用的渠道   
            
            --android
            minicoin = {
                {id = 12, open = 0},  -- 指定充值id，open=0表示关闭，1表示开启
                {id = 13, open = 0},
            },  
            -- ios
            minicoin_ios = {
                {id = 1, open = 0},  -- 指定充值id，open=0表示关闭，1表示开启
                {id = 8, open = 0},
            },    
        },
		
		rechargeTags = {
			[1] = {
				ID = 1,
				Name = "50迷你币",
				TWName = "50迷你幣",
				ENName = "50 Mini Coins",
				IconId = 14102,
				Num = 100,
				MiniCoinWithLimit = "",
				Cost = 5,
				Desc = "赠送#c00FF00 50迷你币(限购1次)#n",
				TWDesc = "",
				ENDesc = "",
				Tag = 1,
				PurchaseLimitID = 3,
				BuyNum = 1,
				IsHide = 1,
			},
			[2] = {
				ID = 2,
				Name = "200迷你币",
				TWName = "200迷你幣",
				ENName = "200 Mini Coins",
				IconId = 14104,
				Num = 400,
				MiniCoinWithLimit = "",
				Cost = 20,
				Desc = "赠送#c00FF00 200迷你币(限购1次)#n",
				TWDesc = "",
				ENDesc = "",
				Tag = 1,
				PurchaseLimitID = 1,
				BuyNum = 1,
				IsHide = 1,
			},
			[3] = {
				ID = 3,
				Name = "10迷你币",
				TWName = "10迷你幣",
				ENName = "10 Mini Coins",
				IconId = 14100,
				Num = 10,
				MiniCoinWithLimit = "",
				Cost = 1,
				Desc = "",
				TWDesc = "",
				ENDesc = "",
				Tag = "",
				PurchaseLimitID = "",
				BuyNum = "",
				IsHide = 1,
			},
			[4] = {
				ID = 4,
				Name = "20迷你币",
				TWName = "20迷你幣",
				ENName = "20 Mini Coins",
				IconId = 14101,
				Num = 20,
				MiniCoinWithLimit = "",
				Cost = 2,
				Desc = "",
				TWDesc = "",
				ENDesc = "",
				Tag = "",
				PurchaseLimitID = "",
				BuyNum = "",
				IsHide = 1,
			},
			[5] = {
				ID = 5,
				Name = "50迷你币",
				TWName = "50迷你幣",
				ENName = "50 Mini Coins",
				IconId = 14102,
				Num = 50,
				MiniCoinWithLimit = "",
				Cost = 5,
				Desc = "",
				TWDesc = "",
				ENDesc = "",
				Tag = "",
				PurchaseLimitID = "",
				BuyNum = "",
				IsHide = 1,
			},
			[6] = {
				ID = 6,
				Name = "100迷你币",
				TWName = "100迷你幣",
				ENName = "100 Mini Coins",
				IconId = 14103,
				Num = 100,
				MiniCoinWithLimit = "",
				Cost = 10,
				Desc = "",
				TWDesc = "",
				ENDesc = "",
				Tag = "",
				PurchaseLimitID = "",
				BuyNum = "",
				IsHide = 1,
			},
			[7] = {
				ID = 7,
				Name = "200迷你币",
				TWName = "200迷你幣",
				ENName = "200 Mini Coins",
				IconId = 14104,
				Num = 200,
				MiniCoinWithLimit = "",
				Cost = 20,
				Desc = "",
				TWDesc = "",
				ENDesc = "",
				Tag = "",
				PurchaseLimitID = "",
				BuyNum = "",
				IsHide = 1,
			},
			[8] = {
				ID = 8,
				Name = "500迷你币",
				TWName = "500迷你幣",
				ENName = "500 Mini Coins",
				IconId = 14105,
				Num = 500,
				MiniCoinWithLimit = "",
				Cost = 50,
				Desc = "",
				TWDesc = "",
				ENDesc = "",
				Tag = "",
				PurchaseLimitID = "",
				BuyNum = "",
				IsHide = 1,
			},
			[9] = {
				ID = 9,
				Name = "1000迷你币",
				TWName = "1000迷你幣",
				ENName = "1000 Mini Coins",
				IconId = 14106,
				Num = 2000,
				MiniCoinWithLimit = "",
				Cost = 100,
				Desc = "赠送#c00FF00 1000迷你币(限购1次)#n",
				TWDesc = "",
				ENDesc = "",
				Tag = 1,
				PurchaseLimitID = 2,
				BuyNum = 1,
				IsHide = 1,
			},
			[10] = {
				ID = 10,
				Name = "1000迷你币",
				TWName = "1000迷你幣",
				ENName = "1000 Mini Coins",
				IconId = 14106,
				Num = 1000,
				MiniCoinWithLimit = "",
				Cost = 100,
				Desc = "",
				TWDesc = "",
				ENDesc = "",
				Tag = "",
				PurchaseLimitID = "",
				BuyNum = "",
				IsHide = 1,
			},
			[11] = {
				ID = 11,
				Name = "5000迷你币",
				TWName = "5000迷你幣",
				ENName = "5000 Mini Coins",
				IconId = 14107,
				Num = 5000,
				MiniCoinWithLimit = "",
				Cost = 500,
				Desc = "",
				TWDesc = "",
				ENDesc = "",
				Tag = "",
				PurchaseLimitID = "",
				BuyNum = "",
				IsHide = 1,
			},
			[12] = {
				ID = 12,
				Name = "100迷你币",
				TWName = "100迷你幣",
				ENName = "100 Mini Coins",
				IconId = 14104,
				Num = 200,
				MiniCoinWithLimit = 100,
				Cost = 10,
				Desc = "赠送#c00FF00 100迷你币(限购1次)#n",
				TWDesc = "",
				ENDesc = "",
				Tag = 1,
				PurchaseLimitID = 4,
				BuyNum = 1,
				IsHide = "",
			},
			[13] = {
				ID = 13,
				Name = "1000迷你币",
				TWName = "1000迷你幣",
				ENName = "1000 Mini Coins",
				IconId = 14106,
				Num = 2000,
				MiniCoinWithLimit = 1000,
				Cost = 100,
				Desc = "赠送#c00FF00 1000迷你币(限购1次)#n",
				TWDesc = "",
				ENDesc = "",
				Tag = 1,
				PurchaseLimitID = 5,
				BuyNum = 1,
				IsHide = "",
			},
			[14] = {
				ID = 14,
				Name = "10迷你币",
				TWName = "10迷你幣",
				ENName = "10 Mini Coins",
				IconId = 14100,
				Num = 10,
				MiniCoinWithLimit = "",
				Cost = 1,
				Desc = "",
				TWDesc = "",
				ENDesc = "",
				Tag = "",
				PurchaseLimitID = "",
				BuyNum = "",
				IsHide = "",
			},
			[15] = {
				ID = 15,
				Name = "50迷你币",
				TWName = "50迷你幣",
				ENName = "50 Mini Coins",
				IconId = 14102,
				Num = 55,
				MiniCoinWithLimit = "",
				Cost = 5,
				Desc = "赠送5迷你币",
				TWDesc = "贈送5迷你幣",
				ENDesc = "A gift of 5 Mini Coins",
				Tag = "",
				PurchaseLimitID = "",
				BuyNum = "",
				IsHide = "",
			},
			[16] = {
				ID = 16,
				Name = "250迷你币",
				TWName = "250迷你幣",
				ENName = "250 Mini Coins",
				IconId = 14104,
				Num = 280,
				MiniCoinWithLimit = "",
				Cost = 25,
				Desc = "赠送30迷你币",
				TWDesc = "贈送30迷你幣",
				ENDesc = "A gift of 30 Mini Coins",
				Tag = "",
				PurchaseLimitID = "",
				BuyNum = "",
				IsHide = "",
			},
			[17] = {
				ID = 17,
				Name = "500迷你币",
				TWName = "500迷你幣",
				ENName = "500 Mini Coins",
				IconId = 14105,
				Num = 580,
				MiniCoinWithLimit = "",
				Cost = 50,
				Desc = "赠送80迷你币",
				TWDesc = "贈送80迷你幣",
				ENDesc = "A gift of 80 Mini Coins",
				Tag = "",
				PurchaseLimitID = "",
				BuyNum = "",
				IsHide = "",
			},
		}
    },

    -- 新增配置在此备注上一行插入，注意格式对齐

}