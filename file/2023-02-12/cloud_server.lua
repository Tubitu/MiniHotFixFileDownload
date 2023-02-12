{
--移速、飞天检测开关1
	anti_switch = 
	{
		speed = 0,
		fly = 0,
		cloud_speed = 0,
		cloud_fly = 0,
	},

    -- 以下开关型值，使用位标记，第一位开关，第二位提示 第三位踢人
    -- 例如 0关闭 1检测 3检测+提示 5检测+踢人
	anti_setting = 
	{
		speed = 0,
		fly = 1,
		cloud_speed = 0,
		cloud_fly = 1,
		
		use_item_dist_limit_base = 160000, -- 道具使用距离基础值, (v^0.5/100)为格数, 如40000代表2格
		switch_dig_distance = 0,          -- 挖掘距离检测

		switch_place_block_distance = 1,  -- 放置方块距离检测
        block_distance_limit = 140,        -- 放置方块limit

		switch_move_protocal = 0,   -- 是否检测移动协议频率
		check_move_timeout = 15000,  -- 移动协议超时时间ms

        switch_use_map_edit = 5,    -- 地图编辑器检测
		switch_jump_height = 1,     -- 跳跃高度检测

		switch_ace_taken = 0,       -- 是否检测ace防剥离
		switch_heartbeat_speed = 5, -- 心跳加速检测

        switch_clip_state = 5,      -- 穿透检测
		switch_host_clip = 5,      -- 云服穿透检测

		switch_tackle = 3,			-- 滑铲
		switch_grab = 3,			-- 抢断
		switch_dribble = 3,			-- 运球突破

		switch_packgift = 7,   -- 检测包裹道具 此开关三位分别控制三个判断 不做提示与踢人

		switch_no_coll = 1,     --检测玩家在方块中(穿墙)

		-- 仅客户端生效
		client_setting = {
            switch_inwater = 1,
		},
        -- 仅云服生效
		server_setting = {
			fly = 5,
            switch_multi_login = 1,  -- 检测多登
			switch_use_item_distance = 1,     -- 道具使用距离检测
            switch_ad_shop_intv = 1, -- 检查冒险商人购买频率
            switch_inwater = 5,
            switch_music_paper_gain = 5,  -- 乐谱获取
            switch_client_inwater = 1,   -- 游泳
		},
	},

	-- server特定gm 可使用gm指令
	server_gm = 
	{
		1249086286, -- lsj
        782091413,  -- wangxiong
		10006, -- gyy
	},
    -- 使用mod下载缓存
	use_mod_cache = 1,
	--  上报在线信息得间隔（秒）
	report_online_time = 600,
    -- test
	patch_setting = {
		bsdiff_open = 1,                    --差分开关 0 关闭， 1打开
		patch_url = "http://cs-patch.mini1.cn:8890",--patch server地址
		download_count = 1000,                --下载次数超过标准才进行差分
	},

}