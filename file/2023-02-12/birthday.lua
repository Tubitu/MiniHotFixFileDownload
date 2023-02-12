
{
    onshow  = 1,							--0代表入口关闭,1代表入口开启

    apiids_no  = "9999,2,5,7,12,36,121",	--渠道控制, 生日系统,别动他就对了
	

    version_min = "1.2.5",  --版本号控制

	policyHint="注意：未成年的冒险家一周仅有三小时的游戏时长，请认真填写实名信息",


    red_day = 86400,						--红点展示时间，点击后红点消失，按秒计算

	unauth_count = 10,						--好友列表显示未实名玩家数量

    icon = "https://image.mini1.cn/d/20210716/90b9c1b7456a0005931319694005ee7e.png",                     --入口图标

    start_time = '2021-01-01 00:00:00',     --开始时间

    end_time = '2031-01-01 00:00:00',       --结束时间

	duration = { stime = 0, etime = 14},		--生日期间

    cake = {itemID = 12859, num = 10},      --可赠送蛋糕份额

    --展示奖励
    show_skin={
        --装扮展示配置
        [1]={itemID=27028,num=1,skinID=146},
        [2]={itemID=27029,num=1,skinID=147},
        [3]={itemID=27022,num=1,skinID=140},
        [4]={itemID=27030,num=1,skinID=148},
    },


    gift = {
        --第一年生日奖励
        [1]={
			{itemID=37088,num=1},
            {itemID=33028,num=1},
            {itemID=12859,num=5},
        },
        --第二年生日奖励
        [2]={
            {itemID=37089,num=1},
			{itemID=33028,num=1},
            {itemID=12859,num=8},
        },
        --第三年生日奖励
        [3]={
            {itemID=37090,num=1},
			{itemID=33028,num=1},
            {itemID=12859,num=10},
        },
        --第四年生日奖励
        [4]={
            {itemID=37091,num=1},
			{itemID=33028,num=1},
            {itemID=12859,num=15},
        },
        --第五年生日奖励
        [5]={
            {itemID=37092,num=1},
			{itemID=33028,num=1},
            {itemID=12859,num=20},
        },
        -- 第 6 年后共享同一份生日奖励
        [6]={
            {itemID=20032,num=1},
			{itemID=33028,num=1},	
            {itemID=12859,num=5},
        },
    },
    
    constellation = {
        [1] = {name = "Aquarius", [1]={stime = 120, etime = 131}, [2]={stime = 201, etime = 218}}, 	--水瓶座
        [2] = {name = "Pisces", [1]={stime = 219, etime = 229}, [2]={stime = 301, etime = 320}}, 	--双鱼座
        [3]	= {name = "Aries", [1]={stime = 321, etime = 331}, [2]={stime = 401, etime = 419}}, 	--白羊座
        [4]	= {name = "Taurus", [1]={stime = 420, etime = 430}, [2]={stime = 501, etime = 520}}, 	--金牛座
        [5] = {name = "Gemini", [1]={stime = 521, etime = 531}, [2]={stime = 601, etime = 621}}, 	--双子座
        [6]	= {name = "Cancer", [1]={stime = 622, etime = 630}, [2]={stime = 701, etime = 722}}, 	--巨蟹座
        [7]	= {name = "Leo", [1]={stime = 723, etime = 731}, [2]={stime = 801, etime = 822}}, 	--狮子座
        [8]	= {name = "Virgo", [1]={stime = 823, etime = 831}, [2]={stime = 901, etime = 922}}, 	--处女座
        [9] = {name = "Libra", [1]={stime = 923, etime = 930}, [2]={stime = 1001, etime = 1023}}, 	--天秤座
        [10] = {name = "Scorpio", [1]={stime = 1024, etime = 1031}, [2]={stime = 1101, etime = 1122}}, 	--天蝎座
        [11] = {name = "Sagittarius", [1]={stime = 1123, etime = 1130}, [2]={stime = 1201, etime = 1221}}, 	--射手座
        [12] = {name = "Capricorn", [1]={stime = 1222, etime=1231}, [2]={stime = 101, etime = 119}}, 	--摩羯座
    }
    
};