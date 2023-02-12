{
	onshow = 1,							--0代表入口关闭,1代表入口开启
	version_min = "1.7.0",  --版本号控制
    white_cfg_uin = "1000043024,1000043025,1000043024",          -- 白名单 英文逗号分隔，配置的账号会忽略onshow的值，强制认为onshow=1

	--当前版本 下面的配置配置均无效

	activity_key = "activity_concert",
	user_task_key = "music_xmy",

    white_cfg_song_duration = 10,   --为了方便测试，白名单id可配置单曲的时长强制多少秒切歌

	apiids = "",			--控制：允许的渠道 空字符串表示允许所有渠道
	apiids_no = "",	--控制：排除的渠道 	

    title_name = "电音派对", --音乐会名字 目前是联机大厅按钮上显示
    --icon_url = "",
    icon_name = "电音派对",

	-- 时间配置
	act_show_time			= "2021-10-21 13:23:00",		--活动入口展示 开始时间
	begin_time				= "2021-10-21 13:23:10",		--演唱会 开始时间
	duration_second			= 10,							--演唱会 持续时长 单位：秒
	upfont_join_second		= 10,							--可提前加入房间的时间 单位：秒
	act_hide_delay_second		= 10,						--演唱会结束后隐藏活动入口延时 单位：秒

    -- 拍脸图设置
    -- 2021-10-19 此act_face_cfg配置已屏蔽不再生效
    -- 拍脸图请使用 version中的StrongBullet_Pop_New， id为51
    -- 运营活动页 id同样请配置为51
    act_face_cfg = {
        -- 拍脸图片 url
        face_img  = "",        
        -- 进入活动页按钮图片 url 不配表示没有这个按钮
        gotobtn_img = "",
        -- 进入活动页按钮 相对于 拍脸图片的位置
        gotobtn_anchor = {
            point = "bottomright",
            relative_point = "bottomright",
            x = -30,
            y = -30,
        },
        -- 关闭按钮 相对于 拍脸图片的位置
        closebtn_anchor = {
            point = "topright",
            relative_point = "topright",
            x = -50,
            y = 10,
        }
    },


	-- 展示内容配置
	activity_hint = "",

	concert_title = "",

	concert_desc = "",

	-- 这是活动主页宣传图片的url，560*330 暂定
	spread_img = "",

	-- 活动页 音乐配置 仅支持配置QQ音乐ID
	musics_ids = {
	}
}