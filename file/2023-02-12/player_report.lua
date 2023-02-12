--utf8--
{
    --参数配置
    control = {
        day_report_limit = 10,   --每天最多举报次数

        --默认扣分配置
        default_config = {
            key_word = {
                { "黑科技", 10 },
                { "外挂",   20 },
            },
            history_score    = 20,   --历史加成	[10] = 80,
            check_time_zone = {
                [1]  = 20,      --1次以上 20分
                [5]  = 30,      --5次以上
                [10] = 40,      --10次以上
            },
            time_days       = 1,    --统计区间1天
            warning_score   = 60,   --记录入围分数
        },

    },


    --内容分类
    content =
    {

        info_text = {
            [1] = [[
1、文字、图片及任何内容含有色情及政治敏感内容都在违规范围内。
2、点击“定位”按钮可直接跳转至相关信息区域。
3、点击“举报详情”按钮可查看详细被举报信息。
4、点击“审核”按钮后，判断并选取被举报信息是否违规即可，无需进行其他操作。
5、若发现地图和相册信息存在未被举报的违规项，可通过点击“举报”按钮进行处理。
]],
        },


        {
            tid=101,
            title = "存档",
            title_x = "map",
			----  1->色情 2->政治敏感 3->暴力恐怖  4->黑科技外挂  5->盗图盗作品 6->广告 7->欺诈  8->其他
            {
                id=1,                        --选项1  
                text="低俗色情",
                ban_code="porn",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },
            {
                id=2,
                text="软社交",
                ban_code="social",
            },
            {
                id=3,                        --选项2
                text="政治敏感",
                ban_code="politics",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },

            {
                id=4,                        --选项3
                text="涉恐涉暴",
                ban_code="violence",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },
            {
                id=5,                        
                text="血腥恐怖",
                ban_code="fear",
            },			
            {
                id=6,                 
                text="欺骗/欺诈",
                ban_code="fraud",
            },
            {
                id=7,                    
                text="黑科技外挂",
                ban_code="plugin",
                config = {
                    key_word  = {
                        { "黑科技", 10 },
                        { "外挂",   20 },
                    },
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },			
            {
                id=8,             
                text="广告",
                ban_code="ad",
            },
            {
                id=9,             
                text="欺凌/骚扰",
                ban_code="bully",
            },
            {
                id=10,             
                text="价值观",
                ban_code="value",
            },
            {
                id=11,             
                text="不公平玩法",
                ban_code="unfair",
            },
            {
                id=12,                        
                text="其他",
                ban_code="other",
            },
            {
                id=13,                        
                text="文件损坏",
                ban_code="damage",
            },
        },

        {
            tid=102,
            title= "个人中心",
            {
                id=1,                        --个人中心选项1
                text="低俗色情",
                ban_code="porn",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },
			{
                id=2,
                text="软社交",
                ban_code="social",
            },
            {
                id=3,                        --个人中心选项2
                text="政治敏感",
                ban_code="politics",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },
            {
                id=4,                        --个人中心选项3
                text="涉恐涉暴",
                ban_code="violence",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },
            {
                id=5,                        
                text="血腥恐怖",
                ban_code="fear",
            },			
            {
                id=6,                 
                text="欺骗/欺诈",
                ban_code="fraud",
            },
            {
                id=7,              
                text="黑科技外挂",
                ban_code="plugin",
            },
            {
                id=8,             
                text="广告",
                ban_code="ad",
            },
            {
                id=9,             
                text="欺凌/骚扰",
                ban_code="bully",
            },
            {
                id=10,             
                text="价值观",
                ban_code="value",
            },
            {
                id=11,             
                text="不公平玩法",
                ban_code="unfair",
            },
            {
                id=12,                        
                text="其他",
                ban_code="other",
            },
            {
                id=13,                        
                text="文件损坏",
                ban_code="damage",
            },
        },

        {
            tid=103,
            title= "联机",
            {
                id=1,                        --联机选项1
                text="低俗色情",
                ban_code="porn",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },
			{
                id=2,
                text="软社交",
                ban_code="social",
            },
            {
                id=3,                        --联机选项2
                text="政治敏感",
                ban_code="politics",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },
            {
                id=4,                        --联机选项3
                text="涉恐涉暴",
                ban_code="violence",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },
            {
                id=5,                        
                text="血腥恐怖",
                ban_code="fear",
            },			
            {
                id=6,                 
                text="欺骗/欺诈",
                ban_code="fraud",
            },
            {
                id=7,                    
                text="黑科技外挂",
                ban_code="plugin",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },			
            {
                id=8,             
                text="广告",
                ban_code="ad",
            },
            {
                id=9,             
                text="欺凌/骚扰",
                ban_code="bully",
            },
            {
                id=10,             
                text="价值观",
                ban_code="value",
            },
            {
                id=11,             
                text="不公平玩法",
                ban_code="unfair",
            },
            {
                id=12,                        
                text="其他",
                ban_code="other",
            },
            {
                id=13,                        
                text="文件损坏",
                ban_code="damage",
            },
        },

        {
            tid=104,
            title= "地图评论",
            {
                id=1,                        --评论选项1
                text="低俗色情",
                ban_code="porn",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },
			{
                id=2,
                text="软社交",
                ban_code="social",
            },
            {
                id=3,                        --评论选项2
                text="政治敏感",
                ban_code="politics",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },
            {
                id=4,                        --评论选项3
                text="涉恐涉暴",
                ban_code="violence",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },
            {
                id=5,                        
                text="血腥恐怖",
                ban_code="fear",
            },			
            {
                id=6,                 
                text="欺骗/欺诈",
                ban_code="fraud",
            },
            {
                id=7,              
                text="黑科技外挂",
                ban_code="plugin",
            },
            {
                id=8,                        --评论选项4
                text="广告",
                ban_code="ad",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },		
            {
                id=9,             
                text="欺凌/骚扰",
                ban_code="bully",
            },
            {
                id=10,             
                text="价值观",
                ban_code="value",
            },
            {
                id=11,             
                text="不公平玩法",
                ban_code="unfair",
            },
            {
                id=12,                        
                text="其他",
                ban_code="other",
            },
            {
                id=13,                        
                text="文件损坏",
                ban_code="damage",
            },
        },

        {
            tid=105,
            title= "群聊天",
            {
                id=1,                        --群聊天选项4
                text="低俗色情",
                ban_code="porn",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },
			{
                id=2,
                text="软社交",
                ban_code="social",
            },
            {
                id=3,                        --群聊天选项1
                text="政治敏感",
                ban_code="politics",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },
            {
                id=4,                        --群聊天选项2
                text="涉恐涉暴",
                ban_code="violence",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },
            {
                id=5,                        
                text="血腥恐怖",
                ban_code="fear",
            },			
            {
                id=6,                 
                text="欺骗/欺诈",
                ban_code="fraud",
            },
            {
                id=7,              
                text="黑科技外挂",
                ban_code="plugin",
            },
            {
                id=8,             
                text="广告",
                ban_code="ad",
            },
            {
                id=9,             
                text="欺凌/骚扰",
                ban_code="bully",
            },
            {
                id=10,             
                text="价值观",
                ban_code="value",
            },
            {
                id=11,             
                text="不公平玩法",
                ban_code="unfair",
            },
            {
                id=12,                        
                text="其他",
                ban_code="other",
            },
            {
                id=13,                        
                text="文件损坏",
                ban_code="damage",
            },
        },
        {
            tid=106,
            title= "房间",
            {
                id=1,                        --房间选项1
                text="低俗色情",
                ban_code="porn",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },
			{
                id=2,
                text="软社交",
                ban_code="social",
            },
            {
                id=3,                        --房间选项2
                text="政治敏感",
                ban_code="politics",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },
            {
                id=4,                        --房间选项3
                text="涉恐涉暴",
                ban_code="violence",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },
            {
                id=5,                        
                text="血腥恐怖",
                ban_code="fear",
            },			
            {
                id=6,                 
                text="欺骗/欺诈",
                ban_code="fraud",
            },
            {
                id=7,              
                text="黑科技外挂",
                ban_code="plugin",
            },
            {
                id=8,             
                text="广告",
                ban_code="ad",
            },
            {
                id=9,             
                text="欺凌/骚扰",
                ban_code="bully",
            },
            {
                id=10,             
                text="价值观",
                ban_code="value",
            },
            {
                id=11,             
                text="不公平玩法",
                ban_code="unfair",
            },
            {
                id=12,                        
                text="其他",
                ban_code="other",
            },
            {
                id=13,                        
                text="文件损坏",
                ban_code="damage",
            },
        },

        {
            tid=107,
            title= "动态",
            {
                id=1,                        --动态选项1
                text="低俗色情",
                ban_code="porn",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },
			{
                id=2,
                text="软社交",
                ban_code="social",
            },
            {
                id=3,                        --动态选项2
                text="政治敏感",
                ban_code="politics",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },
            {
                id=4,                        --动态选项3
                text="涉恐涉暴",
                ban_code="violence",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },
            {
                id=5,                        
                text="血腥恐怖",
                ban_code="fear",
            },			
            {
                id=6,                 
                text="欺骗/欺诈",
                ban_code="fraud",
            },
            {
                id=7,              
                text="黑科技外挂",
                ban_code="plugin",
            },
            {
                id=8,             
                text="广告",
                ban_code="ad",
            },
            {
                id=9,             
                text="欺凌/骚扰",
                ban_code="bully",
            },
            {
                id=10,             
                text="价值观",
                ban_code="value",
            },
            {
                id=11,             
                text="不公平玩法",
                ban_code="unfair",
            },
            {
                id=12,                        
                text="其他",
                ban_code="other",
            },
            {
                id=13,                        
                text="文件损坏",
                ban_code="damage",
            },
        },

        {
            tid=108,
            title= "动态评论",
            {
                id=1,                        --动态评论选项1
                text="低俗色情",
                ban_code="porn",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },
            {
                id=2,                        
                text="软社交",
                ban_code="social",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },
            {
                id=3,                        --动态评论选项2
                text="政治敏感",
                ban_code="politics",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },
            {
                id=4,                        --动态评论选项3
                text="涉恐涉暴",
                ban_code="violence",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },
            {
                id=5,                        
                text="血腥恐怖",
                ban_code="fear",
            },			
            {
                id=6,                 
                text="欺骗/欺诈",
                ban_code="fraud",
            },
            {
                id=7,              
                text="黑科技外挂",
                ban_code="plugin",
            },
            {
                id=8,             
                text="广告",
                ban_code="ad",
            },
            {
                id=9,             
                text="欺凌/骚扰",
                ban_code="bully",
            },
            {
                id=10,             
                text="价值观",
                ban_code="value",
            },
            {
                id=11,             
                text="不公平玩法",
                ban_code="unfair",
            },
            {
                id=12,                        
                text="其他",
                ban_code="other",
            },
            {
                id=13,                        
                text="文件损坏",
                ban_code="damage",
            },
        },
        {
            tid=109,
            title= "资源商店",
            {
                id=1,                        --资源商店选项1
                text="低俗色情",
                ban_code="porn",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },
			{
                id=2,
                text="软社交",
                ban_code="social",
            },
            {
                id=3,                        --资源商店选项2
                text="政治敏感",
                ban_code="politics",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },
            {
                id=4,                        --资源商店选项3
                text="涉恐涉暴",
                ban_code="violence",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },
            {
                id=5,                        
                text="血腥恐怖",
                ban_code="fear",
            },	
            {
                id=6,                 
                text="欺骗/欺诈",
                ban_code="fraud",
            },
            {
                id=7,              
                text="黑科技外挂",
                ban_code="plugin",
            },
            {
                id=8,             
                text="广告",
                ban_code="ad",
            },
            {
                id=9,             
                text="欺凌/骚扰",
                ban_code="bully",
            },
            {
                id=10,             
                text="价值观",
                ban_code="value",
            },
            {
                id=11,             
                text="不公平玩法",
                ban_code="unfair",
            },
            {
                id=12,                        
                text="其他",
                ban_code="other",
            },
            {
                id=13,                        
                text="文件损坏",
                ban_code="damage",
            },
        },
        {
            tid=110,
            title= "迷你云服",
            {
                id=1,                        
                text="低俗色情",
                ban_code="porn",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },
			{
                id=2,                        
                text="软社交",
                ban_code="social",
            },
            {
                id=3,                        
                text="政治敏感",
                ban_code="politics",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },
            {
                id=4,                        
                text="涉恐涉暴",
                ban_code="violence",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },
            {
                id=5,                        
                text="血腥恐怖",
                ban_code="fear",
            },			
            {
                id=6,                 
                text="欺骗/欺诈",
                ban_code="fraud",
            },
            {
                id=7,              
                text="黑科技外挂",
                ban_code="plugin",
            },
            {
                id=8,             
                text="广告",
                ban_code="ad",
            },
            {
                id=9,             
                text="欺凌/骚扰",
                ban_code="bully",
            },
            {
                id=10,             
                text="价值观",
                ban_code="value",
            },
            {
                id=11,             
                text="不公平玩法",
                ban_code="unfair",
            },
            {
                id=12,                        
                text="其他",
                ban_code="other",
            },
            {
                id=13,                        
                text="文件损坏",
                ban_code="damage",
            },
        },
        {
            tid=111,
            title= "协作模式",
            {
                id=1,                        
                text="色情内容",
                ban_code="porn",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },
			{
                id=2,
                text="软社交",
                ban_code="social",
            },
            {
                id=3,                        
                text="政治敏感",
                ban_code="politics",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },
            {
                id=4,                        
                text="涉恐涉暴",
                ban_code="violence",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },
        },
        {
            tid=112,
            title= "云服公告",
            {
                id=1,                        
                text="低俗色情",
                ban_code="porn",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },
			{
                id=2,                        
                text="软社交",
                ban_code="social",
            },
            {
                id=3,                        
                text="政治敏感",
                ban_code="politics",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },
            {
                id=4,                        
                text="涉恐涉暴",
                ban_code="violence",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },
            {
                id=5,                        
                text="血腥恐怖",
                ban_code="fear",
            },			
            {
                id=6,                 
                text="欺骗/欺诈",
                ban_code="fraud",
            },
            {
                id=7,              
                text="黑科技外挂",
                ban_code="plugin",
            },
            {
                id=8,             
                text="广告",
                ban_code="ad",
            },
            {
                id=9,             
                text="欺凌/骚扰",
                ban_code="bully",
            },
            {
                id=10,             
                text="价值观",
                ban_code="value",
            },
            {
                id=11,             
                text="不公平玩法",
                ban_code="unfair",
            },
            {
                id=12,                        
                text="其他",
                ban_code="other",
            },
            {
                id=13,                        
                text="文件损坏",
                ban_code="damage",
            },
        },
        {
            tid=113,
            title= "聊天举报",
            {
                id=1,                        
                text="低俗色情",
                ban_code="porn",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },
			{
                id=2,                        
                text="软社交",
                ban_code="social",
            },
            {
                id=3,                        
                text="政治敏感",
                ban_code="politics",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },
            {
                id=4,                        
                text="涉恐涉暴",
                ban_code="violence",
                config = {
                    history_score    = 30,   --历史加成
                    check_time_zone = {
                        [1]  = 20,      --1次以上 20分
                        [5]  = 30,      --5次以上
                        [10] = 40,      --10次以上
                    },
                    time_days = 1,          --统计区间1天
                    warning_score   = 60,   --记录入围分数
                },
            },
            {
                id=5,                        
                text="血腥恐怖",
                ban_code="fear",
            },			
            {
                id=6,                 
                text="欺骗/欺诈",
                ban_code="fraud",
            },
            {
                id=7,              
                text="黑科技外挂",
                ban_code="plugin",
            },
            {
                id=8,             
                text="广告",
                ban_code="ad",
            },
            {
                id=9,             
                text="欺凌/骚扰",
                ban_code="bully",
            },
            {
                id=10,             
                text="价值观",
                ban_code="value",
            },
            {
                id=11,             
                text="不公平玩法",
                ban_code="unfair",
            },
            {
                id=12,                        
                text="其他",
                ban_code="other",
            },
            {
                id=13,                        
                text="文件损坏",
                ban_code="damage",
            },
        },
        {
            tid=114,
            title= "语音举报",
            {
                id=1,                        
                text="低俗色情",
                ban_code="porn",
            },
			{
                id=2,                        
                text="软社交",
                ban_code="social",
            },
            {
                id=3,                       
                text="政治敏感",
                ban_code="politics",
            },
            {
                id=4,                    
                text="涉恐涉暴",
                ban_code="violence",
            },
            {
                id=5,                        
                text="血腥恐怖",
                ban_code="fear",
            },			
            {
                id=6,                 
                text="欺骗/欺诈",
                ban_code="fraud",
            },
            {
                id=7,              
                text="黑科技外挂",
                ban_code="plugin",
            },
            {
                id=8,             
                text="广告",
                ban_code="ad",
            },
            {
                id=9,             
                text="欺凌/骚扰",
                ban_code="bully",
            },
            {
                id=10,             
                text="价值观",
                ban_code="value",
            },
            {
                id=11,             
                text="不公平玩法",
                ban_code="unfair",
            },
            {
                id=12,                        
                text="其他",
                ban_code="other",
            },
            {
                id=13,                        
                text="文件损坏",
                ban_code="damage",
            },
        },
        {
            tid=115,
            title= "宠物举报",
            {
                id=1,                        
                text="低俗色情",
                ban_code="porn",
            },
			{
                id=2,                        
                text="软社交",
                ban_code="social",
            },
            {
                id=3,                       
                text="政治敏感",
                ban_code="politics",
            },
            {
                id=4,                    
                text="涉恐涉暴",
                ban_code="violence",
            },
            {
                id=5,                        
                text="血腥恐怖",
                ban_code="fear",
            },			
            {
                id=6,                 
                text="欺骗/欺诈",
                ban_code="fraud",
            },
            {
                id=7,              
                text="黑科技外挂",
                ban_code="plugin",
            },
            {
                id=8,             
                text="广告",
                ban_code="ad",
            },
            {
                id=9,             
                text="欺凌/骚扰",
                ban_code="bully",
            },
            {
                id=10,             
                text="价值观",
                ban_code="value",
            },
            {
                id=11,             
                text="不公平玩法",
                ban_code="unfair",
            },

            {
                id=12,                        
                text="其他",
                ban_code="other",
            },
            {
                id=13,                        
                text="文件损坏",
                ban_code="damage",
            },
        },
        {
            tid=116,
            title= "个人昵称",
            {
                id=1,                        
                text="低俗色情",
                ban_code="porn",
            },
			{
                id=2,                        
                text="软社交",
                ban_code="social",
            },
            {
                id=3,                       
                text="政治敏感",
                ban_code="politics",
            },
            {
                id=4,                    
                text="涉恐涉暴",
                ban_code="violence",
            },
            {
                id=5,                        
                text="血腥恐怖",
                ban_code="fear",
            },			
            {
                id=6,                 
                text="欺骗/欺诈",
                ban_code="fraud",
            },
            {
                id=7,              
                text="黑科技外挂",
                ban_code="plugin",
            },
            {
                id=8,             
                text="广告",
                ban_code="ad",
            },
            {
                id=9,             
                text="欺凌/骚扰",
                ban_code="bully",
            },
            {
                id=10,             
                text="价值观",
                ban_code="value",
            },
            {
                id=11,             
                text="不公平玩法",
                ban_code="unfair",
            },
            {
                id=12,                        
                text="其他",
                ban_code="other",
            },
            {
                id=13,                        
                text="文件损坏",
                ban_code="damage",
            },
        },	
        {
            tid=117,
            title= "个人心情",
            {
                id=1,                        
                text="低俗色情",
                ban_code="porn",
            },
			{
                id=2,                        
                text="软社交",
                ban_code="social",
            },
            {
                id=3,                       
                text="政治敏感",
                ban_code="politics",
            },
            {
                id=4,                    
                text="涉恐涉暴",
                ban_code="violence",
            },
            {
                id=5,                        
                text="血腥恐怖",
                ban_code="fear",
            },			
            {
                id=6,                 
                text="欺骗/欺诈",
                ban_code="fraud",
            },
            {
                id=7,              
                text="黑科技外挂",
                ban_code="plugin",
            },
            {
                id=8,             
                text="广告",
                ban_code="ad",
            },
            {
                id=9,             
                text="欺凌/骚扰",
                ban_code="bully",
            },
            {
                id=10,             
                text="价值观",
                ban_code="value",
            },
            {
                id=11,             
                text="不公平玩法",
                ban_code="unfair",
            },
            {
                id=12,                        
                text="其他",
                ban_code="other",
            },
            {
                id=13,                        
                text="文件损坏",
                ban_code="damage",
            },
        },	
        {
            tid=118,
            title= "群组名称",
            {
                id=1,                        
                text="低俗色情",
                ban_code="porn",
            },
			{
                id=2,                        
                text="软社交",
                ban_code="social",
            },
            {
                id=3,                       
                text="政治敏感",
                ban_code="politics",
            },
            {
                id=4,                    
                text="涉恐涉暴",
                ban_code="violence",
            },
            {
                id=5,                        
                text="血腥恐怖",
                ban_code="fear",
            },			
            {
                id=6,                 
                text="欺骗/欺诈",
                ban_code="fraud",
            },
            {
                id=7,              
                text="黑科技外挂",
                ban_code="plugin",
            },
            {
                id=8,             
                text="广告",
                ban_code="ad",
            },
            {
                id=9,             
                text="欺凌/骚扰",
                ban_code="bully",
            },
            {
                id=10,             
                text="价值观",
                ban_code="value",
            },
            {
                id=11,             
                text="不公平玩法",
                ban_code="unfair",
            },
            {
                id=12,                        
                text="其他",
                ban_code="other",
            },
            {
                id=13,                        
                text="文件损坏",
                ban_code="damage",
            },
        },	
        {
            tid=119,
            title= "定制装扮名称",
            {
                id=1,                        
                text="低俗色情",
                ban_code="porn",
            },
			{
                id=2,                        
                text="软社交",
                ban_code="social",
            },
            {
                id=3,                       
                text="政治敏感",
                ban_code="politics",
            },
            {
                id=4,                    
                text="涉恐涉暴",
                ban_code="violence",
            },
            {
                id=5,                        
                text="血腥恐怖",
                ban_code="fear",
            },			
            {
                id=6,                 
                text="欺骗/欺诈",
                ban_code="fraud",
            },
            {
                id=7,              
                text="黑科技外挂",
                ban_code="plugin",
            },
            {
                id=8,             
                text="广告",
                ban_code="ad",
            },
            {
                id=9,             
                text="欺凌/骚扰",
                ban_code="bully",
            },
            {
                id=10,             
                text="价值观",
                ban_code="value",
            },
            {
                id=11,             
                text="不公平玩法",
                ban_code="unfair",
            },
            {
                id=12,                        
                text="其他",
                ban_code="other",
            },
            {
                id=13,                        
                text="文件损坏",
                ban_code="damage",
            },
        },
		{
            tid=120,
            title= "组队名称",
            {
                id=1,                        
                text="低俗色情",
                ban_code="porn",
            },
			{
                id=2,                        
                text="软社交",
                ban_code="social",
            },
            {
                id=3,                       
                text="政治敏感",
                ban_code="politics",
            },
            {
                id=4,                    
                text="涉恐涉暴",
                ban_code="violence",
            },
            {
                id=5,                        
                text="血腥恐怖",
                ban_code="fear",
            },			
            {
                id=6,                 
                text="欺骗/欺诈",
                ban_code="fraud",
            },
            {
                id=7,              
                text="黑科技外挂",
                ban_code="plugin",
            },
            {
                id=8,             
                text="广告",
                ban_code="ad",
            },
            {
                id=9,             
                text="欺凌/骚扰",
                ban_code="bully",
            },
            {
                id=10,             
                text="价值观",
                ban_code="value",
            },
            {
                id=11,             
                text="不公平玩法",
                ban_code="unfair",
            },
            {
                id=12,                        
                text="其他",
                ban_code="other",
            },
            {
                id=13,                        
                text="文件损坏",
                ban_code="damage",
            },
        },

    },
}
