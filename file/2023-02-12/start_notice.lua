
{
	--公告内容
	{
		id = 2023020801,        --公告1 苹果公告

				--文字内容
		txt = "#cFF6347【1.23.5版本更新】#n#r#r版本更新时间02月08日上午10点，部分应用商店上架时间稍有延迟。#r#r实名认证通知：根据国家新闻出版署发布《关于防止未成年人沉迷网络游戏》的通知，不得以任何形式为未完成实名注册的用户提供游戏服务。届时未完成实名认证的冒险家们登录游戏将受到限制，无法正常享受游戏服务，请各位冒险家们及早完成实名认证。#n#r#r#cFF6347凹凸世界联动#n#r#r#cFF6347上岛入海齐过迷你年#n#r#r#c4876FF一、赛博少女梅嘉 加入迷你世界！届时将跟随版本上线；#n#r#r#c4876FF二、吉祥物龙小宝来啦！届时将跟随版本上线；#n#r#r#c4876FF三、全新定制装扮上架商店；#n#r#r#c4876FF四、其他部分已知BUG修复。#n",  --中文
		--滚动条
		brief   = "凹凸世界联动，上岛入海齐过迷你年！",

	},




	{
		id = 2023020802,        --公告2 ID PC版

		txt = "#cFF6347【1.23.5版本更新】#n#r#r版本更新时间02月08日上午10点，部分应用商店上架时间稍有延迟。#r#r实名认证通知：根据国家新闻出版署发布《关于防止未成年人沉迷网络游戏》的通知，不得以任何形式为未完成实名注册的用户提供游戏服务。届时未完成实名认证的冒险家们登录游戏将受到限制，无法正常享受游戏服务，请各位冒险家们及早完成实名认证。#n#r#r#cFF6347凹凸世界联动#n#r#r#cFF6347上岛入海齐过迷你年#n#r#r#c4876FF一、赛博少女梅嘉 加入迷你世界！届时将跟随版本上线；#n#r#r#c4876FF二、吉祥物龙小宝来啦！届时将跟随版本上线；#n#r#r#c4876FF三、全新定制装扮上架商店；#n#r#r#c4876FF四、其他部分已知BUG修复。#n", 

		--滚动条
		brief   = "凹凸世界联动，上岛入海齐过迷你年！",


	},

	{
		id =  2023020803,        --公告3 全渠道

		txt = "#cFF6347【1.23.5版本更新】#n#r#r版本更新时间02月08日上午10点，部分应用商店上架时间稍有延迟。#r#r实名认证通知：根据国家新闻出版署发布《关于防止未成年人沉迷网络游戏》的通知，不得以任何形式为未完成实名注册的用户提供游戏服务。届时未完成实名认证的冒险家们登录游戏将受到限制，无法正常享受游戏服务，请各位冒险家们及早完成实名认证。#n#r#r#cFF6347凹凸世界联动#n#r#r#cFF6347上岛入海齐过迷你年#n#r#r#c4876FF一、赛博少女梅嘉 加入迷你世界！届时将跟随版本上线；#n#r#r#c4876FF二、吉祥物龙小宝来啦！届时将跟随版本上线；#n#r#r#c4876FF三、全新定制装扮上架商店；#n#r#r#c4876FF四、其他部分已知BUG修复#n。",

		--滚动条
		brief   = "凹凸世界联动，上岛入海齐过迷你年！",

	
	},


	{
		id =  2023020805,        --公告7 华为 

		txt = "#cFF6347【1.23.5版本更新】#n#r#r版本更新时间02月08日上午10点，部分应用商店上架时间稍有延迟。#r#r实名认证通知：根据国家新闻出版署发布《关于防止未成年人沉迷网络游戏》的通知，不得以任何形式为未完成实名注册的用户提供游戏服务。届时未完成实名认证的冒险家们登录游戏将受到限制，无法正常享受游戏服务，请各位冒险家们及早完成实名认证。#n#r#r#cFF6347凹凸世界联动#n#r#r#cFF6347上岛入海齐过迷你年#n#r#r#c4876FF一、赛博少女梅嘉 加入迷你世界！届时将跟随版本上线；#n#r#r#c4876FF二、吉祥物龙小宝来啦！届时将跟随版本上线；#n#r#r#c4876FF三、全新定制装扮上架商店；#n#r#r#c4876FF四、其他部分已知BUG修复#n。", 

		--滚动条
		brief   = "凹凸世界联动，上岛入海齐过迷你年！",

	},


	{
		id = 2019080101,

		--文字内容
        txt = "",
        
	},




	--游戏内定时公告
	notice_by_time = {

		{
			id =  2019080101,             --内容id

			start_show_time = '2019-08-01 00:00:00',  --轮播开始时间
			end_show_time   = '2019-08-01 21:00:00',  --轮播结束时间

			show_count  = 3,              -- 一共轮播三次
			interval    = 5,            -- 每次轮播的间隔60秒

			single_show_count  = 3,       -- 单次轮播滚动次数

			apiids = "110,1,45",         --渠道限制
			version_min = "0.37.0",       --最小版本限制
		},


	},


	--根据 时间 版本 渠道 语言 放置具体的公告
	notice_select = 
	{
		{
			id =  2023020801,           --苹果

			apiids      = "45",          --渠道限制
            version_min = "1.23.5",
			interval     = 8640000,     --每M秒弹出N次  登录游戏时候弹公告
			showcount    = 1,         --每M秒弹出N次

		},

		{
			id =  2023020805,           --华为
			apiids      = "7",          --渠道限制
            version_min = "1.23.5",
			interval     = 8640000,     --每M秒弹出N次  登录游戏时候弹公告
			showcount    = 1,         --每M秒弹出N次

		},


		{
			id =  2023020802,             --PC
            --apiids      = "999",
            version_min = "1.23.5",
			apiids= "100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132",  
			interval     = 8640000,     --每M秒弹出N次  登录游戏时候弹公告
			showcount    = 1,         --每M秒弹出N次       

		},

		{
			id =  2023020803,             --全渠道
            --apiids      = "999",
            version_min = "1.23.5",
			interval     = 8640000,     --每M秒弹出N次  登录游戏时候弹公告
			showcount    = 1,         --每M秒弹出N次       

		},
	}

}

