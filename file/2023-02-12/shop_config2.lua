{

 -- 商城-仓库反外挂需求开关
    Shop_ExtractItem_Switch = {
        version_min = '1.12.0', -- 最小版本号 
        apiids_no = '9999' -- 不开启的渠道
		--apiids = '9999'
    },

--皮肤详情页跳转按钮
SkinDetailsPageJump={
		

    [255]={  --皮肤id 以下按钮配置只会在这个皮肤的详情页生效
         start_time = "2022/07/21 10:00:00",--上线时间
         end_time = "2022/10/03 23:59:59",--下线时间
         title = "了解详情",--按钮上的文字
         version_min ="1.15.0", --填版本号
         apiids_no =  "52,21,3,34,36",--填渠道号
         action = 99,--全局跳转id
         action_url = "https://xgfe.snssdk.com/lvfe/activity/goofy/mini/main?enter_from=miniworld&position=channel&hide_back_btn=true&openBrowser=1&portrait=1",
 },
    [256]={  --皮肤id 以下按钮配置只会在这个皮肤的详情页生效
         start_time = "2022/07/21 10:00:00",--上线时间
         end_time = "2022/10/03 23:59:59",--下线时间
         title = "了解详情",--按钮上的文字
         version_min ="1.15.0", --填版本号
         apiids_no =  "52,21,3,34,36",--填渠道号
         action = 99,--全局跳转id
         action_url = "https://xgfe.snssdk.com/lvfe/activity/goofy/mini/main?enter_from=miniworld&position=channel&hide_back_btn=true&openBrowser=1&portrait=1",
 },
    [222]={  --皮肤id 以下按钮配置只会在这个皮肤的详情页生效
         start_time = "2022/07/21 10:00:00",--上线时间
         end_time = "2021/08/31 23:59:59",--下线时间
         title = "购票领皮肤",--按钮上的文字
         version_min ="1.15.0", --填版本号
         apiids_no =  "45,52,21,3,34",--填渠道号
         action = 99,--全局跳转id
         action_url = "https://activity-oss.zmaxfilm.com/bank/hy-gameSkin/index.html#/index?activityId=515&openBrowser=1",
 },
    [223]={  --皮肤id 以下按钮配置只会在这个皮肤的详情页生效
         start_time = "2022/07/21 10:00:00",--上线时间
         end_time = "2021/08/31 23:59:59",--下线时间
         title = "购票领皮肤",--按钮上的文字
         version_min ="1.15.0", --填版本号
         apiids_no =  "45,52,21,3,34",--填渠道号
         action = 99,--全局跳转id
         action_url = "https://activity-oss.zmaxfilm.com/bank/hy-gameSkin/index.html#/index?activityId=515&openBrowser=1",
 },
},

	-- 针对渠道设置某个充值档位展示或不展示
    Shop_RechargeApiidLimit_Switch = {
        -- 充值挡位限制为key
		[12] = {
            version_min = '1.12.4', -- 最小版本号 
            --apiids_no = '9999,7,13',        --  对应的渠道关闭限制条件，展示充值档位
            apiids = '1,110',         --  对应的渠道开启限制条件，不展示充值档位
        },
        [13] = {
            version_min = '1.15.0', -- 最小版本号 
            --apiids_no = '1,7,13,36,121,58,110,69,2,101',        --  对应的渠道关闭限制条件，展示充值档位
            apiids = '1,110',         --  对应的渠道开启限制条件，不展示充值档位
        },
		[18] = {
            version_min = '1.12.4', -- 最小版本号 
            --apiids_no = '9999,7,13',        --  对应的渠道关闭限制条件，展示充值档位
            apiids = '9999,45,101',         --  对应的渠道开启限制条件，不展示充值档位
        },
		[19] = {
            version_min = '1.15.0', -- 最小版本号 
            --apiids_no = '1,7,13,36,121,58,110,69,2,101',        --  对应的渠道关闭限制条件，展示充值档位
            apiids = '9999,45,101',         --  对应的渠道开启限制条件，不展示充值档位
        },
		[41] = {
            version_min = '1.20.10', -- 最小版本号 
            --apiids_no = '1,7,13,36,121,58,110,69,2,101',        --  对应的渠道关闭限制条件，展示充值档位
            apiids = '9999,45',         --  对应的渠道开启限制条件，不展示充值档位
        },
		[42] = {
            version_min = '1.20.10', -- 最小版本号 
            --apiids_no = '1,7,13,36,121,58,110,69,2,101',        --  对应的渠道关闭限制条件，展示充值档位
            apiids = '9999,45',         --  对应的渠道开启限制条件，不展示充值档位
        },
		[43] = {
            version_min = '1.20.10', -- 最小版本号 
            --apiids_no = '1,7,13,36,121,58,110,69,2,101',        --  对应的渠道关闭限制条件，展示充值档位
            apiids = '9999,45',         --  对应的渠道开启限制条件，不展示充值档位
        },
		[31] = {
            version_min = '1.20.10', -- 最小版本号 
            apiids_no = '1,7,36,110',        --  对应的渠道关闭限制条件，展示充值档位
            --apiids = '9999,45',         --  对应的渠道开启限制条件，不展示充值档位
        },
		[32] = {
            version_min = '1.20.10', -- 最小版本号 
            --apiids_no = '1,7,13,36,121,58,110,69,2,101',        --  对应的渠道关闭限制条件，展示充值档位
            --apiids = '9999,45',         --  对应的渠道开启限制条件，不展示充值档位
        },
		[33] = {
            version_min = '1.20.10', -- 最小版本号 
            --apiids_no = '1,7,13,36,121,58,110,69,2,101',        --  对应的渠道关闭限制条件，展示充值档位
            --apiids = '9999,45',         --  对应的渠道开启限制条件，不展示充值档位
        },
		
    },

 -- 计费点与渠道ID的映射关系，苹果，华为，官版微信
    -- 苹果为分段,完整商品ID=iOS_Product_Pre+iOS_Product_ID
    products_to_fee_id_config = {
        iOS_Product_Pre = "com.minitech.miniworld.",
        iOS_Product_ID = {
            monthly_01 = 10001,
            monthly_02 = 10004,
            monthly_03 = 10007,
            mini_vip_month01 = 1011,
            mini_vip_quarter01 = 1012,
            mini_vip_halfyear01 = 1013,
            mini_vip_year01 = 1014
        },
        HW_Product_ID = {
            [111] = 10001,
            [114] = 10004,
            [116] = 10007,
            [1011] = 1011,
            [1012] = 1012,
            [1013] = 1013,
            [1014] = 1014
        },
        OFCIAL_Product_ID = {}
    },



-- 会员配置
    VipSystemConfig = {
        -- 会员直购
        DirectPurchase = {
            version_min = '1.13.0', -- 最小版本号 
             apiids = '1,2,7,12,13,21,36,45,999', -- 开启的渠道 
        },
        -- 会员订阅
        Subscription = {
            version_min = '9.11.0', -- 最小版本号 
            apiids = '7,45,999', -- 开启的渠道 
            agreement_url = "https://www.mini1.cn/article/20210622/1845.html", -- 自动续费协议的跳转链接
            remind_day = 7 -- 到期提醒弹窗提前时间
        },
        -- 会员特权
        Privilege = {
            headframeID = 33046, -- 头像框ID
            chatbubbleID = 1, -- 聊天气泡框ID
            manskinID = 193, -- 男皮肤
            womanskinID = 192 -- 女皮肤或保密
        },
        -- 赠送索要
        Open_vipgift = { -- 迷你大会员赠送开关
            apiids_no = "9999",
            version_min = "1.13.0",
            register_time_len = 0, -- 注册时间长度，单位天数7
            friend_days_limit = 0, -- 成为好友天数5
            demand_limit = 10, -- 每日索要次数限制10
            demand_same_friend_limit = 5, -- 每日向同一个好友索要次数限制5
            hide_demand = 7 -- 拒绝并屏蔽好友索要时间长度
        }
    },


 -- 迷你潮玩银享卡开关        
    mini_yinxiang = {
        -- 季卡包开关及链接
        [1] = {
            url = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.19cd687d2hI9fv&id=674769635226",
            open = 1 -- 0关闭1开启
        },
        -- 季卡补充包开关及链接
        [2] = {
            url = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.19cd687d2hI9fv&id=674769635226",
            open = 1 -- 0关闭1开启
        },
        -- 半年包开关及链接
        [3] = {
            url = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.19cd687d2hI9fv&id=674769635226",
            open = 1 -- 0关闭1开启
        },
        version_min = "1.13.0", -- 最小版本号
        apiids_no = "52,21,45,121,2,58,55,15" -- 关闭的渠道
    },

 -- 皮肤语音配置
    skinVoiceDeltaTime =30,  --皮肤通用语音间隔时间


    -- 武器库显示总开关
    shop_WeaponSkin_Switch = {
        switch = 1,                          -- 功能开关：1开启，0关闭 
        version_min       = '1.8.0',         -- 最小版本号 
        apiids_no       = '9999',          -- 开启的渠道 
        },
        
    -- 商店分类栏及武器库UI样式
    shop_WeaponSkin_UIStyle = {
        switch = 1,                          -- 功能开关：1开启=新，0关闭=旧
        version_min       = '1.7.0',         -- 最小版本号 
        --apiids            = '1,110,999,12,2,21,7,13,36,35,45',         -- 开启的渠道
		apiids_no ='9999',
        },
 
    -- 新扭蛋开关及扭蛋UI顺序
    shop_ShopGashaponOrder = {
        switch = 1, -- 功能开关：1开启=新，0关闭=旧
        version_min = '1.13.0', -- 最小版本号 
		button_order ='2,1,3', -- 1筑梦礼盒，2星辉礼盒，3坐骑抽卡机
        -- apiids = '1,45,999' -- 开启的渠道
		apiids_no ='9999',
    },


 -- 联通免流量入口按钮开关配置
        unlimited_data = {
        
            version_min = '1.22.0', -- 当前配置可用的最小版本号
            apiids_no=  "58,116,129,128,113,112,102,125,126,127,110,124,123,199,109,122,121,101,100,21",  -- 功能启用的渠道   
            url = "s4_https://h5.mini1.cn/act/c5m/free-flow/?portrait=1",
            title = "每日加赠三重礼",
        },

    -- 移动免流量入口按钮开关配置
    unlimited_data_10086 = {

        version_min = '1.12.3', -- 当前配置可用的最小版本号
        apiids_no = "58,21,116,129,128,113,112,102,125,126,127,110,124,123,199,109,122,121,101,100,21", -- 功能启用的渠道   
        url = "https://dev.coc.10086.cn/coc/web2/shunt/?pageId=1551883281319145472&channelId=P00000012113&portrait=1",
        title = "抽奖机会月月送",
    },
    -- 免流量入口总按钮开关配置
    unlimited_data_all = {

        version_min = '1.12.3', -- 当前配置可用的最小版本号
        apiids_no=  "58,116,129,128,113,112,102,125,126,127,110,124,123,199,109,122,121,101,100,21",  -- 功能启用的渠道   
    },



-- 商城追踪引导弹窗开关
    shop_ad_track = {
        version_min = '1.0.5', -- 当前配置可用的最小版本号
        apiids = "999,45,345", -- 功能启用的渠道  
        Tracking_Options =1, -- 1代表打开引导弹窗，0代表关闭弹窗
    },

    --以下是原ns_version的
    PieceRedDay = 1,    --碎片页签红点频率
    ShopRedDay = 1,     --商城红点频率
    DressRedDay = 1,    --装扮页签红点
    AvatarRedDay = 1,   --Avatar页签红点
    RecharRedDay = 0,   --充值页签红点
    SaleRedDay = 1,     --特惠页签红点
    friend_pay = {
        apiids = "1,110,13,999"
    },  --好友代付


           skin_limit_conf = {                    --装扮换装限制
		   		[114]={
 		  				skin_limit_have = {21},    --换装前置条件，原皮肤解锁才有购买新皮肤的资格，可填写多个前置ID
                        costminicon = 468,        
                        headframe = 20289,   
					},  
		   		[142]={
 		  				skin_limit_have = {37},    --换装前置条件，原皮肤解锁才有购买新皮肤的资格，可填写多个前置ID
                        costminicon = 468,        
                        headframe = 33025,     

					},

			},
						--首充福利
			recharge_reward = {
		        first = {			--首充
 		           limit = 1,
 		           items = {{12831,1},{20292,1},{27003,1}},
         		   ShowType = 1,
         		   ShowItem = 121,
         		   ShowItemIcon = 27003,
        },
		        second = {			--续充
 		           limit = 288,
 		           items = {{12964,2},{22503,1},{22502,1},{22501,1}},
         		   ShowType = 2,
         		   ShowItem = {906,907,908},
         		   ShowItemIcon = 22501,
				},
					},

	share_cfg = {
		switch = 1,                                          --界面开关1开启，0关闭
		version_min='0.53.5',                         		--最小版本号
		apiids = '1,110,999,45,79,81,65,71,74,73,72,70,68,67,63,112,113,78,80,82,83,84,92,95,96,93,97',                           		--开启的渠道
		--apiids_no = '101',                               	--关闭的渠道
		picture1="https://image.mini1.cn/c/20210329/672f8ef96eea2612cc6747d3ec48adf2.png",    --周1分享图，后面填图片名称
		picture2="https://image.mini1.cn/c/20210329/f6d504f9acdcdd6ae0ec9b9eb56fd470.png",     --周2分享图
		picture3="https://image.mini1.cn/c/20210407/1d4294026f24ed4d9a3f97590b906ff7.png",     --周3分享图
		picture4="https://image.mini1.cn/c/20210415/84177a0417259f30925a5c152234fdd4.png",         --周4分享图
		picture5="https://image.mini1.cn/c/20210415/84177a0417259f30925a5c152234fdd4.png",          --周5分享图
		picture6="https://image.mini1.cn/c/20210415/84177a0417259f30925a5c152234fdd4.png",            --周6分享图
		picture7="https://image.mini1.cn/c/20210415/84177a0417259f30925a5c152234fdd4.png",          --周日分享图
		Title_picture="https://image.mini1.cn/c/20210323/b1c5e83f00d925613021bd1673b08ec6.png",      --主题图片，填图片ID
		reset=1,                                            --活动重置，0为不重置，1为每周重置，2为每月重置
		reward={
			ad_apiids = "1,999,45,79,81,65,71,74,73,72,70,68,67,63,78,80,82,83,84,92,95,96,93,97",                         --广告按钮，填写开启这个页面，且需要开启广告按钮渠道
			ad_max = 3,                                     --每天最高广告次数
			ad_reward = {12851,1} ,            			--广告奖励{道具ID，数量}
			share_first = 1,                                --首次分享按钮1开启，0关闭
			share_firest_word1= 71006,                      --首次分享气泡文字，stringid
			share_first_reward = {10000,30}, 			    --首次分享奖励{道具ID，数量}
			accumulation = {
			[1] = {1,10000,20},                     --累计奖励{天数，道具ID，数量}
			[2] = {3,12961,1},                     --累计奖励{天数，道具ID，数量}
			[3] = {5,12964,1},                     --累计奖励{天数，道具ID，数量}
			[4] = {7,20036,5},                     --累计奖励{天数，道具ID，数量}
			},
		},
           tag_string = 71026,                            --tag文本
           sum1_string = 71027,                            --累计1天string
           sum2_string = 71028,                            --累计3天string
           sum3_string = 71029,                            --累计5天string
           sum4_string = 71030,                            --累计7天string
	},

	newplay_welfare = { 
			title_ruler = 71039,  --规则弹窗标题 
     		content_ruler = 71040, --规则内容 
     		tag = 1,                         --小标签1代表热2代表新
     		version_min = "0.53.5",         --最小版本号 
     		apiids = "",            --参与活动的渠道
            --apiids_no = "1,2,3",            --不参与活动的渠道
 			switch_apiids_no = "10",         --主界面入口是否打开,配置上的是关
     		first_all = 1,                  --活动开启时是否全员参与，参与的才能看到入口，两个入口都要 
     		start_time = 1617933600,        --展示时间  
     		end_time = 1744164000,   
     		days = 9,                                                      --新手时间 
            new_apiids = "",                                          --新版参与活动的渠道
			new_apiid_cfg = {
    		[10] = {starttime = 1617933600, days=9},
            [34] = {starttime = 1617933600, days=9},
            [1] = {starttime = 1617933600, days=9},
            [110] = {starttime = 1617933600, days=9},
            [999] = {starttime = 1617933600, days=9},
            [45] = {starttime = 1617933600, days=9},
            [79] = {starttime = 1617933600, days=9},
            [81] = {starttime = 1617933600, days=9},
            [65] = {starttime = 1617933600, days=9},
            [71] = {starttime = 1617933600, days=9},
            [74] = {starttime = 1617933600, days=9},
            [73] = {starttime = 1617933600, days=9},
            [72] = {starttime = 1617933600, days=9},
            [70] = {starttime = 1617933600, days=9},
            [68] = {starttime = 1617933600, days=9},
            [67] = {starttime = 1617933600, days=9},
            [63] = {starttime = 1617933600, days=9},
            [112] = {starttime = 1617933600, days=9},
            [113] = {starttime = 1617933600, days=9},
            [78] = {starttime = 1617933600, days=9},
            [80] = {starttime = 1617933600, days=9},
            [82] = {starttime = 1617933600, days=9},
            [83] = {starttime = 1617933600, days=9},
            [84] = {starttime = 1617933600, days=9},
            [92] = {starttime = 1617933600, days=9},
            [95] = {starttime = 1617933600, days=9},
            [96] = {starttime = 1617933600, days=9},
            [93] = {starttime = 1617933600, days=9},
            [97] = {starttime = 1617933600, days=9}                         --新版渠道开启时间
			},
			default_starttime = 1623588810,                                --新版默认开启时间
     		skin_discount = { 
							  {11,198,9}, 
                              {14,198,9}, 
							  {17,198,9},
							  {48,268,9},  
                              {8,228,9}, 
                              {13,358,9}, 
 							  {44,268,9},                                 --装扮与价格与天数
							  {29,268,9}, 
                              {28,398,9}, 
                              {19,198,9}, 						  
     		}, 
     		power = 1,            --每天首次登陆强弹，填0为不强弹 
     		title = 71014,        --新手福利标题，stringid(特权说明) 
	 		tag_title = 71015,    --标签页标题
     		title_all = 71016,    --老用户标题 
     		content1 = 71017,     --新手福利小tips，stringid(特权说明) 
     		content2 = 71018,     --新手福利小tips，stringid(特权说明) 
	 		content3 = 71019,     --新手福利小tips，stringid(特权说明) 
     		content4 = 71020,     --新手福利小tips，stringid(特权说明) 
     		lasttingtime = 71021,  --标题剩余时间字段 
     		content_all1 = 71022,  --老用户内容 
     		content_all2 = 71023,  --老用户内容
     		content_all3 = 71024,  --老用户内容  
     		content_all4 = 71025,  --老用户内容 
	},

top_avatar = {
        id = {759,760,761,762,763},    --部件ID
        apiids_no =  "9999",       --置顶功能启用的渠道
        startime = 1616654503,    --置顶开始时间
        endtime = 1617811199,     --置顶结束时间
            },


	ItemSelect = {       --道具选择
				[1] = {
					ItemID = 49005,
					version_min = "0.52.0",
					LimitNum = 1,
					GenItems = {
						{20032,3},
						{20038,3},
						{20036,3},
						{24802,3},
						{24807,3},
						{24810,3},
						},
					},
				[2] = {
					ItemID = 140002,
					version_min = "0.52.0",
					LimitNum = 2,
					GenItems = {
						{20436,1,0,59},
						{20434,1,0,57},
						{20447,1,0,70},
						{20454,1,0,77},
						{20481,1,0,103},
						},
					},
		},


	-- 皮肤详情页：皮肤专属地图配置
	skin_self_map_config = {
		version_min = "1.99.0",
		apiids = "9999",
		map_config = {
			-- 皮肤id, mapId:专属地图id, mapOwner:专属地图作者uin
			[119] = { mapId = 2590170846586, mapOwner = 305567098}, 
			
		}
	},

	-- 皮肤详情页：皮肤专属周边
	skin_self_product = {
		version_min = "1.1.0",
		apiids_no = "9999",
		product_config = {
			-- id:皮肤id, picUrl:专属周边图片url地址, picId:专属周边图片id,点击图片跳转至对应的周边产品url
		   [9] = { picUrl = "https://img.alicdn.com/imgextra/i2/2208026037173/O1CN01VHPfBy22rHfFN67Ue_!!2208026037173.jpg",productUrl = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.7187687dZiy3wj&id=617547576466&sku_properties=134942334:28383"},
		   [12] = { picUrl = "https://img.alicdn.com/imgextra/i3/2208026037173/O1CN01YSsIWu22rHfEXWm1t_!!2208026037173.jpg",productUrl = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.7187687dZiy3wj&id=620334291921&sku_properties=134942334:28383"},
		   [21] = { picUrl = "https://img.alicdn.com/imgextra/i2/2208026037173/O1CN018AXf6022rHfAJuYPY_!!2208026037173.jpg",productUrl = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.7187687dZiy3wj&id=618322970624&sku_properties=21433:50909"},
		   [22] = { picUrl = "https://img.alicdn.com/imgextra/i2/2208026037173/O1CN01vK8T3b22rHf9J8UpL_!!2208026037173.jpg",productUrl = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.7187687dZiy3wj&id=618375418804&sku_properties=134942334:28383"},
		   [24] = { picUrl = "https://img.alicdn.com/imgextra/i3/2208026037173/O1CN01GiZxre22rHfG2QRT6_!!2208026037173.jpg",productUrl = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.7187687dZiy3wj&id=624105861710&sku_properties=21433:50909"},
		   [25] = { picUrl = "https://img.alicdn.com/imgextra/i4/2208026037173/O1CN01wxtKRX22rHf9J7M6N_!!2208026037173.jpg",productUrl = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.7187687dZiy3wj&id=619803173320&skuId=4378254812518"},
		   [29] = { picUrl = "https://img.alicdn.com/imgextra/i2/2208026037173/O1CN015Z8OU522rHfFN77tK_!!2208026037173.jpg",productUrl = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.7187687dZiy3wj&id=628050236501&sku_properties=21433:50909"},
		   [30] = { picUrl = "https://img.alicdn.com/imgextra/i3/2208026037173/O1CN01rJQfai22rHf8lYaDr_!!2208026037173.jpg",productUrl = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.7187687dZiy3wj&id=617840848264&sku_properties=21433:50909"},
		   [37] = { picUrl = "https://img.alicdn.com/imgextra/i4/2208026037173/O1CN017KNgd022rHfDqc6Gt_!!2208026037173.jpg",productUrl = "https://detail.tmall.com/item.htm?spm=a1z10.5-b.w4011-22747512236.209.1fc742a2FaS3zw&id=631287719279&rn=c0db99d9961078e179b5f533c657e41e&abbucket=10&sku_properties=21433:3224555"},
		   [51] = { picUrl = "https://img.alicdn.com/imgextra/i3/2208026037173/O1CN01O3SBiZ22rHf4n5meN_!!2208026037173.jpg",productUrl = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.7187687dZiy3wj&id=632414928287&skuId=4520497501380"},
		   [60] = { picUrl = "https://img.alicdn.com/imgextra/i1/2208026037173/O1CN01g9u57l22rHf9J75XP_!!2208026037173.jpg",productUrl = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.7187687dZiy3wj&id=618647191239&sku_properties=134942334:28383"},
		   [34] = { picUrl = "https://img.alicdn.com/imgextra/i4/2208026037173/O1CN01aHPKyg22rHf6DJ9jF_!!2208026037173.jpg",productUrl = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.7187687dZiy3wj&id=618374974788&sku_properties=134942334:28383"},
		   [35] = { picUrl = "https://img.alicdn.com/imgextra/i4/2208026037173/O1CN01aHPKyg22rHf6DJ9jF_!!2208026037173.jpg",productUrl = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.7187687dZiy3wj&id=618374974788&sku_properties=134942334:28383"},
		   [36] = { picUrl = "https://img.alicdn.com/imgextra/i4/2208026037173/O1CN01aHPKyg22rHf6DJ9jF_!!2208026037173.jpg",productUrl = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.7187687dZiy3wj&id=618374974788&sku_properties=134942334:28383"},
		   [3] = { picUrl = "https://image.mini1.cn/d/20210605/78dfbdd3f2c6035faeaf386cb399d5a7.png",productUrl = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.7187687dZiy3wj&id=628455109883&sku_properties=134942334:28383"},
		   [5] = { picUrl = "https://image.mini1.cn/d/20210605/78dfbdd3f2c6035faeaf386cb399d5a7.png",productUrl = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.7187687dZiy3wj&id=628455109883&sku_properties=134942334:28383"},
		   [16] = { picUrl = "https://image.mini1.cn/d/20210605/78dfbdd3f2c6035faeaf386cb399d5a7.png",productUrl = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.7187687dZiy3wj&id=628455109883&sku_properties=134942334:28383"},
		   [59] = { picUrl = "https://image.mini1.cn/d/20210605/78dfbdd3f2c6035faeaf386cb399d5a7.png",productUrl = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.7187687dZiy3wj&id=628455109883&sku_properties=134942334:28383"},
		   [28] = { picUrl = "https://img.alicdn.com/imgextra/i3/2208026037173/O1CN01MjsPuH22rHfBTB8lG_!!2208026037173.jpg",productUrl = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.7187687dZiy3wj&id=620071434938&sku_properties=134942334:28383"},
		   [29] = { picUrl = "https://img.alicdn.com/imgextra/i3/2208026037173/O1CN01MjsPuH22rHfBTB8lG_!!2208026037173.jpg",productUrl = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.7187687dZiy3wj&id=620071434938&sku_properties=134942334:28383"},
		   [42] = { picUrl = "https://img.alicdn.com/imgextra/i3/2208026037173/O1CN01MjsPuH22rHfBTB8lG_!!2208026037173.jpg",productUrl = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.7187687dZiy3wj&id=620071434938&sku_properties=134942334:28383"},
		   [48] = { picUrl = "https://img.alicdn.com/imgextra/i3/2208026037173/O1CN01MjsPuH22rHfBTB8lG_!!2208026037173.jpg",productUrl = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.7187687dZiy3wj&id=620071434938&sku_properties=134942334:28383"},
		   [52] = { picUrl = "https://img.alicdn.com/imgextra/i2/2208026037173/O1CN01cUmuqT22rHf9J60uy_!!2208026037173.jpg",productUrl = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.7187687dZiy3wj&id=646761155504&sku_properties=134942334:28316"},
		   [53] = { picUrl = "https://img.alicdn.com/imgextra/i2/2208026037173/O1CN01cUmuqT22rHf9J60uy_!!2208026037173.jpg",productUrl = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.7187687dZiy3wj&id=646761155504&sku_properties=134942334:28316"},
		   [58] = { picUrl = "https://img.alicdn.com/imgextra/i2/2208026037173/O1CN01cUmuqT22rHf9J60uy_!!2208026037173.jpg",productUrl = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.7187687dZiy3wj&id=646761155504&sku_properties=134942334:28316"},
		   [64] = { picUrl = "https://img.alicdn.com/imgextra/i2/2208026037173/O1CN01cUmuqT22rHf9J60uy_!!2208026037173.jpg",productUrl = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.7187687dZiy3wj&id=646761155504&sku_properties=134942334:28316"},
		   [1] = { picUrl = "https://img.alicdn.com/imgextra/i2/2208026037173/O1CN01zQLh6122rHfGmNUMs_!!2208026037173.jpg",productUrl = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.7187687dZiy3wj&id=630337608544&sku_properties=134942334:28383"},
		   [4] = { picUrl = "https://img.alicdn.com/imgextra/i2/2208026037173/O1CN01zQLh6122rHfGmNUMs_!!2208026037173.jpg",productUrl = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.7187687dZiy3wj&id=630337608544&sku_properties=134942334:28383"},
		   [47] = { picUrl = "https://img.alicdn.com/imgextra/i2/2208026037173/O1CN01zQLh6122rHfGmNUMs_!!2208026037173.jpg",productUrl = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.7187687dZiy3wj&id=630337608544&sku_properties=134942334:28383"},
		   [60] = { picUrl = "https://img.alicdn.com/imgextra/i2/2208026037173/O1CN01zQLh6122rHfGmNUMs_!!2208026037173.jpg",productUrl = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.7187687dZiy3wj&id=630337608544&sku_properties=134942334:28383"},
		   [63] = { picUrl = "https://img.alicdn.com/imgextra/i2/2208026037173/O1CN01zQLh6122rHfGmNUMs_!!2208026037173.jpg",productUrl = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.7187687dZiy3wj&id=630337608544&sku_properties=134942334:28383"},
		   [83] = { picUrl = "https://img.alicdn.com/imgextra/i2/2208026037173/O1CN01zQLh6122rHfGmNUMs_!!2208026037173.jpg",productUrl = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.7187687dZiy3wj&id=630337608544&sku_properties=134942334:28383"},
		   [84] = { picUrl = "https://img.alicdn.com/imgextra/i2/2208026037173/O1CN01zQLh6122rHfGmNUMs_!!2208026037173.jpg",productUrl = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.7187687dZiy3wj&id=630337608544&sku_properties=134942334:28383"},
		   [2] = { picUrl = "https://img.alicdn.com/imgextra/i4/2208026037173/O1CN01ux1lfi22rHf5Odb9d_!!2208026037173.jpg",productUrl = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.7187687dZiy3wj&id=638184516867&sku_properties=134942334:28316"},
		   [12] = { picUrl = "https://img.alicdn.com/imgextra/i4/2208026037173/O1CN01ux1lfi22rHf5Odb9d_!!2208026037173.jpg",productUrl = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.7187687dZiy3wj&id=638184516867&sku_properties=134942334:28316"},
		   [13] = { picUrl = "https://img.alicdn.com/imgextra/i4/2208026037173/O1CN01ux1lfi22rHf5Odb9d_!!2208026037173.jpg",productUrl = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.7187687dZiy3wj&id=638184516867&sku_properties=134942334:28316"},
		   [25] = { picUrl = "https://img.alicdn.com/imgextra/i4/2208026037173/O1CN01ux1lfi22rHf5Odb9d_!!2208026037173.jpg",productUrl = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.7187687dZiy3wj&id=638184516867&sku_properties=134942334:28316"},
		   [38] = { picUrl = "https://img.alicdn.com/imgextra/i4/2208026037173/O1CN01ux1lfi22rHf5Odb9d_!!2208026037173.jpg",productUrl = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.7187687dZiy3wj&id=638184516867&sku_properties=134942334:28316"},
		   [102] = { picUrl = "https://img.alicdn.com/imgextra/i4/2208026037173/O1CN01ux1lfi22rHf5Odb9d_!!2208026037173.jpg",productUrl = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.7187687dZiy3wj&id=638184516867&sku_properties=134942334:28316"},
		   [114] = { picUrl = "https://img.alicdn.com/imgextra/i2/2208026037173/O1CN018AXf6022rHfAJuYPY_!!2208026037173.jpg",productUrl = "https://detail.tmall.com/item.htm?spm=a212k0.12153887.0.0.7187687dZiy3wj&id=618322970624&sku_properties=21433:50909"},
		}
	},






	--我的家园背景
	HomePicture_url="https://webpicture.mini1.cn/20230118/17261908f26f57-e5e4-2690-d3fe-a4dc89eb86ae.png",
	--迷你工坊背景
	WorkshopPicture_url="https://webpicture.mini1.cn/20230118/1726198e94f4dc-eb0b-6af1-e9ce-4c5351114e0e.png",






-- avatar 特权卡相关配置
	avatar_vip_cfg = {
		notAvailable_Avatar_type = {1,3,4,5,6,7},  
		notAvailable_Avatar_ID = { 887,888,889 },
		AvatarVIP_cost  = 188,
		AvatarVIP_Renew = 1,
		AvatarVIP_Apiids = {1,2,3,7,8,11,12,13,15,21,32,36,45,49,101,121,122,65,71,74,73,72,70,68,67,63,110,112,113,78,79,80,81,82,83,84,92,93,95,96,97,56,58,6,9,10,14,17,34,35,38,39,41,42,47,50,999,109,303,126,89,102,87,129,116,299,117,118,52,55,57,992,119,28},
		AvatarVIP_version_min = "0.50.0",
	},


-- battlepass 提醒功能
        BattlepassNotice = {
                upgrade_popup_open = 1,                                -- 升级弹窗，为0时关闭，为1时打开
                upgrade_popup_times = 1,                        -- 升级弹窗频率，x为每x级弹1次

                -- 奖励提醒邮件
                reward_mail = {
                        switch = 1,                                                -- 邮件开关，为0时关闭，为1时打开
                        -- apiids = '1,2,999',                        -- 不配置时不限制渠道，配置为空时对任何渠道均关闭，配置部分渠道进展示部分渠道
                        maxnum = 3,                                                -- 赛季内邮件上限
                        interval = 10,                                        -- 邮件间隔时间，天
                        notakeday = 7,                                        -- 距离上次领奖励之后多久触发通知       
                        title = "你有悦享卡奖励待领取！",
                        content = "你在【悦享卡】活动中有未领取奖励，活动结束就无法领取了哦，快去领取吧",
                        jump_to = 35,                                        -- 跳转位置
                        jump_name = "前往领取",                        -- 按钮文案
                }
        },

	-- battlepass 商城配置
	battle_pass_sell = {
		super_uin_list='1366007298,1408313202,1408314123,1408320957,1408321489,1367256945,1408323263,1371895205,1367271547,1367271547,1414744638,1000030452,1416230041,1416592965,1038801780,1416867052,1414743339,1431430712',
		--apiids = '999,101,21,121,49,101,102',
		apiids_no = '97,47,32,109,129,5',
		version_min='1.11.6',
		BPRedDay = 1,	
		eject =0,       --eject值解析：    null or 0：不强弹；    1：每赛季第一次登陆；    2：为每周强弹一次；    3：为每天强弹一次；    4：为每月强弹1次
		Usecheat=0,--1表示启用作弊道具，即测试道具，不配置或0表示关闭测试道具		
	},

	shop_point = {
		{skinid = 61,apiids = {1,2,3,7,8,11,12,13,15,17,18,19,21,32,34,36,45,62,63,64,65,66,68,70,71,72,73,74,75,76,78,79,80,82,83,84,92,93,94,97,58,39,57,10,49,50,96,999},cost=1200, itemid = 20438,tag = 1 ,TabId = 1 ,itemName = '雪球球（永久）' },
		{skinid = 39,apiids = {1,2,3,7,8,11,12,13,15,17,18,19,21,32,34,36,45,62,63,64,65,66,68,70,71,72,73,74,75,76,78,79,80,82,83,84,92,93,94,97,58,39,57,10,49,50,96,999},cost=1200, itemid = 20416,tag = 1 ,TabId = 1 ,itemName = '安吉洛斯（永久）'},
		{skinid = 68,apiids = {1,2,3,7,8,11,12,13,15,17,18,19,21,32,34,36,45,62,63,64,65,66,68,70,71,72,73,74,75,76,78,79,80,82,83,84,92,93,94,97,58,39,57,10,49,50,96,999},cost=1200, itemid = 20445,tag = 1 ,TabId = 1 ,itemName = '电玩少女铃音（永久）'},
		{skinid = 57,apiids = {1,2,3,7,8,11,12,13,15,17,18,19,21,32,34,36,45,62,63,64,65,66,68,70,71,72,73,74,75,76,78,79,80,82,83,84,92,93,94,97,58,39,57,10,49,50,96,999},cost=1200, itemid = 20434,tag = 1 ,TabId = 1 ,itemName = '林千树（永久）'},
		{skinid = 77,apiids = {1,2,3,7,8,11,12,13,15,17,18,19,21,32,34,36,45,62,63,64,65,66,68,70,71,72,73,74,75,76,78,79,80,82,83,84,92,93,94,97,58,39,57,10,49,50,96,999},cost=1200, itemid = 20454,tag = 1 ,TabId = 1 ,itemName = '色彩旅行者达奇（永久）'},
		{skinid = 111,apiids = {1,2,3,7,8,11,12,13,15,17,18,19,21,32,34,36,45,62,63,64,65,66,68,70,71,72,73,74,75,76,78,79,80,82,83,84,92,93,94,97,58,39,57,10,49,50,96,999},cost=1500, itemid = 20492,tag = 1 ,TabId = 1 ,itemName = '橘子（永久）'},
		{skinid = 109,apiids = {1,2,3,7,8,11,12,13,15,17,18,19,21,32,34,36,45,62,63,64,65,66,68,70,71,72,73,74,75,76,78,79,80,82,83,84,92,93,94,97,58,39,57,10,49,50,96,999},cost=1200, itemid = 20487,tag = 1 ,TabId = 1 ,itemName = '临江仙·颂（永久）'},
	},


    -- 通用皮肤跳转配置：根据配置的皮肤id指定某个皮肤跳转到某个功能页面
    SkinJumpConfig = {
        version_min = '1.14.0', -- 最小版本号 
        --apiids_no = '7',        -- 对应的渠道不展示
        -- apiids = '7',        -- 对应的渠道展示
        -- [皮肤id] = { action = 跳转id， title = 配置文字}
        [300] = {
            action = 1002,
            title = "前往筑梦礼盒"
        },--芒果
        [307] = {
            action = 1003,
            title = "前往星辉礼盒"
        },--花仙

        [298] = {
            action = 1019,
            title = "前往积分商城"
        },--龙纳斯
        [297] = {
            action = 1019,
            title = "前往积分商城"
        },--佩露
        [288] = {
            action = 1002,
            title = "前往筑梦礼盒"
        },--冰雪
        [284] = {
            action = 1002,
            title = "前往筑梦礼盒"
        },--栗子
        [64] = {
            action = 31,
            title = "前往特惠礼包"
        },--红蜘蛛
        [74] = {
            action = 31,
            title = "前往特惠礼包"
        },--钢锁
        [270] = {
            action = 1002,
            title = "前往筑梦礼盒"
        },--咕咚
        [121] = {
            action = 1010,
            title = "前往获取"
        },--妙妙
        [186] = {
            action = 1003,
            title = "前往星辉礼盒"
        },--雪莉
        [30] = {
            action = 1002,
            title = "前往筑梦礼盒"
        },--柳仙儿
        [270] = {
            action = 1002,
            title = "前往筑梦礼盒"
        },--咕咚
        [269] = {
            action = 1003,
            title = "前往星辉礼盒"
        },--暮光落霞
        [214] = {
            action = 1003,
            title = "前往星辉礼盒"
        },--雪莉
        [152] = {
            action = 1003,
            title = "前往星辉礼盒"
        },--匹诺曹
        [230] = {
            action = 1003,
            title = "前往星辉礼盒"
        },--华阳
        [225] = {
            action = 1002,
            title = "前往筑梦礼盒"
        },--可瑞尔
        [180] = {
            action = 1002,
            title = "前往筑梦礼盒"
        },--龙空空
        [165] = {
            action = 1002,
            title = "前往筑梦礼盒"
        },--糖心小熊
        [80] = {
            action = 1002,
            title = "前往筑梦礼盒"
        },--兔子拉比
        [102] = {
            action = 1002,
            title = "前往筑梦礼盒"
        },--圣婴
        [128] = {
            action = 1002,
            title = "前往筑梦礼盒"
        },--青蛙王子



        [196] = {
            action = 1025,
            title = "前往藏品集市"
        },--米兰达
        [103] = {
            action = 1025,
            title = "前往藏品集市"
        },--魔炎
        [50] = {
            action = 1025,
            title = "前往藏品集市"
        },--乔克
        [2] = {
            action = 1025,
            title = "前往藏品集市"
        },--齐天小圣
        [31] = {
            action = 1025,
            title = "前往藏品集市"
        },--帕普奇
        [156] = {
            action = 1025,
            title = "前往藏品集市"
        },--彩俐公主
        [155] = {
            action = 1025,
            title = "前往藏品集市"
        },--施巧灵
        [154] = {
            action = 1025,
            title = "前往藏品集市"
        },--殷小敏
        [141] = {
            action = 1025,
            title = "前往藏品集市"
        },--小蓝
        [143] = {
            action = 1025,
            title = "前往藏品集市"
        },--凌美琪
        [144] = {
            action = 1025,
            title = "前往藏品集市"
        },--凌美雪
        [145] = {
            action = 1025,
            title = "前往藏品集市"
        },--游乐王子
        [179] = {
            action = 1025,
            title = "前往藏品集市"
        },--灵公主
        [123] = {
            action = 1025,
            title = "前往藏品集市"
        },--时希
        [117] = {
            action = 1025,
            title = "前往藏品集市"
        },--白光莹
        [116] = {
            action = 1025,
            title = "前往藏品集市"
        },--罗丽
        [115] = {
            action = 1025,
            title = "前往藏品集市"
        },--冰公主
    },





    shop_recommend = {   --装扮分渠道显示
        skinTagsLimits = {

    {
            ids = {91,92,93,94,95,97,98,99,100,101},
            apiids = "9999",
    },
    {
            ids = {257,258,259,260,261,262,263,264,265,266},
            version_min  = "1.18.0",
    },
    {
            ids = {229},
            version_min  = "1.23.5",
    },
    {
            ids = {168},
            version_min  = "1.14.0",
    },
    {
            ids = {157},
            version_min  = "1.12.0",
    },
    {
            ids = {168},
            version_min  = "1.12.0",
    },
    {
            ids = {170},
            version_min  = "1.11.9",
    },
    {
            ids = {214},
            version_min  = "1.11.6",
    },
    {
            ids = {209},
            version_min  = "1.11.0",
    },
    {
            ids = {163},
            version_min  = "1.4.5",
    },
    {
            ids = {185},
            version_min  = "1.9.0",
    },
    {
            ids = {196},
            version_min  = "1.9.0",
    },
    {
            ids = {126},
            version_min  = "3.0.0",
    },
    {
            ids = {129},
            version_min  = "3.0.0",
    },
        },
        rollingCommendSkins = {
{
            type = 1,id =300 ,name = "芒歌",picUrl = "https://webpicture.mini1.cn/20230203/105508ea1724da-4678-3ddc-2444-7e8cc0f56a33.png",picId = 10161,
            start_time = "2023/02/03 10:15:00",--上线时间
            end_time = "2023/02/23 23:59:59",--下线时间
            version_min="1.23.0",
            action = 1002
},
{
            type = 1,id =301 ,name = "萧元儿",picUrl = "https://webpicture.mini1.cn/20230201/11193583e8cfc9-f580-30e0-f721-6f492bca74ff.jpg",picId = 10160,
            start_time = "2023/01/31 10:15:00",--上线时间
            end_time = "2023/02/19 23:59:59",--下线时间
            version_min="1.23.0",
},
{
            type = 1,id =299 ,name = "声波变形",picUrl = "https://webpicture.mini1.cn/20230117/205627e3d31895-2c29-828d-7ea9-a8cb101ea65f.png",picId = 10159,
            start_time = "2023/01/24 10:15:00",--上线时间
            end_time = "2023/02/26 23:59:59",--下线时间
            version_min="1.23.0",
},
{
            type = 1,id =304 ,name = "瑞贝卡",picUrl = "https://webpicture.mini1.cn/20230117/20562764a7e036-5834-14f9-1be7-16cf09e5c8e9.png",picId = 10158,
            start_time = "2023/01/22 10:15:00",--上线时间
            end_time = "2023/02/15 23:59:59",--下线时间
            version_min="1.23.0",
},
{
            type = 1,id =307 ,name = "花仙子",picUrl = "https://webpicture.mini1.cn/20230117/2056271b5f4663-9277-9680-da5d-93db519c9598.png",picId = 10157,
            start_time = "2023/01/21 10:00:00",--上线时间
            end_time = "2023/02/28 23:59:59",--下线时间
            version_min="1.23.0",
},
{
            type = 1,id =275 ,name = "妆盒坐骑",picUrl = "https://webpicture.mini1.cn/20230117/2056279c4bb464-d6e0-6f42-2a36-1f195457cb31.jpg",picId = 10156,
            start_time = "2023/01/22 10:00:00",--上线时间
            end_time = "2023/02/26 23:59:59",--下线时间
            version_min="1.23.0",
            action = 1
},
{
            type = 1,id =295 ,name = "兔年女",picUrl = "https://webpicture.mini1.cn/20230117/2056272a2aa4aa-e1af-62b4-84fc-d0fc6132d083.png",picId = 10155,
            start_time = "2023/01/21 10:15:00",--上线时间
            end_time = "2023/02/25 23:59:59",--下线时间
            version_min="1.23.0",
},
{
            type = 1,id =275 ,name = "雪花坐骑",picUrl = "https://webpicture.mini1.cn/20230117/2056277bb25ebf-3c9f-9d1f-9934-63d608db4bba.jpg",picId = 10153,
            start_time = "2023/01/17 10:00:00",--上线时间
            end_time = "2023/03/30 23:59:59",--下线时间
            version_min="1.23.0",
            action = 1
},
{
            type = 1,id =275 ,name = "凯莉",picUrl = "https://webpicture.mini1.cn/20230116/101454c6075c9b-72cb-a0ce-3b6c-710687ccf7bf.png",picId = 10152,
            start_time = "2023/01/16 10:00:00",--上线时间
            end_time = "2023/03/30 23:59:59",--下线时间
            version_min="1.23.0",
},
{
            type = 1,id =250 ,name = "大耳狗返场",picUrl = "https://webpicture.mini1.cn/20230107/100946c97f6b27-01af-ef8a-7267-38335d8ae457.jpg",picId = 10150,
            start_time = "2023/01/07 10:00:00",--上线时间
            end_time = "2023/03/01 23:59:59",--下线时间
            version_min="1.21.0",
},
{
            type = 1,id =249 ,name = "喵菲返场",picUrl = "https://webpicture.mini1.cn/20230107/1009463664879a-d94c-d75a-2010-9f83eff43b7e.png",picId = 10149,
            start_time = "2023/01/07 10:00:00",--上线时间
            end_time = "2023/03/01 23:59:59",--下线时间
            version_min="1.21.0",
},
{
            type = 1,id =268 ,name = "美乐蒂返场",picUrl = "https://webpicture.mini1.cn/20230107/100946d9f51799-d864-30f3-e957-53e6dc263140.png",picId = 10148,
            start_time = "2023/01/07 10:00:00",--上线时间
            end_time = "2023/03/01 23:59:59",--下线时间
            version_min="1.21.0",
},
{
            type = 1,id =289 ,name = "双子星",picUrl = "https://webpicture.mini1.cn/20230104/16132143fe57b3-377b-253a-aeb0-87acdf12fb51.png",picId = 10147,
            start_time = "2023/01/01 10:20:00",--上线时间
            end_time = "2023/03/01 23:59:59",--下线时间
            version_min="1.21.0",
            action = 99,
            action_url = "s4_https://h5.mini1.cn/actpl/268244734717669376?channel=1&openBrowser=3&portrait=2"
},
{
            type = 1,id =287 ,name = "悦享卡",picUrl = "https://webpicture.mini1.cn/20230104/161321efda1064-84ec-f2a0-5f67-a0df8d410c6e.jpg",picId = 10146,
            start_time = "2023/01/01 10:20:00",--上线时间
            end_time = "2023/02/28 23:59:59",--下线时间
            version_min="1.21.0",
            action = 1009,
},
{
            type = 1,id =288 ,name = "爱尔莉丝",picUrl = "https://webpicture.mini1.cn/20221220/170943986a8243-c58d-a2c6-ce3a-710feddccf96.png",picId = 10144,
            start_time = "2022/12/16 10:20:00",--上线时间
            end_time = "2022/12/30 23:59:59",--下线时间
            version_min="1.21.0",
            action = 1002,
},
{
            type = 1,id =224 ,name = "银铃-避免开天窗的保底内容",picUrl = "https://image.mini1.cn/d/20220427/3c661243e817928bcfd9b5ea2bcd6463.png",picId = 10106,
            version_min="1.12.0",
}, 


        },
        groupCommendSkins = {
           {
                title = "最新上架",
                version_min = "1.23.5",
                skins = {
                    { type = 1, id = 229, tag = 2 },
                    { type = 1, id = 239, tag = 2 },
                    { type = 1, id = 300, tag = 2 },
                    { type = 1, id = 301, tag = 1 },

                }	
            },
           {
                title = "兔年如意",
                version_min = "1.23.0",
                skins = {
                    { type = 1, id = 307, tag = 1 },
                    { type = 1, id = 295, tag = 1 },
                    { type = 1, id = 296, tag = 2 },
                    { type = 1, id = 304, tag = 2 },

                }	
            },
           {
                title = "新春好礼",
                version_min = "1.23.0",
                skins = {
                    { type = 1, id = 275, tag = 0 },
                    { type = 1, id = 299, tag = 1 },
                    { type = 1, id = 289, tag = 1 },
                    { type = 1, id = 290, tag = 1 },

                }	
            },
           {
                title = "近期新装",
                version_min = "1.21.0",
                version_max = "1.22.0",
                skins = {
                    { type = 1, id = 250, tag = 1 },
                    { type = 1, id = 268, tag = 1 },
                    { type = 1, id = 289, tag = 1 },
                    { type = 1, id = 290, tag = 1 },

                }	
            },
           {
                title = "礼盒限定",
                version_min = "1.21.0",
                skins = {
                    { type = 1, id = 269, tag = 2 },
                    { type = 1, id = 230, tag = 0 },
                    { type = 1, id = 288, tag = 2 },
                    { type = 1, id = 284, tag = 0 },

                }	
            },

           {
                title = "魔法仙子",
                version_min = "1.18.0",
                skins = {
                    { type = 1, id = 274, tag = 0 },
                    { type = 1, id = 273, tag = 2 },
                    { type = 1, id = 224, tag = 0 },
                    { type = 1, id = 269, tag = 0 },

                }	
            },	
           {
                title = "鲜花绽放",
                version_min = "1.13.0",
                skins = {
                    { type = 1, id = 245, tag = 2 },
                    { type = 1, id = 224, tag = 2 },
                    { type = 1, id = 114, tag = 2 },
                    { type = 2, id = { 1535,1536,1537,1538,1541,1542,1531,1476}, tag = 0 },

                }	
            },
           {
                title = "机甲时代",
                version_min = "1.13.0",
                skins = {
                    { type = 1, id = 204, tag = 4 },
                    { type = 1, id = 226, tag = 4 },
                    { type = 1, id = 29,  tag = 2 },
                    { type = 1, id = 178, tag = 2 },
                }	
            },	
           {
                title = "软萌甜心",
                version_min = "1.12.0",
                skins = {
                    { type = 1, id = 105, tag = 2 },
                    { type = 1, id = 228, tag = 2 },
                    { type = 1, id = 130, tag = 2 },
                    { type = 1, id = 202, tag = 2 },

                }	
            },

           {
                title = "迷萌星球",
                version_min = "1.11.0",
                skins = {
                    { type = 1, id = 210, tag = 2 },
                    { type = 1, id = 208, tag = 2 },
                    { type = 1, id = 85,  tag = 2 },
                    { type = 1, id = 113, tag = 2 },

                }	
            },
           {
                title = "温暖冬日",
                version_min = "1.8.5",
                skins = {
                    { type = 1, id = 172, tag = 2 },
                    { type = 1, id = 184, tag = 2 },
                    { type = 1, id = 187, tag = 2 },
                    { type = 2, id = { 1353,1354,1344,1347,1364}, tag = 0 },

                }	
            },
           {
                title = "救赎与希望",
                version_min = "1.5.0",
                skins = {
                    { type = 1, id = 175, tag = 2 },
                    { type = 1, id = 174, tag = 2 },
                    { type = 1, id = 169, tag = 2 },
                    { type = 1, id = 171, tag = 2 },

                }	
            },
           {
                title = "龙响天下",
                version_min = "1.4.5",
                skins = {
                    { type = 1, id = 163, tag = 2 },
                    { type = 1, id = 164, tag = 2 },
	                { type = 1, id = 160, tag = 2 },
                    { type = 2, id = { 1166,1167,1168,1169,1170}, tag = 0 },
                }	
            },
           {
                title = "梦幻童话",
                version_min = "1.0.5",
                skins = {
                    { type = 1, id = 120, tag = 2 },
                    { type = 1, id = 118, tag = 2 },
	            { type = 2, id = { 881,882,878,667,883 }, tag = 0 },
                    { type = 2, id = { 693,879,880,411 }, tag = 0 },
                }
            },
           {
                title = "幻想大陆",
                version_min = "0.49.5",
                skins = {
                    { type = 2, id = { 793,794,505 }, tag = 0 },
                    { type = 2, id = { 667,774,775,776,777 }, tag = 0 },
                    { type = 2, id = { 37,771,772,773,769 }, tag = 0 },
                    { type = 2, id = { 595,597,736,781 }, tag = 0 },
                }
            },
           {
                title = "端午祝福",
                version_min = "0.44.0",
                skins = {
                    { type = 1, id = 69, tag = 2 },
                    { type = 1, id = 23, tag = 2 },
                    { type = 2, id = { 666,667,668,669 }, tag = 0 },
                    { type = 2, id = { 660,661,662,663,664,665 }, tag = 0 },
                }
            },
           {
                title = "童话剧场",
                version_min = "0.42.0",
                skins = {
                    { type = 1, id = 62, tag = 2 },
                    { type = 2, id = { 627,635,636,485 }, tag = 0 },
                    { type = 2, id = { 632,633,634,619,380 }, tag = 0 },
                    { type = 2, id = { 628,629,50,286,505 }, tag = 0 },
                }
            },
           {
                title = "花语幻梦",
                version_min = "0.41.5",
                skins = {
                    { type = 1, id = 59, tag = 2 },
                    { type = 2, id = { 591,592,593,594 }, tag = 0 },
                    { type = 2, id = { 595,596,597,379 }, tag = 0 },
                    { type = 2, id = { 598,600,601,602 }, tag = 0 },
                }
            },
            {
                title = "玲珑送福",
                skins = {
                    { type = 2, id = { 532, 538, 530, 409 }, tag = 0 },
                    { type = 2, id = { 537, 535, 533, 352, 68 }, tag = 0 },
                    { type = 2, id = { 534, 540, 464, 354 }, tag = 0 },
                    { type = 2, id = { 531, 539, 529, 506 }, tag = 0 },
                }
            },
            {
                title  = "初冬之愿",
                skins =
                {
                    {type = 2,id = {525,517,467,513,505},tag = 0},
                    {type = 2,id = {522,515,504,466,360},tag = 0},
                    {type = 2,id = {409,521,518,514,437},tag = 0},
                    {type = 2,id = {523,516,508,434,411},tag = 0},
                }
            },
            {
                title  = "伦敦漫步",
                skins =
                {
                    {type = 2,id = {524,502,520,512},tag = 0},
                    {type = 2,id = {519,438,507,445,503},tag = 0},
                    {type = 2,id = {424,505,510,508,507},tag = 0},
                    {type = 2,id = {423,509,405,387,504},tag = 0},
                }
            },
            {
                title = "童话世界",
                skins =
                {
                    {type = 1,id = 37,tag = 2},
                    {type = 2,id = {385,379,438,392,415,398},tag = 0},
                    {type = 2,id = {394,323,401,396,390},tag = 0},
                    {type = 2,id = {283,284,285,286,292},tag = 0},
                }
            },
            {
                title = "潮流前线",
                skins =
                {
                    {type = 2,id = {193,304,318,311,164,298},tag = 0},
                    {type = 2,id = {415,200,410,421,419},tag = 0},
                    {type = 2,id = {409,305,422,418,437,136},tag = 0},
                    {type = 2,id = {425,382,420,417,412,414},tag = 0},
                }
            },
            {
                title = "长乐未央",
                skins =
                {
                    {type = 1,id = 20,tag = 2},
                    {type = 1,id = 21,tag = 2},
                    {type = 2,id = {470,475,351,277,356},tag = 0},
                    {type = 2,id = {379,469,464,474,324,476},tag = 0},
                }

            },
            {
                title = "万圣惊魂",
                skins =
                {
                    {type = 2,id = {485,494,496,489,499},tag = 0},
                    {type = 2,id = {498,486},tag = 0},
                    {type = 2,id = {491,497,488,500},tag = 0},
                    {type = 2,id = {487,433,408,207,434,472},tag = 0},
                }
            },
            {
                title  = "海滩假日",
                skins =
                {
                    {type = 1,id = 32,tag = 2},
                    {type = 2,id = {35,36,37,38,39,40},tag = 0},
                    {type = 2,id = {41,43,44,45,46,190},tag = 0},
                    {type = 2,id = {213,195,316,80,191},tag = 0},
                }
            },
            {
                title  = "国风荟萃",
                skins =
                {
                    {type = 2,id = {292,473,374},tag = 0},
                    {type = 2,id = {364,350,373,303},tag = 0},
                    {type = 2,id = {68,69,70,71,72,73},tag = 0},
                    {type = 2,id = {63,64,65,66,67},tag = 0},
                }
            },
            {
                title  = "远洋海风",
                skins =
                {
                    {type = 2,id = {308,323,313,303,300},tag = 0},
                    {type = 2,id = {217,309,411,314},tag = 0},
                    {type = 2,id = {86,316,211,217,191},tag = 0},
                    {type = 2,id = {174,194,315,310,218},tag = 0},
                }
            },
            {
                title  = "暖黄革命",
                skins =
                {
                    {type = 2,id = {195,430,205,213},tag = 0},
                    {type = 2,id = {189,204,198,405,218,300},tag = 0},
                    {type = 2,id = {201,203,214,462,327},tag = 0},
                    {type = 2,id = {202,179,182,216,191},tag = 0},
                }
            },
        },
        skinTags = {
            {
                title = "热卖",
                id = {229,239,300,301,299,304,295,307,275,289,},
            },
            {
                title = "三丽鸥家族",
                id = {250,290,268,249,267,271,272},
            },
            {
                title = "武侠系列",
                id = {296,286,212,245,199,191,189,24,172,163,23,188,169,171,164,120,114,21,20,45,46,43,8,13,57,69,109,108,104},
            },
            {
                title = "魔法系列",
                id = {288,278,274,273,269,230,228,224,202,185,203,59,187,130,175,174,160,158,151,142,37,138,139,127,122,118,105,33,32,41,39,77,79,107,62},
            },
            {
                title = "迷萌系列",
                id = {208,211,210,190,136,85,47,4,3,1,26,5,27,61,60,55,111,63,113,121,34},
            },
            {
                title = "科幻系列",
                id = {285,184,178,167,51,48,44,40,42,28,68,67,106,29},
            },
            {
                title = "冒险系列",
                id = {257,258,259,260,261,262,263,264,265,266,256,255,222,223,11,18,19,14,17},
            },
            {
                title = "经典",
                id = {49,6,16,15,7},
            },
            {
                title = "会员特权",
                id = {192,193},
            },

            {
                title = "拍卖行和积分商城",
                id = {297,298,293,294},
            },

            {
                title = "小马宝莉",
                id = {235,234,233,219,149,150,87,71,70,81,72,88,86,73},
            },
            {
                title = "变形金刚",
                id = {96,90,65,52,53,58,66,75,76,74,64},
            },
            {
                title = "礼盒限定",
                id = {284,270,225,180,165,128,102,80},
            },
            {
                title = "盲盒隐藏款系列",
                id = {254,238,214,209,186,166,153,152,124,125,83,84,78},
            },
            {
                title = "悦享系列",
                id = {291,292,276,277,252,253,236,237,220,221,200,201,181,182,161,162,131,132,110,112,89},
            },
            {
                title = "节日限定",
                id = {287,198,196,159,30,103,82,56,54,50,38,31,25,22,12,10,9,2},
            },
            {
                title = "生日限定",
                id = {146,147,140,148},
            },
            {
                title = "凹凸世界",
                id = {305},
            },
            {
                title = "斗罗大陆",
                id = {241,240,242,246,247,244,248,243},
            },
            {
                title = "铠甲勇士",
                id = {226,204,227,197},
            },
            {
                title = "巴啦啦小魔仙",
                id = {157,170,156,155,154,141,143,144,145},
            },
            {
                title = "精灵梦叶罗丽",
                id = {179,123,117,116,115},
            },
        }
    },
	horseConfig = {     --商城坐骑排序
	4635,4631,4627,4623,4617,4613,4609,4605,4601,4597,4593,4589,4586,4582,4579,4575,4571,4563,4559,4555,4552,4549,4546,4542,4538,4534,4530,4527,4524,4522,4519,4516,4511,4504,4508,4500,3495,3493,3490,3488,3486,3483,	3481,3478,3476,3474,3472,3469,3467,3465,3463,3460,3457,3454,3452,3450,3448,3445,3442,3439,3436,3433,3430     
},
    open_friendgift = {
            apiids = "1,2,3,7,8,11,12,13,15,21,32,36,37,45,49,101,121,122,65,71,74,73,72,70,68,67,63,110,112,113,78,79,80,81,82,83,84,92,93,95,96,97,56,58,6,9,10,14,17,34,35,38,39,41,42,47,50,999,109,303,126,89,102,87,129,116,299,117,118,52,55,57,992,119,28,69,130"   --好友赠送开关
    },
open_itemgift = {
		apiids = "1,2,3,7,8,11,12,13,15,21,32,36,45,49,101,121,122,65,71,74,73,72,70,68,67,63,110,112,113,78,79,80,81,82,83,84,92,93,95,96,97,56,58,6,9,10,14,17,34,35,38,39,41,42,47,50,999,109,303,126,89,102,87,129,116,299,117,118,52,55,57,992,119,28,69,130",
		version_min = "0.52.5"           --道具赠送开关
	},

 open_gungift = {     				--武器皮肤赠送开关
                --apiids = "999",
                version_min = "1.10.0"           
        },

		demand_skin_conf = {           --装扮索要
			
			version_min = "1.0.0", 
			apiids_no = "9999",
			register_time_len = 7,		--注册时间长度，单位天数7
			friend_days_limit = 0,		--成为好友天数5
			demand_limit = 10,			--每日索要次数限制10
			demand_same_friend_limit = 5,--每日向同一个好友索要次数限制5
			monthly_demand_coin = 5000,	--每月索要金额限制5000
			hide_demand = 7,				--拒绝并屏蔽好友索要时间长度
            open = 1,                   --索要按钮开关状态：0关闭 1打开
		},

        demand_skin_conf2 = {             --微信装扮代付
			super_uin_list='1119831132,1126699327,1657350766',
			version_min = "1.0.0", 
		     open=1,  
			--apiids = "1,110,79,81",
			apiids_no = "52,21,45,121,2,58,55,19,94,28,57,84,82,36,126,7,28",
			register_time_len = 7,		--注册时间长度，单位天数7
		    demand_limit = 10,			--每日索要次数限制10
			monthly_demand_coin = 10000,	--每月索要迷你币限制5000
		},


  		demand_minicoin_conf = {        --迷你币代付
			super_uin_list='1182270234,1657350766',
            version_min = "1.0.0", 
            apiids_no = "52,21,45,121,2,58,55,19,94,28,57,84,82,36,126,7,28",
			--apiids = "1,110,79,81",
            register_time_len = 0,		--注册时间长度，单位天数7
            demand_limit = 10,	        --每日索要次数限制1000
            monthly_demand_coin = 10000, --每月索要迷你币限制5000
		
		cfg = {
			Name 	= '迷你币索要',     --显示在充值界面的名称
			IconId 	= 14116,            --充值界面图标填道具ID
			Desc 	= '分享二维码给好友代付',
			IsHide 	= 0,                --0不隐藏，1隐藏
		}
    },



 	     demand_battlepass_conf = {      --悦享卡代付
            version_min = "1.0.0", 
            
            apiids_no = "52,21,45,121,2,58,55,19,94,28,57,84,82,36,126,7,28",
			--apiids = "1,110,79,81",		
            register_time_len = 0,      --注册时间长度，单位天数7
            demand_limit = 3,           --每日索要次数限制20
        },

    shop_recharge = { 

        -- 双倍充值奖励开关配置
        double_reward = {
        
            version_min = '1.0.5', -- 当前配置可用的最小版本号
            apiids =  "45",  -- 功能启用的渠道   
            
            --android
            minicoin = {
                {id = 12, open = 0},  -- 指定充值id，open=0表示关闭，1表示开启
                {id = 13, open = 0},
            },  
            -- ios
            minicoin_ios = {
                {id = 1, open = 0},  -- 指定充值id，open=0表示关闭，1表示开启
                {id = 8, open = 1},
            },
            --[[
            -- 海外暂不开放
            -- ios海外   
            minicoin_ios_en = {
                {id = 5, open = 1},            
            }，       
            --联通沃商店
            minicoin_wo = {
                {id = 5, open = 1},
            },
            --google
            minicoin_wo = {
                {id = 5, open = 1},
            },  
            --]]      
        },
    },
	--新手引导需求 新加配置 2021-06-08
	novice_guide_skin = {
		isenable = 1,          --是否开启活动          0:关闭  1:开启
		ver = '1.0.0',         --支持的最小客户端版本
		familiar_isopen = 1,   --已经熟悉游戏用户通道是否开启  0:关闭  1:开启
		olduser_isopen  = 1,   --老用户通道是否开启    0:关闭  1:开启
		newuser_isopen  = 1,   --新用户通道是否开启    0:关闭  1:开启
		
		--itemid:道具id    skinid:皮肤id   itemName:皮肤名称  num:皮肤数量   day:皮肤试玩天数
 		skins = {
			[20597] = {itemid= 20597, skinid = 21,itemName = '花小楼' ,num = 1,day = 7},
			[20599] = {itemid= 20599, skinid = 41,itemName = '兰斯洛特' ,num = 1,day = 7},
            [20598] = {itemid= 20598, skinid = 4,itemName = '迷斯拉' ,num = 1,day = 7}
		}
	},


--迷你币自动订阅
shop_subscription = {
        version_min = "1.3.2", -- 当前配置可用的最小版本号
        apiids = "999,7,45", -- 功能启用的渠道
        isShow = 1, -- 1代表显示订阅页签，0代表隐藏订阅页签
        remind_day = 3, --到期提醒弹窗提前时间
        agreement_url = "https://www.mini1.cn/article/20210622/1845.html" --自动续费协议的跳转链接
    },
	-- 商城直购配置
	ProductInfo = {
        [10001] = {
			member_type = 1, -- 标记会员时间档位类型：1-月卡 2-季卡 3-半年卡
            fee_type = 1,
            last_time = 2592000, --有效时间秒(商品订阅时间30天,1个月)
            fee_price = 1800, --商品原价
            discount_price = 1800, --现价
            bak_minib = 180, --每次领取迷你币
            free_minib = 27, --每次赠送迷你币
            discount_ratio = "多得15%", --赠送比例
            got_expr = 2592000, --领取间隔单位:秒
            got_times = 1, --领取次数
            gear_id = 1, --商品价格档位id
            gear_idlist = {10002, 10003}, --商品价格相同档位id,季卡,半年卡
            first_puchase_reward = {
                --初次订阅此项目赠送道具
                item_id = 37027, avatar_id = 991, item_count = 1,
            },
            expired_mail_info = "70653,70654", -- 邮件标题正文配置为索引字串 loadstringID
            expired_mail_jump_info = 41, --邮件跳转ID，客户端提供
            recharge = {
                Name = "订阅18元迷你币", --显示在充值界面的名称
                IconId = 14113, --充值界面图标填道具ID
                Num = 180, --迷你币数量显示
                Cost = 18, --使用元为单位显示
                Desc = "赠送27迷你币", --显示赠送数量
                IsHide = 0, --0不隐藏，1隐藏
                Tag = 3, --1 推荐 2折扣 3 订阅
                ID = 10001,
                ProductID = 70613
             --xx元/30天
            }
        },
        [10004] = {
			member_type = 2, -- 标记会员时间档位类型：1-月卡 2-季卡 3-半年卡
            fee_type = 1,
            last_time = 2592000, --有效时间秒(商品订阅时间30天,1个月)
            fee_price = 3800, --商品原价
            discount_price = 3800, --现价
            bak_minib = 380, --每次领取迷你币
            free_minib = 76, --每次赠送迷你币
            discount_ratio = "多得20%", --赠送比例
            got_expr = 2592000, --领取间隔单位:秒
            got_times = 1, --领取次数
            gear_id = 2, --商品价格档位id
            gear_idlist = {10005, 10006}, --商品价格相同档位id,季卡,半年卡
            first_puchase_reward = {
                --初次订阅此项目赠送道具
                item_id = 37028, avatar_id = 992, item_count = 1,
            },
            expired_mail_info = "70653,70654", -- 邮件标题正文配置为索引字串 loadstringID
            expired_mail_jump_info = 41, --邮件跳转ID，客户端提供
            recharge = {
                Name = "订阅38元迷你币", --显示在充值界面的名称
                IconId = 14114, --充值界面图标填道具ID
                Num = 380, --迷你币数量显示
                Cost = 38, --使用元为单位显示
                Desc = "赠送76迷你币", --显示赠送数量
                IsHide = 0, --0不隐藏，1隐藏
                Tag = 3, --1 推荐 2折扣 3 订阅
                ID = 10004,
                ProductID = 70613
             --xx元/30天
            }
        },
		[10007] = {
			member_type = 3, -- 标记会员时间档位类型：1-月卡 2-季卡 3-半年卡
            fee_type = 1,
            last_time = 2592000, --有效时间(商品订阅时间30天,1个月)
            fee_price = 9800, --商品原价
            discount_price = 9800, --现价
            bak_minib = 980, --每次领取迷你币
            free_minib = 196, --每次赠送迷你币
            discount_ratio = "多得20%", --赠送比例
            got_expr = 2592000, --领取间隔单位:秒
            got_times = 1, --领取次数
            gear_id = 3, --商品价格档位id
            gear_idlist = {10008, 10009}, --商品价格相同档位id,季卡,半年卡
            first_puchase_reward = {
                --初次订阅此项目赠送道具
                item_id = 37030, avatar_id = 994, item_count = 1,
            },
            expired_mail_info = "70653,70654", -- 邮件标题正文配置为索引字串 loadstringID
            expired_mail_jump_info = 41, --邮件跳转ID，客户端提供
            recharge = {
                Name = "订阅98元迷你币", --显示在充值界面的名称
                IconId = 14115, --充值界面图标填道具ID
                Num = 980, --迷你币数量显示
                Cost = 98, --使用元为单位显示
                Desc = "赠送196迷你币", --显示赠送数量
                IsHide = 0, --0不隐藏，1隐藏
                Tag = 3, --1 推荐 2折扣 3 订阅
                ID = 10007,
                ProductID = 70613
             --xx元/30天
            }
        }
    },



--------礼包推送


  Pushactivitynew = {
        switch = 1, -- 功能开关：1开启，0关闭 
        version_min = '1.20.0', -- 最小版本号 
        apiids = '1,110,12,21', -- 开启的渠道 
        day_limit = 10, -- 每日触发个数上限
        times_limit = 5, -- 同一时间内礼包的触发上限
        gift_time = 1800, -- 礼包有效时长                                      
        gift_list = {

            [1] = {
                mutex = 1, -- 权重
                eventid = 2004, -- 事件id
                title = "幸运一刻",
                target = 50, -- 
                times = 3600, -- 单位时间配置，单位秒
                rate = 100, -- 触发礼包的概率，百分比值
                prices_id = 10002, -- 货币类型，购买礼包的消耗货币
                prices = 20, -- 礼包价格
                prices_discount = 50, -- 折扣价格
                cd = 43200,
                gift = { -- 礼包内容
                {
                    id = 25020,
                    num = 3,
                    tag = 1,
                }, {
                    id = 12851,
                    num = 1,
                }, {
                    id = 12964,
                    num = 1,
                }},
                gift_bg_style = 1 -- 福利活动背景类型         
            },
            [2] = {
                mutex = 2, -- 权重
                eventid = 2004, -- 事件id
                title = "幸运一刻",
                target = 250, -- 
                times = 3600, -- 单位时间配置，单位秒
                rate = 100, -- 触发礼包的概率，百分比值
                prices_id = 10002, -- 货币类型，购买礼包的消耗货币
                prices = 50, -- 礼包价格
                prices_discount = 100, -- 折扣价格
                cd = 43200,
                gift = { -- 礼包内容
                {
                    id = 25020,
                    num = 6,
                    tag = 1,
                }, {
                    id = 10010,
                    num = 1,
                }, {
                    id = 10012,
                    num = 1,
                }},
                gift_bg_style = 1 -- 福利活动背景类型         
            },
            [3] = {
                mutex = 3, -- 权重
                eventid = 2004, -- 事件id
                title = "幸运一刻",
                target = 500, -- 
                times = 3600, -- 单位时间配置，单位秒
                rate = 100, -- 触发礼包的概率，百分比值
                prices_id = 10002, -- 货币类型，购买礼包的消耗货币
                prices = 100, -- 礼包价格
                prices_discount = 200, -- 折扣价格
                cd = 43200,
                gift = { -- 礼包内容
                {
                    id = 25020,
                    num = 15,
                    tag = 1,
                }, {
                    id = 10010,
                    num = 2,
                }, {
                    id = 10012,
                    num = 2,
                }},
                gift_bg_style = 1 -- 福利活动背景类型         
            },
            [4] = {
                mutex = 1, -- 权重
                eventid = 2003, -- 事件id
                title = "惊喜福利",
                target = 198,
                times = 600, -- 单位时间配置，单位秒
                rate = 100, -- 触发礼包的概率，百分比值
                prices_id = 10002, -- 货币类型，购买礼包的消耗货币
                prices = 20, -- 礼包价格
                prices_discount = 50, -- 折扣价格
                cd = 43200,
                gift = { -- 礼包内容
                {
                    id = 25020,
                    num = 3,
                    tag = 1,
                }, {
                    id = 12851,
                    num = 1,
                }, {    
                    id = 12964,
                    num = 1,
                }},
                gift_bg_style = 2 -- 福利活动背景类型
            },
            [5] = {
                mutex = 2, -- 权重
                eventid = 2003, -- 事件id
                title = "惊喜福利",
                target = 268,
                times = 600, -- 单位时间配置，单位秒
                rate = 100, -- 触发礼包的概率，百分比值
                prices_id = 10002, -- 货币类型，购买礼包的消耗货币
                prices = 50, -- 礼包价格
                prices_discount = 100, -- 折扣价格
                cd = 43200,
                gift = { -- 礼包内容
                {
                    id = 25020,
                    num = 6,
                    tag = 1,
                }, {
                    id = 10010,
                    num = 1,
                }, {    
                    id = 10012,
                    num = 1,
                }},
                gift_bg_style = 2 -- 福利活动背景类型
            },
             [6] = {
                mutex = 3, -- 权重
                eventid = 2003, -- 事件id
                title = "惊喜福利",
                target = 298,
                times = 600, -- 单位时间配置，单位秒
                rate = 100, -- 触发礼包的概率，百分比值
                prices_id = 10002, -- 货币类型，购买礼包的消耗货币
                prices = 80, -- 礼包价格
                prices_discount = 160, -- 折扣价格
                cd = 43200,
                gift = { -- 礼包内容
                {
                    id = 25020,
                    num = 12,
                    tag = 1,
                }, {
                    id = 10010,
                    num = 1,
                }, {    
                    id = 10012,
                    num = 1,
                }},
                gift_bg_style = 2 -- 福利活动背景类型
            },
            [7] = {
                mutex = 4, -- 权重
                eventid = 2003, -- 事件id
                title = "惊喜福利",
                target = 368,
                times = 600, -- 单位时间配置，单位秒
                rate = 100, -- 触发礼包的概率，百分比值
                prices_id = 10002, -- 货币类型，购买礼包的消耗货币
                prices = 100, -- 礼包价格
                prices_discount = 200, -- 折扣价格
                cd = 43200,
                gift = { -- 礼包内容
                {
                    id = 25020,
                    num = 15,
                    tag = 1,
                }, {
                    id = 10010,
                    num = 2,
                }, {    
                    id = 10012,
                    num = 2,
                }},
                gift_bg_style = 2 -- 福利活动背景类型
            },
          }, 
         },   


Pushactivity ={},

--------聚合渠道压测开关
mergeCP = 0

    -- 新增配置在此备注上一行插入，注意格式对齐

}
