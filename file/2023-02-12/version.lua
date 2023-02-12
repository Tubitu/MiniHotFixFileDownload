-- utf-8 --
{  
    ver = '0.12.5',
	_file_desc_ = "version_0",

    s7    = 1,
	s7_V2 = 1,
    webp  = 1,
    gzip  = 1,

	BusinessRealNameSwitch ={     --商业化实名开关
        Subscription = {           --订阅实名
                apiids = "1,7,45,999", 
                version_min = "1.3.0", 
                startime = "2021-08-01 00:00:00",
                endtime = "2022-08-30 00:00:00", 
                city = "*",
                realname = 1,      --0关闭 1开启
        },
 
        Askfor_Skin = {            --装扮代付实名
                apiids = "1,7,45,999", 
                version_min = "1.3.0", 
                startime = "2021-08-1 00:00:00",
                endtime = "2022-08-31 00:00:00", 
                city = "*",
                realname = 1,      --0关闭 1开启
        },
        
        Askfor_MiniCoin = {        --迷你币代付实名
                apiids = "1,7,45,999", 
                version_min = "1.3.0", 
                startime = "2021-08-1 00:00:00",
                endtime = "2022-08-31 00:00:00", 
                city = "*",
                realname = 1,      --0关闭 1开启
        },
        
        Askfor_BP = {              --bp卡代付实名 
                apiids = "1,999", 
                version_min = "1.3.0", 
                startime = "2021-08-1 00:00:00",
                endtime = "2022-08-31 00:00:00", 
                city = "*",
                realname = 1,      --0关闭 1开启
        },                
  },
----------------------------------------------------------------------------
	-- 最佳拍档配置
	partnerCfg = {
		-- 开关配置
		switch = {
			-- 个人中心【最佳拍档】入口
			playerCenter_entry = {
				Open = 1, -- 0.关闭 1.开启
				version_min = '1.23.0',
			},
			-- 个人中心【最佳拍档】双人展示
			playerCenter_RoleShow = {
				Open = 1, -- 0.关闭 1.开启
				version_min = '1.23.0',
			},
			-- 好友页【最佳拍档】入口
			friend_entry = {
				Open = 1, -- 0.关闭 1.开启
				version_min = '1.23.0',
			},
			-- 好友页【最佳拍档】添加关系选项
			friend_relation = {
				Open = 1, -- 0.关闭 1.开启
				version_min = '1.23.0',
			},

			-- 添加关系页选项
			relations = {
				-- 【挚友】
				[1] = {
					Open = 1, -- 0.关闭 1.开启
					version_min = '1.23.0',
				},
				-- 【知己】
				[2] = {
					Open = 1, -- 0.关闭 1.开启
					version_min = '1.23.0',
				},
				-- 【姐妹】
				[3] = {
					Open = 1, -- 0.关闭 1.开启
					version_min = '1.23.0',
				},
				-- 【兄弟】
				[4] = {
					Open = 1, -- 0.关闭 1.开启
					version_min = '1.23.0',
				},

			},
		},
		maxCount = 4,
		reportLen = 360, -- 单位s
		levelScore = {
			[1] = 100,
			[2] = 600,
			[3] = 2000,
		},
		relasion_level = {
			[1] = {
				[1] = {
					level = 1,
					name = '挚友',
					icon = 'Partners_icon01',
					award_id = 1,
				},
				[2] = {
					level = 1,
					name = '挚友',
					icon = 'Partners_icon01',
					award_id = 1,
				},
				[3] = {
					level = 1,
					name = '挚友',
					icon = 'Partners_icon01',
					award_id = 1,
				},
			},
			[2] = {
				[1] = {
					level = 1,
					name = '知己',
					icon = 'Partners_icon04',
					award_id = 1,
				},
				[2] = {
					level = 1,
					name = '知己',
					icon = 'Partners_icon05',
					award_id = 2,
				},
				[3] = {
					level = 1,
					name = '知己',
					icon = 'Partners_icon06',
					award_id = 3,
				},
			},
			[3] = {
				[1] = {
					level = 1,
					name = '姐妹',
					icon = 'Partners_icon07',
					award_id = 1,
				},
				[2] = {
					level = 1,
					name = '姐妹',
					icon = 'Partners_icon08',
					award_id = 2,
				},
				[3] = {
					level = 1,
					name = '姐妹',
					icon = 'Partners_icon09',
					award_id = 3,
				},
			},
			[4] = {
				[1] = {
					level = 1,
					name = '兄弟',
					icon = 'Partners_icon10',
					award_id = 1,
				},
				[2] = {
					level = 1,
					name = '兄弟',
					icon = 'Partners_icon11',
					award_id = 2,
				},
				[3] = {
					level = 1,
					name = '兄弟',
					icon = 'Partners_icon12',
					award_id = 3,
				},
			},
		}

	},

    ----------------------------------------------------------------------------

	--语音转文字
	speechRecognizeCfg = {
                version_min = "1.20.10",
                apiids = '1,999',
        },


-- 新聊天系统配置
pushchat = { pushchannel=1, pushlb = "http://chatpush.mini1.cn:19601/,http://124.71.3.13:19601/,http://139.9.33.216:19601/,http://139.159.153.81:19601/" , uins="*", apiids = "1,110,79,3,34,11,12,45,2,121,45,7,36", allopen=1 },
chatpushmsg = { msgurls = "http://chatpush.mini1.cn:19601/,http://124.71.3.13:19601/,http://139.9.33.216:19601/,http://139.159.153.81:19601/", apiids = "9999", allopen = 0 },


--组队客户端开关，默认关闭
team = {
	uin_list = '935963178,845164719,623047860,1182271222,918296141,856757223,2222,1313764525,1310035266,1316440036', --uin 列表
	version_min = '1.1.5',  -- 最低版本
	open = 1, -- 1 打开 0 关闭
},

----------------------------------------------------------------------------------------------------------------
-- achieve参数校验
ach_check_param_cfg = {
    check_key = 'mini1_achieve'	
},

----------------------------------------------------------------------------------------------------------------
------回流系统开关
	back_conf = {
       apiids_no = '9999', version_min = "0.50.0",   
	},

-------------------------------------------------------------

recharge =      --充值支付sdk分渠道屏蔽
{
  close_list = "32,38,39,40,41,42",
},
-------------------------------------------------------------


--删除账号历史记录按钮不显示开关
delete_history_btn_option = { apiids = '45,53,999,1,110', version_min = "0.49.0",},


----------------------------------------------------------------------------
	-- 快手绑定相关
	kuaishou_bind = { 
		version_min = "0.49.0",
        version_max = "1.20.6",
		Loginshow = 1,  -- 1时入口展示， =0时关闭
        onshow = 1,     -- onshow=1入口展示, onshow=0关闭
        action = 1,     -- 跳转绑定页面 
        jpg = "beijingtu1",		-- 背景图素材
	},


----------------------------------------------------------------------------
	-- ios 手Q 登录屏蔽内容0关闭；1开启
	ios_qq_login = {
	PullQQFriendData = 1,       --拉取好友列表好友数据
    QQFriendList = 1,           --手Q同玩好友列表
    mainQQFriend = 1,           --主界面侧边好友栏
    roomInviteQQFriends = 1,    --房间内邀请手Q好友按钮
    homeQQFriend = 1,           --家园手Q同玩好友列表
    QQSharePic  = 1,            --分享图片
    QQWaterSharingEntrance = 1, --浇水分享入口
    mainQQMembershipIcon = 1,   --主界面会员图标
    QQMembershipIcon = 1,--个人中心会员图标
	},
    ios_qq_ver={version_min="0.51.0"},

    ios_qq_bind = { 
        -- ios迷你号登录绑定QQ相关
        onshow = 1,     -- 用于控制QQ图标入口icon展示, onshow=1入口展示, onshow=0关闭
        action = 1,     -- 跳转， action=1跳转绑定并拉起QQapp进行授权绑定 
        red_mark={--配置开启,不配置默认不显示红点
                cd=86400,--刷新间隔,以秒为单位
                count=1,--周期内红点展示次数
               
         },
	},

----------------------------------------------------
--国内游密语音开关
yume_voice_option = { apiids = '', version_min = "0.49.0",},

voice_no_audit = {apiids_no = "", version_min = "0.49.0",}, -- 送审的渠道配置

--是否打开youme防沉迷开关 1就打开 0就关闭
--如果打开就是limit_rule_login.limit_rule时间段才能使用 
    yume_voice_limit_rule_open = 1,
--youme变声配置参数 一共6个
youme_magic_voice_info = {
	"{\"effectInfo\":\"GEdTXFpaEzYQWldUbF1fUhpbAFFOGgQRFlsAHxpcEGEtbHsnBgoAInFRciNTDVBeJ1ZzAQoDJnZVD1InCg1yIFtSAAUHDFxbIHAFDhoYEFVKAF0FQAJHLjZgKkQURFFIF2ZXEFBaXRJXQw5EBUoPUFFOQApSFEkXB14FBlpAfQBBXwoDAhlGBwxXYlFVURANCVcEU1AKUlBTAElEXhRXXSRWRC5aX10QEFtPRAZdBQ8LN19fVhRfBU4aBg1dYF0JBkcIABoXDREkQVNdfltAe1EMWhVAAgMACkMAGxREW0skS1MHEQhAFkcEGEQNSzIHHAZSEAlQBFkRXU9BVFtQAQ9HCBJmdyEvUgMUFBpaU1pdQwlDh53WhvKvgNa3g5+Rh7auh5aB0ceCQxhEC00WMxYGRHtXFF8XF0sGEQgEBFJBSRBAV1YPAwVWeFlVURANGgJcDExBChQLVUsfVQtTXwtaQA1aUVEAVwxbBwpcEAkMBxQeEUYERwNVQVkbRGQVOxAFU0V0Ug0VAkQPfQcLRUsbBQcQS1E0NnQpJwFSBGI6algJB3ZNMVUiRAAVfls8AzQAAFxvFGAOSw4NaFUMIwhdWwd4AylTCFxbfxNccW9iB2UPDQEdIyAADA1sEFZ1VhJdJQN2DS1zAncKEkgVIU4tZ1VxUQB0L1kpAnhEGy8uIwNzdF0xAw1fBFpgYHRtWS1GOCZPMzgFfikAFzwAdzV3DiALaFwpBiIHNjZACCgzJGJjfwc8GjNNURBLd3cIEgZgfHNWEBcGAwR0TQVFZRNRYyszblFSUUVQDmocZA4sa1JUeHRaUWZUHww2bQwUKw4HZ0RiFVQlDgdMcWVEVyExAlt1UxVNTVthbl5CYVNUBlcZFGhcJU11UxZZHnsPFVN+G3dAHzUPQxhEFFQDEgMMRF8RDFQZQEsaEG9RRkZZRwMAFBlGFxdaUhoCFgcDDVMBU1RcSFdTVVBLDFEFXE8BB1QEH1EHC1YFBAAKV15VBxRP\",\"innerUserId\":\"694370621701812225\"}",
	"{\"effectInfo\":\"GEdTXFpaEzYQWldUbF1fUhpbAFFOGgQRFlsAHxpcEGEtbHsnBgoAInFRciNTDVBeJ1ZzAQoDJnZVD1InCg1yIFtSAAUHDFxbIHAFDhoYEFVKAF0FQAJHLjZgKkQURFFIF2ZXEFBaXRJXQw5EBUoPUFFOQApSFEkXB14FBlpAfQBBXwoDBRlGBwxXYlFVURANCVcEU1AKUlBTAElEXhRXXSRWRC5aX10QEFtPRAZdBQ8LN19fVhRfBU4aBg1dYF0JBkcIABoXDREkQVNdfltAe1EMWhVAAgMACkMAGxREW0skS1MHEQhAFkcEGEQNSzIHHAZSEAlQBFkRXU9BVFtQAQ9HCBJmdyEvUgMUFBpaU1pdQwlDh4j0hMODjPmLS9SY5dyx5NyOvIGX0tDeydH91YrfvxAfFApAFm0QBkt9UEZZR0dDU0dVUlIFFBQaRFNUUwBUBCxZCARECkcFVwscQQ1MWwcdS1kJUwZdBRJXCwUAB1NfXFcLURBXCgcbGBYUAhdTXRQPRjNbagVOSQF3Um0kUDE4TAcuAV5QDlEjdVQIVFJWaXlzAwQbGyIJTVILDDthXQVXBlxUSiohdVFtIBoGRGIDByMIG0RRbw9HHWZpEH4EKQ1TBCdmD1NiU1QBVkoOAUNrcS1GC04KKFMDKysBX0VwYTJdIE9QFlp2WR4tUVcGfh4IEldlTEJeH0tASS5aMyUAVjY8XysXFzdQASBwHS1rWlg2exYFXhMIMR83NnkAdWUIGjpJJ1thZgU8Cy1Eex0BCQcNeEZ0TUxldgxQACYxaQEWF0FXERc0X0k2Fn4qRUUNBUoOcw0cYRc+JwEESmYFAXAEdTNUAEYEFDozdlEdQQ4LBAFQW04fA0B+WFo4VG0zB15hNglUU3dxBAFEMGdHUl1AA3IlHn0qTTQxe2UFBAJ6DHATImxfBSwnKmdSXkQVUgECTllWTl5FeTFCUw8OPSsNWSYRbzRFCCl1Ug4DXWAVUwABUQtuICpXVVpzHFM9fBcNMxZdZmE9BhFwdV9lKlAFGHpsXVdmZQECajERVysHVEUjFFE2Bl9UfVk4XFsHVWMgbDMzdwNXUQ0BeQRFKgQWbgErSX1NTzs8Vnh4bAhAThFGVFlAVFhKDBFbUxRHEh9DMwNKRAgaUwkUThFHQQ1WQw5EUQxXVFdRAFYeAFBQVxVXVA5QGVxSUwUdU1ZdVVNRUgoNDAJTGhw=\",\"innerUserId\":\"694370621701812225\"}",
	"{\"effectInfo\":\"GEdTXFpaEzYQWldUbF1fUhpbAFFOGgQRFlsAHxpcEGEtbHsnBgoAInFRciNTDVBeJ1ZzAQoDJnZVD1InCg1yIFtSAAUHDFxbIHAFDhoYEFVKAF0FQAJHLjZgKkQURFFIF2ZXEFBaXRJXQw5EBUoPUFFOQApSFEkXB14FBlpAfQBBXwoDBBlGBwxXYlFVURANCVcEU1AKUlBTAElEXhRXXSRWRC5aX10QEFtPRAZdBQ8LN19fVhRfBU4aBg1dYF0JBkcIABoXDREkQVNdfltAe1EMWhVAAgMACkMAGxREW0skS1MHEQhAFkcEGEQNSzIHHAZSEAlQBFkRXU9BVFtQAQ9HCBJmdyEvUgMUFBpaU1pdQwlDhazShMWAgNa3g5+Rh7auhaeF0ceCQxhEC00WMxYGRHtXFF8XF0sGEQgEBFJBSRBAV1YPAwVWeFlVURANGgJcDExBChQLVUsfVQtTXwtaQA1aUVEAVwxbBwpcEAkMBxQeEUYERwNVQVkbRGQVOxAFU0V0Ug0VAkQPfQcLRUsbBQcQS1E0NnQpJwFSBGI6algJB3ZNMVUiRAAVfls8AzQAAFxvFGAOSw4NaFUMIwhdWwd4AylTCFxbfxNccW9iB2UPDQEdIyAADA1sEFZ1VhJdJQN2DSgEKkYMEUoAPC43BHwBRgIFMFAPIFxbB1wQN3gAc1cpIBRhQl9qDANRVgV5MiRyEE4rcw4XdzAFXjp9QzELAmMiSFh9HjFXMjQJUgMGf2QWdgZZMQ4Wenc1EQp1QX8MUzETXlRhXn9DAWgKXConVjQ4EWEgH2sIAgFTWnMFQXttHQo0BzMuYioNKw5DfXVHEAEYASc6UlFNF0wgdGUGRBILO3FeaklFB0dpEVQNFQogKhdCAQpwAHx5F1tyBkZFRQsPQxhEFFQDEgMMRF8RDFQZQEsaEG9RRkZZRwMAFBlGFxdaUhoCFgcDDVMBU1RcSFdTVVBLDFEFXE8BB1QEH1EHC1YFBAAKV15VBxRP\",\"innerUserId\":\"694370621701812225\"}",
	"{\"effectInfo\":\"GEdTXFpaEzYQWldUbF1fUhpbAFFOGgQRFlsAHxpcEGEtbHsnBgoAInFRciNTDVBeJ1ZzAQoDJnZVD1InCg1yIFtSAAUHDFxbIHAFDhoYEFVKAF0FQAJHLjZgKkQURFFIF2ZXEFBaXRJXQw5EBUoPUFFOQApSFEkXB14FBlpAfQBBXwoDBxlGBwxXYlFVURANCVcEU1AKUlBTAElEXhRXXSRWRC5aX10QEFtPRAZdBQ8LN19fVhRfBU4aBg1dYF0JBkcIABoXDREkQVNdfltAe1EMWhVAAgMACkMAGxREW0skS1MHEQhAFkcEGEQNSzIHHAZSEAlQBFkRXU9BVFtQAQ9HCBJmdyEvUgMUFBpaU1pdQwlDh4j0hN+EjPmLS9SY5dyx5NyOvIOm1tDeydH91YL3nt2Pv0cZQFcWF2xHURYqARAKFEAXBxACBggOFh4VSABQCgNfAC8HXQBEAkRRVw8XTw1GX1FKSwxZBwNRARAKClVXV1MIWgNWBxFWXVBGT0dCUURUCUBYEUZoSWxHAFsSclcNT1QTUXVWX0oVSA4ES0VWZmJwKHNYAFA+YDEIDldyS2ZRJkUESSVaY1JjUlEKa0FjWRcPDGJXAH9fCl4PLwUsU1IKDCEbDSVgPFRuDFYPGnF0BA1ZNUICKQxJDSJTcgt6ZSpNMWoEW05WXShbVGh0GQEzEzZfAg9uAAdnTi19Mgx8NAtRCT0PWlREeklDWhVVVkQhdylTDFV6FTQHJn0dRAE2Bg8KLFRufU4DAQB6AEN/CSEBRHJUUAZEZwwMXgBVViQ4TXsLHmEkZEAHXk4RB2EHB1oyVw5VC1AOPyxidFh4CmwFCigtV1ZlDg8hCnJCUhUYF1xTVlBfXnpzDwAXWl4pNzNgBxMBKUF0IwlaAXtnZS9cUBsDDndTM1YQUFhAC0cZQEgPAk1SWxYORwgBGhcXGxFlU0oaDhAGCEMfQxdNDAVECkdTDFMAClAPUk8FB1FRH1UDUQAVWldTVBtXUA9SBABcUVYBBFBGHg==\",\"innerUserId\":\"694370621701812225\"}",
	"{\"effectInfo\":\"GEdTXFpaEzYQWldUbF1fUhpbAFFOGgQRFlsAHxpcEGEtbHsnBgoAInFRciNTDVBeJ1ZzAQoDJnZVD1InCg1yIFtSAAUHDFxbIHAFDhoYEFVKAF0FQAJHLjZgKkQURFFIF2ZXEFBaXRJXQw5EBUoPUFFOQApSFEkXB14FBlpAfQBBXwoDBhlGBwxXYlFVURANCVcEU1AKUlBTAElEXhRXXSRWRC5aX10QEFtPRAZdBQ8LN19fVhRfBU4aBg1dYF0JBkcIABoXDREkQVNdfltAe1EMWhVAAgMACkMAGxREW0skS1MHEQhAFkcEGEQNSzIHHAZSEAlQBFkRXU9BVFtQAQ9HCBJmdyEvUgMUFBpaU1pdQwlDhJXGhMKaitqwgaaPhoGbi6yB0/CajojvRhRACRAXY0FWRCxRQAJBFkpRRlVTVQQSGhcUAwFYV19delNaXUMJQwFXCE8fXxALXUhLVQ9YUQtQRFsNUQRQAwlXAwgBEVlbVxRJFxJZEQJUFg5GEzVDaEMCBxEjBVlPCUYFcgtYQRIYDgMTFQQwNnwqcwFWD2w6YFxfUHYYYQEnSAQXI1psVGQAV1o7STYPSllaNQJddVsOXFMsVH4HUldZdRxQIms7BG4LDl9IJyAID1lsFF17VhhZc1R2WHgfNFUmLVczRQdBXEp+IFdSNXpRbiIUInEJAldTNwUDU2tsewdbTTgGKA56IRVWdgQTcFRnegMKbCxiVFIndCBiEQwJLAgjE3VTHB0JeCZ5Ww8KbXA+JQ8Cfl4ACQMWGFcPEwF4bwlXZSgQYFcJLANQAFMQZlklQ2MjA0FTJkpOBxMSChseAwpeQUFgImM4YTkhdXYGLipcQGEZZSY2W0FXDm1iBmRBSl8zK3NQGVd4AilLXlFhJ05xCkRkTBBaKwBbRhRAFgkCQlRcRAgXWAlPQUpNRzIGFxAKFARUQE4RQ01RUBANGlQHVFAKV1cCHVNTXVMfDFUOUk8LAwJTHwRXX1MJAAJXVg4CVxQY\",\"innerUserId\":\"694370621701812225\"}",
	"{\"effectInfo\":\"GEdTXFpaEzYQWldUbF1fUhpbAFFOGgQRFlsAHxpcEGEtbHsnBgoAInFRciNTDVBeJ1ZzAQoDJnZVD1InCg1yIFtSAAUHDFxbIHAFDhoYEFVKAF0FQAJHLjZgKkQURFFIF2ZXEFBaXRJXQw5EBUoPUFFOQApSFEkXB14FBlpAfQBBXwoCDxlGBwxXYlFVURANCVcEU1AKUlBTAElEXhRXXSRWRC5aX10QEFtPRAZdBQ8LN19fVhRfBU4aBg1dYF0JBkcIABoXDREkQVNdfltAe1EMWhVAAgMACkMAGxREW0skS1MHEQhAFkcEGEQNSzIHHAZSEAlQBFkRXU9BVFtQAQ9HCBJmdyEvUgMUFBpaU1pdQwlDiqj4iei5jPmLiY6wh5yFi5iq3fuBhqDOi4TrRElBWUdHYxZQEHEHQQMWQRcGFwMABgNGTkBDV1tTVVVSdgBeBEACRwIJXUsfVxNfXUxAWw9SVV0HRA5dBQFcBwsKAlhWQVkMUUAUQRNYRlUJQV8QdhkFIVBWV10LV04HVFcrZlAkSBE5CkQ1MwteQW8bdFpQXGhjIQoSUVIlXgclLTlAVGAHA29NfQIxXXp1BzYvQwNCRBAxVl51Sl5kAnlLUAEUOF8BEDJBFgFiDWdAMWBkAAJkB1Z+JV0kNg8bDlUoWgdbAhxhMWs6C1NAX0sPCGJ8VEMTDglXZXZifmh/d1RkFFNCMwgkBlMifklWSBZuAw5CQAEjQlZmKAUMNzMmJWBEVEI0XRANFjtPeV4CBjNlU35TN1RaVUJpd25eGEgVXTcEeh8ALHwnK1kAA2ALAGwWZBl2VHMjXCQSWhc8UzRsaxh3E2dWcgUNC3xhFw8THQlvdDMAJHRBXXNmWUdBF0EHNlQwKSh5VD93X0F/GHdkIAoCXTNnOG5RPV41FgBRWUNxfj8DDXoLUgFuDDNIXX5CfF1WWiNpBBNgW2tYQlBjLlBuEDkNdgtWbSpTSQMORzNLd1YzfyZ+EilaElZUJ18EUmxRbzN/KRJVYkRTKSkLEhoXFA4DR1BXSlkQDQlNERIbSzMEFBJfRAlWEBRATEMLVxAORgdVAVRWClQCSFUDVwYbUQJVXE5bCAIDSQYGCwcHVwBQVwsGXBpJ\",\"innerUserId\":\"694370621701812225\"}",
},
--------------------------------------------------------------------------------------------

punisher  = {
     voice = {
        Engine = 'yitu',
        returnAllText = false,
	    callback = {
			[1] = "http://139.9.38.19:8800/",
            [2] = "http://139.9.38.19:8800/",
			[3] = "http://139.9.38.19:8800/",
			[4] = "http://139.9.38.19:8800/",
			[5] = "http://139.9.38.19:8800/",
			[6] = "http://139.9.38.19:8800/",
			[7] = "http://139.9.38.19:8800/",
			[8] = "http://139.9.38.19:8800/",
			[9] = "http://139.9.38.19:8800/",
			[10] = "http://139.9.38.19:8800/",
		},
		
     }
},
-------------------------------------------------------


	subscribe = {
 		appid_no = '52,36,8,17,18,19,7,55,7,12',
        version_min = '0.32.0',
        option1 = {
        pic1_url = 'https://webpicture.mini1.cn/20230121/180559c9358aad-af5a-7910-aeda-d687684ee787.jpg',
        action = 2,
        id=20220920001,
        },
        option2 = {
        pic2_url = 'https://webpicture.mini1.cn/20230103/0951255af0c779-6c8f-700c-2665-8e2fea3e37bf.png',
        action = 0, --0打开链接，1打开小程序
id=20220920001,
        action_url = 'sinaweibo://pageinfo?containerid=100808b15d3c7fa16d675174ad3c7bfff3843c&extparam=%E8%BF%B7%E4%BD%A0%E6%9E%AA%E6%88%98%E7%B2%BE%E8%8B%B1&luicode=10000360&lfid=OP_7536668035&launchid=10000360-OP_7536668035&wm=90069_90001'
        }
},

		Special_rechageguide_apiids = "9999",   --特殊档位充值引导
		Normal_rechageguide_apiids = "1,45,110,999",       --普通档位充值引导



	-- 进入房间load页面
        loading_room_list = {
                [1] ={path= 'https://webpicture.mini1.cn/20221118/17544852ae648e-b23e-8572-f53c-b51bd761c075.jpg',md5 = '6EFCE824F9CEE08D3A74A2AE491D9D30',},--2022全民空谷
                [2] ={path= 'https://webpicture.mini1.cn/20220708/18234559e7760a-3691-332f-769a-4572345329d3.jpg',md5 = 'E9DADE40C3C10FD6D27D6BA2AF6E13B9',},--温暖冬天
                [3] ={path= 'https://webpicture.mini1.cn/20220708/182345775ca857-e61e-cbe5-92cc-647a96ce9536.jpg',md5 = '7957DFE95D97ED7E2A6254FDA382F370',},--末世
                [4] ={path= 'https://webpicture.mini1.cn/20220708/1823458b357077-b231-be42-18bb-6a25be8ba2df.jpg',md5 = '85A4FEAD5E814518865AA02DFA6A99A6',},--宫殿
                [5] ={path= 'https://webpicture.mini1.cn/20220926/19505435291413-6f59-9dbb-c5be-80946e1a80cc.jpg',md5 = 'b57d0b65c5bdd487e57854389b0e60e7',},--逆世界
                [6] ={path= 'https://webpicture.mini1.cn/20220926/195054ef03dbd8-d2aa-9553-c0cc-2977ecdc2781.jpg',md5 = 'fa8cfe45e9a94f418d5ef990b960209d',},--四方阁
                [7] ={path= 'https://webpicture.mini1.cn/20220926/195054dc099f96-a4f4-80d6-d17f-3918710d7f42.jpg',md5 = '8E7D0F50E2A9EDC228AE4DC14B167D41',},--百花谷
                [8] ={path= 'https://webpicture.mini1.cn/20220926/19505406cf8697-343d-df1e-e661-fe90341aaf91.jpg',md5 = '8C7D18CC1295DF15B39D2621E3D70ED7',},--玫瑰
                [9] ={path= 'https://webpicture.mini1.cn/20220926/195054356fe74b-7630-2173-d73b-9f553398315c.jpg',md5 = 'CB27B0E0043CEA20021C170BFDBD8491',},--觉醒高达
                [10] ={path= 'https://webpicture.mini1.cn/20221118/175448e41ca108-45d6-62d7-076c-2ee67fff23f6.jpg',md5 = '7CC2A068B0C33D24E7553D8CA71B7668',},--2022全民遗忘的峡谷

                --[1] ={path= 'https://webpicture.mini1.cn/20220708/182345038b41f1-d1d1-ef59-f615-b3a9cd282b85.jpg',md5 = '5396FEFA66F0D60BF1C374EC5AC74943',},--安妮
                --[5] ={path= 'https://image.mini1.cn/d/20210609/35d46864ad0385d3e57969fb8682299e.jpg',md5 = 'ECD4BF9841880277F7901930BAE93A7D',},--小龙人
                --[6] ={path= 'https://image.mini1.cn/d/20210708/553d734c38ee51aa4b36ccab488955da.jpg',md5 = '040A5984F1D224C3B6A76A882BAC6542',},--白雪
                --[8] ={path= 'https://image.mini1.cn/d/20210926/f15f86c4ae517789215379a5aaa26144.png',md5 = 'E05913AF2AE01A752F268646F4FFB49D',},--龙响无双
                --[9] ={path= 'https://image.mini1.cn/d/20211018/6031ac23507d19be784f6f0d6fdcc397.png',md5 = 'BF0348F191B36D0C4ABA5639BC85AC0C',},--莺初空侯
                --[1] ={path= 'https://image.mini1.cn/d/20210624/6cec8c0dee8e47dfa1717cb74690f2b2.jpg',md5 = '59E5735B09FA6BF9F680EBB9A6BCFF63',},--白天鹅
                --[10] ={path= 'https://image.mini1.cn/d/20211203/b4576494b035d281024e2591dc408959.png',md5 = '1069FFD24F32BE98497F6F3675ADBD26',},--花小楼音乐版本
        },

	gift = {
		giftpack = 1,		--商店礼包标签总开关 0:关闭, 1:开启
    	        icon = 0,		--主页面icon入口开关 0:关闭, 1:开启
		redpoint = 0		--红点配置 0:关闭, -1:只显示一次, 大于0:每日显示次数
  	},

    clear_cache_day = 2, --每2天检查一次文件清理

	not_open_wdesc_check = {},

	collaborationmodeon = 1, -- 协作模式开关 0：关闭，1 打开
	mapRoomInviteFriend = { day=1 },    --房间协作模式邀请好友

	shouq_share_url = "https://speed.gamecenter.qq.com/pushgame/v1/detail?appid=101891640&_wv=2164260896&_wwv=448&autodownload=1&autolaunch=1&autosubscribe=1",

	---外包审核人员名单
    outer_checker_uin = {

		  ad_list = ',1187519858,1106,899993838,1122,1123,1126,1120,3000,924587058,919332008,1025503668,936983964,333778370,1193044893,1127,1002,1006,1007,1009,1012,1013,1458141940,1584871257,1631655887,916443617,651000019,1709732035,1709875078,1709875591,1709874427,1709874413,1709874173,1709874122,1519173418,1709881573,1677012875,1709881584,1592790067,1709882552,1709882294,1709880793,1706392220,1103,10006,',

          list = ',1193044893,1030890971,930190653,830756533,1025503668,842127314,915289568,915291355,915292099,915292750,915293729,915294505,916402129,916401912,916401451,916401971,916401966,916401428,916423193,916427610,916440969,916420115,916401290,916401802,916431825,916437764,916426582,916158521,916435058,916548909,916553384,916555486,916561556,916548859,916562432,916554440,916569252,916545302,916550058,916545176,916567987,916545193,916547025,916549200,916545827,916549392,916550635,916545142,916545936,916572530,916574912,916545719,916553099,917538663,916566790,918228621,918242370,918242726,918240873,918240868,918241047,918241612,918243839,918241278,918241946,918242498,918240016,918243078,918244232,918243673,918243081,918243224,918243595,918251534,918251700,918251172,836557926,54672794,551043713,918466268,918466275,918929757,918920898,918929841,916443617,918929419,1120,1123,923432019,923448414,923461352,923472359,923464540,923467902,923485590,923378463,923491552,923495170,923475719,923494182,923483026,918893146,444039195,925160505,925152074,925151752,925150230,925148619,925149037,925150605,925152636,925149688,925149422,925149782,925149330,925149842,925155413,925830861,925830166,925827763,925828591,925830542,925826644,925827047,926448193,926452472,926447975,926447082,926451860,926447111,926447388,926447491,926447940,926447133,926446776,926447919,926446853,926447019,926452427,930287110,930286873,930286026,930287742,930276794,930233788,930285551,930288528,930290782,930287128,930222705,930258737,930294242,930249757,930288174,930230495,930236796,930286292,930232165,930289500,930237783,930236680,930237077,930289650,930243586,930292852,930232468,930219915,930232735,930229708,930238620,930293128,930298893,936991322,936982720,936985001,936983895,936982536,936982100,936982730,936983458,936981636,936983441,936993531,936991200,936982742,936982237,936988881,936982571,936982420,936984368,936982575,936981742,936994941,936998273,936990574,936990930,936158286,928587500,936996026,936992975,927441552,734676122,205154734,940589549,940595853,940598606,940601688,940604280,940607581,944098253,944100477,944098996,944101416,944103266,941359087,942352038,941048478,941066546,941364126,941339733,940911217,549418580,942423778,941273492,940648071,942632798,943935685,941043882,946761516,946767851,946767079,946759240,946761435,946760085,942429056,946772303,946770635,946761574,943903011,946760836,946762249,944102382,944103279,944101790,944101302,944099004,944096715,944098296,981861671,981861199,981860358,981861378,981861015,981864898,981860907,981861308,981861183,981865065,981862947,981860043,981860566,981863195,981862830,981862957,981978159,981977168,981979268,981977878,333778370,936983964,1359276003,1359268047,1359470401,1359461879,1359473282,1359262484,1359257950,1359252025,1359468406,1359242744,1359232735,1359225803,1458141940,1106,1124,1127,1002,1006,1007,1009,1012,1013,956632807,1584871257,1631655887,1701,1046,1031,1103,651000019,1709732035,1709875078,1709875591,1709874427,1709874413,1709874173,1709874122,1519173418,1709881573,1677012875,1709881584,1592790067,1709882552,1709882294,1709880793,1706392220,10006,',

    },


	---云服名单
    rent = {
        open   = { 

		creator_level = 1,
		version_min = "0.46.0",


super_uin_list=',1111,1002,1107,1116,1801,1802,1803,1804,3000,12345,6572072,35503670,44677194,47169354,49794529,54672794,55738089,60232966,60898120,61280110,66598105,69335698,70583267,71272345,75566813,80962046,90881363,93072165,100707850,125493789,127540287,129551957,133065093,138987457,166295839,171311346,173281052,173600454,178797511,184397935,186195449,201777924,213979447,214195151,216908010,224595419,228213882,237566000,239271549,240958547,248039716,251440940,252990833,253237739,263243638,276439174,285560538,294488241,295314707,296697502,317338346,324951505,326020153,332760640,339264983,344319088,356292446,357549297,365402739,373154296,380803544,381888541,388087004,402370046,405440466,408964201,411975677,418420014,427975596,428900496,432716548,439974161,457022162,496946777,500051571,507777290,508254243,517600728,518383104,524600235,525725754,526765756,527965353,528278703,531689399,542411358,542423725,551709947,553192419,554374284,560288281,560905969,562507218,562669549,571415917,573541505,573794616,580194546,584288354,588931754,597068322,602837258,606364252,606598718,608457905,610802565,615400577,640195899,644047817,645534127,652154453,653403259,658172681,659235078,661323033,664900771,666229742,667399021,671732235,680512752,684732917,688290450,688372224,691421251,692447834,693023302,697298200,712282459,714110350,716308168,724249619,737780848,754154576,755047331,757092014,762928261,766063353,766698162,767283301,767997200,768392967,777950913,779420140,780941129,782942469,787699922,791100670,791356920,794507831,797468815,806544685,811444717,811793259,812027975,814056758,816222140,816357195,818966586,831135954,836341955,837555421,839953136,842310084,845032829,845336164,845618245,847333569,850890035,852212106,853958464,855672110,856747050,857613456,857968988,862679145,863792469,865501345,869043264,872888961,873878745,882819242,883252159,889882922,906299789,909402482,914524635,916216533,916315743,917117335,920724683,923389801,928281485,931167460,935400906,936056268,937218065,937540467,939698935,945179438,945514393,952173832,958697524,959598508,963485684,574411704,307415187,856783182,758885450,598249497,849852287,622224508,114816170,267057242,669131572,228075118,215322259,526817466,184241644,324109595,128794341,99867258,598121392,915060672,367297452,486569776,778000906,545599509,243625490,264570429,202333416,853958464,667399021,779420140,845618245,276439174,831135954,418420014,920724683,248039716,75566813,766698162,332760640,295314707,836341955,41776014,42571455,65263553,65977552,199150126,290212462,314557278,459957378,479226302,524842851,571653126,618201891,697560128,771889855,809010051,812025861,915706427,633785487,747623337,136917629,104960968,119610772,715456824,331436040,66611238,427582094,177593944,758511498,852131015,232912220,173993884,431493235,510942121,639391650,785021318,918662695,630894161,839188502,811035620,909750492,720110007,485486207,786247118,397845431,771838300,75822519,910310801,132935433,663660224,666787577,387661930,67680733,533832753,283420494,211470481,474377906,429241393,619066660,101770418,828795060,397431619,536503691,55554497,591501105,721926497,70328763,86575127,376225167,541750253,760796390,382251873,795802005,416710603,168242161,484416277,919663366,95972638,728632573,34288208,636894672,773732580,78523613,763521179,972398699,55260522,674541093,93473272,416734441,240585109,774018088,738560376,170448313,738877475,270844675,793078109,964876642,1106,1118,1211281,232104594,330633856,398270106,400196753,402315353,404821023,441212959,473369394,506582077,577528825,642380660,645093560,758140391,782091413,791062307,831770145,860034610,872573526,897907663,899993838,973793431,106388253,631786517,540728142,965232583,41486676,796489600,1005,1160171,30236610,114092637,114523223,122400159,226184572,260235586,279456004,293834998,326025695,393704994,403294525,439789920,456108411,462945885,507859417,570827966,596687652,638100119,755088353,848122812,963824296,114092637,226184572,85596893,62639965,250129950,815254163,539531702,173859713,632256464,592346720,412960141,688796551,839276580,160669,576397023,300713978,938822897,512723585,771762254,763550151,482286988,38601394,783795750,572213658,750964047,27737849,838575453,575806287,932149363,725688300,829154406,304875059,773785241,458549275,656437094,592346720,548394797,921330011,571459177,561669769,541088495,824458313,122295913,158674416,67409011,862849897,655298894,557104797,442411478,660647597,713749691,504802466,841622661,567591106,103618128,516362975,776331747,29332319,655849304,534151930,210085545,492469161,749605088,320792885,863396974,295680577,237805940,333876212,462945885,48493740,646783199,598044503,555359556,919801040,572315237,678593452,124889340,296356614,701661750,691418777,750014765,450364414,622190606,77529257,868419449,576656857,832983106,255956500,828239583,671056589,658166042,690636971,939079684,412984770,889064632,784653475,580284371,307130255,245380467,266424380,78482499,221439658,813750803,477724022,651031162,124758032,848869432,108273715,767786176,654212519,209790407,823363026,536546341,902185548,607510039,630626253,783671206,783671206,878269470,736355762,729671644,686051304,729561914,988059992,105922073,459650017,326971147,109546904,128805212,686051304,822647524,464027261,944457372,754431237,641585625,963253043,963391757,987756187,989372456,991276283,991292910,991300565,991308698,991316152,1026010785,1063969583,', 

},     --入口可见


        buy    = { apiids="9999" },     --可以购买
        search = {},                    --可以在联机大厅搜索
		ignore_wid_bind = 1,	--是否忽略绑定的地图id
        send_activity_room = 0,        --是否推送活动赠送的房间

		buy_room_max = {
			[1] = 30,
			[2] = 50,
			[3] = 70,
			[4] = 90,
			[5] = 100,
			[6] = 100,
			upper = 100,  ---更高等级的开发者
			none = 5,    ---非开发者
		},
    },
	rider_unlock = {    --坐骑展示开关

		['4631'] = {     --妆盒
    		version_min = "1.23.0",
		version_max = "9.9.0",
		},
		['4635'] = {     --雪花
    		version_min = "1.23.0",
		version_max = "9.9.0",
		},
		['4627'] = {     --兔子
    		version_min = "1.23.0",
		version_max = "9.9.0",
		},
		['4527'] = {     --尼东洛洛
    		version_min = "1.20.10",
		version_max = "9.9.0",
		},
		['4524'] = {     --环海洛洛
    		version_min = "1.20.10",
		version_max = "9.9.0",
		},
		['4559'] = {     --帝皇驹
    		version_min = "1.20.10",
		version_max = "9.9.0",
		},
		['4623'] = {     --飞天猪
    		version_min = "1.20.5",
		version_max = "9.9.0",
		},
		['4617'] = {     --滑板
    		version_min = "1.19.0",
		version_max = "9.9.0",
		},
		['4613'] = {     --步撵坐骑
    		version_min = "1.19.0",
		version_max = "9.9.0",
		},
		['4609'] = {     --月饼
    		version_min = "1.18.0",
		version_max = "9.9.0",
		},
		['4605'] = {     --孔雀
    		version_min = "1.17.0",
		version_max = "9.9.0",
		},
		['4601'] = {     --沙漠骆驼
    		version_min = "1.16.0",
		version_max = "9.9.0",
		},
		['4597'] = {     --猫猫车
    		version_min = "1.15.0",
		version_max = "9.9.0",
		},
		['4593'] = {     --狐仙
    		version_min = "1.15.0",
		version_max = "9.9.0",
		},
		['4589'] = {     --浴缸
    		version_min = "1.14.0",
		version_max = "9.9.0",
		},
		['4586'] = {     --御剑
    		version_min = "1.13.0",
		version_max = "9.9.0",
		},
		['4582'] = {     --仙钥
    		version_min = "1.12.0",
		version_max = "9.9.0",
		},
		['4579'] = {     --画卷
    		version_min = "1.11.6",
		version_max = "9.9.0",
		},
		['4575'] = {     --海外坐骑
    		version_min = "9.9.0",
		version_max = "9.9.0",
		},
		['4542'] = {     --咕咕
    		version_min = "1.5.0",
		version_max = "9.9.0",
		},
		['4552'] = {     --扇子
    		version_min = "1.8.5",
		version_max = "9.9.0",
		},
		['4555'] = {     --狗
    		version_min = "1.9.0",
		version_max = "9.9.0",
		},
		['4563'] = {     --老虎
    		version_min = "1.9.0",
		version_max = "9.9.0",
		},
		['4571'] = {     --纸鹤
    		version_min = "1.11.0",
		version_max = "9.9.0",
		},

	},

    upload_map_auth_notice = { apiids_no="2,121,5,7,12,36,31" }, --上传地图提示实名制验证

    upload_cm_auth_notice = { apiids_no = '2,121,5,7,12,36,31' }, --上传资源工坊商品提示实名制验证

	download_cm_goods_count = { apiids_no = '9999' },--资源工坊下载商品次数限制开关

    res_shop_firstpage = { officialnum = 0},--资源工坊首页显示几个官方商品

	ad_trigger_tips_switch = { 
	
	super_uin_list = '1000,1154525,899993838,1003809027',
	apiids_no = '9999',
	
	}, --新版触发器广告弹窗开关（若关闭则使用旧版广告弹窗）
	
	ad_trigger_tips_time = 15, 	--新版触发器广告弹窗停留时长（0永久显示，大于0进行倒计时）

    video_trigger_switch = {

    super_uin_list = '1026305855,1182271222,918296141,1002,1004,1234,1014',
    uin_list = '1000',
	apiids_no = '9999',    

	}, --触发器播放视频接口开关

     video_trigger_URL = {

    url = 'https://vt1.doubanio.com/202201061717/34f04e31c7086ac606ef69f05ae88e5b/view/movie/M/402810881.mp4,https://player.alicdn.com/video/aliyunmedia.mp4,https://s3.amazonaws.com/senkorasic.com/test-media/video/caminandes-llamigos/caminandes_llamigos_720p.mp4,https://mnweb.mini1.cn/game/other/videos/HWah1bFHCK.mp4,https://mdownload.mini1.cn/latest/BXDT.mp4,https://kfz-static.mini1.cn/videos/huayuchengxing/part01_20220119_onekeybatch.mp4,https://kfz-static.mini1.cn/videos/huayuchengxing/part02_20220119_onekeybatch.mp4,https://kfz-static.mini1.cn/videos/huayuchengxing/part03_20220119_onekeybatch.mp4,https://kfz-static.mini1.cn/videos/huayuchengxing/part04_20220119_onekeybatch.mp4,https://kfz-static.mini1.cn/videos/huayuchengxing/part05_20220119_onekeybatch.mp4,https://kfz-static.mini1.cn/videos/huayuchengxing/part06_20220119_onekeybatch.mp4,https://kfz-static.mini1.cn/videos/huayuchengxing/part07_20220119_onekeybatch.mp4,https://kfz-static.mini1.cn/videos/huayuchengxing/part08_20220127_onekeybatch.mp4,https://kfz-static.mini1.cn/videos/huayuchengxing/part09_20220127_onekeybatch.mp4,https://kfz-static.mini1.cn/videos/huayuchengxing/part10_20220127_onekeybatch.mp4,https://kfz-static.mini1.cn/videos/huayuchengxing/part11_20220127_onekeybatch.mp4,https://kfz-static.mini1.cn/videos/huayuchengxing/part12_20220127_onekeybatch.mp4,https://kfz-static.mini1.cn/videos/video1.mp4,https://kfz-static.mini1.cn/videos/video2.mp4,https://kfz-static.mini1.cn/videos/video3.mp4,https://kfz-static.mini1.cn/videos/video4.mp4,https://mdownload.mini1.cn/latest/juexing1.mp4,https://mdownload.mini1.cn/latest/juexing2.mp4,http://ws-mdownload.mini1.cn/party/20220302174947.mp4,http://vt1.doubanio.com/202202221551/ab8f7e89482cbbf930e1fee48335447b/view/movie/M/402860512.mp4,http://mnweb.mini1.cn/game/other/videos/HWah1bFHCK.mp4,http://player.alicdn.com/video/aliyunmedia.mp4,http://ws-mdownload.mini1.cn/party/20220225165153.mp4,http://ws-mdownload.mini1.cn/party/20220302174947.mp4,http://ws-mdownload.mini1.cn/party/20220308155451.mp4,http://ws-mdownload.mini1.cn/party/20220310152107.mp4,http://ws-mdownload.mini1.cn/party/20220310161020.mp4,http://ws-mdownload.mini1.cn/party/20220310164934.mp4,http://ws-mdownload.mini1.cn/party/20220310181537.mp4,http://ws-mdownload.mini1.cn/party/20220311153151.mp4,https://mdownload.mini1.cn/latest/huacheng/zhounianqing.mp4,https://mdownload.mini1.cn/latest/huacheng/1/H1_001.mp4,https://mdownload.mini1.cn/latest/huacheng/1/H1_002.mp4,https://mdownload.mini1.cn/latest/huacheng/1/H1_003.mp4,https://mdownload.mini1.cn/latest/huacheng/1/H1_004.mp4,https://mdownload.mini1.cn/latest/huacheng/1/H1_005.mp4,https://mdownload.mini1.cn/latest/huacheng/1/H1_006.mp4,https://mdownload.mini1.cn/latest/huacheng/1/H1_007.mp4,https://mdownload.mini1.cn/latest/huacheng/1/H1_008.mp4,https://mdownload.mini1.cn/latest/huacheng/1/H1_009.mp4,https://mdownload.mini1.cn/latest/huacheng/1/H1_010.mp4,https://mdownload.mini1.cn/latest/huacheng/1/H1_011.mp4,https://mdownload.mini1.cn/latest/huacheng/1/H1_012.mp4,https://mdownload.mini1.cn/latest/huacheng/2/H2_001.mp4,https://mdownload.mini1.cn/latest/huacheng/2/H2_002.mp4,https://mdownload.mini1.cn/latest/huacheng/2/H2_003.mp4,https://mdownload.mini1.cn/latest/huacheng/2/H2_004.mp4,https://mdownload.mini1.cn/latest/huacheng/2/H2_005.mp4,https://mdownload.mini1.cn/latest/huacheng/2/H2_006.mp4,https://mdownload.mini1.cn/latest/huacheng/2/H2_007.mp4,https://mdownload.mini1.cn/latest/huacheng/2/H2_008.mp4,https://mdownload.mini1.cn/latest/huacheng/2/H2_009.mp4,https://mdownload.mini1.cn/latest/huacheng/2/H2_010.mp4,https://mdownload.mini1.cn/latest/huacheng/2/H2_011.mp4,https://mdownload.mini1.cn/latest/huacheng/2/H2_012.mp4,https://mdownload.mini1.cn/latest/huacheng/3/H3_001.mp4,https://mdownload.mini1.cn/latest/huacheng/3/H3_002.mp4,https://mdownload.mini1.cn/latest/huacheng/3/H3_003.mp4,https://mdownload.mini1.cn/latest/huacheng/3/H3_004.mp4,https://mdownload.mini1.cn/latest/huacheng/3/H3_005.mp4,https://mdownload.mini1.cn/latest/huacheng/3/H3_006.mp4,https://mdownload.mini1.cn/latest/huacheng/3/H3_007.mp4,https://mdownload.mini1.cn/latest/huacheng/3/H3_008.mp4,https://mdownload.mini1.cn/latest/huacheng/3/H3_009.mp4,https://mdownload.mini1.cn/latest/huacheng/3/H3_010.mp4,https://mdownload.mini1.cn/latest/huacheng/3/H3_011.mp4,https://mdownload.mini1.cn/latest/huacheng/3/H3_012.mp4,https://mdownload.mini1.cn/latest/huacheng/4/H4_001.mp4,https://mdownload.mini1.cn/latest/huacheng/4/H4_002.mp4,https://mdownload.mini1.cn/latest/huacheng/4/H4_003.mp4,https://mdownload.mini1.cn/latest/huacheng/4/H4_004.mp4,https://mdownload.mini1.cn/latest/huacheng/4/H4_005.mp4,https://mdownload.mini1.cn/latest/huacheng/4/H4_006.mp4,https://mdownload.mini1.cn/latest/huacheng/4/H4_007.mp4,https://mdownload.mini1.cn/latest/huacheng/4/H4_008.mp4,https://mdownload.mini1.cn/latest/huacheng/4/H4_009.mp4,https://mdownload.mini1.cn/latest/huacheng/4/H4_010.mp4,https://mdownload.mini1.cn/latest/huacheng/4/H4_011.mp4,https://mdownload.mini1.cn/latest/huacheng/4/H4_012.mp4,http://ws-mdownload.mini1.cn/party/20220316175056.mp4,http://mdownload.mini1.cn/latest/huacheng/1/H1_001.mp4,http://mdownload.mini1.cn/latest/huacheng/1/H1_002.mp4,http://mdownload.mini1.cn/latest/huacheng/1/H1_003.mp4,http://mdownload.mini1.cn/latest/huacheng/1/H1_004.mp4,http://mdownload.mini1.cn/latest/huacheng/1/H1_005.mp4,http://mdownload.mini1.cn/latest/huacheng/1/H1_006.mp4,http://mdownload.mini1.cn/latest/huacheng/1/H1_007.mp4,http://mdownload.mini1.cn/latest/huacheng/1/H1_008.mp4,http://mdownload.mini1.cn/latest/huacheng/1/H1_009.mp4,http://mdownload.mini1.cn/latest/huacheng/1/H1_010.mp4,http://mdownload.mini1.cn/latest/huacheng/1/H1_011.mp4,http://mdownload.mini1.cn/latest/huacheng/1/H1_012.mp4,http://mdownload.mini1.cn/latest/huacheng/2/H2_001.mp4,http://mdownload.mini1.cn/latest/huacheng/2/H2_002.mp4,http://mdownload.mini1.cn/latest/huacheng/2/H2_003.mp4,http://mdownload.mini1.cn/latest/huacheng/2/H2_004.mp4,http://mdownload.mini1.cn/latest/huacheng/2/H2_005.mp4,http://mdownload.mini1.cn/latest/huacheng/2/H2_006.mp4,http://mdownload.mini1.cn/latest/huacheng/2/H2_007.mp4,http://mdownload.mini1.cn/latest/huacheng/2/H2_008.mp4,http://mdownload.mini1.cn/latest/huacheng/2/H2_009.mp4,http://mdownload.mini1.cn/latest/huacheng/2/H2_010.mp4,http://mdownload.mini1.cn/latest/huacheng/2/H2_011.mp4,http://mdownload.mini1.cn/latest/huacheng/2/H2_012.mp4,http://mdownload.mini1.cn/latest/huacheng/3/H3_001.mp4,http://mdownload.mini1.cn/latest/huacheng/3/H3_002.mp4,http://mdownload.mini1.cn/latest/huacheng/3/H3_003.mp4,http://mdownload.mini1.cn/latest/huacheng/3/H3_004.mp4,http://mdownload.mini1.cn/latest/huacheng/3/H3_005.mp4,http://mdownload.mini1.cn/latest/huacheng/3/H3_006.mp4,http://mdownload.mini1.cn/latest/huacheng/3/H3_007.mp4,http://mdownload.mini1.cn/latest/huacheng/3/H3_008.mp4,http://mdownload.mini1.cn/latest/huacheng/3/H3_009.mp4,http://mdownload.mini1.cn/latest/huacheng/3/H3_010.mp4,http://mdownload.mini1.cn/latest/huacheng/3/H3_011.mp4,http://mdownload.mini1.cn/latest/huacheng/3/H3_012.mp4,http://mdownload.mini1.cn/latest/huacheng/4/H4_001.mp4,http://mdownload.mini1.cn/latest/huacheng/4/H4_002.mp4,http://mdownload.mini1.cn/latest/huacheng/4/H4_003.mp4,http://mdownload.mini1.cn/latest/huacheng/4/H4_004.mp4,http://mdownload.mini1.cn/latest/huacheng/4/H4_005.mp4,http://mdownload.mini1.cn/latest/huacheng/4/H4_006.mp4,http://mdownload.mini1.cn/latest/huacheng/4/H4_007.mp4,http://mdownload.mini1.cn/latest/huacheng/4/H4_008.mp4,http://mdownload.mini1.cn/latest/huacheng/4/H4_009.mp4,http://mdownload.mini1.cn/latest/huacheng/4/H4_010.mp4,http://mdownload.mini1.cn/latest/huacheng/4/H4_011.mp4,http://mdownload.mini1.cn/latest/huacheng/4/H4_012.mp4,http://mdownload.mini1.cn/latest/juexing1.mp4,http://mdownload.mini1.cn/latest/juexing2.mp4,http://mdownload.mini1.cn/latest/huacheng/zhounianqing.mp4,http://mdownload.mini1.cn/latest/juexing1.mp4，http://mdownload.mini1.cn/latest/juexing2.mp4，http://mdownload.mini1.cn/latest/huacheng/zhounianqing.mp4,http://mdownload.mini1.cn/latest/huacheng/juexing.mp4,http://mdownload.mini1.cn/latest/huacheng/0323juexing.mp4,http://mdownload.mini1.cn/latest/huacheng/0323zhounianqing.mp4,http://mdownload.mini1.cn/latest/huacheng/5g.mp4,https://kfz-static.mini1.cn/videos/6th-anniversary/1-6th-anniversary.mp4,https://kfz-static.mini1.cn/videos/6th-anniversary/2-%E5%B0%8F%E5%AE%9D-%E6%89%93%E4%B8%8D%E8%B4%A5%E7%9A%84%E5%B0%8F%E5%BC%BA.mp4,https://kfz-static.mini1.cn/videos/6th-anniversary/3-%E5%85%AC%E7%8C%AB%E5%92%AA-%E7%9B%B8%E9%81%87%E7%9B%B8%E7%9F%A5.mp4,https://kfz-static.mini1.cn/videos/6th-anniversary/4-%E8%BF%B7%E4%BD%A0%E4%B8%96%E7%95%8C%20%E5%94%90%E8%AF%97%E5%AE%8B%E8%AF%8D%E5%A4%A7%E8%B5%9B_batch.mp4,http://mdownload.mini1.cn/latest/huacheng/5G.mp4,http://mdownload.mini1.cn/latest/huacheng/hangtian.mp4,https://kfz-static.mini1.cn/videos/%E8%A7%89%E9%86%92%E9%A2%84%E5%91%8A%E7%89%87/1%E8%A7%89%E9%86%92%E9%A2%84%E5%91%8A%E7%89%871.mp4,https://kfz-static.mini1.cn/videos/%E8%A7%89%E9%86%92%E9%A2%84%E5%91%8A%E7%89%87/1%E8%A7%89%E9%86%92%E9%A2%84%E5%91%8A%E7%89%872.mp4,https://kfz-static.mini1.cn/videos/other/1%E5%92%AA%E5%92%95%E5%90%88%E4%BD%9C%E7%8E%A9%E6%B3%95%E5%AE%A3%E4%BC%A0%E8%A7%86%E9%A2%91~1.mp4,https://kfz-static.mini1.cn/videos/other/5%E6%90%9E%E7%AC%91%E7%89%87%E6%AE%B5~1.mp4,https://kfz-static.mini1.cn/videos/awakenTrailer/1.mp4,https://kfz-static.mini1.cn/videos/awakenTrailer/2.mp4,https://kfz-static.mini1.cn/videos/other/migu_collaborator.mp4,https://kfz-static.mini1.cn/videos/other/funny.mp4,http://kfz-static.mini1.cn/videos/awakenTrailer/1.mp4,http://kfz-static.mini1.cn/videos/awakenTrailer/2.mp4,http://kfz-static.mini1.cn/videos/huayuchengxing/part02_20220119_onekeybatch.mp4,http://kfz-static.mini1.cn/videos/huayuchengxing/part03_20220119_onekeybatch.mp4,http://kfz-static.mini1.cn/videos/huayuchengxing/part04_20220119_onekeybatch.mp4,http://kfz-static.mini1.cn/videos/huayuchengxing/part05_20220119_onekeybatch.mp4,http://kfz-static.mini1.cn/videos/huayuchengxing/part06_20220119_onekeybatch.mp4,http://kfz-static.mini1.cn/videos/huayuchengxing/part07_20220119_onekeybatch.mp4,http://kfz-static.mini1.cn/videos/huayuchengxing/part08_20220127_onekeybatch.mp4,http://kfz-static.mini1.cn/videos/huayuchengxing/part09_20220127_onekeybatch.mp4,http://kfz-static.mini1.cn/videos/huayuchengxing/part10_20220127_onekeybatch.mp4,http://kfz-static.mini1.cn/videos/huayuchengxing/part11_20220127_onekeybatch.mp4,http://kfz-static.mini1.cn/videos/huayuchengxing/part12_20220127_onekeybatch.mp4,http://kfz-static.mini1.cn/videos/video1.mp4,http://kfz-static.mini1.cn/videos/other/migu_collaborator.mp4,http://kfz-static.mini1.cn/videos/video2.mp4,http://kfz-static.mini1.cn/videos/video3.mp4,http://kfz-static.mini1.cn/videos/video4.mp4,http://kfz-static.mini1.cn/videos/other/funny.mp4,http://kfz-static.mini1.cn/videos/teaching/Baby_building.mp4,http://kfz-static.mini1.cn/videos/teaching/Baby_trigger.mp4,http://kfz-static.mini1.cn/videos/anchor/banxian1.mp4,http://kfz-static.mini1.cn/videos/anchor/banxian2.mp4,http://kfz-static.mini1.cn/videos/anchor/banxian3.mp4,http://kfz-static.mini1.cn/videos/anchor/banxian4.mp4,http://kfz-static.mini1.cn/videos/anchor/banxian5.mp4,http://kfz-static.mini1.cn/videos/anchor/heiye1.mp4,http://kfz-static.mini1.cn/videos/anchor/heiye2.mp4,http://kfz-static.mini1.cn/videos/anchor/heiye3.mp4,http://kfz-static.mini1.cn/videos/anchor/heiye4.mp4,http://kfz-static.mini1.cn/videos/anchor/heiye5.mp4,http://kfz-static.mini1.cn/videos/anchor/heiye6.mp4,http://kfz-static.mini1.cn/videos/anchor/juanjuan1.mp4,http://kfz-static.mini1.cn/videos/anchor/juanjuan2.mp4,http://kfz-static.mini1.cn/videos/anchor/juanjuan3.mp4,http://kfz-static.mini1.cn/videos/anchor/juanjuan4.mp4,http://kfz-static.mini1.cn/videos/anchor/juanjuan5.mp4,http://kfz-static.mini1.cn/videos/anchor/maoer1.mp4,http://kfz-static.mini1.cn/videos/anchor/maoer2.mp4,http://kfz-static.mini1.cn/videos/anchor/maoer3.mp4,http://kfz-static.mini1.cn/videos/anchor/maoer4.mp4,http://kfz-static.mini1.cn/videos/anchor/maoer5.mp4,http://kfz-static.mini1.cn/videos/anchor/maoer6.mp4,http://kfz-static.mini1.cn/videos/anchor/mitang1.mp4,http://kfz-static.mini1.cn/videos/anchor/mitang2.mp4,http://kfz-static.mini1.cn/videos/anchor/mitang3.mp4,http://kfz-static.mini1.cn/videos/anchor/mitang4.mp4,http://kfz-static.mini1.cn/videos/anchor/mitang5.mp4,http://kfz-static.mini1.cn/videos/anchor/yangzhi1.mp4,http://kfz-static.mini1.cn/videos/anchor/yangzhi2.mp4,http://kfz-static.mini1.cn/videos/anchor/yangzhi3.mp4,http://kfz-static.mini1.cn/videos/anchor/yangzhi4.mp4,http://kfz-static.mini1.cn/videos/anchor/yangzhi5.mp4,http://kfz-static.mini1.cn/videos/jiaoxueshipin/UI.mp4,http://kfz-static.mini1.cn/videos/jiaoxueshipin/chufaqi.mp4,http://kfz-static.mini1.cn/videos/jiaoxueshipin/weisou.mp4,http://kfz-static.mini1.cn/videos/jiaoxueshipin02/dixing.mp4,http://kfz-static.mini1.cn/videos/jiaoxueshipin02/fangkuaifuzhi.mp4,http://kfz-static.mini1.cn/videos/jiaoxueshipin02/lanntu.mp4,http://kfz-static.mini1.cn/videos/jiaoxueshipin02/zidingyishijiao.mp4,http://mdownload.mini1.cn/latest/huacheng/fabuhui.mp4,http://mdownload.mini1.cn/latest/huacheng/juexingceshi1.mp4,http://mdownload.mini1.cn/latest/huacheng/dianyingfabuhuidiyiban.mp4,http://mdownload.mini1.cn/latest/huacheng/dianyingfabuhuidierban.mp4,http://mdownload.mini1.cn/latest/huacheng/dyfbhaaa.mp4,http://mdownload.mini1.cn/latest/huacheng/DYFBHCCC.mp4,http://mdownload.mini1.cn/latest/huacheng/DYa.mp4,http://mdownload.mini1.cn/latest/huacheng/DYb.mp4,http://mdownload.mini1.cn/latest/huacheng/DYc.mp4,http://mdownload.mini1.cn/latest/huacheng/DYc.mp4,http://mdownload.mini1.cn/latest/huacheng/DYd.mp4,http://mdownload.mini1.cn/latest/huacheng/DYe.mp4,http://mdownload.mini1.cn/latest/huacheng/DYS.mp4,http://mdownload.mini1.cn/latest/huacheng/DYZ.mp4,https://minioss.miniaixue.com/videos/720p/e38c8093e916842540de405466587238.mp4',
    apiids_no = '9999',
    version_min = '1.1.0',

	}, --显示板播放视频接口白名单链接



 triggerADSwitch={apiids_no = '9999'},   
--触发器广告开关
   triggerStoreSwitch = {apiids_no = '9999'},
--触发器商店开关
   triggerGoodsSwitch = {apiids_no = '9999'},
--触发器商品开关
   npcShopSwitch={ 
      creator_level = 0},
--生物商店广告按钮开关
   npcShopShowSwitch= {},
--生物商店广告开关
    UI_edit_switch = {

    	super_uin_list = '1000', --uin列表
    	version_min = '1.2.0', --最低版本号
    	apiids_no = '9999', --全渠道打开
    	open = 1, --开关，0为关闭，1为打开

},   --UI编辑开关
   Picture_Library_switch = {

     super_uin_list = '1000,1002,1004,1014,1015,1102,1103,1118,1123,1126,1128,1234,2000,2222,6666,11000,12345,25095,80669,226258,304843,367190,431939,507045,539999,563944,569695,588988,593456,622711,623459,644995,744444,911211,1078551,1154525,1160171,1171247,1211281,1661285,1720759,1855309,1999553,2576116,2889310,3014881,3229266,3302643,3639521,4322604,5033389,5269274,5564296,5868069,6209559,6238955,6276318,6581014,6635299,8277356,8843990,8877998,9464856,9578691,9678318,10973758,12763744,12816828,13994933,14230005,15477421,15491457,15891648,16506210,16647422,16739652,16919883,16983619,17008721,17848464,18247737,18294158,18329853,18512927,18613295,18663907,18824965,18970656,19107979,19375663,19616700,19641155,19692305,19798337,20000967,20248589,20366948,20549154,20933993,21002358,21170804,21714540,22206398,22228400,22264516,22453305,22581577,22664405,22814300,22981163,23502594,23587237,23815715,23894652,24133113,24313886,24716139,25466990,25590461,25717338,26184551,26310837,26429050,26775621,26855368,26969426,27173330,27369647,27391267,27733645,28388833,29157508,29568648,29981011,30359374,30402641,30424864,31196602,31444900,32350026,32451177,32596640,32689191,33428438,33526318,33824273,33917330,34510118,34538940,35138206,35398374,35548272,35938054,37025791,37030527,37114570,38504142,38932500,38953439,39064383,39102218,39277238,39604952,39687790,39824620,40092737,40095300,40619945,40636486,40768373,40771042,40870724,41133364,41221021,41290914,41380706,41474204,41521829,41563761,41586156,41664553,42344129,42384001,42387504,42705764,42753305,42927004,43358727,43589020,44050458,45174330,45434863,45716054,46099005,46994665,47369587,48173593,48192232,48329390,48875306,49190752,49425072,49449745,49474463,49503164,50040658,50722343,50988183,51371442,51811462,52098593,52402333,52403850,52994064,53543604,54473067,54699054,54748989,54839795,55413995,55427799,55449103,55612717,55617047,55629313,55646101,55689647,55901455,56040411,56137924,56157721,56276606,56305397,56329564,56410644,57199456,57232893,57558305,57691609,57763421,57784194,57883487,57916222,58137947,58362665,58536107,58743956,58817205,58836503,58837652,59065715,59079089,59196632,59270361,59722992,59893379,59918452,60899705,60914470,61463716,61511254,61564673,61705490,61866339,62064756,62274011,62381094,62639113,63022491,63344393,63412239,63737585,63824547,64448768,64485288,64714474,65318891,65466266,65593443,65780262,65854225,65910835,66066623,66173425,66204479,66225372,66566841,66732537,66757252,66948636,67385412,67484974,67505749,67897101,68246455,68399129,68430949,68566140,68606045,68615194,68836928,69234596,69378794,69700945,69746963,70443711,70531326,70626672,71009972,71235805,71371452,72280097,72458055,72479391,72724020,72864152,72884752,73405657,73427387,73497765,73734758,73923894,73965477,74357428,74640426,74654702,74721289,74930588,74965049,74995284,75868704,76211974,77000031,77155400,77185860,77195007,77843989,77992061,77999641,78547650,78688442,78740664,79172494,79245228,79288330,79301306,79422978,79445008,79681417,79799264,80606614,81666594,82281168,82348190,82636503,82719187,82740213,83170749,83873221,83988231,84351529,84410378,84868012,84983536,85000988,85625716,85705371,85781606,85811892,86278719,86902136,86970724,87139328,87282987,87338586,87402922,87641376,87740924,87877612,87935502,88144437,88239913,88501105,88510475,88635493,89065407,89112784,89118711,89212096,90502705,90649209,90686355,90769958,92243989,92375007,92488767,92610779,92876288,93551892,93563615,93597553,93932374,94260076,94386963,94411695,96158173,97153088,97246389,97359728,97756061,97858597,98226400,98672123,98913523,99133900,99347115,99846816,100891236,100956917,101029947,101136657,101217480,101227793,101268795,101863836,101957094,102075886,102172211,102242153,102311467,102336695,103392314,103707579,104255160,104694802,105934463,106029970,106458375,106542564,106639706,106717671,107348842,107489638,107690234,107795150,108058281,108173224,108543503,108682117,108787542,108796523,109234241,109447866,109813236,110005044,110384336,110384985,111151391,111734955,112055829,112569800,112978022,113216004,113589332,113864701,113890924,114523223,114535888,114671017,115137593,115219118,115258028,115487180,115510287,115829348,116059913,116136873,118003774,118544554,118766670,118809488,118829594,119457934,120043351,120274604,120914221,121902354,122037907,122111687,122120459,122315442,122400159,122517005,122800189,123016240,123339931,123377674,123554860,124757488,124787769,124980279,125493798,125674415,126027936,126168094,127400435,127796907,128647833,128792467,129157558,129178915,129303173,129404233,129758951,129780427,129824100,130036530,130668658,130811646,131272888,131414390,131510152,132389985,132430714,133177326,133213732,133857090,134215396,135611469,136024579,136035308,136438708,136682878,137495379,137507804,137757029,138170891,138455501,138569943,138622670,138883474,138890368,139072032,139246171,139537155,139705252,140607549,140865014,140871917,141001872,141223813,141391888,141718176,142325768,143670559,144433928,145068730,145636635,145938902,146312506,146405509,147128814,147275701,148548195,149314886,149616379,150016182,151359117,154782962,154968179,155299113,155326086,155678371,156943580,157370031,158087577,159433802,159505047,159581914,159820533,160468927,160818440,161060624,162158918,162969369,163173755,163275829,163388380,164201960,164305960,164672931,165524780,166952260,167943318,168356076,168400963,168590794,168724482,169036981,169214341,170069373,170923514,171138478,171327450,171734318,172939008,173089283,173622160,173731383,174329056,174371503,174493726,174510879,176172907,176914660,176940198,177227732,177394105,178208014,178533581,179122234,179895593,180221435,180530078,180693499,180719744,181911016,182212205,182251075,182334403,183358310,183665023,183757227,183793069,183881502,185277097,185984349,186553452,187162027,187267160,187429694,188153006,188546486,191380860,192671159,192805492,193159380,193866135,193884145,194097064,194327364,194513393,194597029,194693915,195274675,195306561,196243505,197817459,198107126,198305081,198374065,198481104,198483330,198840638,198980860,199026643,199041455,199074735,199245078,199365128,199923759,200006454,200492578,200603653,200829897,201309760,201377197,202144260,202317578,202734803,203000630,203448230,203763415,205273617,205840110,206149748,206809381,207612011,208567779,208607775,209703653,210108338,210421442,210430420,211457026,212906097,213347530,213349303,213494827,213733566,213979477,214090550,214323205,216157890,216210853,216681397,216783311,216829413,216959548,217080794,217159656,217161165,217800462,218007622,218108762,218345662,219113539,219562142,219582019,219768204,219896756,220230988,220519316,221474132,222041831,222165932,222199044,222514242,222585925,222820406,222851786,222869990,222989957,223235949,223460414,223810260,223830089,224579661,224595419,224917856,225381317,225912669,225991731,226108659,226172186,226184572,227915443,228073881,228235024,228348274,228502287,228970392,232337246,233330551,234184734,234238962,234269108,234339718,235005265,235801876,235837730,235857381,236164495,237342372,237610578,237630209,237737093,238187954,238298357,238451821,240189592,240470104,240748979,241667998,242039329,242076052,242082327,242367535,243191419,243476975,243481734,243537895,244073994,246932253,247784346,248930937,249082850,249669820,250129950,250826397,251123399,251212560,251483026,251787305,252043216,252130908,252763237,253193602,254408333,254420973,254905544,255219259,255698312,255867551,256068131,256388094,257093154,257113447,257203174,257585200,258538757,259420319,260050159,260235586,260285295,260726565,261179615,261682370,261845814,262176298,262430171,262514788,262573770,262913208,264161587,264556548,264644295,265543923,265585732,266608376,266729758,266904085,267521278,267837154,268489997,268739821,269490336,270541598,270864980,271230995,271745051,271830299,272028374,272049110,273080213,273706264,273946491,274286740,274496134,274603903,274821674,274885270,275362447,275854064,276149488,276439174,276869238,277158608,277222555,277233009,278185014,279456004,279803107,281734937,282112481,282386343,282860869,282890050,284021967,284545936,284675855,284859867,286843426,287027532,287179504,287187111,288834476,289858817,290484778,290671214,291645201,292545045,293698338,293834998,293862311,294179322,294485561,295280762,295855469,296277154,296605705,297523156,298036301,298419675,298614717,298932693,298953902,299026865,299523398,299747668,299925544,300131755,300531899,300871787,301380441,301684741,302015213,302073868,302245571,302435277,302898465,303406920,304211994,304251669,305194515,305567098,306684290,307481286,307834875,308809295,308836469,310649624,311078593,312399400,313067524,313878941,314053056,314397314,314654932,316180660,317008654,317129766,317378051,318483497,318586933,320458273,321189201,324269980,324524396,324921111,325620370,326025695,326755494,327465647,327709892,328225177,328267362,328540644,328708620,329883678,330107510,330302022,330736785,332026438,333663381,333690107,333739663,333826829,333927147,334155482,335082046,335187950,335601817,336002799,336440490,337146170,339070211,339105483,339332387,339769748,340106966,340155039,340324030,340644205,341200806,341423620,341680929,341756276,341800092,342018862,342580015,343011226,343201124,343661595,343841508,344253277,344532914,345594793,345743509,345976729,345982817,346071925,347237307,347297256,347298974,347379179,347612408,347689755,348093653,348168333,348689020,348712755,349030437,349048272,349633557,349677346,350040889,350596218,350909338,351502416,351880912,352857863,354127691,354180634,354389950,355196595,355327207,355472368,356151799,356213656,356624790,356922222,357027410,357223776,358197372,358856625,359243206,359954924,360153737,361159196,361955615,362932135,363757088,364971319,365461110,366109162,366778015,367679634,367813978,368366596,368506048,368905906,369203739,369320607,369757775,369930390,370128045,370802686,371896292,372266062,372804131,373013005,373552296,373992209,374021948,374651049,374722524,374985476,375464076,375814131,376241732,376906978,378221767,379119216,382348411,382440419,382822944,382867105,383102877,383186830,383424295,384039212,384375071,384631477,384781146,385091599,385247010,385683018,385867466,386400758,386864836,387331840,388682543,388784862,389400844,389976598,390154143,390619274,390797471,390859742,391163815,391254142,391283462,391525457,391772575,393140182,393262271,393704994,393756924,393784097,395425267,395953707,396857727,397505150,397547486,397666660,398451007,399302100,400152385,400392803,400889546,400917571,401061261,401590148,402315353,402677057,402708906,402800431,402968316,403294525,403991359,404197159,405195631,405262640,405832697,406043357,406115331,407333793,407654076,407923388,408768633,408965309,409245778,409447051,409469172,409574059,410092646,411199793,411351237,411928597,412412397,412464585,412818047,413000122,414055724,414101270,414220953,414311382,414539857,415457837,415959067,416361127,416923160,417052621,417485841,418062998,418066828,418150006,418182289,418577813,418810573,419358794,419619956,420090330,420146443,420373971,420974964,422103666,422221357,422241490,422335439,422687128,423003685,423471126,423502094,423581198,423627269,424791360,424921448,425709647,425769946,425958512,426410921,426512098,427020090,427564289,428086068,428161465,429274140,429282097,429627231,429627772,429977696,430161702,430659556,430718363,431780856,431835755,432626185,432881311,433565026,433742835,433913596,434010678,434504676,434621673,435248424,435684546,435922485,435982381,436670882,436745824,437356223,437815846,437897087,438020708,438210338,438852327,438990495,439662908,439871408,442880423,443170125,443704255,443786976,443832784,443945571,445329985,446491014,447845141,448418031,449092566,449942029,450263954,450734418,451188978,451315638,451323931,451496303,451839112,452079818,452400086,452482888,452588783,452733924,454106242,454213459,454420750,455077853,455307968,455881754,456269554,457325339,458184171,459179493,460304892,460962014,461235179,461512966,461706604,462357424,462464201,462584248,462965647,463847442,464933556,465480227,465819537,465986104,466095111,466458651,466691904,467595590,467918236,469376724,469482575,469635283,469892477,470067737,471132331,471384348,472824805,473638965,474960944,475156499,475622289,476441341,476988265,477242800,477661082,477948448,478207918,478889393,479106433,479467729,479597563,479785927,479932395,480412485,480487031,480918060,480946787,480952399,482714748,482826752,484030842,484335529,484744412,485612644,487189672,488046021,488922622,489671914,490270965,492331760,493243879,493364216,493508306,493927713,494035521,494158599,494613917,494673341,495348427,495679236,495956315,496176084,496185133,496304116,496315433,496905817,497938485,498550445,498694388,499254269,499372817,499560621,499837559,500253776,500304987,500796296,502007692,502496036,502767890,503164653,503518382,505349913,505443251,505607508,505779487,506438277,506549948,507288245,507290279,507612773,507618616,507847997,507859417,507962120,508068570,508856499,509315268,509589588,509862500,510170152,510426900,511170168,511236528,511483921,511894773,512311303,513117451,513199979,513770872,513831125,513941685,513990878,514385711,514693965,514718073,514722902,515227852,515465720,516189585,516418145,516418642,516588074,516955893,518027780,518178064,518239787,518464809,518629766,518788283,518992856,519293334,519325680,520444853,520447333,520794732,520953719,521863506,521885091,522308517,522848241,523669241,523768824,523822201,523928880,523966098,524946255,525007867,525135236,525447723,526217699,526700626,527042542,527063453,527192621,527297485,527656166,528002240,528036024,528045349,528198848,528315328,528366610,528950498,529107524,529149217,529207822,530155404,530377819,530757059,530879193,532190500,532723382,532735445,532860641,533162956,533481396,533855531,534287959,535152042,535261557,535309760,535537350,535678257,535696307,536548653,536613857,536787287,537369869,537703665,537822991,538068245,538120752,538299285,538328288,539046088,539541984,539598586,539833008,539843974,539897583,540959240,541005528,541678565,542065423,542140359,542387573,542442374,542815141,542863929,542897378,542975141,544042722,544895268,545883559,546228969,546250526,546650493,546959506,547015029,547928075,548469816,548705706,549281581,550195364,550789084,550936625,551009553,551270115,551520964,551595443,551617982,552041549,552443439,552483218,552554471,553296131,553619431,553802717,553971990,554774855,556045951,556200966,556252227,556435618,556848305,557051694,557104797,557113097,557334615,557625836,558426242,558520024,558528076,559202752,559307583,559775428,559932763,560352523,560924247,561710465,561881578,562345640,562825112,563375328,564370395,564492797,564673900,564694563,564838268,565178261,565575656,565835648,565879898,566349043,566978267,567465206,567621088,567841353,567895543,569090843,570143523,570648750,570827966,570867122,571147736,571375076,571948141,572895306,573844537,575296238,575696700,576640699,577079856,577195527,577709607,578275151,578334874,578627678,578924107,579582027,579786067,580343451,581222221,582826221,583222623,583341114,583458140,583762863,584054861,584173334,584249232,584390648,584574907,585405681,585513878,586004705,586558152,586903016,587129196,587160628,587217949,587719822,589209080,589573317,590485209,590591912,591446813,591487595,591710825,591932018,592354715,592508169,592833103,593108369,593181499,593235732,593658991,595951149,596453605,596687652,597075079,597679519,598121392,598382999,598706358,599212486,600639559,600761549,601357994,602077815,602097791,602649352,602791906,602898721,603143491,603404393,605385958,605907414,606192150,606502060,606644793,606667063,606669932,606781981,606995993,607470791,607505661,608122871,608542083,609093262,609258602,609403427,610108239,610209940,610557789,610638524,610795783,611127073,611143689,611828522,612096331,612194286,612527187,612760490,612912459,613274888,614010880,614337016,614503791,614787989,615173729,615475856,616333774,616625043,617102401,617173689,617668369,617876948,617996974,618760566,619034860,619646638,620138726,620439409,620568828,621407490,621593201,621623584,622074990,622190606,622207245,623173233,623629564,623778223,624174619,624283361,625361792,625525649,626029629,626871993,627421724,627515661,627682324,627848713,628116855,628215181,628620995,629095734,629759710,630404531,631447343,631486093,631541040,632342885,632504200,632579951,633011132,633349868,633589752,634006939,634374546,634750834,635164046,635900475,636315035,636366611,636865083,636865352,637378337,637475156,637742165,638059706,638092920,638122994,638355779,638749350,639412768,639523604,639569282,639644030,639709867,639826549,639837471,639889258,640115166,640135153,640424038,641367442,641618701,641934714,642624298,643064891,643231883,643638827,643771188,643860318,644400740,644667447,644690702,644787031,644949419,645794083,646064480,646323713,646434489,646672413,647333034,648167253,648375535,648416777,648780474,649148591,649543766,649654084,650230159,650764493,651177124,652788635,654215657,654402693,654862041,655046492,655116369,655173591,655205857,655249799,655852315,655896692,656048916,656200070,656247750,656351882,656575194,657052337,657064246,657268542,658473545,658492284,658627015,658767417,659234915,659291178,659309340,659410514,660440278,660632990,660780090,660838929,660981561,661101003,661756663,662359209,662599422,662902952,663135048,663281157,663719179,664068164,664094593,664513719,665090547,665608267,665697521,666263918,666323611,666515941,666962919,666995585,667476632,667843258,668050620,668092809,668232760,668767690,668931467,669225269,669485102,669607866,669814144,669840250,671480592,671490051,671663584,672061670,672186961,672237918,672374654,672718827,672993481,673096267,673099022,673791076,673892519,674336134,674396036,674511452,674532151,674588713,674692928,674777588,675207080,675277566,675412418,675697786,676285272,676335007,676402214,676463972,676653770,676882276,676912939,677114611,677297793,677740356,678063090,678243606,678307788,679002435,679301789,679307977,679368057,679563353,679800713,679889376,680097209,680286268,680325173,680809699,681129689,681525566,681830122,684224714,684733481,685202917,685664382,685975445,686543890,686562573,686685881,687989788,688166688,688238782,688381443,688735488,688845432,689415009,691533707,692569683,692971533,693343421,693481290,694716356,694900810,694987217,696132483,696314130,696529279,697310686,697358220,697443347,697466852,697645485,697671394,697730551,698682148,698713555,698803108,699175708,699210407,699582612,700096705,700510674,701229081,702097261,702202155,702570705,703438001,704796337,704839260,705102285,705293091,705633473,705704100,706604602,706616559,706934593,707229981,707403306,707427680,708127527,708129824,708134373,708659150,709112647,709996675,710571440,711144941,711924142,711924721,713749691,713793229,714103055,714366175,714627167,716455415,717929863,719184388,719541490,720303581,721150369,721949460,722118750,723189521,723275090,723547705,725664059,726079036,726476017,726711975,727006268,727329715,727654641,728353035,728662905,728722127,729563033,729585514,730083404,730134196,730211631,730400272,730952106,731528656,732027536,732904131,733137782,733662082,733994255,733997332,734147195,734178523,734322290,734755277,734758866,734798509,734853779,735454701,735589229,736214374,736511299,736517242,738060541,738068374,738338248,738340321,738452705,738576194,738901868,739038800,739217654,739236726,739287970,739441022,740008757,740508803,740974419,741115993,743549428,743804457,744389305,744431675,744747135,745178706,745785804,745787877,747412333,747640640,748052877,748853061,749099026,749594840,749698347,750085268,751195382,751694708,751802865,751920589,752607445,752703547,754008219,754172585,754180829,754443663,754572455,755088353,755509459,755719028,755830261,755837600,755983032,756026878,756154584,757997018,758140391,758352958,758583605,758601367,758963814,759465842,759871573,760054533,760234378,760493418,760581209,760762464,760787099,761546965,761927130,762418060,762554566,762614778,762621923,762893226,762919036,763575745,763732591,764145024,764550249,765086850,765927744,766602147,766886140,766900527,766929313,767523038,767780594,767832495,767951104,767976146,768587653,768705217,768749617,769984520,770466413,770620313,770626090,770873594,771425755,771826637,772026572,772157973,772337083,772884624,773106570,773227884,773681212,773724390,774216442,775033736,775325765,775474223,776029887,776331747,776655801,777749455,778305859,778673071,778673164,779289258,779302889,779313809,779359101,780357484,780453621,780480690,780830463,781184764,781610664,781734535,783439636,783596209,783766128,783834262,783998156,784363540,786305580,786386181,786396812,787190025,787246462,787299535,788255642,788413295,789758207,789775829,791012256,791299338,792341026,792373780,792399802,792456509,793292438,793466563,793647929,794446707,795111351,795404786,796217835,796254730,796489600,796562213,796586098,796621043,797053703,797141636,797557466,797764255,797854565,798690525,799073535,799518502,799766412,800062044,800238837,801469826,806735195,808056256,808342345,808490214,808745725,808952885,810048493,810079446,810886936,811574834,811667353,812057383,812635683,812802085,812865231,813462079,813475930,813868304,813901370,814321318,814456948,815404079,815523021,815715113,816641146,817338134,817381973,817388446,817732088,817871862,817956420,818411962,819067649,820261751,820829152,821194636,822274751,823314929,823856468,825188961,825936950,825937757,826469645,826570886,826739392,826810557,826839613,827047287,828482971,828667534,828722109,829130879,829189914,829498649,829841088,831918619,833287592,833306757,833325051,834795401,835912772,836193786,836588429,836909058,837217387,837350165,838193706,838397491,838800451,838854565,839112774,839321542,839456779,839460914,839469725,839871171,840037733,840518569,841803102,842013834,842180093,842798165,842815775,842860181,843500678,843886886,844012437,844236620,844269506,845164719,845856672,845993022,846787595,847817624,848031920,848116611,848122812,848241185,848279233,849090526,849270934,849555145,849843205,849896505,852386173,852507186,853366511,853499618,854102072,854671228,854690374,855094421,856092769,856143839,856439145,856757223,856864911,856949154,857186203,857883159,858756427,858926261,859254028,860113416,860195273,860733953,862339629,863648483,863705967,863776130,863867322,864141360,864150166,864150267,864185050,864339034,864405288,865124935,869195117,869206554,870119650,871525491,872708429,872729553,872978472,873331227,873609611,873700953,874029011,874216562,875864702,876036841,878628196,879319531,879491781,881098266,881384830,881699859,882466467,882982599,883427090,883436099,883688373,883771800,883999405,884016365,884509280,884846953,885240318,886798679,887143737,890183557,890235108,890260599,890350075,890868104,891071477,891451960,892281362,894511688,894678317,895224953,895391320,895932759,895933775,895939342,896915210,897310290,898759894,899182079,900416319,900587973,900743000,901695757,901877090,903124092,903382258,904183528,904836039,905401443,905692962,906393225,907693411,907935225,908286662,908396702,909179403,910735241,910841834,911976827,912673608,915353244,916016579,916620834,916639932,916684023,916808980,917391714,917676928,917680145,917824725,917879901,918258047,919012224,919110808,919332008,920492936,921299918,921547805,921627222,921820428,922135775,922685693,922873978,923280657,924002212,925756319,925944305,926874795,927077469,927175981,928635026,931022144,931550917,931604649,932097585,932648286,932874138,933416752,933463167,933945866,934960467,935016051,935806196,935815503,935928587,935976611,936441247,936549844,936816528,937446528,937788586,938449230,938546637,940709382,941755655,941786568,942452148,942712531,942837368,943000067,943669763,945974190,946720847,947771032,947996629,948050556,949017613,950758004,951641311,951769523,952103528,953123588,954705552,958214999,958497351,958497472,958497663,959442488,959667088,960571412,961256784,961625926,962033419,962931025,963824296,964013769,964987550,965232583,965327062,965557988,965667731,966467043,966656618,967906645,969034807,969163557,969965045,970917889,972035939,973793431,974128811,974948919,976353038,976523319,977883228,978604688,978920212,981966019,983380452,984182574,985673349,986354997,986904199,988240036,988760592,992547762,993190741,993427658,993707130,995311649,996398440,997244943,997634993,997774117,998178659,999305461,999977999,1000986337,1003809027,1004426046,1004540834,1004950746,1005897529,1005959498,1006329955,1006743823,1007423194,1007460545,1011213199,1011359230,1011802767,1014298949,1015375298,1015728153,1017460053,1017784085,1019103946,1019109768,1020435230,1021404210,1021469239,1022001193,1022100601,1024759701,1025167797,1025492657,1025784277,1026010785,1026025574,1026305855,1026479213,1029186187,1030400115,1030403447,1030445648,1030783532,1031557376,1031805005,1032241288,1032569201,1033594645,1034820076,1034862430,1034976018,1034994319,1035075684,1035287944,1035638108,1035674691,1035731437,1036154003,1036910941,1038052296,1038605387,1038631202,1039650265,1041087392,1041897687,1044035286,1044311913,1044937251,1045849522,1047475352,1047774797,1051125078,1051484183,1051749517,1052096223,1052382452,1052444298,1052579905,1052808151,1053082750,1053372607,1053755629,1054913643,1055206814,1055714218,1055756883,1055757343,1055814680,1055820437,1055972250,1055977078,1056128497,1056145887,1056405157,1058088715,1059303653,1059333184,1059358835,1059491174,1059636753,1059873178,1059952359,1059966737,1060258539,1061104932,1061270896,1061510118,1063161673,1063163943,1063170918,1063172991,1063176561,1063225094,1063415676,1063434341,1063589818,1063634892,1063715267,1063750622,1063813405,1063849154,1064132215,1064291029,1064294269,1064313190,1064943154,1065127220,1065500117,1065707903,1066898723,1067145837,1067145888,1067147654,1067148270,1067266897,1067346558,1067606902,1067606927,1067606976,1067606991,1067607004,1067607739,1067851706,1068493229,1069378920,1069512357,1070505950,1070723333,1070726140,1071227074,1071327761,1071331605,1071331800,1071333758,1071340785,1071341319,1071447900,1071448572,1071502432,1071540552,1071540702,1074121275,1074371662,1074451023,1074546636,1074669093,1074710397,1074718239,1074874056,1074874160,1074901177,1075630578,1076608172,1077309849,1077650413,1077791114,1078120064,1078170643,1078373699,1079774041,1080183318,1080210103,1080218912,1080248935,1080683111,1080727120,1080732679,1080736527,1080755909,1080813820,1080823834,1080953368,1081061049,1081543276,1081554363,1081801219,1084001129,1084356439,1084365033,1084796360,1084819277,1084825098,1084857727,1084857895,1084916569,1085030135,1085158932,1085221236,1085814226,1087921702,1087954897,1087969995,1088022786,1088060741,1088094604,1088104650,1088108515,1088199001,1088300090,1088465516,1088512193,1088516475,1088595013,1088890323,1088891729,1089867314,1091330168,1091440235,1091587671,1091728717,1091821478,1091924776,1092026202,1092029444,1093422854,1094017479,1094548445,1095262967,1095907270,1095959268,1097101323,1097110254,1097564081,1097672722,1097735765,1097745836,1097760456,1097761200,1097773569,1097775047,1097775509,1097776137,1097784101,1098183699,1099417131,1100245237,1100387648,1100855607,1100926423,1101139256,1101851773,1102271543,1102422160,1103687898,1103747935,1104067287,1105831642,1105866932,1106341798,1107312494,1108329953,1109729695,1109805413,1110229846,1111723226,1112946700,1113265459,1113798930,1114643408,1114765675,1115125988,1116079753,1117058480,1117729314,1118247136,1118964020,1119072150,1119622081,1119910734,1120586584,1120903169,1121102566,1121286081,1121725549,1121941993,1122841297,1124048463,1124107140,1124900812,1124968365,1125118366,1126797098,1127133851,1127217816,1127426982,1127488721,1129018221,1129539939,1132208938,1132276897,1132859123,1132975404,1133650446,1136400041,1137772698,1138034841,1140072677,1146547764,1147875382,1148277924,1156660781,1156672135,1156693426,1156695703,1157789199,1159250919,1159257497,1159275128,1159292626,1159318191,1162114816,1162166900,1162171367,1162202348,1162248310,1162255300,1163669911,1164240121,1164246211,1166855704,1166862793,1166871527,1166878675,1166886829,1166962739,1167326364,1168143921,1170028310,1170381646,1170932737,1171296062,1171437966,1172387409,1172399152,1172429549,1173419006,1175094554,1176619720,1177476277,1178711273,1178824302,1178866240,1178892279,1179286918,1180373941,1180410176,1182271222,1182271377,1182309432,1182684703,1182741704,1183107198,1183630104,1183630608,1183631046,1183632127,1183632389,1183632486,1183632662,1183633280,1183635508,1183636554,1183637649,1183638034,1183638344,1183639286,1183641867,1183643174,1183645701,1183646521,1183646623,1183647938,1183648732,1183773013,1186894799,1187333091,1187967674,1187977307,1188203368,1188248034,1188635098,1188700250,1189020629,1189383398,1192510319,1192577805,1192579056,1192668132,1192669871,1192671415,1192672036,1192672687,1192673566,1192674189,1192898841,1193044893,1193380364,1194153668,1194241326,1194336483,1194368964,1195138148,1196258730,1196876617,1197153599,1197175478,1199587387,1199599214,1199654055,1199654931,1199656306,1199738217,1199831602,1199834334,1201230179,1201949485,1201977464,1203220993,1204667810,1205092043,1205137045,1205137312,1205137476,1205137617,1206063440,1206510898,1206635376,1207071862,1209537650,1210314655,1210413480,1210487805,1210560973,1212084669,1212646444,1213845791,1214283704,1215587607,1216381578,1216409809,1216596501,1216605640,1216614866,1216623823,1216631815,1217067585,1217947170,1218453040,1220556468,1222560375,1226295163,1226302048,1226709522,1226712684,1226713081,1226732651,1226762167,1226771348,1226783998,1227096641,1228719488,1228974485,1229272153,1229276308,1229278675,1229677581,1229722856,1230159347,1230927473,1234087022,1234222369,1234298297,1235671637,1236330631,1236707487,1238186092,1238314161,1240347735,1240876795,1240973759,1242020890,1243722982,1243788491,1245409312,1245882463,1247171004,1247385955,1247391326,1247393390,1247395685,1247397948,1247398142,1247399987,1247409195,1247466321,1247899919,1248160572,1248257739,1248261460,1248378122,1248378277,1248378531,1248537204,1248538019,1248538272,1248538472,1248576049,1248578764,1248588185,1248589777,1248632545,1248778959,1248941062,1249534061,1250356489,1251465796,1252601509,1252964663,1253155021,1253158044,1253212013,1253634168,1253657945,1253697071,1253718922,1253984507,1254129236,1254350456,1254395750,1261046217,1261864885,1262683741,1265762444,1267480496,1269542382,1271208411,1271257006,1271318912,1271719058,1271777629,1271888865,1272262228,1272332111,1272657547,1272705906,1272709445,1272915895,1273226269,1273865020,1274562462,1275974970,1276363016,1278088535,1278107281,1280338636,1280950496,1281077170,1281933574,1282336592,1285934399,1286012768,1286211633,1287002222,1287432977,1289955935,1293175893,1293274652,1295578264,1305217878,1305217984,1305217994,1306497465,1308712758,1308746403,1312360480,1312362803,1312370315,1316180478,1316409178,1318156977,1318873520,1323081404,1324946859,1327658913,1328042853,1334617299,1337413987,1343326748,1346741296,1349432448,1361547670,1361571619,1364351270,1373349653,1373618437,1375065018,1384026826,1390094711,1414783722,1416270724,1416594624,1418363468,1425675298,1427174478,1431461293,1433855886,1434376487,1436058547,1436447631,1437453293,1444357790,1444461932,1451154369,1454110161,1454173331,1457942900,1460643213,1460709912,1471410359,1472861860,1479100382,1479100411,1479101234,1479101306,1479101337,1479101351,1479101367,1479101377,1479101395,1479101408,1479101420,1479101431,1479101454,1479101465,1479101470,1479101484,1479101494,1479101508,1479101522,1479101534,1479101543,1479101578,1479101592,1479101620,1479101636,1479101643,1479101673,1479101683,1479101694,1479101723,1479101733,1479101745,1479101763,1479101784,1479101795,1479101808,1479101825,1479101853,1479101891,1479101897,1479101910,1479101928,1479101938,1479101950,1479101961,1479101975,1479102028,1479102228,1479106665,1518991064,1547481905,1548548075,1207211151,1537206872,309146579,1547481905,1318693731,1205256815,1478638291,1530423300,1544419859,1542339099,1309146579,1569116589,1569116624,1274173560,419067971,1466933113,262756383,1017841946,1478783429,942272966,79172494,330721872,382348411,173201147,864185050,546082567,1243393977,555740180,765856741,1060302369,1431596088,257093154,1378740335,1102066657,1096286473,731528656,1129416913,218032590,139705252,1464389682,1106959543,475907573,693753940,271318026,119153201,603676916,1233562030,977994940,942375258,86827141,606861709,1114654714,1078120064,12081901,749759235,1009666984,633144439,768566664,1456671312,1402508019,1411785770,1266215685,966447953,1084916569,603727890,1135235098,1214857280,1222607258,1004696564,1154503494,1373112867,142325768,817614667,920420321,953274302,126461743,807765021,55612717,970383707,155914220,1489472424,731932981,775829192,974398587,1017212163,1432145356,278185014,1230097416,862911149,742821835,894057687,1017431682,280657549,1542473397,655788182,231556646,1276220565,1536822238,200603653,632912108,229368550,320590103,12763744,1463527568,407923388,1488439757,1451182012,1177476277,763420724,424389317,1067145837,101863836,686718124,1395701566,1427643514,1009048358,637261288,1496650239,65351205,1511291838,937927817,314654932,1322795840,180530078,243151632,799327196,1336592910,762311200,947922482,623835660,1520937767,1540385825,1462740842,546638075,1187828140,118003774,1226849025,1120022394,1059501871,1369823537,25095,1361483550,917415383,545435310,186545219,889710464,276008883,627000148,84351529,42705764,1468151056,1125985934,1155118914,1541919122,770706525,185475028,1251181521,823560539,1472008897,381704357,192213214,406737606,1457403953,1068439379,414539857,900478989,55689647,868005274,72253176,1544232110,686375703,1488482722,341800092,1517215476,595873811,560865489,510744292,898441782,646708094,1476790610,1542955113,1039203806,1428263113,129026649,111564586,1090417378,1497564228,1096335193,1126053111,962537470,605292814,1541519614,1469738354,822484433,996810215,447466680,1415532365,1457436400,885368972,746968302,1253155021,588256013,861070419,1450592662,240769705,1306479695,642329892,992801946,539768697,955972124,1554037731,1397735699,1443202995,1331377578,1545766407,1013991446,1267842834,223704615,1553149626,1397019168,1426896716,1474728917,1520159231,1447876462,1424178531,1530049672,1423300536,1541107353,630025791,1237357050,668663197,1022458263,1219120528,1492873631,780878097,728393533,1517853220,1516946361,911138075,1343115350,476582847,1237883166,135962684,306952222,1408816650,1331574096,1555687466,1103908516,1236328945,1431011332,1379133875,256351481,881613454,1445282199,697815536,1478549508,1463981174,791908148,122700260,1553827933,975038353,1391798586,158529307,308836469,873331227,834339101,644787031,1417730858,965858021,1282897788,825245835,1417295170,1518094484,1560223605,1276650033,1296269343,843592633,558426242,1561533972,841127908,1035429397,881485445,1428355854,1492139129,1336145589,902179223,6104945,629202062,8843990,1262683741,995128020,845496602,1454073841,857875434,430161702,1548400902,542873534,1442669451,699581431,1527024145,138569943,1567066619,1000194363,687983122,356530225,1032663583,1107350847,789284886,527344761,1431827761,716583654,1026141311,647017462,934884772,1559377337,716879719,554059830,1276168636,995996349,1026025574,1309332345,655867418,870741105,445413869,1529973558,1462773136,1401952782,1463600395,1561051496,358197372,630423944,1580786653,1552134683,1580801709,1580786351,1582100641,1582105443,1584751265,1585118636,1478638291,1529985823,1530423300,1580782200,1580787926,1580885851,1580890845,1580902672,1580907497,1580916288,1580974838,1583952832,1583952832,1596190290,1596193140,1595274369,1596444972,1595517329,1595830305,1596451879,1582100641,1582105443,1591142473,1595524599,1591147683,1591176454,1591973809,1598995840,1183107198,1245882463,1205137312,1248537204,1248538019,1248538272,1248632545,1609009803,1609423238,1114997155,1603590613,1598987024,10019,10012,10023,1609999895,1617121251,1612130267,1617118570,1617137105,1617121884,1616871950,1617231986,1617128312,1617197923,1617117062,1617133468,1617131186,1617197846,1617133797,1617121864,1617141214,1617295685,1537139995,1234,1017212163,1050291973,223704615,1502083370,126461743,995996349,358197372,400415944,817381973,173201147,1159522917,844596636,562165526,407923388,6104945,746968302,542873534,947922482,20383340,560865489,454214721,243151632,902179223,159745896,780878097,1537206872,1248632545,192213214,35938054,232355292,1009666984,240769705,1554037731,91804304,959313066,84351529,1084916569,257093154,631486093,79172494,453097693,1493488870,845480824,432067729,278185014,1160898646,857875434,735584710,546082567,248757469,1237883166,406737606,424389317,881711422,306952222,558520024,631825837,900478989,1262683741,305567098,129824100,1441508931,56040411,605619166,752475941,593658991,857580311,974398587,186545219,609093262,937973953,1235600277,959043200,57784194,952103528,452133385,697815536,551762897,1070639711,1289990922,845496602,558426242,822484433,474960944,1305325425,686718124,445413869,889239681,1096335193,1067451695,1129416913,964534923,101863836,1575840387,1379133875,595558286,149314886,129026649,1191150265,382348411,1378740335,586313211,673096267,1431596088,1022387026,629214450,644787031,1299942547,919643468,686375703,1090417378,1276324818,619599649,42705764,674532151,671490051,391254142,767951104,518027780,873331227,725664059,1496567390,1478783429,242076052,55612717,834339101,1177476277,1358581596,430161702,962023978,341800092,1401952782,139705252,55689647,495737101,141910436,330721872,1101083838,305057650,1514140859,1067145837,765856741,364947305,1276650033,962931025,271912536,142325768,781830994,1470621410,730638485,1059501871,19375663,869971446,595565932,1400938688,145068730,1319334362,8843990,1457403953,638355779,1132208938,59905520,82348190,83170749,120914221,206757274,254905544,281734937,295855469,343011226,393704994,393756924,396857727,424318036,722118750,1583996317,817169805,827875129,832551053,869460420,902433595,1156847406,1161543363,1430295022,1543191798,684032471,1451154369,959099,556436268,1235011527,1606580576,1622866136,1036903700,1560216029,1615545788,1615530649,1615603319,1598868389,1621151012,1603765495,1600354296,1638996003,1617605295,81519743,11928472695,1514908028,597064417,162456140,1424787895,1585254982,1578742506,1168718464,1593302762,1626003977,1627334027,102448459,1559166773,1601981120,1499966858,1596746224,1585314515,1591718828,163469534940,6132237930,1523384682,340218882,1618572599,1476458665,2504114701,1618764068,514603636,405325906,218032590,1496388617,1323931647,907519624,3164645464646940,831376787,1585925012,1600140588,1516981307,15715434626424700,871901879,871901879,282980342,1565573778,1579471934,830865893,1079265984,91516341,15849830,1168141213,1170898523,1543251187252,68526971398283800,2457943,1638892668,1150519336,225888888556,1613421,1515679208,1134764815,14712986229,1494538906,1161506499,1086416214,402763906,1644828253,1371090766,431975899,233881356,1455775133,1432929113,887002215,1638278410,1471378274,1109145246,1109145246,374988860,1289794671,1828282828288280,847676767,1194011703,1628836094,60901761,840738076,924517904,1392770474,1552821451,272754243,913912348,913912348,781041377,1578120255,768256371,1625511537,326278632,1507987600,792604352,792604352,1530399058,1282229017,1585841150,1585841150,1081613136,1522102960,1609652488,1540104692,1214186321,1534569595,716273056,15326376197679,1566695400,1566695400,132547653755378,107005323,991728851,1606684754,393756924,1115144209,831978608,15957666515,1629184947,1539070214,1591047636,1297692813,3434642,1486677260,1476962245,696666554,696666554,1299836929,669570252,1434771620,332639046,467221268,857704491,857704491,857704491,857704491,1357914767,1357914767,1201990629,1577970809,1180839898,852238417,852238417,852238417,693893078,1106951758,302198417,792604352,553137078,551764751,16646448484873400000,1551909671,1051045722,842781072,1632014808,1622669091,1645893,1392534222,1392534222,1319728639,705711420,705711420,1509327106,919478800,837217387,676661913,1579358257,112687422,865195643,1120162294,1054909812,1054909812,1054909812,1054909812,1600809573,1495933045,1313800101,1313800101,1569742,916311527,1499245935,365750106,758077863,91804304,1064776867,1064776867,1538847066,917286859,1488581243,548001029,860667497,1580657522865,1259839116,1259839116,829779422,829779422,848501092,1544038802,1471059715,1299502498,1164660265,950770518,1178639975,1178639975,652847151,188858368,1604447769,1571390052,1571390052,1149699330,907519624,1553958130,865310860,1459188013,374255,1565839611,876595451,507474714,872844597,519877349,1614642969,1632498728,1273149719,1178639975,954863064,934701573,1567251482,1578883107,1578883107,1416513175,954514105,730566566,925589617,925589617,1579307600,1399073572,1399073572,1013194468,1415765158,1399073572,70426138,728616681,1190282571,590769418,590769418,541415412,541415412,738713876,1036903700,1564087656,288091436,479785927,1526353342,1526353342,1344538807,1344538807,20390377,1087280197,1087280197,563056070,255082686,699589328,1474061894,896229995,738713876,707292069,1600536403,1620446853,1620446853,423938706,819027551,1348037344,1348037344,1033192565,223769,1587695327,1643753825,801237843,956283405,956283405,1537679387,1592731168,105776259,79356920178,920622160,640741665,1054909812,1140309816,1168257155,1151680180,1642142740,274483931,1454399109,171102431,829123174,829123174,829123174,829123174,829123174,829123174,829123174,829123174,1392534222,797128416,923025346,1429656784,1087280197,1234336846,1234336846,1198170435,1490968845,1490968845,1490968845,665149767,1197705334,1197705334,786004613,786004613,1540056725,16656586508,375653879,1607789147,990353079,1604742876,1311990576,1109145246,100974578,782965197,939698935,1490900903,871633710,1616470162,1616470162,1616470162,871633710,871633710,763550151,853130067,1312197218,1078781076,1078781076,1078781076,1078781076,1078781076,1078781076,1078781076,1078781076,975853110,1083695989,1603951085,962041553,1238202246,55887587897542,487605067,487605067,487605067,487605067,487605067,487605067,487605067,487605067,487605067,487605067,1548911662,955491347,1577841024,848984906,831075306,1370466175,1634395148,1064776867,1536224114,476349679,476349679,476349679,1454966874,274768891,1446866535,1069480642,1434771620,860667497,906966827,1557238340,1557238340,1247402952,1505671771,1449748215,424750291,462464201,239692620,1190282571,1535102412,199041455,765080418,1444055385,1444055385,272491834,1621621688,542206240,542206240,839587321,817803279,1116141049,29181666,920833572,1556928385,893012113,973376136,487605067,487605067,487605067,487605067,487605067,487605067,806110077,159997947,597986631,1320017999,699589328,699589328,1001511878,1238202246,1283253592,314166492,819482073,1416540635,1434771620,233214571,907519624,840275627,1553266388,1027401153,1631706584,841985174,738713876,746538195,746538195,746538195,746538195,746538195,541415412,541415412,940177779,791940894,852238417,852238417,852238417,852238417,1506932581,1265025498,1250520703,761526482,680060003,781041377,872844597,826051978,826051978,1632498728,542206240,1493735857,791062307,1493735857,1516038781,1569314803,1593087628,1603730007,1604447769,1604732831,1604735797,1604732930,1603616308,1618080471,1665588613,1657712110,1012391753,902433595,495679236,1416649257,80664526,1602268533,537369869,1413638747,479018444,563056070,958277815,1064943154,837287937,1469276393,612991752,809827277,1057591485,611828522,215883435,609691177,1079376904,881974868,150574027,1115115032,128192450,771895002,905183416,25807460,1112540074,1514419674,816620656,730566566,1188623702,788204652,1641448846,1572775149,1172273229,688965693,871710241,1299836929,938159074,767875243,1530287216,1432235730,1177778414,1290933193,1397242786,1179614647,541415412,307421374,1036484337,358976269,675394223,906966827,975274214,1571275422,1017988320,369757775,918580760,910957968,1286084597,315666836,1083819027,734588406,1549120438,1343326748,1225690007,728616681,1477731404,698713555,864937431,58578725,1610403330,741324276,510842292,1054909812,1048439158,879237208,824137482,716347921,814842432,869110526,1604216202,1575756567,1132397000,1218265687,782273708,1578187545,633219760,949176560,1100495609,1654349627,1597754575,1513898976,117533436,589855404,1490355449,1401390366,857891620,1134764815,1402999912,1449319367,1455775133,318483497,595565932,97153088,949017613,235801876,586737502,819554311,494035521,281734937,1020985367,1081073785,1295578264,35938054,1036903700,1604742876,1290408194,456269554,91804304,844596636,1565573778,723547705,631486093,307834875,20383340,910100412,159745896,1616996663,1405386940,674532151,670279181,495737101,248757469,671490051,42344129,651129131,1327296509,1142258564,562165526,393756924,19616700,1316723084,558520024,552568816,964534923,279456004,735584710,521863506,63535272,1058088715,1156847406,1317497094,399302100,1061087463,304843,629214450,503518382,711301067,1161543363,494613917,944317198,420628889,92375007,1420581083,752475941,1277735174,528278703,295855469,1267069449,57558305,732833093,1594155737,638729276,453097693,708659150,472824805,674613937,1059636753,688353724,1094548445,953123588,35138206,1493488870,237737093,638544421,129824100,797962316,857580311,35322237,161060624,831223144,934863168,756618497,1234366846,1235600277,800062044,221620178,1126636805,518027780,214090550,570827966,1242655937,393704994,1037040857,651126334,535741474,1476962245,1125738654,1096803402,439422755,1602462225,596849585,918173432,959043200,1441508931,255082686,136424606,66948636,424318036,441212959,838687384,1433320191,631825837,281950408,64714474,684032471,962023978,432067729,809522266,887400048,82348190,297590453,654402693,164385725,1276324818,198374065,772804145,947217443,730134365,1539217419,869460420,780454580,1051045722,934136658,180719744,146405509,1096860961,43461242,535477328,556436268,163388380,962931025,1289990922,436474073,549204149,889239681,199041455,599559984,1268237971,537119561,654478487,1470621410,1358581596,551762897,1457662956,149138542,1050291973,705839403,242076052,444618926,962822408,785257514,541905928,455639034,252130908,206757274,214349760,1022387026,767951104,919643468,57567738,1464446614,66225372,1491932056,1586050768,834433014,988873139,730599373,731854074,291276366,999489298,842180093,735589229,473369394,224721111,725664059,17008721,40095300,183757227,459614361,1269542382,259787114,381177693,619599649,607613134,223688979,534861847,970265413,396857727,171102431,1516038781,1430295022,706934593,637853359,781830994,173241508,1557238340,988240036,969602420,859133539,1070639711,120914221,1385833881,427211166,1463379270,842969738,969192435,1616156805,586313211,347237307,165395432,405195631,1512886616,107489638,593658991,1098765560,308809295,858383642,1526353342,397303697,1326290048,873863547,1188070765,1579307600,149314886,817169805,328708620,1443481435,1191150265,269263644,883688373,1639379964,605619166,83170749,364947305,177967351,1101083838,952103528,1253464763,1341428193,305057650,360354717,577411950,1444510264,313664133,171138478,254905544,829714845,636968783,1496567390,1192898841,54839795,301393263,485612644,797141636,1558144327,935515675,722118750,1007682270,59905520,112978022,233881356,1627446933,57784194,1537206872,395425267,97517457,514293775,394486362,452133385,79681417,602649352,756026878,15491457,223810260,19375663,1319334362,145068730,32488847,326278632,141910436,74949569,338518090,1585111324,935280249,202333416,535261557,677857127,1579728399,591898201,673096267,978087654,391254142,256388094,1159522917,393564738,115510287,1106980573,605385958,751626692,1132208938,479785927,286116069,1400938688,513990878,421016994,817381973,863792469,62639113,837275031,56040411,609093262,638355779,343011226,229143479,832551053,720070963,1199772440,112387545,299523398,851810019,595558286,1248632545,222165932,660632990,885723484,559775428,37291030,516418642,6238955,474960944,305567098,1067451695,453169855,1299942547,2576116,767780594,454214721,347297256,2889310,754572455,105359766,107005323,976523319,841077649,347298974,224917856,193866135,1319728639,650705830,943896944,147773802,869971446,1552553909,262514788,83873221,795863964,232355292,1514140859,59777363,1030445648,400415944,1502083370,2373166489,1500415862,65593443,933416752,1129539939,638092920,1447214121,271912536,794507831,1101851773,164682138,881711422,1547451002,204684514,622711,1431467096,730638485,1060001772,1543191798,260235586,1030662571,1305325425,85579079,358063232,692271838,284859867,1111,1006299126,1686285726,1682692728,1682699089,1682868482,1682279999,1685781848,1685791094,1682293590,1682285418,1596134026,1682622220,1686363623,1685780761,1681746784,1685435968,1617197846,741919,1261943386,1603616308,1454126655,623047860,1769944901', --uin列表
    	version_min = '1.2.0', --最低版本号
		creator_level = 1,
    	--apiids = '9999', --内网渠道打开
    	open = 1, --开关，0为关闭，1为打开

},   --自定义图片库


    resource_Picture_Upload = {
        upload_num = 450,
        upload_size = 1468006400,
		upload_size_single = 3145728, -- 默认限制3 * 1024 * 1024
        super_uin_list = '1026305855,1682140943,1000029517,17777,845164719,1234,1004,731528656,864141360,141910436,1271257006,1769944901,730134196', -- 白名单
        superuin_upload_num = 2000,
        superuin_upload_size = 1468006400,
		superuin_upload_size_single =3145728, -- VIP默认限制3 * 1024 * 1024
    }, ---图片上传限制白名单

   Dev_wiki_link = {

	jichushezhiWiki = "https://dev-wiki.mini1.cn/cyclopdeia?wikiMenuId=1857&wikiId=1304&from=10&portrait=1",
	TriWiki = "https://dev-wiki.mini1.cn/courses/1154?from=10&portrait=1",
	LuaWiki = "https://dev-wiki.mini1.cn/courses/1156?from=10&portrait=1",			
    chajiankuWiki = "https://dev-wiki.mini1.cn/cyclopdeia?wikiMenuId=1857&wikiId=1305&from=10&portrait=1",
	kaifazhedaojuWiki = "https://dev-wiki.mini1.cn/cyclopdeia?wikiMenuId=1&from=10&portrait=1",
},   --开发者学院链接

   Custom_Midi_Switch = {

     super_uin_list = '1447313758,1402057358,1402174841,202207812,918296141,523822201,663029416,228348274,673938990', --uin列表
	 --uin_list = '1000003360,205086491,734676328,734675022,17777,1000045152,734674692,1000007807,734676608,1000041285,734578482,1000041255,918296141,523822201,228348274,1769944901',
	--version_min = '1.2.0', --最低版本号
	--creator_level = 3,--3级及以上开发者开放
	--open=1,--开关，0为关闭，1为打开
    apiids_no = '9999',--全量


},   --自定义midi上传功能

 Custom_Midi_Entry_Switch = {

     super_uin_list = '1447313758,1402057358,1402174841,663029416', --uin列表
	 --uin_list = '1000003360,205086491,734676328,734675022,17777,1000045152,734674692,1000007807,734676608,1000041285,734578482,1000041255,918296141,523822201,1682140943',
    apiids_no = '9999',--全量


},   --自定义midi入口
     Custom_Audio_Switch = {
      super_uin_list = '1026305855,845164719,856757223,1275696650,1154525,1436447631,1126,1005,1407025667,1402057358,1402174841,1454126655,1014,1002,1479100382,1479100411,1479101306,1479101337,1479101351,1479101367,1479101377,1479101395,1479101420,1479101431,1479101454,1479101465,1479101470,1479101484,1479101494,1479101508,1479101522,1479101534,1479101543,1479101578,1479101592,1479101620,1479101636,1479101643,1479101673,1479101683,1479101694,1479101723,1479101733,1479101745,1479101763,1479101784,1479101795,1479101808,1479101825,1479101853,1479101891,1479101897,1479101910,1479101928,1479101938,1479101950,1479101961,1479102028,1479102228,754443663,1234,1621151012,484335529,198158240,1682140943', --uin列表
      uin_list = '1000',
      apiids = '999',
      
},   --自定义音频开关

     Disable_TriggerID = {

          ID =  '1030021,1030022,3160001,3160002,3160003', --Item列表
          
          apiids = '110',

}, --触发器屏蔽广告开关

    triggerItemOpenDevStore = {

        -- super_uin_list = '', --uin列表
        -- uin_list = '1000029517,1000009217,1000,734674922,734675745,1000036699,1026010785',
        apiids_no = '9999',

    }, -- UI开发者商店

   music_trigger_switch = {

     super_uin_list = '1026305855,1426714052,1402174841,1102,1402057358,1428557907,1416678989,1428736065,1362094748,15477421,900339071,1345319556,1006,607470791,942837368,607470791,276869238,1159250919,343011226,744747135,40619945,1402057358,1402174841,1024759701,40619945,471132331,223830089,308836469,917824725,5269274,1126,484335529,1234',
     --uin_list = '1000,623046845',
	 apiids_no = '9999', --全开
     --creator_level = 3,    

	}, --触发器音乐库接口开关

    showUGCSwitcher = {

	apiids_no = '9999', --全渠道开

    }, -- 工具升级进入地图后切换按钮开关

      showUGCSelector = {

	apiids_no = '9999', --全渠道开


    }, -- 工具升级创建地图时选择新老模式界面开关

   iqiyi_event_switch = {

     super_uin_list = '1026305855,1182271222,1364351270,845164719,1438196254,1004',
     uin_list = '1000',
	 apiids = '999', --仅开999渠道 

	}, --爱奇艺触发器事件开关

   display_board_switch = {

     super_uin_list = '1026305855,1182271222,1364351270,845164719,1118480303,1154525,1436447631,1431202369,1438196254,1004,1126,1002,1245882463,1182271222,1003809027',1226771348,1451154369,1103,808342345,1002,842180093,879491781,158087577,874216562,302015213,149314886,1271888865,418062998,1078551,77000031,328540644,308836469,602649352,681525566,405195631,391254142,77843989,355196595,307834875,396857727,1211281,260235586,57784194,271830299,883688373,835912772,19375663,214090550,355472368,174493726,54473067,936441247,86970724,145068730,257093154,133213732,673791076,139072032,40095300,139705252,2576116,223810260,414220953,274496134,393262271,304843,276869238,731528656,40619945,864141360,493508306,1080732679,5269274,958497472,784363540,83873221,958497351,1080736527,92375007,57916222,66173425,
     --uin_list = '1000',
	apiids_no = '9999', --全开
     --creator_level = 3,

	}, --显示板功能开关

   display_board_video = {

     super_uin_list = '51811462,792399802,2222,,1606580576,796621043,1055820437,643638827,1238186092,631541040,838854565,34510118,654862041,77155400,672374654,47369587,235837730,220230988,1228974485,986904199,612194286,537369869,749594840,124980279,274603903,509589588,1164240121,648780474,884846953,277233009,87641376,917680145,1210487805,102311467,772157973,904836039,278185014,222199044,642624298,1085221236,1187333091,698803108,812865231,1361571619,374021948,23894652,78688442,545883559,437897087,90649209,860733953,420146443,514693965,766900527,348689020,50040658,191380860,839321542,1095907270,533162956,1720759,170923514,1113265459,622190606,523822201,554774855,148548195,556045951,70626672,69234596,276869238,644690702,659410514,494673341,1138034841,257585200,400152385,1063161673,150016182,118003774,1035674691,140871917,1084796360,92610779,681129689,202317578,1074669093,943000067,427020090,1189020629,238298357,505779487,931604649,1080736527,314654932,65910835,1059358835,1124107140,451323931,711924721,84410378,100891236,556200966,778305859,1078120064,475622289,86970724,783766128,667843258,925756319,156943580,388784862,129157558,569695,26184551,55901455,511170168,826469645,304843,535261557,397547486,510426900,260285295,176172907,435982381,898759894,901695757,155299113,766602147,85811892,351502416,274496134,1243722982,1097784101,629095734,68606045,48329390,1272262228,1063715267,1282336592,817871862,917676928,200829897,651177124,293834998,883436099,1248778959,551520964,1433855886,565835648,899182079,1038052296,890183557,225912669,402315353,290671214,1087954897,1197153599,736214374,1295578264,764145024,1088022786,723189521,237342372,247784346,536548653,813462079,134215396,1183643174,1124900812,328708620,1071502432,21002358,185277097,255867551,801469826,72864152,2000,26310837,697730551,567895543,623629564,272049110,643231883,675277566,1071540702,1427174478,964013769,54839795,562825112,564492797,583341114,820829152,62274011,252763237,1171296062,253193602,393262271,169214341,81666594,708659150,514718073,998178659,359954924,811667353,314053056,217161165,1061270896,1253634168,140607549,403991359,1044937251,214090550,589209080,644400740,1121725549,583458140,352857863,18663907,656575194,433565026,1067606991,897310290,528950498,1059303653,1081061049,225991731,1114643408,1238314161,997634993,260050159,754572455,1091440235,674511452,826839613,1088060741,19375663,368366596,612096331,935976611,535309760,1390094711,115137593,864405288,106029970,1183646623,637475156,771425755,109813236,40870724,669814144,340106966,178533581,1271208411,41380706,482826752,657052337,108173224,1084819277,317129766,639837471,66757252,636865352,1081543276,891071477,1034862430,1250356489,422335439,1053082750,933416752,24313886,951641311,19107979,1034976018,622207245,1108329953,518788283,1247409195,1188248034,1272705906,19692305,580343451,205273617,981966019,70531326,643860318,40092737,895933775,122517005,748853061,674532151,1067145837,195306561,664513719,965667731,666323611,45434863,378221767,185984349,300531899,219582019,159505047,1093422854,1216381578,376906978,1349432448,576640699,1156695703,463847442,612912459,288834476,738068374,999305461,68399129,255219259,1248538019,1156672135,23815715,602097791,871525491,550789084,1098183699,2889310,178208014,521863506,34538940,1036154003,814456948,1156693426,539541984,1052382452,780830463,1254350456,357223776,625525649,431835755,732027536,270864980,628620995,933463167,542442374,1116079753,240470104,639889258,16647422,298932693,49503164,492331760,552554471,472824805,525007867,409574059,1248160572,664068164,1067147654,424791360,602898721,16919883,137507804,684733481,496304116,242076052,1055757343,242039329,808952885,586558152,11000,951769523,752703547,77843989,228073881,405832697,592508169,542140359,395425267,729585514,656048916,1117729314,536613857,8877998,593181499,620138726,395953707,1334617299,414101270,223235949,262913208,1192671415,1100926423,206809381,1026305855,558520024,1034820076,379119216,1192579056,1236330631,272028374,130668658,681830122,847817624,273946491,843500678,493508306,418577813,783596209,937446528,856143839,983380452,138170891,655896692,684224714,978920212,90769958,455077853,833287592,527192621,644787031,139537155,324269980,556435618,685202917,1271318912,83988231,639644030,1080823834,711924142,157370031,932097585,302435277,705102285,1209537650,1248378277,1177476277,646323713,498550445,408768633,668767690,429977696,602077815,754172585,59270361,367190,1113798930,1226302048,1253155021,214323205,910735241,431780856,114535888,502767890,755983032,1097564081,699175708,1194153668,348168333,131272888,1074874056,578924107,520444853,42344129,993707130,216681397,1107312494,702097261,347298974,418150006,585405681,318586933,1085030135,137495379,1247385955,665608267,6581014,600639559,1289955935,228502287,872729553,762614778,29157508,1071448572,626029629,97858597,609258602,87935502,1206063440,962931025,286843426,109234241,513199979,1203220993,41133364,496905817,713749691,1230159347,146405509,631447343,516189585,1253697071,40768373,1166871527,1210314655,532860641,257093154,680809699,697443347,704839260,277158608,277222555,183793069,636366611,393784097,1273865020,614010880,159820533,662902952,655852315,892281362,1067851706,249082850,1044035286,163173755,347689755,24133113,3302643,420090330,1211281,602649352,836193786,829189914,822274751,1168143921,723275090,373992209,1129018221,203448230,313878941,584054861,663281157,1216614866,339070211,1156660781,1384026826,1103747935,198374065,84351529,1163669911,484030842,1059636753,705633473,1210560973,743549428,1011359230,857186203,1095959268,202144260,242367535,1074451023,758140391,469482575,116136873,1064132215,649654084,660440278,506438277,783834262,53543604,610209940,541005528,71235805,155678371,974948919,1216631815,16739652,347237307,326025695,1213845791,780357484,1063813405,1019109768,130811646,1074546636,299925544,299747668,159433802,943669763,1080683111,384375071,102075886,541678565,1337413987,489671914,266608376,1025784277,1327658913,942452148,25590461,895932759,697358220,887143737,1271257006,55413995,68836928,779359101,792456509,1189383398,630404531,87877612,49449745,692971533,547928075,673791076,301380441,347612408,390797471,361159196,149314886,133857090,922873978,1025167797,62381094,1024759701,1119072150,133213732,940709382,142325768,530377819,959442488,1183638034,921627222,1021469239,1308712758,860195273,44050458,821194636,1115125988,694900810,921820428,1272915895,697310686,1248378122,655046492,900416319,1124048463,740508803,126027936,345743509,780480690,787190025,1215587607,648375535,761546965,673096267,1201949485,566349043,243537895,233330551,1373349653,327709892,856439145,825937757,666962919,1097101323,199041455,177227732,1280950496,22581577,1248589777,227915443,781734535,432626185,439871408,99347115,61705490,606644793,79799264,655205857,674588713,92488767,615475856,674692928,264161587,298953902,18970656,534287959,1287432977,905401443,168400963,59079089,564370395,697466852,74654702,1226295163,571948141,1097761200,66732537,1091821478,621407490,1111723226,907693411,697671394,30424864,145636635,1274562462,77992061,1088595013,330736785,779302889,408965309,1252601509,570827966,299026865,733997332,475156499,706934593,1271777629,12345,430161702,388682543,849090526,677740356,573844537,717929863,64448768,1044311913,39102218,726476017,1094017479,873700953,438990495,1183632389,1079774041,462584248,760234378,168356076,188546486,5868069,333927147,62639113,925944305,69700945,1247395685,1199738217,450734418,82719187,706604602,236164495,122315442,557051694,17008721,646434489,68566140,1159250919,282112481,663135048,413000122,1110229846,1064313190,22664405,339332387,857883159,734798509,141391888,615173729,414539857,623459,129303173,467595590,113589332,589573317,1080732679,1088199001,252130908,372266062,256388094,79445008,716455415,219562142,673099022,328267362,539046088,960571412,274885270,50988183,344253277,627848713,542815141,561710465,710571440,1063589818,339769748,1199656306,26855368,219113539,21714540,296605705,1187967674,609403427,79245228,734853779,24716139,65854225,56410644,304211994,93932374,767951104,791299338,755509459,74995284,552041549,172939008,451315638,310649624,1855309,641934714,330107510,538328288,98226400,57916222,443170125,180530078,967906645,714627167,764550249,623778223,79172494,542065423,415457837,87740924,317378051,30402641,538299285,112055829,1056405157,89112784,1192674189,262514788,38504142,606781981,916016579,732904131,212906097,592354715,199245078,123377674,544895268,698682148,525135236,19641155,523768824,443704255,174371503,784363540,855094421,54748989,138890368,55612717,1109729695,1080210103,557625836,89065407,199923759,520447333,108682117,493927713,106717671,199026643,401590148,35938054,875864702,949017613,101268795,479467729,1234222369,848116611,294485561,633349868,575696700,744431675,811574834,454106242,68430949,66566841,1240876795,403294525,41586156,161060624,294179322,393704994,335082046,174510879,22814300,1252964663,1328042853,511483921,1305217984,1084857895,1091587671,129824100,122800189,438020708,33428438,1444461932,810048493,796217835,262430171,199365128,384631477,505443251,559307583,23587237,996398440,296277154,623173233,279456004,261682370,454420750,160468927,699210407,1063415676,385247010,692569683,1305217994,557113097,72458055,348712755,659309340,1272332111,78547650,757997018,815715113,734178523,164672931,20248589,658473545,560352523,1061104932,393140182,587129196,435684546,129780427,514385711,447845141,848122812,250826397,123554860,553971990,273706264,235005265,775325765,122037907,1127133851,530879193,1216596501,919332008,551595443,739287970,406115331,719541490,571147736,770626090,1067346558,1052808151,1029186187,679002435,155326086,1287002222,297523156,1071447900,1105831642,938546637,166952260,1661285,63344393,452588783,334155482,131414390,551009553,1076608172,382440419,52402333,935806196,650764493,1178824302,222820406,745785804,514722902,924002212,1199599214,45174330,825936950,1147875382,1192668132,1097735765,563375328,1183639286,639523604,22206398,593108369,397505150,109447866,374651049,644667447,721949460,646672413,46994665,311078593,83170749,645794083,15891648,173731383,836588429,972035939,1080755909,490270965,306684290,48173593,20933993,123016240,269490336,738338248,171138478,565575656,1122841297,66225372,32689191,1052096223,257113447,473638965,266904085,12763744,538120752,383186830,842815775,228970392,303406920,2576116,542863929,966467043,168590794,507618616,570143523,1074371662,115219118,1276363016,188153006,15477421,1101139256,586903016,791012256,722118750,86278719,89118711,908396702,515465720,676653770,264556548,464933556,1199654931,1272657547,751195382,928635026,226108659,641618701,276149488,584574907,762554566,198305081,77185860,275362447,864150166,1067607739,129404233,136035308,412818047,356213656,457325339,978604688,100956917,26429050,806735195,268489997,640135153,284021967,837217387,295855469,688845432,598706358,1063176561,818411962,1210413480,744444,1101851773,1026025574,104694802,251123399,183665023,727006268,124787769,66204479,1248378531,61463716,854671228,389400844,1059873178,1088300090,260726565,1192672036,516418642,73497765,986354997,50722343,688735488,41290914,252043216,341200806,1099417131,6635299,127796907,614503791,882466467,794446707,755837600,668092809,1045849522,533481396,536787287,813901370,1248538272,1074901177,22981163,1222560375,499254269,738576194,27391267,73405657,961256784,17848464,335187950,606502060,763732591,127400435,54699054,738060541,903382258,869206554,77000031,429627772,660838929,671490051,620568828,1180373941,173089283,770466413,1166855704,222869990,1253158044,1229276308,141223813,18824965,839469725,1183635508,206149748,522308517,115258028,1055977078,613274888,1248257739,1216409809,295280762,406043357,774216442,474960944,198840638,400917571,485612644,1071333758,1217067585,61511254,763575745,59196632,174329056,350596218,1275974970,226258,136682878,1080953368,773227884,452482888,713793229,656351882,799073535,390154143,1097776137,507288245,839456779,203000630,1067606976,864339034,181911016,266729758,793292438,85000988,578275151,160818440,480918060,1247398142,559932763,538068245,922685693,72280097,1118964020,672061670,58536107,42384001,107489638,5269274,40771042,1038605387,115829348,520953719,6238955,730952106,270541598,903124092,1120903169,677114611,16506210,993190741,1088516475,66173425,58837652,493243879,141001872,605385958,1167326364,664094593,58743956,1053372607,688166688,1064291029,102172211,997244943,792373780,733994255,369320607,759871573,1227096641,465986104,20549154,826570886,412464585,656247750,513990878,1199587387,182334403,418182289,723547705,1159275128,391254142,1194241326,916639932,426410921,544042722,808490214,758601367,254905544,636865083,1097775509,79288330,550195364,598382999,122120459,89212096,1243788491,640115166,123339931,954705552,136024579,854102072,542975141,354389950,1183646521,273080213,494035521,243191419,556252227,879319531,1278107281,77195007,420974964,863648483,437356223,1278088535,104255160,808056256,542387573,42705764,73734758,425769946,22453305,515227852,652788635,680097209,182251075,1248537204,292545045,546959506,610557789,1183630608,1226709522,1192672687,751694708,901877090,193866135,680325173,459179493,1100245237,265585732,1205092043,674336134,302245571,596687652,200006454,410092646,942837368,456269554,1119910734,179122234,625361792,660632990,1068493229,749099026,451496303,797764255,1035075684,707427680,663719179,1460643213,588988,143670559,565879898,883771800,840037733,94386963,527656166,368506048,267521278,1245409312,905692962,219896756,655173591,728353035,1242020890,1031805005,402708906,29568648,428161465,92375007,711144941,751802865,186553452,494613917,532735445,187429694,607470791,610638524,864185050,626871993,88144437,676285272,79422978,575296238,917824725,416361127,147275701,449942029,479932395,39064383,357027410,1088512193,1160171,112569800,1170028310,953123588,1017460053,1058088715,606995993,635164046,414311382,593658991,829841088,799766412,906393225,299523398,600761549,962033419,959667088,1069512357,434504676,223810260,466458651,20366948,507847997,350040889,145068730,755830261,1214283704,404197159,1159257497,795404786,627421724,226184572,298614717,870119650,49190752,542897378,452733924,767976146,1183632127,1305217878,222851786,974128811,139072032,618760566,1999553,115487180,373013005,641367442,585513878,765086850,862339629,524946255,699582612,391163815,786305580,679368057,674396036,1041087392,770620313,199074735,59918452,268739821,758352958,25466990,606667063,779313809,92243989,451188978,65318891,936549844,318483497,341680929,48875306,676335007,1247397948,616333774,343661595,83873221,1192510319,730211631,237610578,1088465516,1052444298,484744412,409447051,6209559,57691609,660780090,657064246,1132975404,384781146,1226732651,488922622,1166878675,567621088,963824296,502496036,1033594645,796586098,344532914,138455501,339105483,825188961,931550917,577709607,182212205,772337083,1228719488,768587653,1092026202,841803102,424921448,511236528,917879901,1323081404,65466266,539843974,859254028,569090843,864150267,106542564,8843990,1271719058,324524396,495348427,19616700,71371452,935928587,1080727120,234238962,101227793,620439409,497938485,114523223,1127488721,520794732,709996675,326755494,655249799,614787989,1182271377,556848305,797854565,526700626,76211974,78740664,163388380,546650493,1085814226,958497351,708134373,40619945,349677346,786396812,75868704,471384348,240748979,72884752,1121941993,826810557,200492578,402677057,586004705,958214999,293862311,68246455,1097110254,275854064,1054913643,20000967,885240318,461706604,409469172,1192898841,363757088,325620370,767523038,810079446,539833008,1249534061,1000,1162255300,662359209,84983536,639826549,5033389,97756061,1000986337,358856625,797557466,856092769,193159380,56137924,584390648,734758866,57883487,499372817,735589229,31444900,611127073,284675855,1183647938,59722992,446491014,478889393,414220953,562345640,122400159,776029887,97359728,67385412,1074718239,412412397,466691904,941755655,758583605,1236707487,417052621,108543503,878628196,88239913,465819537,345594793,13994933,694716356,1051749517,120043351,461512966,813868304,842013834,942712531,1170381646,883427090,243476975,21170804,1148277924,355327207,209703653,1253212013,522848241,9464856,540959240,1192577805,768749617,466095111,1212084669,1293175893,1074121275,1201230179,649148591,616625043,32350026,63824547,760787099,1247391326,1162202348,733662082,162158918,18613295,462464201,1194368964,755719028,839871171,33824273,343011226,118809488,526217699,686562573,627515661,287027532,1064294269,42927004,27369647,1080248935,1069378920,1205137312,96158173,845856672,361955615,689415009,854690374,1157789199,3014881,77999641,360153737,894678317,527297485,669607866,1127426982,1034994319,37025791,113216004,165524780,420373971,838397491,535696307,382348411,817381973,558528076,852386173,793466563,935016051,16983619,796254730,267837154,416923160,1183632486,343841508,579786067,282890050,727329715,584249232,423471126,638749350,480952399,863705967,254420973,1171247,907935225,234184734,180221435,518239787,391525457,1103,376241732,18247737,1021404210,113890924,107690234,194327364,494158599,99846816,675697786,108058281,608542083,567841353,130036530,187267160,449092566,760493418,238187954,1121102566,422241490,438852327,756026878,6666,87402922,102336695,454213459,783439636,507290279,946720847,462965647,1061510118,495679236,770873594,786386181,18294158,1077650413,369757775,916684023,728722127,1019103946,1218453040,144433928,578334874,1007460545,452400086,566978267,358197372,622711,93551892,243481734,519293334,1206510898,1097672722,1251465796,707403306,1418363468,1077309849,476441341,256068131,788255642,502007692,1056128497,63022491,451839112,195274675,426512098,787299535,387331840,621623584,639709867,516955893,71009972,596453605,251483026,271745051,848241185,518178064,952103528,606192150,1318156977,347379179,434010678,26775621,291645201,428086068,1253984507,391772575,572895306,41521829,749698347,740008757,1194336483,1064943154,678063090,745178706,216959548,769984520,697645485,1011213199,865124935,797141636,921299918,500796296,411199793,1206635376,911976827,977883228,27733645,728662905,1031557376,546228969,120274604,976523319,59065715,548469816,194513393,513117451,458184171,354180634,505349913,385683018,672237918,62064756,553619431,279803107,736511299,1183632662,482714748,705293091,838193706,516588074,1055972250,638355779,783998156,523928880,342580015,304251669,1272709445,1004540834,33526318,65593443,222041831,1261864885,856864911,1248632545,232337246,1118247136,1193380364,110384336,375814131,603143491,518992856,829130879,631486093,1088890323,799518502,1025492657,730134196,873609611,1070723333,624174619,848279233,740974419,198481104,125493798,1216623823,1063163943,240189592,578627678,356922222,561881578,367813978,23502594,87338586,35138206,553296131,164305960,916620834,622074990,507962120,1178711273,973793431,1015375298,327465647,80669,667476632,201309760,1059491174,1205137476,210108338,41563761,846787595,1091924776,748052877,307481286,469635283,828667534,721150369,159581914,772026572,1055756883,476988265,470067737,672718827,477948448,1273226269,383102877,19798337,79301306,677297793,590591912,1067606927,577195527,919110808,528036024,205840110,518464809,648167253,969034807,423581198,537703665,937788586,1183630104,598121392,1254395750,61564673,771826637,1078170643,121902354,510170152,362932135,207612011,900743000,839460914,909179403,610795783,1070505950,1159292626,666995585,1100387648,1085158932,1316180478,467918236,136438708,419619956,125674415,603404393,495956315,3639521,719184388,271830299,1014298949,1280338636,139246171,900587973,730400272,1092029444,208607775,539999,74357428,564838268,298036301,1056145887,1373618437,1248588185,617996974,90502705,762621923,465480227,374722524,314397314,93597553,548705706,810886936,842798165,743804457,738901868,583222623,702570705,681525566,1041897687,370802686,582826221,479106433,637742165,703438001,511894773,129178915,101957094,828722109,780453621,25095,445329985,624283361,1253657945,41664553,658492284,329883678,1247466321,433742835,1117058480,28388833,546250526,1192673566,1087969995,654215657,1088104650,162969369,1416270724,479785927,1286012768,638092920,97246389,222585925,69746963,330302022,200603653,984182574,364971319,70443711,727654641,203763415,85625716,894511688,1205137045,496176084,1162114816,659291178,56040411,628116855,958497472,726711975,264644295,52098593,399302100,516418145,405195631,1183637649,666263918,82348190,1170932737,1026479213,1071331605,255698312,38953439,429282097,1425675298,760581209,506549948,509862500,1180410176,1188700250,217800462,945974190,564673900,419358794,68615194,57558305,1077791114,1125118366,370128045,817388446,688381443,1039650265,1114765675,1229722856,396857727,662599422,258538757,332026438,88510475,1226712684,235857381,1129539939,1080218912,487189672,106639706,1245882463,9678318,895224953,995311649,1015728153,216829413,795111351,564694563,927077469,610108239,627682324,14230005,217080794,493364216,218007622,513770872,592833103,813475930,235801876,849843205,219768204,58817205,1172387409,1140072677,106458375,480946787,917391714,66948636,1196258730,669225269,1162248310,646064480,890350075,1126797098,553802717,744389305,169036981,1375065018,759465842,1067266897,674777588,1199831602,508068570,5564296,37114570,390619274,198107126,350909338,176914660,1006743823,52403850,1084001129,402968316,507045,1183631046,302015213,234339718,633011132,171327450,400889546,1047475352,581222221,698713555,1059952359,607505661,341423620,997774117,828482971,1172399152,922135775,844269506,407333793,1137772698,1318873520,776331747,385867466,301684741,131510152,705704100,668050620,969163557,530757059,167943318,882982599,1166962739,597679519,938449230,146312506,41221021,49474463,848031920,101863836,217159656,1247393390,739236726,110005044,1094548445,442880423,261179615,1205137617,519325680,738340321,455307968,407654076,317008654,1109805413,657268542,884509280,88501105,242082327,138883474,54473067,393756924,547015029,1183641867,921547805,920492936,340324030,149616379,135611469,333826829,1097760456,57199456,1067145888,349030437,469376724,1065707903,1172429549,349633557,936816528,1020435230,1080813820,947771032,261845814,80606614,835912772,46099005,863867322,74640426,647333034,587719822,873331227,58836503,1004426046,1070726140,1226762167,154968179,1075630578,1248576049,9578691,552483218,860113416,218345662,1087921702,503518382,93563615,85781606,720303581,8277356,529149217,74930588,1084825098,305567098,988760592,1312370315,1286211633,433913596,31196602,916808980,39687790,754180829,912673608,660981561,523966098,593235732,523669241,111151391,513831125,617876948,1104067287,612760490,300871787,557334615,418066828,251212560,398451007,881384830,437815846,382822944,1132859123,118766670,788413295,823314929,965557988,676882276,1265762444,55646101,747640640,1063172991,796562213,675207080,632342885,132430714,3229266,225381317,525447723,650230159,1434376487,551617982,1178892279,238451821,55629313,137757029,559775428,32451177,443786976,411928597,735454701,94411695,738452705,1063434341,438210338,1183633280,1066898723,281734937,422687128,1216605640,1030403447,39277238,665090547,366109162,248930937,284545936,565178261,1074874160,87139328,700096705,1097745836,56157721,99133900,366778015,173622160,58362665,234269108,337146170,844236620,730083404,1173419006,373552296,38932500,312399400,1188635098,881699859,27173330,290484778,73427387,1316409178,1055206814,469892477,249669820,633589752,661101003,1269542382,1230927473,762418060,422221357,587217949,324921111,750085268,450263954,812635683,796489600,1133650446,679889376,643771188,1005959498,1112946700,812802085,605907414,932648286,1226713081,1022100601,193884145,948050556,656200070,1089867314,35548272,223460414,448418031,734755277,849896505,999977999,837350165,1361547670,282386343,500304987,84868012,262176298,725664059,608122871,593456,64485288,302898465,1007423194,669840250,644949419,213733566,216783311,672993481,1119622081,658627015,895391320,211457026,891451960,32596640,778673164,781184764,587160628,10973758,432881311,773681212,792341026,872978472,97153088,1267480496,197817459,634006939,838800451,216157890,985673349,1063634892,836909058,935815503,1240973759,1081554363,1059333184,308836469,316180660,507612773,423502094,22228400,192805492,789758207,634374546,224579661,177394105,40095300,513941685,904183528,518629766,505607508,1166862793,611143689,1078373699,529207822,923280657,1188203368,49425072,140865014,72724020,434621673,1100855607,1220556468,537822991,636315035,85705371,731528656,644995,328225177,139705252,124757488,1030783532,72479391,772884624,308809295,260235586,844012437,964987550,744747135,479597563,452079818,777749455,164201960,756154584,113864701,1182684703,1437453293,779289258,751920589,1162171367,345976729,342018862,1247899919,529107524,833325051,895939342,220519316,237630209,1102271543,1183648732,560924247,1084916569,390859742,559202752,890260599,98913523,908286662,1229677581,734147195,417485841,114671017,766886140,115510287,355196595,1074710397,1053755629,1132276897,1084365033,88635493,138622670,41474204,570648750,192671159,693481290,639569282,1229272153,1247171004,401061261,890868104,1035287944,443945571,539598586,250129950,521885091,422103666,739038800,171734318,1199834334,1051484183,950758004,629759710,1030400115,176940198,414055724,1103687898,736517242,1055814680,775474223,639412768,550936625,1186894799,120914221,601357994,90686355,480412485,766929313,25717338,108787542,43358727,839112774,817956420,340644205,696314130,706616559,112978022,228235024,94260076,1343326748,833306757,1067148270,686685881,128647833,1063170918,226172186,201377197,648416777,224595419,82740213,800062044,55427799,213494827,213347530,599212486,57784194,797053703,1022001193,671663584,1324946859,335601817,336440490,1081801219,55449103,415959067,798690525,883999405,1088891729,119457934,853499618,911211,241667998,122111687,1159318191,354127691,621593201,63737585,431939,729563033,535152042,584173334,170069373,668931467,840518569,333690107,1091330168,103392314,842180093,1182309432,823856468,411351237,141718176,274821674,346071925,693343421,1097773569,300131755,970917889,591710825,965232583,386400758,1281933574,333739663,1095262967,933945866,391283462,910841834,843886886,374985476,635900475,551270115,1051125078,430659556,1106341798,761927130,103707579,676402214,1038631202,1052579905,151359117,1254129236,958497663,694987217,820261751,384039212,18329853,1346741296,60899705,1285934399,758963814,535678257,262573770,82281168,107348842,760054533,570867122,817338134,1312362803,347297256,509315268,617173689,793647929,365461110,371896292,460304892,57232893,679800713,1011802767,1183636554,1060258539,56305397,254408333,853366511,535537350,402800431,1234298297,496315433,500253776,58137947,919012224,881098266,688238782,154782962,549281581,443832784,507859417,110384985,1183107198,26969426,778673071,781610664,1248578764,257203174,498694388,116059913,1071540552,577079856,435922485,701229081,1063225094,1146547764,1097775047,48192232,1178866240,638122994,661756663,336002799,1201977464,194693915,64714474,528366610,183358310,884016365,101136657,826739392,101029947,1071227074,237737093,876036841,754008219,733137782,63412239,665697521,676463972,658767417,213349303,638059706,773106570,132389985,842860181,567465206,298419675,890235108,767780594,39824620,687989788,18512927,37030527,1199654055,685975445,590485209,632504200,649543766,194097064,817732088,583762863,477661082,702202155,1124968365,499560621,455881754,246932253,1032241288,1035731437,606669932,552443439,741115993,1004950746,1035638108,874029011,145938902,619034860,1195138148,42387504,1431461293,29981011,1179286918,734322290,55617047,187162027,686543890,679563353,789775829,1067607004,180719744,673892519,714366175,1063750622,202734803,356151799,579582027,643064891,1247399987,1235671637,86902136,931022144,133177326,349048272,640424038,932874138,436745824,1127217816,1293274652,73923894,726079036,864141360,934960467,1182741704,129758951,863776130,679307977,595951149,179895593,1183773013,22264516,591487595,194597029,1080183318,739441022,1084857727,1197175478,65780262,6276318,67897101,557104797,423627269,33917330,678243606,747412333,528002240,765927744,1164246211,1071331800,768705217,57763421,389976598,107795150,700510674,714103055,405262640,1154525,276439174,79681417,1229278675,271230995,51371442,856949154,439662908,676912939,988240036,429627231,284859867,210430420,369930390,614337016,92876288,102242153,814321318,341756276,1065500117,1071341319,628215181,812057383,947996629,430718363,1281077170,602791906,55689647,210421442,460962014,359243206,328540644,1196876617,39604952,343201124,591932018,845993022,222165932,634750834,321189201,461235179,208567779,1006329955,965327062,539897583,679301789,696529279,265543923,611828522,1248538472,1212646444,1436058547,1183638344,1312360480,1308746403,591446813,1105866932,739217654,423003685,118544554,1121286081,61866339,762919036,671480592,287187111,1017784085,612527187,858756427,869195117,224917856,40636486,518027780,707229981,709112647,436670882,1204667810,42753305,776655801,367679634,609093262,852507186,773724390,1047774797,1071327761,666515941,886798679,858926261,508856499,571375076,383424295,1088108515,1240347735,196243505,1102,528045349,60914470,1217947170,348093653,669485102,52994064,15491457,418810573,313067524,678307788,1162166900,251787305,1248941062,1032569201,333663381,680286268,105934463,1226783998,409245778,223830089,762893226,675412418,427564289,941786568,704796337,745787877,849555145,708127527,478207918,655116369,222514242,345982817,815523021,787246462,528198848,637378337,425958512,340155039,183757227,1088094604,369203739,59893379,966656618,67505749,66066623,4322604,532190500,775033736,1416594624,691533707,617102401,1071340785,1005897529,429274140,1084356439,82636503,496185133,708129824,56276606,289858817,356624790,274286740,685664382,926874795,218108762,43589020,1183645701,829498649,597075079,992547762,1120586584,528315328,815404079,382867105,1166886829,1078551,305194515,163275829,198980860,819067649,1171437966,503164653,1059966737,30359374,477242800,1187977307,69378794,527063453,351880912,108796523,1026010785,1030445648,168724482,56329564,198483330,471132331,282860869,74721289,1102422160,654402693,1055714218,126168094,672186961,896915210,976353038,617668369,12816828,760762464,307834875,73965477,386864836,512311303,752607445,287179504,834795401,216210853,222989957,558426242,533855531,435248424,1063849154,1067606902,111734955,183881502,259420319,969965045,128792467,668232760,1234087022,174493726,480487031,808745725,101217480,98672123,385091599,849270934,961625926,915353244,659234915,563944,375464076,74965049,368905906,619646638,767832495,302073868,397666660,1065127220,221474132,532723382,180693499,755088353,341800092,1262683741,872708429,35398374,696132483,527042542,1176619720,827047287,800238837,488046021,831918619,425709647,927175981,530155404,1192669871,67484974,1253718922,1414783722,407923388,1036910941,936441247,45716054,213979477,372804131,87282987,147128814,462357424,320458273,244073994,1261046217,118829594,499837559,816641146,993427658,632579951,138569943,293698338,1248261460,400392803,1182271222,228348274,1364351270,845164719,1436447631,1014,1454110161,1454173331,1457942900,1004,1002,1226771348,1451154369,808342345,879491781,158087577,874216562,1271888865,418062998,883688373,355472368,1136400041,1234,1132208938,418062998,1003809027,1547481905,1207211151,1537206872,309146579,1547481905,1318693731,1205256815,1478638291,1530423300,1544419859,1542339099,214090550,1015,535288505,66890090,1548548075,630423944,1017212163,1050291973,223704615,1502083370,126461743,995996349,358197372,400415944,817381973,173201147,1159522917,844596636,562165526,407923388,6104945,746968302,542873534,947922482,20383340,560865489,454214721,243151632,902179223,159745896,780878097,1537206872,1248632545,192213214,35938054,232355292,1009666984,240769705,1554037731,91804304,959313066,84351529,1084916569,257093154,631486093,79172494,453097693,1493488870,845480824,432067729,278185014,1160898646,857875434,735584710,546082567,248757469,1237883166,406737606,424389317,881711422,306952222,558520024,631825837,900478989,1262683741,305567098,129824100,1441508931,56040411,605619166,752475941,593658991,857580311,974398587,186545219,609093262,937973953,1235600277,959043200,57784194,952103528,452133385,697815536,551762897,1070639711,1289990922,845496602,558426242,822484433,474960944,1305325425,686718124,445413869,889239681,1096335193,1067451695,1129416913,964534923,101863836,1575840387,1379133875,595558286,149314886,129026649,1191150265,382348411,1378740335,586313211,673096267,1431596088,1022387026,629214450,644787031,1299942547,919643468,686375703,1090417378,1276324818,619599649,42705764,674532151,671490051,391254142,767951104,518027780,873331227,725664059,1496567390,1478783429,242076052,55612717,834339101,1177476277,1358581596,430161702,962023978,341800092,1401952782,139705252,55689647,495737101,141910436,330721872,1101083838,305057650,1514140859,1067145837,765856741,364947305,1276650033,962931025,271912536,142325768,781830994,1470621410,730638485,1059501871,19375663,869971446,595565932,1400938688,145068730,1319334362,8843990,1457403953,638355779,1132208938,59905520,82348190,83170749,120914221,206757274,254905544,281734937,295855469,343011226,393704994,393756924,396857727,424318036,722118750,817169805,827875129,832551053,869460420,902433595,1156847406,1161543363,1430295022,1543191798,684032471,1451154369,959099,556436268,817169805,1315025467,707063601,1585111324,92881064,752475941,1552553909,562165526,1565730392,552568816,1106980573,857580311,1476962245,575231423,187640121,1468069910,688353724,831223144,732833093,297590453,1299942547,686375703,1106980573,688353724,671490051,243151632,1333065979,1036903700,1444510264,684032471,943896944,424318036,192213214,81500553,305057650,859133539,186545219,203000630,360354717,1031067932,1468069910,591883110,1300820007,1087280197,45017821,266655055,1602268533,863792469,107005323,1279784648,47713237,958277815,1291304188,1565573778,1621151012,1569314803,1593087628,1603730007,1604447769,1604732831,1604735797,1604732930,1603616308,1618080471,1657712110,1012391753,902433595,495679236,1416649257,80664526,1602268533,537369869,1413638747,479018444,563056070,958277815,1064943154,837287937,1469276393,612991752,809827277,1057591485,611828522,215883435,609691177,1079376904,881974868,150574027,1115115032,128192450,771895002,905183416,25807460,1112540074,1514419674,816620656,730566566,1188623702,788204652,1641448846,1572775149,1172273229,688965693,871710241,1299836929,938159074,767875243,1530287216,1432235730,1177778414,1290933193,1397242786,1179614647,541415412,307421374,1036484337,358976269,675394223,906966827,975274214,1571275422,1017988320,369757775,918580760,910957968,1286084597,315666836,1083819027,734588406,1549120438,1343326748,1225690007,728616681,1477731404,698713555,864937431,58578725,1610403330,741324276,510842292,1054909812,1048439158,879237208,824137482,716347921,814842432,869110526,1604216202,1575756567,1132397000,1218265687,782273708,1578187545,633219760,949176560,1100495609,1654349627,1597754575,1513898976,117533436,589855404,1490355449,1401390366,857891620,1134764815,1402999912,1449319367,1455775133,318483497,595565932,97153088,949017613,235801876,586737502,819554311,494035521,281734937,1020985367,1081073785,1295578264,35938054,1036903700,1604742876,1290408194,456269554,91804304,844596636,1565573778,723547705,631486093,307834875,20383340,910100412,159745896,1616996663,1405386940,674532151,670279181,495737101,248757469,671490051,42344129,651129131,1327296509,1142258564,562165526,393756924,19616700,1316723084,558520024,552568816,964534923,279456004,735584710,521863506,63535272,1058088715,1156847406,1317497094,399302100,1061087463,304843,629214450,503518382,711301067,1161543363,494613917,944317198,420628889,92375007,1420581083,752475941,1277735174,528278703,295855469,1267069449,57558305,732833093,1594155737,638729276,453097693,708659150,472824805,674613937,1059636753,688353724,1094548445,953123588,35138206,1493488870,237737093,638544421,129824100,797962316,857580311,35322237,161060624,831223144,934863168,756618497,1234366846,1235600277,800062044,221620178,1126636805,518027780,214090550,570827966,1242655937,393704994,1037040857,651126334,535741474,1476962245,1125738654,1096803402,439422755,1602462225,596849585,918173432,959043200,1441508931,255082686,136424606,66948636,424318036,441212959,838687384,1433320191,631825837,281950408,64714474,684032471,962023978,432067729,809522266,887400048,82348190,297590453,654402693,164385725,1276324818,198374065,772804145,947217443,730134365,1539217419,869460420,780454580,1051045722,934136658,180719744,146405509,1096860961,43461242,535477328,556436268,163388380,962931025,1289990922,436474073,549204149,889239681,199041455,599559984,1268237971,537119561,654478487,1470621410,1358581596,551762897,1457662956,149138542,1050291973,705839403,242076052,444618926,962822408,785257514,541905928,455639034,252130908,206757274,214349760,1022387026,767951104,919643468,57567738,1464446614,66225372,1491932056,1586050768,834433014,988873139,730599373,731854074,291276366,999489298,842180093,735589229,473369394,224721111,725664059,17008721,40095300,183757227,459614361,1269542382,259787114,381177693,619599649,607613134,223688979,534861847,970265413,396857727,171102431,1516038781,1430295022,706934593,637853359,781830994,173241508,1557238340,988240036,969602420,859133539,1070639711,120914221,1385833881,427211166,1463379270,842969738,969192435,1616156805,586313211,347237307,165395432,405195631,1512886616,107489638,593658991,1098765560,308809295,858383642,1526353342,397303697,1326290048,873863547,1188070765,1579307600,149314886,817169805,328708620,1443481435,1191150265,269263644,883688373,1639379964,605619166,83170749,364947305,177967351,1101083838,952103528,1253464763,1341428193,305057650,360354717,577411950,1444510264,313664133,171138478,254905544,829714845,636968783,1496567390,1192898841,54839795,301393263,485612644,797141636,1558144327,935515675,722118750,1007682270,59905520,112978022,233881356,1627446933,57784194,1537206872,395425267,97517457,514293775,394486362,452133385,79681417,602649352,756026878,15491457,223810260,19375663,1319334362,145068730,32488847,326278632,141910436,74949569,338518090,1585111324,935280249,202333416,535261557,677857127,1579728399,591898201,673096267,978087654,391254142,256388094,1159522917,393564738,115510287,1106980573,605385958,751626692,1132208938,479785927,286116069,1400938688,513990878,421016994,817381973,863792469,62639113,837275031,56040411,609093262,638355779,343011226,229143479,832551053,720070963,1199772440,112387545,299523398,851810019,595558286,1248632545,222165932,660632990,885723484,559775428,37291030,516418642,6238955,474960944,305567098,1067451695,453169855,1299942547,2576116,767780594,454214721,347297256,2889310,754572455,105359766,107005323,976523319,841077649,347298974,224917856,193866135,1319728639,650705830,943896944,147773802,869971446,1552553909,262514788,83873221,795863964,232355292,1514140859,59777363,1030445648,400415944,1502083370,2373166489,1500415862,65593443,933416752,1129539939,638092920,1447214121,271912536,794507831,1101851773,164682138,881711422,1547451002,204684514,622711,1431467096,730638485,1060001772,1543191798,260235586,1030662571,1305325425,85579079,358063232,692271838,284859867,1479101484,1682140943,1611128847,1177736958,837217387,1653565994,1653622155,1107181555,1642040078,1653649889,839587321,1431771832,691843119,1454126655,590769418,1537679387,198374065,1078781076,631317678,814341821,801237843,332639046,951940636,1205301304,1603616308,99773755,244820622,1443498058,913912348,821104346,578463434,334403109,562968816,116373151,1399622335,1134764815,1205301304,1182781590,1596830721,1216817743,1468586850,1136859828,1632498728,412680726,350103090',
     uin_list = '1000',
	 apiids = '9999', --仅开999渠道     

	}, --显示板视频选项开关

   display_board_UI = {

     super_uin_list = '1026305855,1182271222,1364351270,845164719,1154525,1436447631,1226771348,1451154369,1103,808342345,1002,842180093,879491781,158087577,874216562,302015213,149314886,1271888865,418062998,1078551,77000031,328540644,308836469,602649352,681525566,405195631,391254142,77843989,355196595,307834875,396857727,1211281,260235586,57784194,271830299,883688373,835912772,19375663,214090550,355472368,174493726,54473067,936441247,86970724,145068730,257093154,133213732,673791076,139072032,40095300,139705252,2576116,223810260,414220953,274496134,393262271,304843,276869238,731528656,40619945,864141360,493508306,1080732679,5269274,958497472,784363540,83873221,958497351,1080736527,92375007,57916222,66173425,1136400041',
     uin_list = '1000',
	 apiids = '999', --仅开999渠道   

	}, --显示板UI选项开关

   display_board_iqiyi = {

     super_uin_list = '1026305855,1182271222,1364351270,845164719,1154525,1436447631',
     uin_list = '1000',
	 apiids = '999', --仅开999渠道   

	}, --显示板爱奇艺选项开关

   display_board_sound = {

     super_uin_list = '1026305855,1182271222,1014,1103,1002,1234,1136400041',
     --uin_list = '1000003360',
	 apiids = '9999',    

	}, --显示板声网选项开关

    triggerPlayAD = {
creator_level = 1,
    	--apiids_no ='9999'

    }, -- 触发器播放广告白名单

    triggerItemOpenDevStoreNew = {

        super_uin_list = '1466926862,477706,1026305855',
        -- uin_list = '1000003360',
        apiids = '999'

    }, -- 【打开开发者商店(新)】在全局触发器和UI编辑器触发器的开关

    triggerItemOpenTopPurchase = {
    creator_level = 1,
    	--apiids_no ='9999'

    }, -- 【显示商品购买窗口】在全局触发器和UI编辑器触发器的开关

    triggerItemBlackList = {

        --super_uin_list = '1000',
        --uin_list = '1000',
        apiids = '9999'

    }, -- 开发者接口黑名单

    Switch_Mode = {

        super_uin_list = '1331345338,477666,1026305855,1154525,477666,477706,1466926862',
        --uin_list = '1000003360',
        apiids_no = '9999'

    }, -- 转为高级创造按钮开关

    trigger_data = {

        super_uin_list = '1118480303,1182271222,1479101897,1070310928,1395903690,1569116624,1316409178,1682140943,1182684703,1167326364,1416270724,1136400041,1445471098,1426845612,1724070151,1215587607,1261046217,1205256815,1665588613,1617118570,1024759701,1271257006,145068730,149314886,1249103236,1182684703,1167326364,1194153668,1183107198,1024759701,962767,414220953,1060001772,276869238,40619945,1665588613',
        -- uin_list = '1000003360',
        apiids = '9999'

    }, -- 触发器和积木块数据上报接口白名单

    Security_Input_Switch = {
       apiids = '9999' , --对所有渠道打开屏蔽功能
       Item_Input_Switch ={ apiids_no = '9999' },
       Component_Input_Switch = {apiids_no = '9999' },
       Trigger_Input_Switch = {apiids_no = '9999' },
       Resource_Input_Switch = {apiids_no = '9999' },

    }, -- 安全审核输入框屏蔽总开关

        isCloud_map = {

        super_uin_list = '1391941592,1026305855,1226771348,1015,1526490485,1454110161,1403575631,1063969583,1269068723,1438196254,1571818686,845164719,1038333279,1167326364,1182684703,1213845791,1317320850,1211346315,1234,1014,1182271222,1479101620,1002,1103,149314886,1118247136,982616035,145068730,1416270724,5269274,623459,49190752,796489600,1271257006',
        -- uin_list = '1000003360',
        creator_level = 1 ,
        --apiids = '999'

    }, -- 开发者云服调试白名单


	resource_plugin_package_switch = { apiids_no = '9999',super_uin_list="1000,6666,226258,304843,367190,622711,1078551,1154525,1171247,2576116,2889310,3014881,3639521,5269274,5564296,6276318,6581014,10973758,12763744,12816828,15477421,16739652,16919883,17848464,18613295,18970656,20248589,20366948,20549154,20933993,22453305,22664405,23587237,23894652,24133113,24716139,29981011,30424864,31196602,32451177,32596640,34510118,35398374,39824620,40095300,40619945,40636486,40870724,41133364,41221021,41586156,42753305,43358727,45434863,45716054,48192232,50040658,52206368,52994064,54473067,54699054,55449103,56040411,57916222,58137947,60914470,62639113,63412239,64714474,65466266,65910835,66173425,66225372,66566841,66732537,66948636,68246455,69234596,70443711,72458055,72724020,72884752,74654702,76211974,78740664,79245228,79301306,79799264,82740213,83170749,83873221,84983536,85000988,85811892,87641376,89112784,90502705,90686355,92375007,100891236,101863836,101957094,106639706,111151391,113216004,113864701,115137593,115510287,115829348,116059913,119457934,122037907,122120459,123339931,125493798,130036530,130668658,130811646,132389985,133213732,136035308,136682878,139072032,139705252,140865014,141001872,142325768,149314886,154782962,155678371,160818440,161060624,162158918,165524780,167943318,169036981,173089283,173622160,179895593,180693499,180719744,183757227,188153006,192671159,193866135,195306561,198374065,198980860,199041455,199365128,202734803,203000630,207612011,209703653,213347530,213979477,214090550,218108762,219896756,222041831,223810260,223830089,226172186,234339718,235801876,235857381,240189592,243191419,244073994,257093154,274496134,276869238,277158608,284545936,284859867,295855469,297523156,299026865,308809295,308836469,314397314,316180660,320458273,328540644,333663381,343841508,347237307,349677346,356151799,356624790,366109162,383102877,385091599,386864836,389976598,391254142,393262271,400917571,404197159,405195631,408768633,412412397,414220953,425958512,430161702,432881311,433565026,434621673,443170125,443704255,457325339,471132331,474960944,480487031,493364216,494673341,496315433,502496036,523768824,523822201,523928880,525447723,527192621,529207822,535261557,541678565,542815141,545883559,546250526,547928075,557104797,558426242,559775428,566349043,567465206,571147736,571375076,572895306,597075079,598382999,602649352,605907414,614337016,617876948,618760566,623173233,627421724,627515661,673892519,678243606,681525566,688166688,899993838,1106,1024759701,782091413,394559373"},	--插件包入口开关
	
	map_plugin_entrance = { apiids_no = '9999' }, --存档页地图插件库入口开关

	resource_import_model =	{
	apiids = '9999',
	super_uin_list="1000,329120816,1126,1154525,383988632,228348274,1026305855,1479100382,1479100411,1479101234,1479101306,1479101337,1479101351,1479101367,1479101377,1479101395,1479101408,1479101420,1479101431,1479101454,1479101465,1479101484,1479101494,1479101508,1479101522,1479101534,1479101543,1479101578,1479101592,1479101620,1479101636,1479101643,1479101673,1479101683,1479101694,1479101723,1479101733,1479101745,1479101763,1479101784,1479101795,1479101808,1479101825,1479101853,1479101891,1479101897,1479101910,1479101975,1479101938,1479101961,1479102228,1479106665,808342345,1136400041,1084383892,133213732,237630209,66890090,1548548075,237610578,630423944,1234,1002,1682140943,1136400041,1015,1271257006,145068730,1611128847,1167326364,1182684703"},				 --资源中心第三方模型导入按钮开关



	--资源工坊入口开关
	resource_shop_switch = 
	{
		version_min = "0.46.0",	
                apiids_no='9999',
		super_uin_list="",
		--goods_price_uin_list = "",	--商品价格设置白名单
		--ads_uin_list= "",	--广告开关设置白名单
	}, 

	resource_createboard_switch = {apiids_no = '9999'}, --资源中心小程序迷你创造板同步按钮开关

	OnlineFilterCheckSwitch ={};

    func_close = {
        --change_name/community/posting/comment/chat/g_chat/map_chat/change_mapname/voice_room/pay
        close = {},
        realname = {},
        tourist_no = {},
        tourist = {
            { apiids_no = "9999,63,7,5,52,3,89,11,34,5", vermin = "0.38.0", statime = "2013-01-01 00:00:00", endtime = "2023-12-31 00:00:00", city = "*", close = { "pay,voice_room,map_chat,chat,change_name" }, },
            --游客模式
        },
    },

    --游客模式体验时间，重置天数
    tourist = {
          { title = "实名认证", city = "*",  CreateTime = "2013-01-01 00:00:00", apiids_no = "7,5,12,31,36,9999,52,85,86,66,76,2,58,13", timingType = 2, time = 1, cd = 15,timeEndIsClose = 0, },
    },

    anti_addiction = {
        ui_info = {
            inhibitLoginBtn1 = { name = "详情介绍", url = "https://api.miniworldbox.com/post/1259791"},
            inhibitLoginBtn2 = {},
            holidayListBtn1 = {name = "详情介绍", url = "https://api.miniworldbox.com/post/1259791"},
            holidayListBtn2 = {},
            payBtn1 = {},
        },
        limit_rule_open =1,
        limit_rule = {
            {--具体限制方案
                apiids_no ="9999,63,7,5,52,89,11,34,5",
                city="*",
                age_control = {
                    {
                        age = { min = 0, max = 7, },
                        inhibitLogin = { min = "20:00", max = "21:00", isNoShowTips=0,}, 
                        holidayList = { "2021-10-15 00:00:00 - 2021-10-17 23:59:59",},
                        onlineTimeLimit = {work = 0, holiday = 1,isNoShowTips=0,}, 
                        pay = {once = 0, amount = 0, },
                    },
                    {
                        age = { min = 8, max = 15, },
                        inhibitLogin = { min = "20:00", max = "21:00", isNoShowTips=0,}, 
                        holidayList = { "2021-10-15 00:00:00 - 2021-10-17 23:59:59",},
                        onlineTimeLimit = {work = 0, holiday = 1,isNoShowTips=0,}, 
                        pay = {once = 50, amount = 200,acc_createtime_limit ="2020-09-01", },
                    },
                    {
                        age = { min = 16, max = 17, },
                        inhibitLogin = { min = "20:00", max = "21:00", isNoShowTips=0,}, 
                        holidayList = { "2021-10-15 00:00:00 - 2021-10-17 23:59:59",},
                        onlineTimeLimit = {work = 0, holiday = 1,isNoShowTips=0,}, 
                        pay = {once = 100, amount = 400,acc_createtime_limit ="2020-09-01", },
                    },
                    {
                        age = { min = 18, max = 200, },
                        inhibitLogin = { min = "00:00", max = "23:59", isNoShowTips=0,}, 
                        holidayList = {},
                        onlineTimeLimit = {work = 24, holiday = 24,isNoShowTips=0,}, 
                        pay = {once = 100, amount = 4000, },
                    },
                },
            },
        },
        special_limit_rule = {
            {--具体限制方案
                apiids_no ="9999,63,7,5,52,89,11,34,5",
                city="*",
                age_control = {      
                    {
                        age = { min = 18, max = 500, },
                        inhibitLogin = { min = "08:00", max = "23:59",isNoShowTips= 0, }, 
                        holidayList = {},
                        onlineTimeLimit = {work = 24, holiday = 24,isNoShowTips= 0,}, 
                        pay = {once = 100, amount = 400, },
                    },
                },
            },
		},
        -- 未实名充值限制
        unrealname_recharge = {
        apiids ="9999,63,7,5,52,89,11,34,5", --限制渠道 apiids_no
		city = "*", -- 限制城市 city_no
		-- pay once 单笔充值限制 amount 每月充值限制 history 历史充值限制
		pay = {once = 110,}
		}	
    },




-----------实名不数据上报
data_unreporting_rule={ },


    ------------------------------------------------------------------------------------------------

-- card 身份证绑定校验  mobile手机绑定校验  device 设备校验
	safety_funcheck = {

	    map_share = {	--地图分享
           --审核
			--{ apiids_no="9999,7,5", verison_min="0.45.0",  flags="card" },
        --运营
			{ apiids_no="9999,52", verison_min="0.45.0",  flags="" },

	    },
	    
	    friend_chat = { 	--好友聊天
		--审核
			--{ apiids_no="9999,7,5", verison_min="0.45.0",  flags="" },
        --运营
	     { apiids_no="9999", verison_min="0.45.0",  flags="" },
	    },

	    groups_chat = { 	--群组聊天
		--审核
			--{ apiids_no="9999,7,5", verison_min="0.45.0",  flags="" },
        --运营
	     { apiids_no="9999", verison_min="0.45.0",  flags="" },
	    },

	    in_map_chat = { 	--地图中聊天
		--审核
			--{ apiids_no="9999,7,5", verison_min="0.45.0",  flags="" },
        --运营
	     { apiids_no="9999", verison_min="0.45.0",  flags="" },
	    },
	    
	    map_comment = { 	--地图评论
			--审核
			--{ apiids_no="9999,7,5", verison_min="0.45.0",  flags="" },
        --运营
	     { apiids_no="9999", verison_min="0.45.0",  flags="" },
	    },

	    posting = {	--动态发布
		--审核
			--{ apiids_no="9999,7,5", verison_min="0.45.0",  flags="" },
        --运营
	     { apiids_no="9999", verison_min="0.45.0",  flags="" },
	    },

	    posting_comment = { 	--动态回复
		--审核
			--{ apiids_no="9999,7,5", verison_min="0.45.0",  flags="" },
        --运营
	     { apiids_no="9999", verison_min="0.45.0",  flags="" },
	    },

	    map_recommend = {  	--地图推荐
		--审核
			--{ apiids_no="9999,7,5", verison_min="0.45.0",  flags="" },
        --运营
	     { apiids_no="9999", verison_min="0.45.0",  flags="" },
	    },

	    mood_publish = { 	--心情发布
		--审核
			--{ apiids_no="9999,7,5", verison_min="0.45.0",  flags="" },
        --运营
	     { apiids_no="9999", verison_min="0.45.0",  flags="" },
	    },

		custom_skin = {	--星装扮
		--审核
			--{ apiids_no="9999,7,5", verison_min="0.45.0",  flags="" },
        --运营
	     { apiids_no="9999", verison_min="0.45.0",  flags="" },
		},
	    
	    rent_notice = { 	--云服公告
		--审核
			--{ apiids_no="9999,7,5", verison_min="0.45.0",  flags="" },
        --运营
	     { apiids_no="9999", verison_min="0.45.0",  flags="" },
	    },

	},



	----------------------------------------------------------------------------------------------------
updatebtn = {
	
		[45] = {
		canshow = true,--是否显示按钮
		maxversion = "1.23.5",--最高版本设置
		url="https://apps.apple.com/cn/app/id1170455562?openBrowser=1",
	},
	[1] = {
		canshow = true,--是否显示按钮
		popup=true,
		apk_size = "697",--显示更新包大小
		maxversion = "1.23.5",--最高版本设置	
		apk_name="miniworld-Mini-1.23.5.apk",--版本名字
		apk_md5="F72A858E62355B3C49075907FC7E7F09",--绑定唯一值
		url="http://mdownload.mini1.cn/latest/miniworldMini-wp.apk",--http
	},
	[79] = {
		canshow = true,--是否显示按钮
		popup=true,
		apk_size = "675",--显示更新包大小
		maxversion = "1.23.5",--最高版本设置
		apk_name="miniworld-MiniWechat-1.23.5.apk",--版本名字
		apk_md5="EF2EFAB5CA604215E8E86354F4379243",--绑定唯一值
		url="http://mdownload.mini1.cn/latest/miniworldMini-wechat.apk",--http
	},
	[81] = {
		canshow = true,--是否显示按钮
		popup=true,
		apk_size = "675",--显示更新包大小
		maxversion = "1.23.5",--最高版本设置
		apk_name="miniworld-MiniIP-1.23.5.apk",--版本名字
		apk_md5="5E25A179A6DA9B3FC7B7E02033C90B44",--绑定唯一值
		url="http://mdownload.mini1.cn/latest/miniworldMini-ip.apk",--http
	},
	--[56] = {
		--canshow = true,--是否显示按钮
		--popup=true,
		--apk_size = "564",--显示更新包大小
		--maxversion = "1.13.0",--最高版本设置
		--apk_name="miniworld-MiniShouQBd-1.13.0.apk",--版本名字
		--apk_md5="7EEE5B00FA155BAAAC201EB53B7E2897",--绑定唯一值
		--url="http://mdownload.mini1.cn/latest/miniworld-ShouQBd.apk",--http
	--},

},

--------------------------------------------------------------------------------------------
StrongBullet_Pop =
{
        cd=86400,  --强弹间隔
        id=23,        --唯一标识
        start_time = '2021-02-08 10:00:00',        --展示时间
        end_time = '2021-02-10 23:59:59',
		--apiids_no = "52",
        pic_url="https://image.mini1.cn/c/20210208/4585439fc7cdf000ddd2c88e9814ac1e.png",        --图片导致
        action_url = "s4_https://activities.mini1.cn/fe/cowActivity/?openBrowser=3&portrait=2",        --跳转地址
        version_max="0.51.0", --版本号限制
},


--xianan的拍脸位置
--正式环境！
StrongBullet_Pop_New =
{

--10.19航天周边活动P1
{ 
        cd=86400,  --强弹间隔 
        id=200202,        --唯一标识 
        start_time = '2022-10-19 00:01:00',        --展示时间 
        end_time = '2022-10-19 23:59:00', 
        pic_url="https://webpicture.mini1.cn/20221019/000358d5737fc4-c060-4829-a3f4-1579b6d3a691.png",        --图片展示 
action=99, 
action_url = "https://detail.tmall.com/item.htm?spm=a211lz.success.0.0.25d32b90uq1s72&id=687121938073&openBrowser=1",
apiids="12,13,7,21,36",
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--10.18联通免流p1弹窗
{ 
        cd=86400,  --强弹间隔 
        id=200201,        --唯一标识 
        start_time = '2022-10-18 00:00:00',        --展示时间 
        end_time = '2022-10-18 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220924/01373073855f75-0368-3464-7ae7-4ef5039a55ed.png",        --图片展示 
action=99, 
action_url = "s4_https://h5.mini1.cn/act/c5m/free-flow/?portrait=1",
apiids_no="36,60,52,100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132",
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--10.17航天周边活动P2
{ 
        cd=86400,  --强弹间隔 
        id=200200,        --唯一标识 
        start_time = '2022-10-17 00:00:00',        --展示时间 
        end_time = '2022-10-17 23:59:00', 
        pic_url="https://webpicture.mini1.cn/20221014/185543a7da5a61-7975-4054-c5d3-84e5fce3dabe.png",        --图片展示 
action=99, 
action_url = "https://detail.tmall.com/item.htm?spm=a211lz.success.0.0.25d32b90uq1s72&id=687121938073&openBrowser=1",
apiids_no="36,12,13,7,21",
               fixnum=19, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 2, 
},
},
--10.16免流P1
{ 
        cd=86400,  --强弹间隔 
        id=200197,        --唯一标识 
        start_time = '2022-10-16 00:00:00',        --展示时间 
        end_time = '2022-10-16 05:55:00',      pic_url="https://webpicture.mini1.cn/20220929/112900f98758fc-50c1-33e1-1445-29bd7f5268c6.png",        --图片展示 
action=99, 
action_url = "https://dev.coc.10086.cn/coc/web2/shunt/?pageId=1551883281319145472&channelId=P00000013049&portrait=1&openBrowser=3",
apiids_no="52,45,100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132",
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--10.16免流P1
{ 
        cd=86400,  --强弹间隔 
        id=200198,        --唯一标识 
        start_time = '2022-10-16 13:05:00',        --展示时间 
        end_time = '2022-10-16 23:59:00',      pic_url="https://webpicture.mini1.cn/20220929/112900f98758fc-50c1-33e1-1445-29bd7f5268c6.png",        --图片展示 
action=99, 
action_url = "https://dev.coc.10086.cn/coc/web2/shunt/?pageId=1551883281319145472&channelId=P00000013049&portrait=1&openBrowser=3",
apiids_no="52,45,100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132",
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--10.16解密主题赛p2
{ 
        cd=86400,  --强弹间隔 
        id=200199,        --唯一标识 
        start_time = '2022-10-16 00:00:00',        --展示时间 
        end_time = '2022-10-16 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220928/154703575b2241-1dc0-bcf1-d011-43d35d77e5ad.png",        --图片展示 
action=99, 
action_url = "s4_https://sso.mini1.cn/ssourl/#/transit?url=https://wss.mini1.cn/category/1/detail/1214/info",
               fixnum=18,
apiids_no="21,36,45,28", 
task_conditions = { 
onlyNewUser= 0,
priorityLevel =2, 
},
},
--10.16免流P1
{ 
        cd=86400,  --强弹间隔 
        id=200197,        --唯一标识 
        start_time = '2022-10-16 00:00:00',        --展示时间 
        end_time = '2022-10-16 05:55:00',      pic_url="https://webpicture.mini1.cn/20220929/112900f98758fc-50c1-33e1-1445-29bd7f5268c6.png",        --图片展示 
action=99, 
action_url = "https://dev.coc.10086.cn/coc/web2/shunt/?pageId=1551883281319145472&channelId=P00000013049&portrait=1&openBrowser=3",
apiids_no="52,100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132",
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--10.16免流P1
{ 
        cd=86400,  --强弹间隔 
        id=200198,        --唯一标识 
        start_time = '2022-10-16 13:05:00',        --展示时间 
        end_time = '2022-10-16 23:59:00',      pic_url="https://webpicture.mini1.cn/20220929/112900f98758fc-50c1-33e1-1445-29bd7f5268c6.png",        --图片展示 
action=99, 
action_url = "https://dev.coc.10086.cn/coc/web2/shunt/?pageId=1551883281319145472&channelId=P00000013049&portrait=1&openBrowser=3",
apiids_no="52,100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132",
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--10.15国庆梦之城P1
{ 
        cd=86400,  --强弹间隔 
        id=200194,        --唯一标识 
        start_time = '2022-10-15 00:00:00',        --展示时间 
        end_time = '2022-10-15 23:59:00', 
        pic_url="https://webpicture.mini1.cn/20220926/15393702c64df7-6551-e164-4fe8-c64a45ad44c3.png",        --图片展示 
action=61, 
version_min="1.19.0", --版本号限制
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--10.15航天周边活动P2
{ 
        cd=86400,  --强弹间隔 
        id=200196,        --唯一标识 
        start_time = '2022-10-15 19:01:00',        --展示时间 
        end_time = '2022-10-15 23:59:00', 
        pic_url="https://webpicture.mini1.cn/20221014/185543a7da5a61-7975-4054-c5d3-84e5fce3dabe.png",        --图片展示 
action=99, 
action_url = "https://detail.tmall.com/item.htm?spm=a211lz.success.0.0.25d32b90uq1s72&id=687121938073&openBrowser=1",
apiids_no="52,12,13,7,21,36,28,45", 
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 2, 
},
},
--10.15航天周边活动P2
{ 
        cd=86400,  --强弹间隔 
        id=200195,        --唯一标识 
        start_time = '2022-10-15 00:01:00',        --展示时间 
        end_time = '2022-10-15 11:59:00', 
        pic_url="https://webpicture.mini1.cn/20221014/185543a7da5a61-7975-4054-c5d3-84e5fce3dabe.png",        --图片展示 
action=99, 
action_url = "https://detail.tmall.com/item.htm?spm=a211lz.success.0.0.25d32b90uq1s72&id=687121938073&openBrowser=1",
apiids_no="52,12,13,7,21,36,28", 
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 2, 
},
},
--10.18西瓜觉醒活动PC(P2）
{ 
        cd=86400,  --强弹间隔 
        id=200191,        --唯一标识 
        start_time = '2022-10-18 00:00:00',        --展示时间 
        end_time = '2022-10-18 23:59:00', 
        pic_url="https://webpicture.mini1.cn/20221014/002108421e9f43-dc31-fe25-62d0-e21be90dabe1.png",        --图片展示 
action=99, 
action_url="https://i.snssdk.com/magic/eco/runtime/release/62f237d780c3210355e71b82?appType=ixigua&magic_page_no=1&magic_source=pc_minigame&openBrowser=1",
apiids="110,112,113",
               fixnum=20, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 2, 
},
},
--10.18西瓜觉醒活动(移动P2）
{ 
        cd=86400,  --强弹间隔 
        id=200192,        --唯一标识 
        start_time = '2022-10-18 00:00:00',        --展示时间 
        end_time = '2022-10-18 23:59:00', 
        pic_url="https://webpicture.mini1.cn/20221014/002108421e9f43-dc31-fe25-62d0-e21be90dabe1.png",        --图片展示 
action=99, 
action_url="https://xgfe.snssdk.com/lvfe/activity/goofy/mini/main?enter_from=miniworld&position=channel&hide_back_btn=true&openBrowser=1",
apiids="1,69,96,92,94,65,74,80,50,67,78,71,84,95,73,82,70,83,77,90,49,10,999",
               fixnum=20, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 2, 
},
},
--10.14联通免流p1弹窗
{ 
        cd=86400,  --强弹间隔 
        id=200190,        --唯一标识 
        start_time = '2022-10-14 00:00:00',        --展示时间 
        end_time = '2022-10-14 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220924/01373073855f75-0368-3464-7ae7-4ef5039a55ed.png",        --图片展示 
action=99, 
action_url = "s4_https://h5.mini1.cn/act/c5m/free-flow/?portrait=1",
apiids_no="36,52,100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132",
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--10.12免流P1
{ 
        cd=86400,  --强弹间隔 
        id=200189,        --唯一标识 
        start_time = '2022-10-12 10:00:00',        --展示时间 
        end_time = '2022-10-12 23:59:00',      pic_url="https://webpicture.mini1.cn/20220929/112900f98758fc-50c1-33e1-1445-29bd7f5268c6.png",        --图片展示 
action=99, 
action_url = "https://dev.coc.10086.cn/coc/web2/shunt/?pageId=1551883281319145472&channelId=P00000013049&portrait=1&openBrowser=3",
apiids_no="52,100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132",
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--10.11国庆梦之城P1
{ 
        cd=86400,  --强弹间隔 
        id=200188,        --唯一标识 
        start_time = '2022-10-11 00:00:00',        --展示时间 
        end_time = '2022-10-11 23:59:00', 
        pic_url="https://webpicture.mini1.cn/20220926/15393702c64df7-6551-e164-4fe8-c64a45ad44c3.png",        --图片展示 
action=61, 
version_min="1.19.0", --版本号限制
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--免流p1弹窗
{ 
        cd=86400,  --强弹间隔 
        id=200162,        --唯一标识 
        start_time = '2022-09-28 00:00:00',        --展示时间 
        end_time = '2022-09-28 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220924/01373073855f75-0368-3464-7ae7-4ef5039a55ed.png",        --图片展示 
action=99, 
action_url = "s4_https://h5.mini1.cn/act/c5m/free-flow/?portrait=1",
apiids_no="36,52,100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132",
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},

--10.7免流P3
{ 
        cd=86400,  --强弹间隔 
        id=200186,        --唯一标识 
        start_time = '2022-10-07 00:00:00',        --展示时间 
        end_time = '2022-10-07 23:59:00', 
        pic_url="https://webpicture.mini1.cn/20220929/112900f98758fc-50c1-33e1-1445-29bd7f5268c6.png",        --图片展示 
action=99, 
action_url = "https://dev.coc.10086.cn/coc/web2/shunt/?pageId=1551883281319145472&channelId=P00000013049&portrait=1&openBrowser=3",
apiids_no="52,100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132",
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 3, 
},
},
--10.7天猫国庆活动7P2
{ 
        cd=86400,  --强弹间隔 
        id=200185,        --唯一标识 
        start_time = '2022-10-07 00:00:00',        --展示时间 
        end_time = '2022-10-07 23:59:00', 
        pic_url="https://webpicture.mini1.cn/20220930/235338a9a5707e-720c-7085-b8eb-1ea7d165f3b3.png",        --图片展示 
action=99, 
action_url = "https://minishijie.tmall.com/?openBrowser=1",
apiids_no="12,13,7,21,36", 
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 2, 
},
},
--10.7滑板坐骑P1
{ 
        cd=86400,  --强弹间隔 
        id=200184,        --唯一标识 
        start_time = '2022-10-07 00:00:00',        --展示时间 
        end_time = '2022-10-07 23:59:00', 
        pic_url="https://webpicture.mini1.cn/20220929/1117316d059928-4b33-dbec-becd-8e0c55541625.png",        --图片展示 
action=1, 
version_min="1.19.0", --版本号限制
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--10.6天猫国庆活动6P3
{ 
        cd=86400,  --强弹间隔 
        id=200183,        --唯一标识 
        start_time = '2022-10-06 00:00:00',        --展示时间 
        end_time = '2022-10-06 23:59:00', 
        pic_url="https://webpicture.mini1.cn/20221001/000218dbbfbf01-d13b-23d7-5136-ed7f9b5186b4.png",        --图片展示 
action=99, 
action_url = "https://minishijie.tmall.com/?openBrowser=1",
               fixnum=19, 
apiids_no="21,36,12,13,7", 
task_conditions = { 
onlyNewUser= 0,
priorityLevel =3, 
},
},
--10.6天津航空p2
{ 
        cd=86400,  --强弹间隔 
        id=200182,        --唯一标识 
        start_time = '2022-10-06 00:00:00',        --展示时间 
        end_time = '2022-10-06 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220928/1546535aebb740-2242-4168-d169-83e77ea35168.png",        --图片展示 
action=99, 
action_url = "s4_https://sso.mini1.cn/ssourl/#/transit?url=https://wss.mini1.cn/category/1/detail/1216/info",
               fixnum=19, 
apiids_no="21,36", 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 2, 
},
},
--10.6芳华坐骑P1
{ 
        cd=86400,  --强弹间隔 
        id=200181,        --唯一标识 
        start_time = '2022-10-06 00:00:00',        --展示时间 
        end_time = '2022-10-06 23:59:00', 
        pic_url="https://webpicture.mini1.cn/20220929/1131336f6b51da-ecdd-d66a-525d-830577211ec8.png",        --图片展示 
action=1, 
version_min="1.19.0", --版本号限制
               fixnum=19, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--10.5天猫国庆活动P3
{ 
        cd=86400,  --强弹间隔 
        id=200180,        --唯一标识 
        start_time = '2022-10-05 00:00:00',        --展示时间 
        end_time = '2022-10-05 23:59:00', 
        pic_url="https://webpicture.mini1.cn/20220929/1522220eb722d7-be36-6240-2075-ce38ae68e10a.png",        --图片展示 
action=99, 
action_url = "https://minishijie.tmall.com/?openBrowser=1",
apiids_no="12,13,7,21,36", 
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 3, 
},
},
--10.5商业化H5活动P2
{ 
        cd=86400,  --强弹间隔 
        id=200179,        --唯一标识 
        start_time = '2022-10-05 00:00:00',        --展示时间 
        end_time = '2022-10-05 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20221004/2351210dbaca75-841d-1014-4b9d-6d4d6f4e5382.png",        --图片展示 
action=99, 
action_url = "s4_https://h5.mini1.cn/actpl/236721975269470208?channel=1&openBrowser=3&portrait=2",
version_min="1.19.0", --版本号限制
               fixnum=18,
task_conditions = { 
onlyNewUser= 0,
priorityLevel =2, 
},
},
--10.5国庆梦之城P1
{ 
        cd=86400,  --强弹间隔 
        id=200178,        --唯一标识 
        start_time = '2022-10-05 00:00:00',        --展示时间 
        end_time = '2022-10-05 23:59:00', 
        pic_url="https://webpicture.mini1.cn/20220926/15393702c64df7-6551-e164-4fe8-c64a45ad44c3.png",        --图片展示 
action=61, 
version_min="1.19.0", --版本号限制
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},

--10.4解密主题赛p3
{ 
        cd=86400,  --强弹间隔 
        id=200177,        --唯一标识 
        start_time = '2022-10-04 00:00:00',        --展示时间 
        end_time = '2022-10-04 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220928/154703575b2241-1dc0-bcf1-d011-43d35d77e5ad.png",        --图片展示 
action=99, 
action_url = "s4_https://sso.mini1.cn/ssourl/#/transit?url=https://wss.mini1.cn/category/1/detail/1214/info",
               fixnum=18,
apiids_no="21,36", 
task_conditions = { 
onlyNewUser= 0,
priorityLevel =3, 
},
},
--10.4天猫国庆活动4P2
{ 
        cd=86400,  --强弹间隔 
        id=200176,        --唯一标识 
        start_time = '2022-10-04 00:00:00',        --展示时间 
        end_time = '2022-10-04 23:59:00', 
        pic_url="https://webpicture.mini1.cn/20221001/000218dbbfbf01-d13b-23d7-5136-ed7f9b5186b4.png",        --图片展示 
action=99, 
action_url = "https://minishijie.tmall.com/?openBrowser=1",
               fixnum=18, 
apiids_no="21,36,12,13,7", 
task_conditions = { 
onlyNewUser= 0,
priorityLevel =2, 
},
},
--10.4柿子P1
{ 
        cd=86400,  --强弹间隔 
        id=200175,        --唯一标识 
        start_time = '2022-10-04 10:30:00',        --展示时间 
        end_time = '2022-10-04 23:59:00', 
        pic_url="https://webpicture.mini1.cn/20220929/11074687d434b6-b23d-7f21-6959-6b89bdc6998c.png",        --图片展示 
action=2, 
version_min="1.19.0", --版本号限制
               fixnum=19, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--10.3天猫国庆活动P3
{ 
        cd=86400,  --强弹间隔 
        id=200174,        --唯一标识 
        start_time = '2022-10-03 00:00:00',        --展示时间 
        end_time = '2022-10-03 23:59:00', 
        pic_url="https://webpicture.mini1.cn/20220930/235338a9a5707e-720c-7085-b8eb-1ea7d165f3b3.png",        --图片展示 
action=99, 
action_url = "https://minishijie.tmall.com/?openBrowser=1",
apiids_no="12,13,7,21,36", 
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 3, 
},
},
--10.3西瓜觉醒活动PC(P2）
{ 
        cd=86400,  --强弹间隔 
        id=200161,        --唯一标识 
        start_time = '2022-10-03 00:00:00',        --展示时间 
        end_time = '2022-10-03 23:59:00', 
        pic_url="https://webpicture.mini1.cn/20220922/1832426a884e4b-f485-fb07-ca1c-6e4fb20719cc.png",        --图片展示 
action=99, 
action_url="https://i.snssdk.com/magic/eco/runtime/release/62f237d780c3210355e71b82?appType=ixigua&magic_page_no=1&magic_source=pc_minigame&openBrowser=1",
apiids="100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132",
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 2, 
},
},
--10.3西瓜觉醒活动(移动P2）
{ 
        cd=86400,  --强弹间隔 
        id=200173,        --唯一标识 
        start_time = '2022-10-03 00:00:00',        --展示时间 
        end_time = '2022-10-03 23:59:00', 
        pic_url="https://webpicture.mini1.cn/20220922/1832426a884e4b-f485-fb07-ca1c-6e4fb20719cc.png",        --图片展示 
action=99, 
action_url="https://xgfe.snssdk.com/lvfe/activity/goofy/mini/main?enter_from=miniworld&position=channel&hide_back_btn=true&openBrowser=1",
apiids_no="21,36,100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132",
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 2, 
},
},
--10.3孔雀礼盒P1
{ 
        cd=86400,  --强弹间隔 
        id=200172,        --唯一标识 
        start_time = '2022-10-03 00:00:00',        --展示时间 
        end_time = '2022-10-03 23:59:00', 
        pic_url="https://webpicture.mini1.cn/20220929/11413854e7fc5d-e699-fe52-890b-92e57654c027.png",        --图片展示 
action=1003, 
version_min="1.18.0", --版本号限制
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--10.2解密主题赛p3
{ 
        cd=86400,  --强弹间隔 
        id=200171,        --唯一标识 
        start_time = '2022-10-02 00:00:00',        --展示时间 
        end_time = '2022-10-02 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220928/154703575b2241-1dc0-bcf1-d011-43d35d77e5ad.png",        --图片展示 
action=99, 
action_url = "s4_https://sso.mini1.cn/ssourl/#/transit?url=https://wss.mini1.cn/category/1/detail/1214/info",
               fixnum=18,
apiids_no="21,36",  
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 3, 
},
},
--10.2天猫国庆活动P2
{ 
        cd=86400,  --强弹间隔 
        id=200170,        --唯一标识 
        start_time = '2022-10-02 00:00:00',        --展示时间 
        end_time = '2022-10-02 23:59:00', 
        pic_url="https://webpicture.mini1.cn/20220929/17403174ff0411-dc8d-1f9c-fd18-9cb4bb505d41.png",        --图片展示 
action=99, 
action_url = "https://minishijie.tmall.com/?openBrowser=1",
apiids_no="12,13,7,21,36", 
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 2, 
},
},
--10.2国庆梦之城P1
{ 
        cd=86400,  --强弹间隔 
        id=200169,        --唯一标识 
        start_time = '2022-10-02 17:05:00',        --展示时间 
        end_time = '2022-10-02 23:59:00', 
        pic_url="https://webpicture.mini1.cn/20220926/15393702c64df7-6551-e164-4fe8-c64a45ad44c3.png",        --图片展示 
action=61, 
version_min="1.19.0", --版本号限制
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 3, 
},
},
--10.2猕猴桃P1
{ 
        cd=86400,  --强弹间隔 
        id=200168,        --唯一标识 
        start_time = '2022-10-02 10:00:00',        --展示时间 
        end_time = '2022-10-02 17:00:00', 
        pic_url="https://webpicture.mini1.cn/20220929/1146415b5d2cd7-270e-afb2-fd21-628540ffda2f.png",        --图片展示 
action=2, 
version_min="1.19.0", --版本号限制
               fixnum=19, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--10.1国庆梦之城P3
{ 
        cd=86400,  --强弹间隔 
        id=200167,        --唯一标识 
        start_time = '2022-10-01 10:00:00',        --展示时间 
        end_time = '2022-10-01 23:59:00', 
        pic_url="https://webpicture.mini1.cn/20220926/15393702c64df7-6551-e164-4fe8-c64a45ad44c3.png",        --图片展示 
action=61, 
version_min="1.19.0", --版本号限制
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 3, 
},
},
--10.1悦享卡P2
{ 
        cd=86400,  --强弹间隔 
        id=200166,        --唯一标识 
        start_time = '2022-10-01 10:00:00',        --展示时间 
        end_time = '2022-10-01 23:59:00', 
        pic_url="https://webpicture.mini1.cn/20220929/104441fd4df84b-1ebe-cc42-ddd4-12d2dc2e4888.png",        --图片展示 
action=35, 
version_min="1.19.0", --版本号限制
               fixnum=19, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 2, 
},
},
--10.1西瓜觉醒活动PC(P1）
{ 
        cd=86400,  --强弹间隔 
        id=200187,        --唯一标识 
        start_time = '2022-10-01 00:00:00',        --展示时间 
        end_time = '2022-10-01 23:59:00', 
        pic_url="https://webpicture.mini1.cn/20220922/1832426a884e4b-f485-fb07-ca1c-6e4fb20719cc.png",        --图片展示 
action=99, 
action_url="https://i.snssdk.com/magic/eco/runtime/release/62f237d780c3210355e71b82?appType=ixigua&magic_page_no=1&magic_source=pc_minigame&openBrowser=1",
apiids="100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132",
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--10.1西瓜觉醒活动(移动P1）
{ 
        cd=86400,  --强弹间隔 
        id=200165,        --唯一标识 
        start_time = '2022-10-01 00:00:00',        --展示时间 
        end_time = '2022-10-01 23:59:00', 
        pic_url="https://webpicture.mini1.cn/20220922/1832426a884e4b-f485-fb07-ca1c-6e4fb20719cc.png",        --图片展示 
action=99, 
action_url="https://xgfe.snssdk.com/lvfe/activity/goofy/mini/main?enter_from=miniworld&position=channel&hide_back_btn=true&openBrowser=1",
apiids_no="21,36,100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132",
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--9.30天猫国庆活动P2
{ 
        cd=86400,  --强弹间隔 
        id=200164,        --唯一标识 
        start_time = '2022-09-30 20:00:00',        --展示时间 
        end_time = '2022-09-30 23:59:00', 
        pic_url="https://webpicture.mini1.cn/20220929/1522220eb722d7-be36-6240-2075-ce38ae68e10a.png",        --图片展示 
action=99, 
action_url = "https://minishijie.tmall.com/?openBrowser=1",
apiids_no="12,13,7,21,36", 
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 2, 
},
},
--9.30孔雀礼盒P1
{ 
        cd=86400,  --强弹间隔 
        id=200163,        --唯一标识 
        start_time = '2022-09-30 15:00:00',        --展示时间 
        end_time = '2022-09-30 23:59:00', 
        pic_url="https://webpicture.mini1.cn/20220929/11413854e7fc5d-e699-fe52-890b-92e57654c027.png",        --图片展示 
action=1003, 
version_min="1.18.0", --版本号限制
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},

--免流p1弹窗
{ 
        cd=86400,  --强弹间隔 
        id=200160,        --唯一标识 
        start_time = '2022-09-25 00:00:00',        --展示时间 
        end_time = '2022-09-25 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220924/01373073855f75-0368-3464-7ae7-4ef5039a55ed.png",        --图片展示 
action=99, 
action_url = "s4_https://h5.mini1.cn/act/c5m/free-flow/?portrait=1",
apiids_no="36,45,52,100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132",
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--中秋坐骑P1（上午）
{ 
        cd=86400,  --强弹间隔 
        id=200153,        --唯一标识 
        start_time = '2022-09-24 00:00:00',        --展示时间 
        end_time = '2022-09-24 11:59:00', 
        pic_url="https://webpicture.mini1.cn/20220924/003141d993da2e-2760-cf58-b049-9d142f1a4220.png",        --图片展示 
action=1, 
version_min="1.18.0", --版本号限制
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--中秋坐骑P1（下午）
{ 
        cd=86400,  --强弹间隔 
        id=200153,        --唯一标识 
        start_time = '2022-09-24 14:05:00',        --展示时间 
        end_time = '2022-09-24 23:59:00', 
        pic_url="https://webpicture.mini1.cn/20220924/003141d993da2e-2760-cf58-b049-9d142f1a4220.png",        --图片展示 
action=1, 
version_min="1.18.0", --版本号限制
               fixnum=19, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--西瓜觉醒活动PC(上午P2）
{ 
        cd=86400,  --强弹间隔 
        id=200155,        --唯一标识 
        start_time = '2022-09-24 00:00:00',        --展示时间 
        end_time = '2022-09-24 11:59:00', 
        pic_url="https://webpicture.mini1.cn/20220922/1832426a884e4b-f485-fb07-ca1c-6e4fb20719cc.png",        --图片展示 
action=99, 
action_url="https://i.snssdk.com/magic/eco/runtime/release/62f237d780c3210355e71b82?appType=ixigua&magic_page_no=1&magic_source=pc_minigame&openBrowser=1",
apiids="100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132",
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 2, 
},
},
--西瓜觉醒活动(上午P2）
{ 
        cd=86400,  --强弹间隔 
        id=200154,        --唯一标识 
        start_time = '2022-09-24 00:00:00',        --展示时间 
        end_time = '2022-09-24 11:59:00', 
        pic_url="https://webpicture.mini1.cn/20220922/1832426a884e4b-f485-fb07-ca1c-6e4fb20719cc.png",        --图片展示 
action=99, 
action_url="https://xgfe.snssdk.com/lvfe/activity/goofy/mini/main?enter_from=miniworld&position=channel&hide_back_btn=true&openBrowser=1",
apiids_no="21,36,100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132",
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 2, 
},
},
--西瓜觉醒活动PC(中午P1）
{ 
        cd=86400,  --强弹间隔 
        id=200159,        --唯一标识 
        start_time = '2022-09-24 12:01:00',        --展示时间 
        end_time = '2022-09-24 14:00:00', 
        pic_url="https://webpicture.mini1.cn/20220922/1832426a884e4b-f485-fb07-ca1c-6e4fb20719cc.png",        --图片展示 
action=99, 
action_url="https://i.snssdk.com/magic/eco/runtime/release/62f237d780c3210355e71b82?appType=ixigua&magic_page_no=1&magic_source=pc_minigame&openBrowser=1",
apiids="100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132",
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--西瓜觉醒活动(中午P1）
{ 
        cd=86400,  --强弹间隔 
        id=200158,        --唯一标识 
        start_time = '2022-09-24 12:00:00',        --展示时间 
        end_time = '2022-09-24 14:00:00', 
        pic_url="https://webpicture.mini1.cn/20220922/1832426a884e4b-f485-fb07-ca1c-6e4fb20719cc.png",        --图片展示 
action=99, 
action_url="https://xgfe.snssdk.com/lvfe/activity/goofy/mini/main?enter_from=miniworld&position=channel&hide_back_btn=true&openBrowser=1",
apiids_no="21,36,100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132",
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--西瓜觉醒活动PC(下午P2）
{ 
        cd=86400,  --强弹间隔 
        id=200157,        --唯一标识 
        start_time = '2022-09-24 14:05:00',        --展示时间 
        end_time = '2022-09-24 23:59:00', 
        pic_url="https://webpicture.mini1.cn/20220922/1832426a884e4b-f485-fb07-ca1c-6e4fb20719cc.png",        --图片展示 
action=99, 
action_url="https://i.snssdk.com/magic/eco/runtime/release/62f237d780c3210355e71b82?appType=ixigua&magic_page_no=1&magic_source=pc_minigame&openBrowser=1",
apiids="100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132",
               fixnum=19, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 2, 
},
},
--西瓜觉醒活动(下午P2）
{ 
        cd=86400,  --强弹间隔 
        id=200156,        --唯一标识 
        start_time = '2022-09-24 14:05:00',        --展示时间 
        end_time = '2022-09-24 23:59:00', 
        pic_url="https://webpicture.mini1.cn/20220922/1832426a884e4b-f485-fb07-ca1c-6e4fb20719cc.png",        --图片展示 
action=99, 
action_url="https://xgfe.snssdk.com/lvfe/activity/goofy/mini/main?enter_from=miniworld&position=channel&hide_back_btn=true&openBrowser=1",
apiids_no="21,36,100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132",
               fixnum=19, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 2, 
},
},
--免流P2弹窗
{ 
        cd=86400,  --强弹间隔 
        id=200152,        --唯一标识 
        start_time = '2022-09-23 00:01:00',        --展示时间 
        end_time = '2022-09-23 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220906/18023343dd40d3-8030-dd95-c0bf-16d99704e002.png",        --图片展示 
action=99, 
action_url = "https://dev.coc.10086.cn/coc/web2/shunt/?pageId=1551883281319145472&channelId=P00000013049&portrait=1",
apiids_no="36,100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132",
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 2, 
},
},
--花小楼微博直播
{ 
        cd=86400,  --强弹间隔 
        id=200151,        --唯一标识 
        start_time = '2022-09-23 00:00:00',        --展示时间 
        end_time = '2022-09-23 19:59:59', 
        pic_url="https://webpicture.mini1.cn/20220922/2342060bca2f6d-ef67-3694-822d-6f1b1cd27d1b.png",        --图片展示 
action=99, 
action_url="https://weibo.com/l/wblive/m/show/1022:2321324816539689026385?openBrowser=1",
apiids_no="21,36",
               fixnum=19, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--花小生日微博活动
{ 
        cd=86400,  --强弹间隔 
        id=200150,        --唯一标识 
        start_time = '2022-09-22 00:00:00',        --展示时间 
        end_time = '2022-09-22 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220922/10044648566bb5-178a-dd47-3d5b-fddd9431fa55.png",        --图片展示 
action=99, 
action_url = "https://s.weibo.com/weibo?q=%23%E5%9B%BD%E9%A3%8E%E5%B0%91%E5%A5%B3%E8%8A%B1%E5%B0%8F%E6%A5%BC%E7%94%9F%E6%97%A5%E4%BC%9A%23&openBrowser=1",
apiids_no="21,36,45",
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--花小楼生日
{ 
        cd=86400,  --强弹间隔 
        id=200149,        --唯一标识 
        start_time = '2022-09-21 00:00:00',        --展示时间 
        end_time = '2022-09-21 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220921/1007236f558907-1cc2-1387-5e96-9426e5bdb13e.png",        --图片展示 
action=99, 
action_url = "https://c.y.qq.com/base/fcgi-bin/u?__=n8LJBBY913y6&openBrowser=1",
apiids_no="7,,21,36",
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 2, 
},
},
--中秋岛P1
{ 
        cd=86400,  --强弹间隔 
        id=200148,        --唯一标识 
        start_time = '2022-09-21 00:00:00',        --展示时间 
        end_time = '2022-09-21 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220905/110657fde0a620-2c9e-533e-7d18-e1c48e74ff5f.png",        --图片展示 
action=81, 
version_min="1.18.0", --版本号限制
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--免流P1弹窗
{ 
        cd=86400,  --强弹间隔 
        id=200147,        --唯一标识 
        start_time = '2022-09-20 00:01:00',        --展示时间 
        end_time = '2022-09-20 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220906/18023343dd40d3-8030-dd95-c0bf-16d99704e002.png",        --图片展示 
action=99, 
action_url = "https://dev.coc.10086.cn/coc/web2/shunt/?pageId=1551883281319145472&channelId=P00000013049&portrait=1",
apiids_no="36,7,100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132",
version_max="1.18.1", --版本号限制
               fixnum=20, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--中秋岛P1
{ 
        cd=86400,  --强弹间隔 
        id=200146,        --唯一标识 
        start_time = '2022-09-19 00:00:00',        --展示时间 
        end_time = '2022-09-19 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220905/110657fde0a620-2c9e-533e-7d18-e1c48e74ff5f.png",        --图片展示 
action=81, 
version_min="1.18.0", --版本号限制
version_max="1.18.1", --版本号限制
apiids_no="999",
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--免流P1弹窗
{ 
        cd=43200,  --强弹间隔 
        id=200145,        --唯一标识 
        start_time = '2022-09-18 12:01:00',        --展示时间 
        end_time = '2022-09-18 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220906/18023343dd40d3-8030-dd95-c0bf-16d99704e002.png",        --图片展示 
action=99, 
action_url = "https://dev.coc.10086.cn/coc/web2/shunt/?pageId=1551883281319145472&channelId=P00000013049&portrait=1",
apiids_no="36,100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132",
               fixnum=20, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--中秋岛P1
{ 
        cd=43200,  --强弹间隔 
        id=200144,        --唯一标识 
        start_time = '2022-09-18 00:00:00',        --展示时间 
        end_time = '2022-09-18 11:59:59', 
        pic_url="https://webpicture.mini1.cn/20220905/110657fde0a620-2c9e-533e-7d18-e1c48e74ff5f.png",        --图片展示 
action=81, 
version_min="1.18.0", --版本号限制
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--月饼坐骑P1
{ 
        cd=86400,  --强弹间隔 
        id=200143,        --唯一标识 
        start_time = '2022-09-17 00:00:00',        --展示时间 
        end_time = '2022-09-17 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220916/173210ff92c7c6-15e9-836c-7fc4-0bb67bebd51d.png",        --图片展示 
action=1, 
version_min="1.18.0", --版本号限制
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--大电影P1弹窗
{ 
        cd=86400,  --强弹间隔 
        id=200142,        --唯一标识 
        start_time = '2022-09-16 00:00:00',        --展示时间 
        end_time = '2022-09-16 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220915/2335256d2fce52-92bc-7c85-fe9e-28d6a372c695.png",        --图片展示 
action=99, 
action_url = "https://t.zrfilm.com/miniTheme?openBrowser=1",
apiids_no="21,36",
--version_min="1.17.0", --版本号限制
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--中秋岛P1
{ 
        cd=86400,  --强弹间隔 
        id=200141,        --唯一标识 
        start_time = '2022-09-15 00:00:00',        --展示时间 
        end_time = '2022-09-15 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220905/110657fde0a620-2c9e-533e-7d18-e1c48e74ff5f.png",        --图片展示 
action=81, 
--action_url = "https://www.ixigua.com/7117233481653944868?id=7119813817457967623?openBrowser=1",
version_min="1.18.0", --版本号限制
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--中秋岛P1
{ 
        cd=86400,  --强弹间隔 
        id=200140,        --唯一标识 
        start_time = '2022-09-14 00:00:00',        --展示时间 
        end_time = '2022-09-14 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220905/110238fcb1dfdc-952d-cea3-30bf-f971a88b081f.png",        --图片展示 
action=81, 
version_min="1.18.0", --版本号限制
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--中秋岛P1
{ 
        cd=86400,  --强弹间隔 
        id=200139,        --唯一标识 
        start_time = '2022-09-13 00:00:00',        --展示时间 
        end_time = '2022-09-13 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220905/110238fcb1dfdc-952d-cea3-30bf-f971a88b081f.png",        --图片展示 
action=81, 
version_min="1.18.0", --版本号限制
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--大眼蛙P1
{ 
        cd=86400,  --强弹间隔 
        id=200138,        --唯一标识 
        start_time = '2022-09-12 00:00:00',        --展示时间 
        end_time = '2022-09-12 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220911/235901a0b75d5d-915a-bf52-5933-d257f866dbb9.png",        --图片展示 
action=2, 
version_min="1.18.0", --版本号限制
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--布丁狗P1
{ 
        cd=86400,  --强弹间隔 
        id=200137,        --唯一标识 
        start_time = '2022-09-11 00:00:00',        --展示时间 
        end_time = '2022-09-11 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220910/234355c7715750-b98d-ad57-c53d-1bb45ba4e067.png",        --图片展示 
action=2, 
version_min="1.18.0", --版本号限制
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--中秋岛P1
{ 
        cd=86400,  --强弹间隔 
        id=200136,        --唯一标识 
        start_time = '2022-09-10 10:00:00',        --展示时间 
        end_time = '2022-09-10 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220905/110657fde0a620-2c9e-533e-7d18-e1c48e74ff5f.png",        --图片展示 
action=81, 
--action_url = "https://www.ixigua.com/7117233481653944868?id=7119813817457967623?openBrowser=1",
--apiids_no="52,7,12,13,21,36,45",
version_min="1.18.0", --版本号限制
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--柳仙儿换装更新P2
{ 
        cd=86400,  --强弹间隔 
        id=200135,        --唯一标识 
        start_time = '2022-09-10 00:00:00',        --展示时间 
        end_time = '2022-09-10 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220909/205626811435ed-d6f6-2726-dd1f-8ce68141c3b8.png",        --图片展示 
action=2, 
--action_url = "https://www.ixigua.com/7117233481653944868?id=7119813817457967623?openBrowser=1",
--apiids_no="52,7,12,13,21,36,45",
version_min="1.18.0", --版本号限制
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 2, 
},
},
--中秋皮肤更新P1
{ 
        cd=86400,  --强弹间隔 
        id=200134,        --唯一标识 
        start_time = '2022-09-09 00:00:00',        --展示时间 
        end_time = '2022-09-09 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220908/180156e5b94615-df0d-3132-9e74-20444dd9475d.png",        --图片展示 
action=1002, 
--action_url = "https://www.ixigua.com/7117233481653944868?id=7119813817457967623?openBrowser=1",
--apiids_no="52,7,12,13,21,36,45",
--version_min="1.18.0", --版本号限制
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--大电影P1弹窗
{ 
        cd=86400,  --强弹间隔 
        id=200133,        --唯一标识 
        start_time = '2022-09-08 00:00:00',        --展示时间 
        end_time = '2022-09-08 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220907/193219d7ed1402-c8f6-de46-4d89-5145b9a6a39d.png",        --图片展示 
action=99, 
action_url = "https://t.zrfilm.com/miniTheme?openBrowser=1",
apiids_no="21,12,13,7,36,2,121",
--version_min="1.17.0", --版本号限制
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--联通免流P1
{ 
        cd=86400,  --强弹间隔 
        id=200132,        --唯一标识 
        start_time = '2022-09-07 00:00:00',        --展示时间 
        end_time = '2022-09-07 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220906/18023343dd40d3-8030-dd95-c0bf-16d99704e002.png",        --图片展示 
action=99, 
action_url = "s4_https://h5.mini1.cn/act/c5m/free-flow/?portrait=1",
apiids_no="52,21,100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132",
--version_min="1.17.0", --版本号限制
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--免流p1弹窗
{ 
        cd=86400,  --强弹间隔 
        id=200131,        --唯一标识 
        start_time = '2022-09-05 00:00:00',        --展示时间 
        end_time = '2022-09-05 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220823/142820547c5fbd-5182-62dc-02ae-3ddf928b636a.png",        --图片展示 
action=99, 
action_url = "https://dev.coc.10086.cn/coc/web2/shunt/?pageId=1551883281319145472&channelId=P00000013049&portrait=1",
apiids_no="21,52,45,100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132",
--version_min="1.17.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0,
priorityLevel = 1,
},
},
--三丽鸥p1弹窗
{ 
        cd=86400,  --强弹间隔 
        id=200129,        --唯一标识 
        start_time = '2022-09-03 00:01:00',        --展示时间 
        end_time = '2022-09-03 23:59:00', 
        pic_url="https://webpicture.mini1.cn/20220815/18211370763415-90af-c603-1e0b-8e449c30092b.png",        --图片展示 
action=80, 
--action_url = "s4_https://kfz.mini1.cn/activities/2022qmczj/#/?from=pl&portrait=1&openBrowser=3",
version_min="1.17.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0,
priorityLevel = 1,
},
},
--大电影P1弹窗
{ 
        cd=86400,  --强弹间隔 
        id=200128,        --唯一标识 
        start_time = '2022-09-02 00:00:00',        --展示时间 
        end_time = '2022-09-02 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220901/23552556539b1d-5659-f929-97f1-ff00e978bf77.png",        --图片展示 
action=99, 
action_url = "https://t.zrfilm.com/miniTheme?openBrowser=1",
apiids_no="21",
--version_min="1.17.0", --版本号限制
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--迷你联萌动画番剧更新P1
{ 
        cd=86400,  --强弹间隔 
        id=200130,        --唯一标识 
        start_time = '2022-09-04 00:00:00',        --展示时间 
        end_time = '2022-09-04 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220903/23265889d57852-6553-0e90-5890-4e99aedf0c4e.png",        --图片展示 
action=99, 
action_url = "https://www.ixigua.com/7117233481653944868?id=7119813817457967623?openBrowser=1",
apiids_no="52,7,12,13,21,36,45",
--version_min="1.17.0", --版本号限制
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--迷你联萌动画番剧更新P1
{ 
        cd=86400,  --强弹间隔 
        id=200127,        --唯一标识 
        start_time = '2022-09-01 00:00:00',        --展示时间 
        end_time = '2022-09-01 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220831/1828599258f98f-e541-e780-625c-8bef8e0b8263.png",        --图片展示 
action=99, 
action_url = "https://www.ixigua.com/7117233481653944868?id=7119813817457967623?openBrowser=1",
apiids_no="52,7,12,13,21,36",
--version_min="1.17.0", --版本号限制
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--迷你小镇日常赛事P1
{ 
        cd=86400,  --强弹间隔 
        id=200126,        --唯一标识 
        start_time = '2022-08-31 00:00:00',        --展示时间 
        end_time = '2022-08-31 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220830/1751177a8e1734-226f-c66b-3c86-1cf87a572ab0.png",        --图片展示 
action=99, 
action_url = "s4_https://sso.mini1.cn/ssourl/#/transit?url=https://wss.mini1.cn/category/5/detail/1212/info",
apiids_no="21,36",
--version_min="1.17.0", --版本号限制
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},

--三丽鸥p1弹窗
{ 
        cd=86400,  --强弹间隔 
        id=200125,        --唯一标识 
        start_time = '2022-08-30 00:00:00',        --展示时间 
        end_time = '2022-08-30 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220815/18211370763415-90af-c603-1e0b-8e449c30092b.png",        --图片展示 
action=80, 
--action_url = "s4_https://kfz.mini1.cn/activities/2022qmczj/#/?from=pl&portrait=1&openBrowser=3",
apiids_no="999", 
version_min="1.17.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0,
priorityLevel = 1,
},
},
--大电影P1弹窗
{ 
        cd=86400,  --强弹间隔 
        id=200124,        --唯一标识 
        start_time = '2022-08-29 00:00:00',        --展示时间 
        end_time = '2022-08-29 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220828/2301532186b364-0935-58d9-56ee-4d08752e59f9.png",        --图片展示 
action=99, 
action_url = "https://t.zrfilm.com/miniTheme?openBrowser=1",
apiids_no="21",
--version_min="1.17.0", --版本号限制
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--全民创造节p1弹窗（移动端）
{ 
        cd=86400,  --强弹间隔 
        id=200122,        --唯一标识 
        start_time = '2022-08-27 16:00:00',        --展示时间 
        end_time = '2022-08-27 20:00:00', 
        pic_url="https://webpicture.mini1.cn/20220827/131419eb335ef5-5a4f-1c04-ab32-ae49ce2dc4bd.png",        --图片展示 
action=99, 
action_url = "https://v.kuaishou.com/sMetP3?openBrowser=1",
apiids_no="21,52,7,12,13,36,100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132",
--version_min="1.17.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0,
priorityLevel = 1,
},
},
--全民创造节p1弹窗（PC端）
{ 
        cd=86400,  --强弹间隔 
        id=200121,        --唯一标识 
        start_time = '2022-08-27 16:00:00',        --展示时间 
        end_time = '2022-08-27 20:00:00', 
        pic_url="https://webpicture.mini1.cn/20220827/131419eb335ef5-5a4f-1c04-ab32-ae49ce2dc4bd.png",        --图片展示 
action=76, 
--action_url = "https://dev.coc.10086.cn/coc/web2/shunt/?pageId=1551883281319145472&channelId=P00000013049&portrait=1",
apiids="100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132",
--version_min="1.17.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0,
priorityLevel = 1,
},
},
--三丽鸥p1弹窗
{ 
        cd=86400,  --强弹间隔 
        id=200123,        --唯一标识 
        start_time = '2022-08-28 00:01:00',        --展示时间 
        end_time = '2022-08-28 12:00:00', 
        pic_url="https://webpicture.mini1.cn/20220815/18211370763415-90af-c603-1e0b-8e449c30092b.png",        --图片展示 
action=80, 
--action_url = "s4_https://kfz.mini1.cn/activities/2022qmczj/#/?from=pl&portrait=1&openBrowser=3",
version_min="1.17.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0,
priorityLevel = 1,
},
},
--三丽鸥p1弹窗
{ 
        cd=86400,  --强弹间隔 
        id=200119,        --唯一标识 
        start_time = '2022-08-27 20:05:00',        --展示时间 
        end_time = '2022-08-27 23:59:00', 
        pic_url="https://webpicture.mini1.cn/20220815/18211370763415-90af-c603-1e0b-8e449c30092b.png",        --图片展示 
action=80, 
--action_url = "s4_https://kfz.mini1.cn/activities/2022qmczj/#/?from=pl&portrait=1&openBrowser=3",
version_min="1.17.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0,
priorityLevel = 1,
},
},
--免流p1弹窗
{ 
        cd=86400,  --强弹间隔 
        id=200120,        --唯一标识 
        start_time = '2022-08-28 12:05:00',        --展示时间 
        end_time = '2022-08-28 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220823/142820547c5fbd-5182-62dc-02ae-3ddf928b636a.png",        --图片展示 
action=99, 
action_url = "https://dev.coc.10086.cn/coc/web2/shunt/?pageId=1551883281319145472&channelId=P00000013049&portrait=1",
apiids_no="21,52,100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132",
--version_min="1.17.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0,
priorityLevel = 1,
},
},

--花小楼直播P1弹窗
{ 
        cd=86400,  --强弹间隔 
        id=200118,        --唯一标识 
        start_time = '2022-08-26 19:00:00',        --展示时间 
        end_time = '2022-08-26 20:30:00', 
        pic_url="https://webpicture.mini1.cn/20220825/18305166bf5701-2b07-9ea3-3757-979472c5205d.png",        --图片展示 
action=99, 
action_url = "https://live.kuaishou.com/u/mini_huaxiaolou?fid=2820744631&cc=share_wxms&followRefer=151&shareMethod=CARD&docId=5&kpn=KUAISHOU&subBiz=LIVE_STREAM&shareId=17107954224753&shareToken=X-1R0DQICPvgj1Zz&shareResourceType=LIVESTREAM_OTHER&userId=1205179691&shareType=5&shareMode=APP&originShareId=17107954224753&appType=1&shareObjectId=7OclgHF1o3U&shareUrlOpened=0&timestamp=1661512213456&openBrowser=1",
apiids_no="21,52,12,13,7,36",
--version_min="1.17.0", --版本号限制
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--免流p1弹窗
{ 
        cd=86400,  --强弹间隔 
        id=200117,        --唯一标识 
        start_time = '2022-08-26 20:35:00',        --展示时间 
        end_time = '2022-08-26 23:59:00', 
        pic_url="https://webpicture.mini1.cn/20220823/142820547c5fbd-5182-62dc-02ae-3ddf928b636a.png",        --图片展示 
action=99, 
action_url = "s4_https://h5.mini1.cn/act/c5m/free-flow/?portrait=1",
apiids_no="21,52,100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132",
--version_min="1.17.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0,
priorityLevel = 1,
},
},
--大电影P1弹窗
{ 
        cd=86400,  --强弹间隔 
        id=200116,        --唯一标识 
        start_time = '2022-08-25 00:00:00',        --展示时间 
        end_time = '2022-08-25 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220824/235642d08668fb-45ca-90c0-991a-5f53d960ace0.png",        --图片展示 
action=99, 
action_url = "https://t.zrfilm.com/miniTheme?openBrowser=1",
apiids_no="21,52,",
--version_min="1.17.0", --版本号限制
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 1, 
},
},
--三丽鸥p1弹窗
{ 
        cd=86400,  --强弹间隔 
        id=200115,        --唯一标识 
        start_time = '2022-08-24 00:00:00',        --展示时间 
        end_time = '2022-08-24 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220815/18211370763415-90af-c603-1e0b-8e449c30092b.png",        --图片展示 
action=80, 
--action_url = "s4_https://kfz.mini1.cn/activities/2022qmczj/#/?from=pl&portrait=1&openBrowser=3",
version_min="1.17.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0,
priorityLevel = 1,
},
},
--免流p1弹窗
{ 
        cd=86400,  --强弹间隔 
        id=200114,        --唯一标识 
        start_time = '2022-08-23 14:00:00',        --展示时间 
        end_time = '2022-08-23 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220823/142820547c5fbd-5182-62dc-02ae-3ddf928b636a.png",        --图片展示 
action=1004, 
--action_url = "s4_https://kfz.mini1.cn/activities/2022qmczj/#/?from=pl&portrait=1&openBrowser=3",
apiids_no="21,52,45,100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132",
--version_min="1.17.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0,
priorityLevel = 1,
},
},
--三丽欧p2弹窗
{ 
        cd=86400,  --强弹间隔 
        id=200112,        --唯一标识 
        start_time = '2022-08-22 10:00:00',        --展示时间 
        end_time = '2022-08-22 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220815/18211370763415-90af-c603-1e0b-8e449c30092b.png",        --图片展示 
action=80, 
--action_url = "s4_https://kfz.mini1.cn/activities/2022qmczj/#/?from=pl&portrait=1&openBrowser=3",
--apiids="999",
version_min="1.17.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0,
priorityLevel = 2,
},
},
--免流量P1
{ 
        cd=86400,  --强弹间隔 
        id=200113,        --唯一标识 
        start_time = '2022-08-22 10:00:00',        --展示时间 
        end_time = '2022-08-22 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220804/10545306886917-64d3-b3ff-bfc3-233f8d4dc552.png",        --图片展示 
action=1004, 
--action_url = "https://dev.coc.10086.cn/coc/web2/shunt/?pageId=1551883281319145472&channelId=P00000013049&portrait=1&openBrowser=1",
apiids_no="21,58,36,100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132",
--version_min="1.16.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0,
priorityLevel = 1,
},
},
--三丽欧p1弹窗
{ 
        cd=86400,  --强弹间隔 
        id=200110,        --唯一标识 
        start_time = '2022-08-20 00:00:00',        --展示时间 
        end_time = '2022-08-20 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220815/18211370763415-90af-c603-1e0b-8e449c30092b.png",        --图片展示 
action=80, 
--action_url = "s4_https://kfz.mini1.cn/activities/2022qmczj/#/?from=pl&portrait=1&openBrowser=3",
--apiids="999",
version_min="1.17.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0,
priorityLevel = 1,
},
},
--免流量P1
{ 
        cd=86400,  --强弹间隔 
        id=200111,        --唯一标识 
        start_time = '2022-08-21 00:00:00', --展示时间 
        end_time = '2022-08-21 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220804/10545306886917-64d3-b3ff-bfc3-233f8d4dc552.png", --图片展示 
action=99, 
action_url = "https://dev.coc.10086.cn/coc/web2/shunt/?pageId=1551883281319145472&channelId=P00000013049&portrait=1&openBrowser=1",
apiids_no="21,36,58,100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132",
--version_min="1.16.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0,
priorityLevel = 1,
},
},
--大电影购票P2
{ 
        cd=86400,  --强弹间隔 
        id=200109,        --唯一标识 
        start_time = '2022-08-19 00:00:00',        --展示时间 
        end_time = '2022-08-19 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220802/184038d6b85816-95fb-fd27-72ad-3948e54a1bec.png",        --图片展示 
action=99, 
action_url = "https://t.zrfilm.com/miniTheme?openBrowser=1",
apiids_no="21,36",
--version_min="1.16.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0,
priorityLevel = 2,
},
},
--美乐蒂装扮p1弹窗
{ 
        cd=86400,  --强弹间隔 
        id=200108,        --唯一标识 
        start_time = '2022-08-18 00:00:00',        --展示时间 
        end_time = '2022-08-18 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220817/18042522e40e50-a1a3-92ae-4374-692de12061d1.png",        --图片展示 
action=2, 
--action_url = "s4_https://kfz.mini1.cn/activities/2022qmczj/#/?from=pl&portrait=1&openBrowser=3",
--apiids="999",
version_min="1.17.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0,
priorityLevel = 1,
},
},
--三丽欧P0弹窗
{ 
        --cd=30,  --强弹间隔 
        id=200107,        --唯一标识 
        start_time = '2022-08-18 00:00:00',        --展示时间 
        end_time = '2022-09-09 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220810/1755515f893aa8-cd57-01cc-6479-7136b38fe99d.png",        --图片展示 
action=80, 
version_min="1.17.0", --版本号限制
               fixnum=18, 
task_conditions = { 
onlyNewUser= 0,
priorityLevel = 0,
frequency = 1,
},
},
--三丽欧p1弹窗
{ 
        cd=86400,  --强弹间隔 
        id=200106,        --唯一标识 
        start_time = '2022-08-17 10:00:00',        --展示时间 
        end_time = '2022-08-17 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220815/18211370763415-90af-c603-1e0b-8e449c30092b.png",        --图片展示 
action=80, 
--action_url = "s4_https://kfz.mini1.cn/activities/2022qmczj/#/?from=pl&portrait=1&openBrowser=3",
--apiids="999",
version_min="1.17.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0,
priorityLevel = 1,
},
},
--花小楼新歌
{ 
        cd=86400,  --强弹间隔 
        id=200105,        --唯一标识 
        start_time = '2022-08-16 00:00:00',        --展示时间 
        end_time = '2022-08-16 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220815/1804152e37714e-d2c1-c5b2-6492-609f56a0d1cc.png",        --图片展示 
action=99, 
action_url = "https://y.qq.com/jzt/271ddc/c4b05f.html?jztid=2014&openBrowser=1",
apiids_no="7,12,13,21,36,2,121,999",
--version_min="1.16.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0,
},
},
--大电影购票
{ 
        cd=86400,  --强弹间隔 
        id=200104,        --唯一标识 
        start_time = '2022-08-15 00:00:00',        --展示时间 
        end_time = '2022-08-15 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220814/2343588405b7db-8b7d-2a20-674d-9fc5eae60463.png",        --图片展示 
action=99, 
action_url = "https://t.zrfilm.com/miniTheme?openBrowser=1",
apiids_no="21",
--version_min="1.16.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0,
},
},
--觉醒试炼活动
{ 
        cd=86400,  --强弹间隔 
        id=200103,        --唯一标识 
        start_time = '2022-08-13 00:00:00',        --展示时间 
        end_time = '2022-08-13 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220812/183720f89341a8-9080-a89b-03db-4c42e3f205df.png",        --图片展示 
action=75, 
--action_url = "https://www.douyin.com/video/7124155597364235531?openBrowser=1",
--apiids_no="21,45",
version_min="1.16.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0,
},
},
--觉醒购票入口
{ 
        cd=86400,  --强弹间隔 
        id=200102,        --唯一标识 
        start_time = '2022-08-12 00:00:00',        --展示时间 
        end_time = '2022-08-12 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220811/203122cec0741b-fd36-06a4-5ebb-87c6308868d3.png",        --图片展示 
action=99, 
action_url = "https://t.zrfilm.com/miniTheme?openBrowser=1",
apiids_no="21",
fixnum=18, 
task_conditions = {       
        onlyNewUser= 0,
},
},
--觉醒购票入口
{ 
        cd=86400,  --强弹间隔 
        id=200100,        --唯一标识 
        start_time = '2022-08-10 00:00:00',        --展示时间 
        end_time = '2022-08-10 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220809/192708bc3da2be-716a-b096-fa63-601396057292.png",        --图片展示 
action=99, 
action_url = "https://t.zrfilm.com/miniTheme?openBrowser=1",
apiids_no="21",
--version_min="1.16.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0,
},
},
--全民创造节入口
{ 
        cd=86400,  --强弹间隔 
        id=200101,        --唯一标识 
        start_time = '2022-08-11 00:00:00',        --展示时间 
        end_time = '2022-08-11 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220810/1726405466076b-b4f1-4e75-3fe7-5bfa665cd61e.png",        --图片展示 
action=99, 
action_url = "s4_https://kfz.mini1.cn/activities/2022qmczj/#/?from=pl&portrait=1&openBrowser=3",
--apiids_no="21",
--version_min="1.16.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0,
},
},
--悦享卡新赛季
{ 
        cd=86400,  --强弹间隔 
        id=200098,        --唯一标识 
        start_time = '2022-08-08 00:00:00',        --展示时间 
        end_time = '2022-08-08 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220808/103012d20836b8-2a58-2ecd-1df4-05e3e6dfd7e9.png",        --图片展示 
action=35, 
--action_url = "https://t.zrfilm.com/miniTheme?openBrowser=1",
--apiids_no="21",
version_min="1.16.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0,
},
},
--觉醒试炼活动
{ 
        cd=86400,  --强弹间隔 
        id=200099,        --唯一标识 
        start_time = '2022-08-09 00:00:00',        --展示时间 
        end_time = '2022-08-09 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220808/182631ce886b7e-babf-9fad-db81-c263c203b3ca.png",        --图片展示 
action=75, 
--action_url = "https://www.douyin.com/video/7124155597364235531?openBrowser=1",
--apiids_no="21,45",
version_min="1.16.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0,
},
},
--大电影购票
{ 
        cd=86400,  --强弹间隔 
        id=200095,        --唯一标识 
        start_time = '2022-08-05 00:00:00',        --展示时间 
        end_time = '2022-08-05 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220804/185159bd37a103-6965-62fe-8e64-398254b75a30.png",        --图片展示 
action=99, 
action_url = "https://t.zrfilm.com/miniTheme?openBrowser=1",
apiids_no="21",
--version_min="1.16.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0,
},
},
--大耳狗
{ 
        cd=86400,  --强弹间隔 
        id=200097,        --唯一标识 
        start_time = '2022-08-07 00:00:00',        --展示时间 
        end_time = '2022-08-07 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220805/1738487c339dbc-c723-8438-560b-4e0c38f1b9b2.png",        --图片展示 
action=2, 
--action_url = "https://t.zrfilm.com/miniTheme?openBrowser=1",
--apiids_no="21",
version_min="1.16.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0,
},
},
--凯蒂猫
{ 
        cd=86400,  --强弹间隔 
        id=200096,        --唯一标识 
        start_time = '2022-08-06 00:00:00',        --展示时间 
        end_time = '2022-08-06 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220805/171608bb2983b3-75e8-69d8-7af5-cd8a38ee382d.png",        --图片展示 
action=2, 
--action_url = "https://t.zrfilm.com/miniTheme?openBrowser=1",
--apiids_no="21",
version_min="1.16.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0,
},
},
--免流量
{ 
        cd=86400,  --强弹间隔 
        id=200094,        --唯一标识 
        start_time = '2022-08-04 11:00:00',        --展示时间 
        end_time = '2022-08-04 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220804/10545306886917-64d3-b3ff-bfc3-233f8d4dc552.png",        --图片展示 
action=99, 
action_url = "https://dev.coc.10086.cn/coc/web2/shunt/?pageId=1551883281319145472&channelId=P00000012113&portrait=1&openBrowser=1",
apiids_no="21,58,100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132",
--version_min="1.16.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0,
},
},
--大电影购票2
{ 
        cd=86400,  --强弹间隔 
        id=200093,        --唯一标识 
        start_time = '2022-08-03 00:00:00',        --展示时间 
        end_time = '2022-08-03 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220802/184038d6b85816-95fb-fd27-72ad-3948e54a1bec.png",        --图片展示 
action=99, 
action_url = "https://t.zrfilm.com/miniTheme?openBrowser=1",
apiids_no="21",
--version_min="1.16.0", --版本号限制
               fixnum=19, 
task_conditions = {       
        onlyNewUser= 0,
},
},
--大电影购票
{ 
        cd=86400,  --强弹间隔 
        id=200092,        --唯一标识 
        start_time = '2022-08-02 00:00:00',        --展示时间 
        end_time = '2022-08-02 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220801/232927e29c7686-edf8-9666-8878-c01c0cf50388.png",        --图片展示 
action=99, 
action_url = "https://t.zrfilm.com/miniTheme?openBrowser=1",
apiids_no="45,7,12,13,21,36,2",
--version_min="1.16.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0,
},
},
--觉醒发布会
{ 
        cd=86400,  --强弹间隔 
        id=200088,        --唯一标识 
        start_time = '2022-07-29 00:00:00',        --展示时间 
        end_time = '2022-07-29 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220728/193825c36d358e-a8a5-2a01-b990-4be15aebf4eb.png",        --图片展示 
action=99, 
action_url = "https://ppg.viviv.com/doodle/japmYOXX.html?hyId=jimu_japmYOXX&&entry_src=callback_ios_bm_ba_yxstnryy_nset_miniios&openBrowser=1",
apiids_no="52,7,12,13,21,36,45,35,74,78,28,67,71",
--version_min="1.16.0", --版本号限制
               fixnum=19, 
task_conditions = {       
        onlyNewUser= 0,
},
},
--狐狸坐骑
{ 
        cd=86400,  --强弹间隔 
        id=200086,        --唯一标识 
        start_time = '2022-07-27 00:00:00',        --展示时间 
        end_time = '2022-07-27 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220726/19094149802b8d-1eb5-7ca8-5bf1-4a8c819bc88b.png",        --图片展示 
action=1, 
--action_url = "https://www.douyin.com/video/7124155597364235531?openBrowser=1",
--apiids_no="21,45",
version_min="1.15.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0,
},
},
--沙漠冒险
{ 
        cd=86400,  --强弹间隔 
        id=200087,        --唯一标识 
        start_time = '2022-07-28 10:00:00',        --展示时间 
        end_time = '2022-07-28 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220726/19045815ce2de4-0002-9902-65e9-23ff4cbed382.png",        --图片展示 
action=28, 
--action_url = "https://www.douyin.com/video/7124155597364235531?openBrowser=1",
--apiids_no="21,45",
version_min="1.16.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0,
},
},
--觉醒试炼活动
{ 
        cd=86400,  --强弹间隔 
        id=200089,        --唯一标识 
        start_time = '2022-07-30 00:00:00',        --展示时间 
        end_time = '2022-07-30 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220726/182653c0369a27-1ac4-a0a8-d145-c4689a75496c.png",        --图片展示 
action=75, 
--action_url = "https://www.douyin.com/video/7124155597364235531?openBrowser=1",
--apiids_no="21,45",
version_min="1.16.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0,
},
},
--朱竹清戴沐白
{ 
        cd=86400,  --强弹间隔 
        id=200090,        --唯一标识 
        start_time = '2022-07-31 00:00:00',        --展示时间 
        end_time = '2022-07-31 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220729/183214939225f4-3773-d92e-dedb-724fa1354828.png",        --图片展示 
action=2, 
--action_url = "https://ppg.viviv.com/doodle/japmYOXX.html?hyId=jimu_japmYOXX&&entry_src=callback_ios_bm_ba_yxstnryy_nset_miniios?openBrowser=1",
--apiids_no="21,45",
version_min="1.16.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0,
},
},
--宁荣荣-新上线礼盒
{ 
        cd=86400,  --强弹间隔 
        id=200091,        --唯一标识 
        start_time = '2022-08-01 00:00:00',        --展示时间 
        end_time = '2022-08-01 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220729/1839002a3aefd9-62ad-e4af-2ed1-cd1420825b2f.png",        --图片展示 
action=1002, 
--action_url = "https://ppg.viviv.com/doodle/japmYOXX.html?hyId=jimu_japmYOXX&&entry_src=callback_ios_bm_ba_yxstnryy_nset_miniios?openBrowser=1",
--apiids_no="21,45",
version_min="1.16.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0,
},
},
--电影预告
{ 
        cd=86400,  --强弹间隔 
        id=200085,        --唯一标识 
        start_time = '2022-07-26 00:00:00',        --展示时间 
        end_time = '2022-07-26 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220725/232256c58bac71-0829-d88c-05e7-222e3b624b4d.png",        --图片展示 
action=99, 
action_url = "https://www.douyin.com/video/7124155597364235531?openBrowser=1",
apiids_no="21,45",
        --version_min="1.13.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0
},
},
--电影预告
{ 
        cd=86400,  --强弹间隔 
        id=200084,        --唯一标识 
        start_time = '2022-07-24 00:00:00',        --展示时间 
        end_time = '2022-07-24 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220723/2347029215f748-e002-edda-bfc2-3a45515308a4.png",        --图片展示 
action=99, 
action_url = "https://www.douyin.com/video/7123089095777127684?openBrowser=1",
apiids_no="12,13,7,21,36",
        --version_min="1.13.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0
},
},
--斗罗最终章话题一市场
{ 
        cd=86400,  --强弹间隔 
        id=200081,        --唯一标识 
        start_time = '2022-07-22 15:00:00',        --展示时间 
        end_time = '2022-07-22 19:30:00', 
        pic_url="https://webpicture.mini1.cn/20220722/155145cb48c736-f6ed-30ec-0df8-5349e838a20f.png",        --图片展示 
action=99, 
action_url = "sinaweibo://searchall?luicode=10000360&lfid=OP_329009728&launchid=10000360-OP_329009728&q=%23%E8%BF%B7%E4%BD%A0%E4%B8%96%E7%95%8C%E6%96%97%E7%BD%97%E5%A4%A7%E9%99%86%E8%81%94%E5%8A%A8%23&openBrowser=1",
jump_app_pic = "fx_wb",  --fx_qq,fx_qqkj,fx_wx,fx_pyq,fx_wb 
url_ext_pic = "https://weibo.com/p/100808baecf17ac680463795ea5e91e07bd392?&luicode=10000360&lfid=OP_329009728&launchid=10000360-OP_329009728&wm=90314_90001&openBrowser=1",
        --version_min="1.13.0", --版本号限制
          apiids_no="12,13,7,21,36,45",
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0
},
},
--斗罗最终章活动-增长-增长
{ 
        cd=86400,  --强弹间隔 
        id=200083,        --唯一标识 
        start_time = '2022-07-23 18:05:00',        --展示时间 
        end_time = '2022-07-23 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220720/14481529710841-bada-56f2-3633-13d2262d3c57.png",        --图片展示 
action=70, 
--action_url = "s4_https://sso.mini1.cn/ssourl/#/transit?url=https://qmcz.mini1.cn/home/?from=pl&portrait=1",
--apiids_no="",
        version_min="1.15.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0
},
},
--奥斯卡礼盒-商业化
{ 
        cd=86400,  --强弹间隔 
        id=200082,        --唯一标识 
        start_time = '2022-07-23 00:00:00',        --展示时间 
        end_time = '2022-07-23 18:00:00', 
        pic_url="https://webpicture.mini1.cn/20220721/1724097cba8189-06ec-faaa-ad50-bbda5be28de9.png",        --图片展示 
action=1003, 
--action_url = "https://www.weibo.com/2095820504/LDgYH3829?pagetype=profilefeed&openBrowser=1",
--apiids_no="",
        version_min="1.15.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0
},
},
--夏日巨献一市场
{ 
        cd=86400,  --强弹间隔 
        id=200080,        --唯一标识 
        start_time = '2022-07-22 12:00:00',        --展示时间 
        end_time = '2022-07-22 15:00:00', 
        pic_url="https://webpicture.mini1.cn/20220722/1204197ddddc83-2f72-bb0e-71e4-85d769b4874e.png",        --图片展示 
action=99, 
action_url = "https://ppg.viviv.com/doodle/japmYOXX.html?hyId=jimu_japmYOXX&&entry_src=callback_ios_bm_ba_yxstnryy_nset_miniios&openBrowser=1",
--apiids_no="",
        --version_min="1.13.0", --版本号限制
          apiids_no="12,13,7,21,36,45",
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0
},
},
--斗罗最终章活动-增长-增长
{ 
        cd=86400,  --强弹间隔 
        id=200079,        --唯一标识 
        start_time = '2022-07-22 10:00:00',        --展示时间 
        end_time = '2022-07-22 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220720/14481529710841-bada-56f2-3633-13d2262d3c57.png",        --图片展示 
action=70, 
--action_url = "s4_https://sso.mini1.cn/ssourl/#/transit?url=https://qmcz.mini1.cn/home/?from=pl&portrait=1",
--apiids_no="",
        version_min="1.15.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0
},
},
--电影预告
{ 
        cd=86400,  --强弹间隔 
        id=200078,        --唯一标识 
        start_time = '2022-07-21 00:00:00',        --展示时间 
        end_time = '2022-07-21 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220721/095822f6855ab9-57c3-7148-2a08-789372b97020.png",        --图片展示 
action=99, 
action_url = "https://www.douyin.com/video/7122639641202691360?openBrowser=1",
apiids_no="12,13,7,21,36",
        --version_min="1.13.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0
},
},
--创意赛道一内容生态
{ 
        cd=86400,  --强弹间隔 
        id=200077,        --唯一标识 
        start_time = '2022-07-20 00:00:00',        --展示时间 
        end_time = '2022-07-20 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220719/18515747b29c28-31c8-3b84-52c5-e75a3c0bf394.png",        --图片展示 
action=99, 
action_url = "s4_https://sso.mini1.cn/ssourl/#/transit?url=https://qmcz.mini1.cn/home/?from=pl&portrait=1",
--apiids_no="",
        --version_min="1.13.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0
},
},
--咪萌开播-IP
{ 
        cd=86400,  --强弹间隔 
        id=200076,        --唯一标识 
        start_time = '2022-07-19 00:00:00',        --展示时间 
        end_time = '2022-07-19 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220718/190025e9d822d7-25f1-9f12-07e1-04f58a67fcbd.png",        --图片展示 
action=23, 
action_url = "articleId=208539391273234432",
apiids_no = '52,36,7,12,13,21',
        --version_min="1.13.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0
},
},
--斗罗二阶段
{ 
        cd=86400,  --强弹间隔 
        id=200074,        --唯一标识 
        start_time = '2022-07-17 00:00:00',        --展示时间 
        end_time = '2022-07-17 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220714/15122537bb3b89-38af-dd91-3170-e6abb038304d.png",        --图片展示 
action=70, 
--action_url="https://i.snssdk.com/magic/eco/runtime/release/62bea05036d0f6063273e606?appType=ixigua&openBrowser=1",  --跳转地址 
        version_min="1.15.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0
},
},
--绮箩
{ 
        cd=86400,  --强弹间隔 
        id=200073,        --唯一标识 
        start_time = '2022-07-16 00:00:00',        --展示时间 
        end_time = '2022-07-16 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220715/191146cb3b3a7c-8233-8b6f-87d8-3b9b00bc1506.png",        --图片展示 
action=2, 
--action_url="https://i.snssdk.com/magic/eco/runtime/release/62bea05036d0f6063273e606?appType=ixigua&openBrowser=1",  --跳转地址 
        version_min="1.15.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0
},
},
--斗罗二阶段
{ 
        cd=86400,  --强弹间隔 
        id=200072,        --唯一标识 
        start_time = '2022-07-15 10:00:00',        --展示时间 
        end_time = '2022-07-15 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220714/15122537bb3b89-38af-dd91-3170-e6abb038304d.png",        --图片展示 
action=70, 
--action_url="https://i.snssdk.com/magic/eco/runtime/release/62bea05036d0f6063273e606?appType=ixigua&openBrowser=1",  --跳转地址 
        version_min="1.15.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0
},
},
--全民赛道开启
{ 
        cd=86400,  --强弹间隔 
        id=200071,        --唯一标识 
        start_time = '2022-07-14 00:00:00',        --展示时间 
        end_time = '2022-07-14 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220714/0143599c958155-366a-9a39-4f6e-a3c76bc72852.png",        --图片展示 
action=99, 
action_url="https://kfz.mini1.cn/activities/2022qmczj/#/?from=pl&portrait=1",  --跳转地址 
       -- version_min="1.15.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0
},
},
--比比东
{ 
        cd=86400,  --强弹间隔 
        id=200075,        --唯一标识 
        start_time = '2022-07-18 00:00:00',        --展示时间 
        end_time = '2022-07-18 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220713/20585419e063ad-e03d-a9bb-354f-a446e6492171.png",        --图片展示 
action=2, 
--action_url="https://i.snssdk.com/magic/eco/runtime/release/62bea05036d0f6063273e606?appType=ixigua&openBrowser=1",  --跳转地址 
        version_min="1.15.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0
},
},
--全民创造节-内容生态
{ 
        cd=86400,  --强弹间隔 
        id=200070,        --唯一标识 
        start_time = '2022-07-13 00:00:00',        --展示时间 
        end_time = '2022-07-13 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220713/00122610cf5086-0dd2-57af-2bea-775341f8017f.png",        --图片展示 
action=76, 
--action_url="https://i.snssdk.com/magic/eco/runtime/release/62bea05036d0f6063273e606?appType=ixigua&openBrowser=1",  --跳转地址 
version_min="1.15.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0
},
},
--咪萌动画开播一IP
{ 
        cd=86400,  --强弹间隔 
        id=200069,        --唯一标识 
        start_time = '2022-07-12 00:00:00',        --展示时间 
        end_time = '2022-07-12 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220708/19390725d4b09d-fd73-babb-5b60-a2cbedb6f673.png",        --图片展示 
action=99, 
action_url="https://i.snssdk.com/magic/eco/runtime/release/62bea05036d0f6063273e606?appType=ixigua&openBrowser=1",  --跳转地址 
apiids_no="21,45,100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132",
        --version_min="1.13.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0
},
},
--咪萌动画开播一IP
{ 
        cd=86400,  --强弹间隔 
        id=200068,        --唯一标识 
        start_time = '2022-07-11 00:00:00',        --展示时间 
        end_time = '2022-07-11 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220708/19390725d4b09d-fd73-babb-5b60-a2cbedb6f673.png",        --图片展示 
action=99, 
action_url="https://i.snssdk.com/magic/eco/runtime/release/62bea05036d0f6063273e606?appType=ixigua&openBrowser=1",  --跳转地址 
apiids_no="21,100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132",
        --version_min="1.13.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0
},
},
-- 免流聚合页-商业化
{ 
        cd=86400,  --强弹间隔 
        id=200067,        --唯一标识 
        start_time = '2022-07-10 00:00:00',        --展示时间 
        end_time = '2022-07-10 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220708/165620c9cf2bd4-f4bb-cbc2-3762-6be75cfa5f5d.png",        --图片展示 
action=1004, 
--action_url="https://i.snssdk.com/magic/eco/runtime/release/62bea05036d0f6063273e606?appType=ixigua&openBrowser=1",  --跳转地址 
apiids_no="100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132",
        --version_min="1.15.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0
},
},
-- 唐三装扮-商业化
{ 
        cd=86400,  --强弹间隔 
        id=200066,        --唯一标识 
        start_time = '2022-07-09 00:00:00',        --展示时间 
        end_time = '2022-07-09 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220708/165306c5b3cffb-f02a-203a-4ae9-6185dd86de5a.png",        --图片展示 
action=2, 
--action_url="https://i.snssdk.com/magic/eco/runtime/release/62bea05036d0f6063273e606?appType=ixigua&openBrowser=1",  --跳转地址 
		--apiids_no ="52,7,12,13,21,36,45",
        version_min="1.15.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0
},
},
--斗罗阶段一-增长
{ 
        cd=86400,  --强弹间隔 
        id=200065,        --唯一标识 
        start_time = '2022-07-08 10:00:00',        --展示时间 
        end_time = '2022-07-08 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220707/164316eeca47ee-58f5-9c21-dc00-0f4f70a71f40.png",        --图片展示 
action=70, 
--action_url="https://y.qq.com/jzt/271ddc/9356e7.html?ADTAG=ZW&openBrowser=1",  --跳转地址 
		--apiids_no ="52,7,12,13,21,36,45",
        version_min="1.15.0", --版本号限制
               fixnum=19, 
task_conditions = {       
        onlyNewUser= 0
},
},
--花小楼新歌发行-市场生态
{ 
        cd=86400,  --强弹间隔 
        id=200064,        --唯一标识 
        start_time = '2022-07-06 00:00:00',        --展示时间 
        end_time = '2022-07-06 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220706/1028258e59148b-2ee0-7072-1afe-90ed7253b701.png",        --图片展示 
action=99, 
action_url="https://y.qq.com/jzt/271ddc/9356e7.html?ADTAG=ZW&openBrowser=1",        --跳转地址 
		apiids_no ="52,7,12,13,21,36,45",
        --version_min="1.13.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0
},
},
--变色九尾狐-商业化
{ 
        cd=86400,  --强弹间隔 
        id=200063,        --唯一标识 
        start_time = '2022-07-03 00:00:00',        --展示时间 
        end_time = '2022-07-03 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220601/2351216b1f4840-cfca-f8c2-22f3-c2aa2279a7d3.png",        --图片展示 
action=1003, 
--action_url="s4_https://h5.mini1.cn/p/free-flow/?portrait=1",        --跳转地址 
		--apiids ="999",
        version_min="1.13.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0
},
},
--微博H5拉起测试
{ 
        cd=30,  --强弹间隔 
        id=200055,        --唯一标识 
        start_time = '2022-06-19 00:00:00',        --展示时间 
        end_time = '2022-06-29 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220619/000341c23e299c-611b-4618-2c23-ed092dbb1d8c.png",        --图片展示 
                action=99, 
       action_url="sinaweibo://searchall?luicode=10000360&lfid=OP_329009728&launchid=10000360-OP_329009728&q=%23%E8%BF%B7%E4%BD%A0%E7%81%B5%E7%8B%90%E9%85%8D%E9%9F%B3%E8%B5%9B%23",        --跳转地址 
jump_app = "fx_wb", --fx_qq,fx_qqkj,fx_wx,fx_pyq,fx_wb,  
	url_ext = "https://www.mini1.cn/", 
        apiids= '999',
      version_min="1.15.0", --版本号限制
               fixnum18, 
task_conditions = {       
        onlyNewUser= 0
 },
 },
--会员派送-商业化
{ 
        cd=86400,  --强弹间隔 
        id=200062,        --唯一标识 
        start_time = '2022-07-02 00:00:00',        --展示时间 
        end_time = '2022-07-02 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220624/1933589f3e8a00-97ac-c57d-2352-75d07880a124.png",        --图片展示 
action=1005, 
--action_url="s4_https://h5.mini1.cn/p/free-flow/?portrait=1",        --跳转地址 
		--apiids ="999",
        version_min="1.14.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0
},
},
--会员派送-商业化
{ 
        cd=86400,  --强弹间隔 
        id=200061,        --唯一标识 
        start_time = '2022-06-29 00:00:00',        --展示时间 
        end_time = '2022-06-29 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220624/1933589f3e8a00-97ac-c57d-2352-75d07880a124.png",        --图片展示 
action=1005, 
--action_url="s4_https://h5.mini1.cn/p/free-flow/?portrait=1",        --跳转地址 
		--apiids ="999",
        version_min="1.14.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0
},
},
--会员派送-商业化
{ 
        cd=86400,  --强弹间隔 
        id=200060,        --唯一标识 
        start_time = '2022-06-27 00:00:00',        --展示时间 
        end_time = '2022-06-27 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220624/1933589f3e8a00-97ac-c57d-2352-75d07880a124.png",        --图片展示 
action=1005, 
--action_url="s4_https://h5.mini1.cn/p/free-flow/?portrait=1",        --跳转地址 
		--apiids ="999",
        version_min="1.14.0", --版本号限制
               fixnum=21, 
task_conditions = {       
        onlyNewUser= 0
},
},
--会员派送-商业化
{ 
        cd=86400,  --强弹间隔 
        id=200057,        --唯一标识 
        start_time = '2022-06-25 00:00:00',        --展示时间 
        end_time = '2022-06-25 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220624/1933589f3e8a00-97ac-c57d-2352-75d07880a124.png",        --图片展示 
action=1005, 
--action_url="s4_https://h5.mini1.cn/p/free-flow/?portrait=1",        --跳转地址 
		--apiids ="999",
        version_min="1.14.0", --版本号限制
               fixnum=21, 
task_conditions = {       
        onlyNewUser= 0
},
},
--限时好礼-增长
{ 
        cd=86400,  --强弹间隔 
        id=200058,        --唯一标识 
        start_time = '2022-06-26 00:00:00',        --展示时间 
        end_time = '2022-06-26 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220624/200653d45b1b38-cd3a-ca0b-2ed6-5a607216dde6.png",        --图片展示 
action=77, 
--action_url="s4_https://h5.mini1.cn/p/free-flow/?portrait=1",        --跳转地址 
		apiids ="13",
       --version_min="1.14.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0
},
},
--联通免流量-商业化
{ 
        cd=86400,  --强弹间隔 
        id=200059,        --唯一标识 
        start_time = '2022-06-26 00:00:00',        --展示时间 
        end_time = '2022-06-26 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220624/192033a3a06612-fce4-abd5-92d9-da0d595ce90d.png",        --图片展示 
action=99, 
action_url="s4_https://h5.mini1.cn/p/free-flow/?portrait=1",        --跳转地址 
		--apiids ="999",
        apiids_no = "58,116,129,128,113,112,102,125,126,127,110,124,123,199,109,122,121,101,100,13",
        --version_min="1.12.3", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0
},
},

--星造型上线
{ 
        cd=86400,  --强弹间隔 
        id=200056,        --唯一标识 
        start_time = '2022-06-28 00:00:00',        --展示时间 
        end_time = '2022-06-28 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220624/11075160501929-8713-58ca-d810-ace769b7f910.png",        --图片展示 
action = 469,
action_url = "20220622",        --跳转地址 
        --apiids_no = '52,36,7,12,13,21',
        --apiids ="999",
        version_min = "1.14.0",
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0
 },
 },
--闪耀盔甲上线
{ 
        cd=86400,  --强弹间隔 
        id=200055,        --唯一标识 
        start_time = '2022-06-19 00:00:00',        --展示时间 
        end_time = '2022-06-19 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220619/000341c23e299c-611b-4618-2c23-ed092dbb1d8c.png",        --图片展示 
                action=2, 
       --action_url="https://v.kuaishou.com/iNAJRV&openBrowser=1",        --跳转地址 
        --apiids_no = '52,36,7,12,13,21',
        version_min="1.13.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0
 },
 },
--移动免流量-商业化
{ 
        cd=86400,  --强弹间隔 
        id=200054,        --唯一标识 
        start_time = '2022-06-18 00:00:00',        --展示时间 
        end_time = '2022-06-18 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220613/1421287eb80548-3518-9e13-1cb2-8bf6d914afae.png",        --图片展示 
action=99, 
action_url="https://dev.coc.10086.cn/coc/web/coc2020/package2/?pageId=1517049986096697344&channelId=P00000012113&portrait=1",        --跳转地址 
		--apiids ="1,110,79,81",
        apiids_no = "58,21,116,129,128,113,112,102,125,126,127,110,124,123,199,109,122,121,101,100",
        version_min="1.12.3", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0
},
},
--家园保卫战
{ 
        cd=86400,  --强弹间隔 
        id=200053,        --唯一标识 
        start_time = '2022-06-17 00:00:00',        --展示时间 
        end_time = '2022-06-17 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220616/173601fb30cf38-7fdf-fb91-1718-9037e9a77e99.png",        --图片展示 
action=99, 
action_url="s4_https://sso.mini1.cn/ssourl/#/transit?url=https://wss.mini1.cn/category/2/detail/1205/info?portrait=1",        --跳转地址 
		--apiids ="1,110,79,81",
        --apiids_no = "21",
        --version_min="1.12.3", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0
},
},
--内容生态-竞技场
{ 
        cd=86400,  --强弹间隔 
        id=200052,        --唯一标识 
        start_time = '2022-06-16 00:00:00',        --展示时间 
        end_time = '2022-06-16 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220616/153440434d73b5-e920-42ee-53d6-1716c1cda525.png",        --图片展示 
action=99, 
action_url="s4_https://sso.mini1.cn/ssourl/#/transit?url=https://wss.mini1.cn/category/1/detail/1206/info",        --跳转地址 
		--apiids ="1,110,79,81",
        --apiids_no = "21",
        --version_min="1.12.3", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0
},
},
--移动免流量-商业化
{ 
        cd=86400,  --强弹间隔 
        id=200051,        --唯一标识 
        start_time = '2022-06-13 00:00:00',        --展示时间 
        end_time = '2022-06-13 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220613/1421287eb80548-3518-9e13-1cb2-8bf6d914afae.png",        --图片展示 
action=99, 
action_url="https://dev.coc.10086.cn/coc/web/coc2020/package2/?pageId=1517049986096697344&channelId=P00000012113&portrait=1",        --跳转地址 
		--apiids ="1,110,79,81",
        apiids_no = "58,21,116,129,128,113,112,102,125,126,127,110,124,123,199,109,122,121,101,100",
        version_min="1.12.3", --版本号限制
               fixnum=19, 
task_conditions = {       
        onlyNewUser= 0
},
},
--星朋友派对-内容生态(PC)
{ 
        cd=86400,  --强弹间隔 
        id=200048,        --唯一标识 
        start_time = '2022-06-11 00:00:00',        --展示时间 
        end_time = '2022-06-11 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220610/1904457f511a20-e5a4-dc7c-4cba-d50176f76111.png",        --图片展示 
                action=99, 
                action_url="s4_https://kfz.mini1.cn/activity/host-activity/index.html#/?from=3&openBrowser=3",        --跳转地址 		apiids="100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132",      
        --apiids_no = '36,7,12,13,21',
        --version_min="1.11.6", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0
},
},
--星朋友派对-内容生态(移动)
{ 
        cd=86400,  --强弹间隔 
        id=200049,        --唯一标识 
        start_time = '2022-06-11 00:00:00',        --展示时间 
        end_time = '2022-06-11 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220610/1904457f511a20-e5a4-dc7c-4cba-d50176f76111.png",        --图片展示 
                action=99, 
                action_url="s4_https://kfz.mini1.cn/activity/host-activity/m/index.html#/?from=3&openBrowser=3",        --跳转地址 
		--apiids ="1,110,79,81",     apiids_no="100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132",
        --version_min="1.11.6", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0
},
},
--悦享卡新赛季-增长
{ 
        cd=86400,  --强弹间隔 
        id=200050,        --唯一标识 
        start_time = '2022-06-12 00:00:00',        --展示时间 
        end_time = '2022-06-12 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220610/192044bf0a9009-e92f-ac30-bdc4-73cc83fa3395.png",        --图片展示 
                action=35, 
              --action_url="https://kfz.mini1.cn/activities/mbec2/#/?from=pl&portrait=1",        --跳转地址 
		--apiids ="1,110,79,81",
        --apiids_no = '36,7,12,13,21',
        --version_min="1.13.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0
},
},
--激励二创-内容生态
{ 
        cd=86400,  --强弹间隔 
        id=200047,        --唯一标识 
        start_time = '2022-06-06 00:00:00',        --展示时间 
        end_time = '2022-06-06 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220606/00345135e2bf65-6738-4479-6f1e-f2d4290b6ed1.png",        --图片展示 
                action=99, 
                action_url="https://kfz.mini1.cn/activities/mbec2/#/?from=pl&portrait=1",        --跳转地址 
		--apiids ="1,110,79,81",
        --apiids_no = '36,7,12,13,21',
        --version_min="1.11.6", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0
},
},
--悦享卡新赛季-商业化
{ 
        cd=86400,  --强弹间隔 
        id=200046,        --唯一标识 
        start_time = '2022-06-05 12:00:00',        --展示时间 
        end_time = '2022-06-05 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220605/000157479c3c74-c804-f20f-0f75-25401cfcd3a0.png",        --图片展示 
                action=35, 
                --action_url="s4_https://sso.mini1.cn/ssourl/#/transit?url=https://wss.mini1.cn/category/5/detail/1197/info",        --跳转地址 
		--apiids ="1,110,79,81",
        --apiids_no = '36,7,12,13,21',
        version_min="1.13.0", --版本号限制
               fixnum=19, 
task_conditions = {       
        onlyNewUser= 0
},
 },
--小马宝莉
{ 
        cd=86400,  --强弹间隔 
        id=200045,        --唯一标识 
        start_time = '2022-06-04 00:00:00',        --展示时间 
        end_time = '2022-06-04 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220603/225543911f01cc-4a4b-6e6f-58d1-b2d66bee3997.png",        --图片展示 
                action=2, 
       --action_url="https://v.kuaishou.com/iNAJRV&openBrowser=1",        --跳转地址 
        --apiids_no = '52,36,7,12,13,21',
        version_min="1.13.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0
 },
 },
--端午活动增长
{ 
        cd=86400,  --强弹间隔 
        id=200044,        --唯一标识 
        start_time = '2022-06-03 00:00:00',        --展示时间 
        end_time = '2022-06-03 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220602/214859d2dcf7fc-f0ae-a03f-7699-0cc786638f0f.png",        --图片展示 
                action=75, 
       --action_url="https://v.kuaishou.com/iNAJRV&openBrowser=1",        --跳转地址 
        --apiids_no = '52,36,7,12,13,21',
        version_min="1.13.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0
 },
 },
--变装
{ 
        cd=86400,  --强弹间隔 
        id=200043,        --唯一标识 
        start_time = '2022-06-02 00:00:00',        --展示时间 
        end_time = '2022-06-02 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220601/2351216b1f4840-cfca-f8c2-22f3-c2aa2279a7d3.png",        --图片展示 
                action=1003, 
       --action_url="https://v.kuaishou.com/iNAJRV&openBrowser=1",        --跳转地址 
        --apiids_no = '52,36,7,12,13,21',
        version_min="1.13.0", --版本号限制
               fixnum=18, 
task_conditions = {       
        onlyNewUser= 0
 },
 },
--刑天装扮
{ 
        cd=30,  --强弹间隔 
        id=200042,        --唯一标识 
        start_time = '2022-05-31 00:00:00',        --展示时间 
        end_time = '2022-05-31 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220521/002903c2ef185e-05de-1e33-750f-1793632d5c5c.png",        --图片展示 
                action=2, 
       --action_url="https://v.kuaishou.com/iNAJRV&openBrowser=1",        --跳转地址 
		apiids ="999",
        --apiids_no = '52,36,7,12,13,21',
        version_min="1.13.0", --版本号限制
               fixnum=18, 
task_conditions = {                                
       player_create_time_begin = '2015-01-01 00:00:00',
       player_create_time_end = '2021-01-01 23:59:59',
                        },

    },
--团队竞技
{ 
        cd=86400,  --强弹间隔 
        id=200041,        --唯一标识 
        start_time = '2022-05-16 00:00:00',        --展示时间 
        end_time = '2022-05-16 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220512/1803053f468a05-16c5-8d95-0549-70e38a4af144.png",        --图片展示 
        action=99, 
       action_url="https://sso.mini1.cn/ssourl/#/transit?url=https://wss.mini1.cn/category/2/detail/1204/info?portrait=1&openBrowser=2",        
		--apiids ="1,110,79,81",
        apiids_no = '52,21',
        --version_min="1.12.0", --版本号限制
               fixnum=18, 
    },
--萝拉装扮
{ 
        cd=86400,  --强弹间隔 
        id=200039,        --唯一标识 
        start_time = '2022-05-14 00:01:00',        --展示时间 
        end_time = '2022-05-14 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220513/184331dc57dec9-451e-2f75-9c30-6b14b3a58018.png",        --图片展示 
                action=2, 
       --action_url="https://v.kuaishou.com/iNAJRV&openBrowser=1",        --跳转地址 
		--apiids ="1,110,79,81",
        --apiids_no = '52,36,7,12,13,21',
        version_min="1.12.3", --版本号限制
               fixnum=18, 
    },
--迷你欢乐小镇-增长
{ 
        cd=86400,  --强弹间隔 
        id=200040,        --唯一标识 
        start_time = '2022-05-15 00:01:00',        --展示时间 
        end_time = '2022-05-15 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220428/104728e41c23a0-0f7d-c294-a385-c37c6247408c.png",        --图片展示 
                action=74, 
       --action_url="s4_https://sso.mini1.cn/ssourl/#/transit?url=https://wss.mini1.cn/category/5/detail/1202/info",        --跳转地址 
		--apiids ="1,110,79,81",
        --apiids_no = '36,7,12,13,21',
        version_min="1.12.0", --版本号限制
               fixnum=18, 
      },
--团队竞技
{ 
        cd=86400,  --强弹间隔 
        id=200038,        --唯一标识 
        start_time = '2022-05-13 00:00:00',        --展示时间 
        end_time = '2022-05-13 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220512/1803053f468a05-16c5-8d95-0549-70e38a4af144.png",        --图片展示 
        action=99, 
       action_url="https://sso.mini1.cn/ssourl/#/transit?url=https://wss.mini1.cn/category/2/detail/1204/info?portrait=1&openBrowser=2",        
		--apiids ="1,110,79,81",
        apiids_no = '52,36,12,15,21',
        --version_min="1.12.0", --版本号限制
               fixnum=18, 
    },
--彩俐
{ 
        cd=86400,  --强弹间隔 
        id=200037,        --唯一标识 
        start_time = '2022-05-08 00:01:00',        --展示时间 
        end_time = '2022-05-08 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220507/18535132f6ebeb-c094-7643-9e28-708c13db64d6.png",        --图片展示 
                action=2, 
       --action_url="https://v.kuaishou.com/iNAJRV&openBrowser=1",        --跳转地址 
		--apiids ="1,110,79,81",
        --apiids_no = '52,36,7,12,13,21',
        version_min="1.12.0", --版本号限制
               fixnum=18, 
    },
--迷你欢乐小镇-增长
{ 
        cd=86400,  --强弹间隔 
        id=200036,        --唯一标识 
        start_time = '2022-05-07 00:01:00',        --展示时间 
        end_time = '2022-05-07 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220428/104728e41c23a0-0f7d-c294-a385-c37c6247408c.png",        --图片展示 
                action=74, 
       --action_url="s4_https://sso.mini1.cn/ssourl/#/transit?url=https://wss.mini1.cn/category/5/detail/1202/info",        --跳转地址 
		--apiids ="1,110,79,81",
        --apiids_no = '36,7,12,13,21',
        version_min="1.12.0", --版本号限制
               fixnum=18, 
      },
--联通免流量卡-商业化
{ 
        cd=86400,  --强弹间隔 
        id=200035,        --唯一标识 
        start_time = '2022-05-06 11:30:00',        --展示时间 
        end_time = '2022-05-06 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220415/33ef1fed7ba9a43afe403ede024155af.png",        --图片展示 
                action=99, 
                action_url="s4_https://h5.mini1.cn/p/free-flow/?portrait=1",        --跳转地址 
		--apiids ="1,110,79,81",
        apiids_no ="52,21,12,116,129,128,113,112,102,125,126,127,110,124,123,199,109,122,121,101,100",
        --version_min="1.11.6", --版本号限制
               fixnum=18, 
    },
--迷你欢乐小镇-增长
{ 
        cd=86400,  --强弹间隔 
        id=200034,        --唯一标识 
        start_time = '2022-05-05 00:00:00',        --展示时间 
        end_time = '2022-05-05 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220428/104728e41c23a0-0f7d-c294-a385-c37c6247408c.png",        --图片展示 
                action=74, 
       --action_url="s4_https://sso.mini1.cn/ssourl/#/transit?url=https://wss.mini1.cn/category/5/detail/1202/info",        --跳转地址 
		--apiids ="1,110,79,81",
        --apiids_no = '36,7,12,13,21',
        version_min="1.12.0", --版本号限制
               fixnum=18, 
      },
--激励二创-内容生态
{ 
        cd=86400,  --强弹间隔 
        id=200033,        --唯一标识 
        start_time = '2022-05-03 00:00:00',        --展示时间 
        end_time = '2022-05-03 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220429/2151194791defe-a503-f1c2-90a1-1c2317392c7d.png",        --图片展示 
                action=99, 
       action_url="https://kfz.mini1.cn/activities/mbec/#/?portrait=1&from=pl&openBrowser=1 ",        --跳转地址 
		--apiids ="1,110,79,81",
        apiids_no = '52,21',
        --version_min="1.12.0", --版本号限制
               fixnum=18, 
    },
--抽盒机-IP
{ 
        cd=86400,  --强弹间隔 
        id=200032,        --唯一标识 
        start_time = '2022-05-04 00:00:00',        --展示时间 
        end_time = '2022-05-04 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220428/162013a8ae8935-f3a4-27d3-7be6-a0bdfc9b9e2c.png",        --图片展示 
                action=99, 
       action_url="s4_https://mall.miniworldstory.com/?portrait=1&openBrowser=3",        --跳转地址 
		--apiids ="1,110,79,81",
        apiids_no = '52,36,7,12,13,21',
        --version_min="1.11.6", --版本号限制
               fixnum=18, 
    },
--迷你欢乐小镇-增长
{ 
        cd=86400,  --强弹间隔 
        id=200031,        --唯一标识 
        start_time = '2022-05-02 00:00:00',        --展示时间 
        end_time = '2022-05-02 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220428/104728e41c23a0-0f7d-c294-a385-c37c6247408c.png",        --图片展示 
                action=74, 
       --action_url="s4_https://sso.mini1.cn/ssourl/#/transit?url=https://wss.mini1.cn/category/5/detail/1202/info",        --跳转地址 
		--apiids ="1,110,79,81",
        --apiids_no = '36,7,12,13,21',
        version_min="1.12.0", --版本号限制
               fixnum=18, 
      },
--全新银铃装扮-商业化
{ 
        cd=86400,  --强弹间隔 
        id=200030,        --唯一标识 
        start_time = '2022-05-01 00:00:00',        --展示时间 
        end_time = '2022-05-01 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220429/21442991dc9614-e9e2-d2f4-8a49-17410b723cfa.png",        --图片展示 
                action=2, 
       --action_url="https://v.kuaishou.com/iNAJRV&openBrowser=1",        --跳转地址 
		--apiids ="1,110,79,81",
        --apiids_no = '52,36,7,12,13,21',
        version_min="1.12.0", --版本号限制
               fixnum=18, 
    },
--扭蛋-商业化
{ 
        cd=86400,  --强弹间隔 
        id=200029,        --唯一标识 
        start_time = '2022-04-30 00:00:00',        --展示时间 
        end_time = '2022-04-30 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220429/2138207f1f5b98-a035-1a42-7506-4003860c5993.png",        --图片展示 
                action=32, 
       --action_url="https://v.kuaishou.com/iNAJRV&openBrowser=1",        --跳转地址 
		--apiids ="1,110,79,81",
        --apiids_no = '52,36,7,12,13,21',
        version_min="1.12.0", --版本号限制
               fixnum18, 
    },
--五一花小楼直播-市场生态
{ 
        cd=86400,  --强弹间隔 
        id=200027,        --唯一标识 
        start_time = '2022-04-29 19:00:00',        --展示时间 
        end_time = '2022-04-29 20:00:00', 
        pic_url="https://image.mini1.cn/d/20220427/aed09b59db9981d65c87b640c59429b4.png",        --图片展示 
                action=99, 
       action_url="https://v.kuaishou.com/iNAJRV&openBrowser=1",        --跳转地址 
		--apiids ="1,110,79,81",
        apiids_no = '52,36,7,12,13,21',
        --version_min="1.11.6", --版本号限制
               fixnum=18, 
    },
--联通免流量卡-商业化
{ 
        cd=86400,  --强弹间隔 
        id=200028,        --唯一标识 
        start_time = '2022-04-29 00:00:00',        --展示时间 
        end_time = '2022-04-29 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220415/33ef1fed7ba9a43afe403ede024155af.png",        --图片展示 
                action=99, 
                action_url="s4_https://h5.mini1.cn/p/free-flow/?portrait=1",        --跳转地址 
		--apiids ="1,110,79,81",
        apiids_no ="52,21,12,116,129,128,113,112,102,125,126,127,110,124,123,199,109,122,121,101,100",
        --version_min="1.11.6", --版本号限制
               fixnum=18, 
    },

--钥匙坐骑-商业化
{ 
        cd=86400,  --强弹间隔 
        id=200026,        --唯一标识 
        start_time = '2022-04-28 16:30:00',        --展示时间 
        end_time = '2022-04-28 23:59:59', 
        pic_url="https://webpicture.mini1.cn/20220428/164036f24847ae-135d-6963-1bab-61daf88a1999.png",        --图片展示 
                action=1, 
       --action_url="s4_https://mall.miniworldstory.com/?portrait=1&openBrowser=3",        --跳转地址 
		--apiids ="1,110,79,81",
        --apiids_no = '36,7,12,13,21',
        version_min="1.12.0", --版本号限制
               fixnum=18, 
    },




--叶罗丽-内容生态
{ 
        cd=86400,  --强弹间隔 
        id=200025,        --唯一标识 
        start_time = '2022-04-24 00:00:00',        --展示时间 
        end_time = '2022-04-24 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220422/b1fa8c401b024b2d1c5d0c7ca03966fd.png",        --图片展示 
                action=2, 
       --action_url="s4_https://sso.mini1.cn/ssourl/#/transit?url=https://wss.mini1.cn/category/5/detail/1202/info",        --跳转地址 
		--apiids ="1,110,79,81",
        --apiids_no = '36,7,12,13,21',
        --version_min="1.11.6", --版本号限制
               fixnum=18, 
    },

--打工模拟器赛事-内容生态
{ 
        cd=86400,  --强弹间隔 
        id=200024,        --唯一标识 
        start_time = '2022-04-23 00:00:00',        --展示时间 
        end_time = '2022-04-23 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220419/98cecf30427b618ffe0a6a4fea619a5c.png",        --图片展示 
                action=99, 
       action_url="s4_https://sso.mini1.cn/ssourl/#/transit?url=https://wss.mini1.cn/category/5/detail/1202/info",        --跳转地址 
		--apiids ="1,110,79,81",
        --apiids_no = '36,7,12,13,21',
        --version_min="1.11.6", --版本号限制
               fixnum=18, 
    },

--联通免流量卡-商业化
{ 
        cd=86400,  --强弹间隔 
        id=200023,        --唯一标识 
        start_time = '2022-04-16 00:00:00',        --展示时间 
        end_time = '2022-04-17 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220415/33ef1fed7ba9a43afe403ede024155af.png",        --图片展示 
                action=99, 
                action_url="s4_https://h5.mini1.cn/p/free-flow/?portrait=1",        --跳转地址 
		--apiids ="1,110,79,81",
        apiids_no ="52,21,12,116,129,128,113,112,102,125,126,127,110,124,123,199,109,122,121,101,100",
        --version_min="1.11.6", --版本号限制
               fixnum=18, 
    },

--花小楼版大电影主题曲 -市场生态
{ 
        cd=86400,  --强弹间隔 
        id=200022,        --唯一标识 
        start_time = '2022-04-15 00:00:00',        --展示时间 
        end_time = '2022-04-15 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220414/eceb0aec0f7485c2f3355fc2c8aed035.png",        --图片展示 
                action=99, 
                action_url="https://y.qq.com/jzt/271ddc/8a0f99.html?ZDQ_exclusivedebut&openBrowser=1",        --跳转地址 
		--apiids ="1,110,79,81",
        apiids_no = '52,21',
        --version_min="1.11.6", --版本号限制
               fixnum=19, 
  
                    },



--殷小敏换装上线-商业化
{ 
        cd=86400,  --强弹间隔 
        id=200021,        --唯一标识 
        start_time = '2022-04-14 00:00:00',        --展示时间 
        end_time = '2022-04-14 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220414/24f8e636e8b41e70c038e7519bed32c8.png",        --图片展示 
                action=2, 
                --action_url="s4_https://sso.mini1.cn/ssourl/#/transit?url=https://wss.mini1.cn/category/5/detail/1197/info",        --跳转地址 
		--apiids ="1,110,79,81",
        --apiids_no = '36,7,12,13,21',
        version_min="1.11.9", --版本号限制
               fixnum=18, 
                    },



--悦享卡新赛季-商业化
{ 
        cd=86400,  --强弹间隔 
        id=200020,        --唯一标识 
        start_time = '2022-04-09 00:00:00',        --展示时间 
        end_time = '2022-04-10 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220402/dab25fb0d7477a2b62067fb69355ab51.png",        --图片展示 
                action=35, 
                --action_url="s4_https://sso.mini1.cn/ssourl/#/transit?url=https://wss.mini1.cn/category/5/detail/1197/info",        --跳转地址 
		--apiids ="1,110,79,81",
        --apiids_no = '36,7,12,13,21',
        version_min="1.11.6", --版本号限制
               fixnum=18, 
                    },




--觉醒
{ 
        cd=86400,  --强弹间隔 
        id=200019,        --唯一标识 
        start_time = '2022-04-08 00:00:00',        --展示时间 
        end_time = '2022-04-08 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220408/3ac98b1b0b2d30d9d45a483171ce9010.png",        --图片展示 
                action=99, 
                action_url="https://ppg.m.etoote.com/doodle/NbhEqikY.html?hyId=jimu_NbhEqikY&entry_src=callback_android_bm_ba_yxstnryy_nset&portrait=1&openBrowser=1",        --跳转地址 
		--apiids ="1,110,79,81",
        apiids_no = '21,100,101,121,122,109,199,399,123,124,110,127,126,125,102,410,112,113,128,402,129,116,117,118,114,119,130,131,132',
        --version_min="1.11.0", --版本号限制
               fixnum=19, 
                    },



--航天主题赛事
{ 
        cd=86400,  --强弹间隔 
        id=200018,        --唯一标识 
        start_time = '2022-04-07 00:00:00',        --展示时间 
        end_time = '2022-04-07 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220406/cbedc20443f3c716f2ffe826d7398fe3.png",        --图片展示 
                action=99, 
                action_url="s4_https://sso.mini1.cn/ssourl/#/transit?url=https://wss.mini1.cn/category/1/detail/1200/info",        --跳转地址 
		--apiids ="1,110,79,81",
        --apiids_no = '21',
        --version_min="1.11.0", --版本号限制
               fixnum=18, 
                    },

--虚空来袭2
{ 
        cd=86400,  --强弹间隔 
        id=200017,        --唯一标识 
        start_time = '2022-04-05 00:00:00',        --展示时间 
        end_time = '2022-04-05 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220331/eccc737ae8dba6448a7a6e49a7ac8c14.png",        --图片展示 
                action=106, 
                --action_url="s4_https://sso.mini1.cn/ssourl/#/transit?url=https://wss.mini1.cn/category/5/detail/1197/info",        --跳转地址 
		--apiids ="1,110,79,81",
        --apiids_no = '36,7,12,13,21',
        version_min="1.11.0", --版本号限制
               fixnum=18, 
                    },

--虚空来袭1
{ 
        cd=86400,  --强弹间隔 
        id=200016,        --唯一标识 
        start_time = '2022-04-04 00:00:00',        --展示时间 
        end_time = '2022-04-04 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220331/eccc737ae8dba6448a7a6e49a7ac8c14.png",        --图片展示 
                action=106, 
                --action_url="s4_https://sso.mini1.cn/ssourl/#/transit?url=https://wss.mini1.cn/category/5/detail/1197/info",        --跳转地址 
		--apiids ="1,110,79,81",
        --apiids_no = '36,7,12,13,21',
        version_min="1.11.0", --版本号限制
               fixnum=18, 
                    },

--流量卡-商业化
{ 
        cd=86400,  --强弹间隔 
        id=200015,        --唯一标识 
        start_time = '2022-04-03 00:00:00',        --展示时间 
        end_time = '2022-04-03 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220402/e70d7730c9b90e74128c85534c5f1283.png",        --图片展示 
        action=99, 
        action_url="s4_https://h5.mini1.cn/p/free-flow/?portrait=1",        --跳转地址 
		--apiids ="1,110,79,81",
        apiids_no = '52,21,12,116,129,128,113,112,102,125,126,127,110,124,123,199,109,122,121,101,100',
        --version_min="1.11.6", --版本号限制
               fixnum=18, 
                    },

--悦享卡新赛季-商业化
{ 
        cd=86400,  --强弹间隔 
        id=200014,        --唯一标识 
        start_time = '2022-04-02 16:00:00',        --展示时间 
        end_time = '2022-04-02 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220402/dab25fb0d7477a2b62067fb69355ab51.png",        --图片展示 
                action=35, 
                --action_url="s4_https://sso.mini1.cn/ssourl/#/transit?url=https://wss.mini1.cn/category/5/detail/1197/info",        --跳转地址 
		--apiids ="1,110,79,81",
        --apiids_no = '36,7,12,13,21',
        version_min="1.11.6", --版本号限制
               fixnum=18, 
                    },

--虚空来袭
{ 
        cd=86400,  --强弹间隔 
        id=200013,        --唯一标识 
        start_time = '2022-04-01 00:00:00',        --展示时间 
        end_time = '2022-04-01 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220331/eccc737ae8dba6448a7a6e49a7ac8c14.png",        --图片展示 
                action=106, 
                --action_url="s4_https://sso.mini1.cn/ssourl/#/transit?url=https://wss.mini1.cn/category/5/detail/1197/info",        --跳转地址 
		--apiids ="1,110,79,81",
        --apiids_no = '36,7,12,13,21',
        version_min="1.11.0", --版本号限制
               fixnum=18, 
                    },


--梦魇之月皮肤
{ 
        cd=86400,  --强弹间隔 
        id=200012,        --唯一标识 
        start_time = '2022-03-31 00:00:00',        --展示时间 
        end_time = '2022-03-31 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220330/561db646378a481fbbe0f077bc7decff.png",        --图片展示 
                action=2, 
                --action_url="s4_https://sso.mini1.cn/ssourl/#/transit?url=https://wss.mini1.cn/category/5/detail/1197/info",        --跳转地址 
		--apiids ="1,110,79,81",
        --apiids_no = '36,7,12,13,21',
        version_min="1.11.6", --版本号限制
               fixnum=18, 
                    },
--电影觉醒
{ 
        cd=86400,  --强弹间隔 
        id=200011,        --唯一标识 
        start_time = '2022-03-28 00:00:00',        --展示时间 
        end_time = '2022-03-28 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220328/b2db9a7bbfe99965c75c6ddf7fc7a91c.png",        --图片展示 
                action=99, 
                action_url="s4_https://sso.mini1.cn/ssourl/#/transit?url=https://wss.mini1.cn/category/5/detail/1197/info",        --跳转地址 
		--apiids ="1,110,79,81",
        --apiids_no = '36,7,12,13,21',
         --version_min="1.11.0", --版本号限制
               fixnum=18, 
                    },

--周年庆典
{ 
        cd=86400,  --强弹间隔 
        id=200010,        --唯一标识 
        start_time = '2022-03-27 00:00:00',        --展示时间 
        end_time = '2022-03-27 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220316/6d8c7d5d4eedfd2d18a5dfca9d25e048.png",        --图片展示 
                action=103, 
                --action_url="https://ppg.m.etoote.com/doodle/ZSsBovUa.html?hyId=jimu_ZSsBovUa&kpn=nebula",        --跳转地址 
		--apiids ="1,110,79,81",
        --apiids_no = '36,7,12,13,21',
         version_min="1.11.0", --版本号限制
               fixnum=18, 
                    },

--虎牙直播1
{ 
        cd= 86400,  --强弹间隔 
        id= 200008,        --唯一标识 
        start_time = '2022-03-26 00:00:00',        --展示时间 
        end_time = '2022-03-26 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220325/a35c3353637f5ca0153da76dadf448a0.png",        --图片展示 
                action=99, 
                action_url="https://hd.huya.com/huyaDIYzt/21815/mobile/index.html?wxShare=1",        --跳转地址 
apiids_no="21,7,13,12,36,52,116,129,128,113,112,102,125,126,127,110,124,123,199,109,122,121,101,100",
        --version_min="1.11.0", --版本号限制
               fixnum=18, 
   },

--虎牙直播2
{ 
        cd=86400,  --强弹间隔 
        id=200009,        --唯一标识 
        start_time = '2022-03-26 00:00:00',        --展示时间 
        end_time = '2022-03-26 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220325/a35c3353637f5ca0153da76dadf448a0.png",        --图片展示 
                action=99, 
                action_url="https://hd.huya.com/huyaDIYzt/21941/mobile/index.html",        --跳转地址 
apiids =  "7,13,12,36",
        --version_min="1.11.0", --版本号限制
               fixnum=18, 
   },


--内容生态突出重围
{ 
        cd=86400,  --强弹间隔 
        id=200007,        --唯一标识 
        start_time = '2022-03-25 00:00:00',        --展示时间 
        end_time = '2022-03-25 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220324/2f00b8d05ceef842f16f1b4320ac89b1.png",        --图片展示 
                action=99, 
                action_url="s4_https://sso.mini1.cn/ssourl/#/transit?url=https://wss.mini1.cn/category/2/detail/1193/info&portrait=1&openBrowser=2",        --跳转地址 
		--apiids ="1,110,79,81",
        apiids_no = '21,52',
        --version_min="1.11.0", --版本号限制
               fixnum=18, 
   }, 

--商业化免流量
{ 
        cd=43200,  --强弹间隔 
        id=200006,        --唯一标识 
        start_time = '2022-03-24 00:00:00',        --展示时间 
        end_time = '2022-03-24 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220323/6471707634193fd46717a733c27bf8d5.png",        --图片展示 
                action=99, 
                action_url="s4_https://h5.mini1.cn/p/free-flow/?portrait=1",        --跳转地址 
		--apiids ="1,110,79,81",
        --apiids_no = '36,7,12,13,21',
        --version_min="1.11.0", --版本号限制
               fixnum=18, 
   },
--周年庆典
{ 
        cd=86400,  --强弹间隔 
        id=200005,        --唯一标识 
        start_time = '2022-03-23 00:00:00',        --展示时间 
        end_time = '2022-03-23 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220316/6d8c7d5d4eedfd2d18a5dfca9d25e048.png",        --图片展示 
                action=103, 
                --action_url="https://ppg.m.etoote.com/doodle/ZSsBovUa.html?hyId=jimu_ZSsBovUa&kpn=nebula",        --跳转地址 
		--apiids ="1,110,79,81",
        --apiids_no = '36,7,12,13,21',
         version_min="1.11.0", --版本号限制
               fixnum=18, 
                    },
--1元购福利皮肤2
{
        cd = 43200, -- 强弹间隔 
        id = 200004, -- 唯一标识 
        start_time = '2022-03-20 00:00:00', -- 展示时间 
        end_time = '2022-03-22 23:59:59',
        pic_url = "https://image.mini1.cn/d/20220318/94078f3ae5f2ad8530074f2ec0ae90a0.png", -- 图片展示 
        action = 99,
        action_url="https://sso.mini1.cn/#/transit?url=https%3A%2F%2Fh5.mini1.cn%2Fact%2Fc5m%2Fsix-years-celebration%2F%23%2Ffriend%2F&openBrowser=3&portrait=2",        
--跳转地址 
        --apiids ="1,110,79,81",
        --apiids_no = '45',
        -- version_min="1.11.0", --版本号限制 
        fixnum = 18
    }, 

--1元购福利皮肤1
{
        cd = 43200, -- 强弹间隔 
        id = 200004, -- 唯一标识 
        start_time = '2022-03-20 00:00:00', -- 展示时间 
        end_time = '2022-03-20 23:59:59',
        pic_url = "https://image.mini1.cn/d/20220318/94078f3ae5f2ad8530074f2ec0ae90a0.png", -- 图片展示 
        action = 99,
        action_url="https://sso.mini1.cn/#/transit?url=https%3A%2F%2Fh5.mini1.cn%2Fact%2Fc5m%2Fsix-years-celebration%2F%23%2Ffriend%2F&openBrowser=3&portrait=2",        
--跳转地址 
        --apiids ="1,110,79,81",
        --apiids_no = '45',
        -- version_min="1.11.0", --版本号限制 
        fixnum = 18
    }, 
--周年庆典
{ 
        cd=86400,  --强弹间隔 
        id=200003,        --唯一标识 
        start_time = '2022-03-19 00:00:00',        --展示时间 
        end_time = '2022-03-19 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220316/6d8c7d5d4eedfd2d18a5dfca9d25e048.png",        --图片展示 
                action=103, 
                --action_url="https://ppg.m.etoote.com/doodle/ZSsBovUa.html?hyId=jimu_ZSsBovUa&kpn=nebula",        --跳转地址 
		--apiids ="1,110,79,81",
        --apiids_no = '36,7,12,13,21',
         version_min="1.11.0", --版本号限制 
               fixnum=18, 
                    },

--花小楼六周年直播
{ 
        cd=86400,  --强弹间隔 
        id=200002,        --唯一标识 
        start_time = '2022-03-18 00:00:00',        --展示时间 
        end_time = '2022-03-18 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220315/2c2dcdb5f57d14698c7ca8c0ebf8efe9.png",        --图片展示 
                action=99, 
                action_url="https://ppg.m.etoote.com/doodle/ZSsBovUa.html?hyId=jimu_ZSsBovUa&kpn=nebula&entry_src=callback_android_bm_ba_yxstnryy_nset&portrait=1&openBrowser=1",        --跳转地址 
		--apiids ="1,110,79,81",
        apiids_no = '21,45,2,121',
        --version_min="1.2.5", --版本号限制 
               fixnum=18, 
                    },
--时光机	
{ 
        cd=86400,  --强弹间隔 
        id=200001,        --唯一标识 
        start_time = '2022-03-17 00:00:00',        --展示时间 
        end_time = '2022-03-17 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220311/9fa51d664bdba0283c636b799a46364d.png",        --图片展示 
                action=99, 
                action_url = "s4_https://sso.mini1.cn/#/transit?url=https://h5.mini1.cn/act/c5m/my2021/&portrait=1&openBrowser=3&openBrowser=2",        --跳转地址 
		apiids_no ="116,129,128,113,112,102,125,126,127,110,124,123,199,109,122,121,101,100",
        --version_min="1.2.5", --版本号限制 
               fixnum=18, 
                    },



{ 
        cd=86400,  --强弹间隔 
        id=117,        --唯一标识 
        start_time = '2022-01-19 00:00:00',        --展示时间 
        end_time = '2022-01-19 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220119/a4dc1333d11791c0cf41a22893817cbd.png",        --图片展示 
                action=99, 
                action_url = "s4_https://sso.mini1.cn/#/transit?url=https%3A%2F%2Fh5.mini1.cn%2Fact%2Fc5m%2FspecialDress%2F&openBrowser=3&portrait=2",        --跳转地址 
	--apiids_no ="52,58,12,7,8,17,18,19,55,45,69,21",
        version_min="1.9.0", --版本号限制 
               fixnum=6, 
                    },

{ 
        cd=86400,  --强弹间隔 
        id=118,        --唯一标识 
        start_time = '2022-01-20 19:30:01',        --展示时间 
        end_time = '2022-01-20 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220120/2a8542fa11bcfe1ebe77fc3bdfba1dac.png",        --图片展示 
                action=99, 
                action_url = "s4_https://sso.mini1.cn/#/transit?url=https%3A%2F%2Fh5.mini1.cn%2Fact%2Fc5m%2Fsale-bag-skin%2F&openBrowser=3&portrait=2",        --跳转地址 
	--apiids_no ="52,58,12,7,8,17,18,19,55,45,69,21",
        version_min="1.9.0", --版本号限制 
               fixnum=6, 
                    },

{ 
        cd=86400,  --强弹间隔 
        id=119,        --唯一标识 
        start_time = '2022-01-20 18:30:01',        --展示时间 
        end_time = '2022-01-20 19:29:59', 
        pic_url="https://image.mini1.cn/d/20220120/9064dd1a6791c85962437450d18f6200.png",        --图片展示 
                action=99, 
                action_url = "https://v.douyin.com/LJys8fR/?openBrowser=1",        --跳转地址 
	apiids_no ="52,58,12,7,8,17,18,19,55,45,69,21,116,129,128,113,112,102,125,126,127,110,124,123,199,109,122,121,101,100",
        --version_min="1.9.0", --版本号限制 
               fixnum=6, 
                    },

{ 
        cd=86400,  --强弹间隔 
        id=120,        --唯一标识 
        start_time = '2022-01-21 20:00:01',        --展示时间 
        end_time = '2022-01-21 23:29:59', 
        pic_url="https://image.mini1.cn/d/20220120/12560adefe602682a2c084c69cc2531c.png",        --图片展示 
                action=32, 
                --action_url = "https://v.douyin.com/LJys8fR/?openBrowser=1",        --跳转地址 
	--apiids_no ="52,58,12,7,8,17,18,19,55,45,69,21,116,129,128,113,112,102,125,126,127,110,124,123,199,109,122,121,101,100",
        --version_min="1.9.0", --版本号限制 
               fixnum=6, 
                    },


--开发者
{ 
        cd=86400,  --强弹间隔 
        id=121,        --唯一标识 
        start_time = '2022-01-21 18:30:01',        --展示时间 
        end_time = '2022-01-21 19:29:59', 
        pic_url="https://image.mini1.cn/d/20220121/149549cc9f3d1b33b519c947a873d700.png",        --图片展示 
                action=99, 
                action_url = "https://v.douyin.com/LdVkrR4/?openBrowser=1",        --跳转地址 
		apiids_no ="52,13,36,7,12,21",
        --version_min="1.9.0", --版本号限制 
               fixnum=6, 
                    },


{ 
        cd=86400,  --强弹间隔 
        id=122,        --唯一标识 
        start_time = '2022-01-22 00:00:01',        --展示时间 
        end_time = '2022-01-22 23:29:59', 
        pic_url="https://image.mini1.cn/d/20220119/5bc7cdbf5ae2b43fd3014fe1199437d2.png",        --图片展示 
                action=70, 
                --action_url = "https://v.douyin.com/LJys8fR/?openBrowser=1",        --跳转地址 
	--apiids_no ="52,58,12,7,8,17,18,19,55,45,69,21,116,129,128,113,112,102,125,126,127,110,124,123,199,109,122,121,101,100",
        version_min="1.9.0", --版本号限制 
               fixnum=6, 
                    },


{ 
        cd=86400,  --强弹间隔 
        id=123,        --唯一标识 
        start_time = '2022-01-23 00:00:01',        --展示时间 
        end_time = '2022-01-23 23:29:59', 
        pic_url="https://image.mini1.cn/d/20220121/290410e0034726b4534e6021912dcae5.png",        --图片展示 
                action=99, 
                action_url = "s4_https://sso.mini1.cn/#/transit?url=https%3A%2F%2Fh5.mini1.cn%2Fact%2Fc5m%2Fspring-lottery%2F&openBrowser=3&portrait=2",        --跳转地址 
	--apiids_no ="52,58,12,7,8,17,18,19,55,45,69,21,116,129,128,113,112,102,125,126,127,110,124,123,199,109,122,121,101,100",
        version_min="1.9.0", --版本号限制 
               fixnum=6, 
                    },

{ 
        cd=86400,  --强弹间隔 
        id=124,        --唯一标识 
        start_time = '2022-01-24 00:00:01',        --展示时间 
        end_time = '2022-01-24 23:29:59', 
        pic_url="https://image.mini1.cn/d/20220124/ca49cdb6a63757133548ab2a9beddf69.png",        --图片展示 
                action=99, 
                action_url = "s4_https://sso.mini1.cn/ssourl/#/transit?url=https://zmsjzds.mini1.cn/home/&portrait=1",        --跳转地址 
		apiids_no ="52,21",
        version_min="1.9.0", --版本号限制 
               fixnum=6, 
                    },

{ 
        cd=86400,  --强弹间隔 
        id=125,        --唯一标识 
        start_time = '2022-01-26 00:00:01',        --展示时间 
        end_time = '2022-01-26 23:29:59', 
        pic_url="https://image.mini1.cn/d/20220126/d19f279e0c04b9129ba2f154b21679bd.png",        --图片展示 
                action=99, 
                action_url = "s4_https://sso.mini1.cn/#/transit?url=https%3A%2F%2Fh5.mini1.cn%2Fact%2Fc5m%2Fholiday-collection%2F%23%2Fhome&openBrowser=3&portrait=2",        --跳转地址 
		--apiids_no ="52,21",
        version_min="1.9.0", --版本号限制 
               fixnum=6, 
                    },

{ 
        cd=86400,  --强弹间隔 
        id=126,        --唯一标识 
        start_time = '2022-01-27 00:00:01',        --展示时间 
        end_time = '2022-01-27 23:29:59', 
        pic_url="https://image.mini1.cn/d/20220119/5bc7cdbf5ae2b43fd3014fe1199437d2.png",        --图片展示 
                action=70, 
                --action_url = "https://v.douyin.com/LJys8fR/?openBrowser=1",        --跳转地址 
	--apiids_no ="52,58,12,7,8,17,18,19,55,45,69,21,116,129,128,113,112,102,125,126,127,110,124,123,199,109,122,121,101,100",
        version_min="1.9.0", --版本号限制 
               fixnum=6, 
                    },

{ 
        cd=86400,  --强弹间隔 
        id=127,        --唯一标识 
        start_time = '2022-01-28 00:00:01',        --展示时间 
        end_time = '2022-01-28 23:29:59', 
        pic_url="https://image.mini1.cn/d/20211117/0adaa57e0dcc1466edcd8996b338557b.png",        --图片展示 
                action=32, 
                --action_url = "https://v.douyin.com/LJys8fR/?openBrowser=1",        --跳转地址 
	--apiids_no ="52,58,12,7,8,17,18,19,55,45,69,21,116,129,128,113,112,102,125,126,127,110,124,123,199,109,122,121,101,100",
        version_min="1.9.0", --版本号限制 
               fixnum=6, 
                    },




--虎年礼包
{ 
        cd=86400,  --强弹间隔 
        id=128,        --唯一标识 
        start_time = '2022-01-29 00:00:01',        --展示时间 
        end_time = '2022-01-29 23:29:59', 
        pic_url="https://image.mini1.cn/d/20220126/9b2280560d938411067041896829ef05.png",        --图片展示 
                action=99, 
                action_url = "s4_https://sso.mini1.cn/#/transit?url=https%3A%2F%2Fh5.mini1.cn%2Fact%2Fc5m%2Fsale-bag-skin%2F&openBrowser=3&portrait=2",        --跳转地址 
		--apiids_no ="52,21",
        version_min="1.9.0", --版本号限制 
               fixnum=6, 
                    },

--悦享卡
{ 
        cd=86400,  --强弹间隔 
        id=129,        --唯一标识 
        start_time = '2022-01-30 00:00:01',        --展示时间 
        end_time = '2022-01-30 23:29:59', 
        pic_url="ttps://image.mini1.cn/d/20220128/df0dbbd0af82b010faf93b0f3387e254.png",        --图片展示 
                action=35, 
                --action_url = "s4_https://sso.mini1.cn/#/transit?url=https%3A%2F%2Fh5.mini1.cn%2Fact%2Fc5m%2Fsale-bag-skin%2F&openBrowser=3&portrait=2",        --跳转地址 
		--apiids_no ="52,21",
        version_min="1.9.0", --版本号限制 
               fixnum=6, 
                    },

--大唐中国年
{ 
        cd=86400,  --强弹间隔 
        id=130,        --唯一标识 
        start_time = '2022-01-31 00:00:01',        --展示时间 
        end_time = '2022-01-31 19:59:59', 
        pic_url="https://image.mini1.cn/d/20220119/5bc7cdbf5ae2b43fd3014fe1199437d2.png",        --图片展示 
                action=70, 
                --action_url = "s4_https://sso.mini1.cn/#/transit?url=https%3A%2F%2Fh5.mini1.cn%2Fact%2Fc5m%2Fsale-bag-skin%2F&openBrowser=3&portrait=2",        --跳转地址 
		--apiids_no ="52,21",
        version_min="1.9.0", --版本号限制 
               fixnum=6, 
                    },

--财神
{ 
        cd=86400,  --强弹间隔 
        id=131,        --唯一标识 
        start_time = '2022-01-31 20:00:01',        --展示时间 
        end_time = '2022-01-31 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220120/cd699220b3d677772f7d54ba770e1058.png",        --图片展示 
                action=69, 
                --action_url = "s4_https://sso.mini1.cn/#/transit?url=https%3A%2F%2Fh5.mini1.cn%2Fact%2Fc5m%2Fsale-bag-skin%2F&openBrowser=3&portrait=2",        --跳转地址 
		--apiids_no ="52,21",
        version_min="1.9.0", --版本号限制 
               fixnum=6, 
                    },

--芙洛丝
{ 
        cd=86400,  --强弹间隔 
        id=132,        --唯一标识 
        start_time = '2022-02-01 00:00:01',        --展示时间 
        end_time = '2022-02-01 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220127/cf033d72949ba252cd3f0abdae4f33ee.png",        --图片展示 
                action=2, 
                --action_url = "s4_https://sso.mini1.cn/#/transit?url=https%3A%2F%2Fh5.mini1.cn%2Fact%2Fc5m%2Fsale-bag-skin%2F&openBrowser=3&portrait=2",        --跳转地址 
		--apiids_no ="52,21",
        version_min="1.9.0", --版本号限制 
               fixnum=6, 
                    },

--狗坐骑
{ 
        cd=86400,  --强弹间隔 
        id=133,        --唯一标识 
        start_time = '2022-02-02 00:00:01',        --展示时间 
        end_time = '2022-02-02 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220126/7cdd051a95e211055e21a6bb986c0af2.png",        --图片展示 
                action=33, 
                --action_url = "s4_https://sso.mini1.cn/#/transit?url=https%3A%2F%2Fh5.mini1.cn%2Fact%2Fc5m%2Fsale-bag-skin%2F&openBrowser=3&portrait=2",        --跳转地址 
		--apiids_no ="52,21",
apiids="1,2,3,7,11,12,13,15,18,19,21,28,29,32,34,36,39,45,55,56,57,58,60,62,63,64,65,66,68,69,70,71,72,73,74,75,76,77,78,79,80,82,83,92,93,94,10,49,50,96,999",
        version_min="1.9.0", --版本号限制 
               fixnum=6, 
                    },

--大唐中国年
{ 
        cd=86400,  --强弹间隔 
        id=134,        --唯一标识 
        start_time = '2022-02-03 00:00:01',        --展示时间 
        end_time = '2022-02-03 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220119/5bc7cdbf5ae2b43fd3014fe1199437d2.png",        --图片展示 
                action=70, 
                --action_url = "s4_https://sso.mini1.cn/#/transit?url=https%3A%2F%2Fh5.mini1.cn%2Fact%2Fc5m%2Fsale-bag-skin%2F&openBrowser=3&portrait=2",        --跳转地址 
		--apiids_no ="52,21",
        version_min="1.9.0", --版本号限制 
               fixnum=6, 
                    },

--会员
{ 
        cd=86400,  --强弹间隔 
        id=135,        --唯一标识 
        start_time = '2022-02-04 00:00:01',        --展示时间 
        end_time = '2022-02-04 15:59:59', 
        pic_url="https://image.mini1.cn/d/20220128/ecc70a149dd7b33c0bed7dfd5ff35306.png",        --图片展示 
                action=99, 
                action_url = "s4_https://sso.mini1.cn/#/transit?url=https%3A%2F%2Fh5.mini1.cn%2Fact%2Fc5m%2Ffestival-member%2F&openBrowser=3&portrait=2",        --跳转地址 
		--apiids_no ="52,21",
        version_min="1.9.0", --版本号限制 
               fixnum=6, 
                    },

--红包封面
{ 
        cd=86400,  --强弹间隔 
        id=135,        --唯一标识 
        start_time = '2022-02-04 16:00:01',        --展示时间 
        end_time = '2022-02-04 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220128/773e7c2c5ee6e5d16a41f5f0dfbcafb6.png",        --图片展示 
                action=23, 
                action_url = "post_id=3120248",        --跳转地址 
		apiids_no ="52,13,36,7,12,21",
        version_min="1.9.0", --版本号限制 
               fixnum=6, 
                    },

--花幽幽
{ 
        cd=86400,  --强弹间隔 
        id=136,        --唯一标识 
        start_time = '2022-02-05 00:00:01',        --展示时间 
        end_time = '2022-02-05 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220126/0ccf5cfaa5d1835cfc5fe1d21c0d3471.png",        --图片展示 
                action=2, 
                --action_url = "post_id=3120248",        --跳转地址 
		apiids_no ="52,13,36,7,12,21",
        version_min="1.9.0", --版本号限制 
               fixnum=6, 
                    },


--编程
{ 
        cd=86400,  --强弹间隔 
        id=137,        --唯一标识 
        start_time = '2022-02-06 00:00:01',        --展示时间 
        end_time = '2022-02-06 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220126/77d5ff9ede3db59625cc77b6b3722399.png",        --图片展示 
                action=99, 
                action_url = "s4_https://course.miniaixue.com/activity?id=hanjia2&fromType=1060&utm_source=%E6%8B%8D%E8%84%B8%E5%BC%B9%E7%AA%97&utm_medium=cpm&utm_term=%E8%BF%B7%E5%B0%8F%E9%85%B7%E7%9A%AE%E8%82%A4&utm_content=%E5%AE%8C%E6%88%90%E6%8C%91%E6%88%98%E9%80%81%E6%B0%B8%E4%B9%85%E7%9A%AE%E8%82%A4&utm_campaign=20220206-%E5%AF%92%E5%81%87%E5%BC%95%E6%B5%81-%E8%BF%B7%E4%BD%A0%E4%B8%96%E7%95%8C-%E6%8B%8D%E8%84%B8%E5%BC%B9%E7%AA%97-%E6%8C%91%E6%88%98%E9%80%81%E7%9A%AE%E8%82%A4-1060&_channel_track_key=sIE5eEyV&openBrowser=1&portrait=1",        --跳转地址 
		apiids_no ="52,21,116,129,128,113,112,102,125,126,127,110,124,123,199,109,122,121,101,100",
        --version_min="1.9.0", --版本号限制 
               fixnum=6, 
                    },

--免流量
{ 
        cd=86400,  --强弹间隔 
        id=138,        --唯一标识 
        start_time = '2022-02-16 00:00:00',        --展示时间 
        end_time = '2022-02-16 23:59:59', 
        pic_url="https://image.mini1.cn/d/20211231/54c379f2b64a40481f5a99728911cdfc.png",        --图片展示 
                action=99, 
                action_url = "s4_https://h5.mini1.cn/p/free-flow/?portrait=1",        --跳转地址 
		apiids_no ="52,21,116,129,128,113,112,102,125,126,127,110,124,123,199,109,122,121,101,100",
        --version_min="1.2.5", --版本号限制 
               fixnum=5, 
                    },


--ip
{ 
        cd=86400,  --强弹间隔 
        id=139,        --唯一标识 
        start_time = '2022-02-08 00:00:00',        --展示时间 
        end_time = '2022-02-08 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220208/e9df72ee5a847dceccbd29be19756d7b.png",        --图片展示 
                action=99, 
                action_url = "https://mall.miniworldstory.com/?openBrowser=1",        --跳转地址 
		apiids_no ="52,21,116,129,128,113,112,102,125,126,127,110,124,123,199,109,122,121,101,100",
        --version_min="1.2.5", --版本号限制 
               fixnum=5, 
                    },


--悠妮
{ 
        cd=86400,  --强弹间隔 
        id=140,        --唯一标识 
        start_time = '2022-02-10 00:00:01',        --展示时间 
        end_time = '2022-02-10 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220210/33e81450c8f771ad4c4932217055d43f.png",        --图片展示 
                action=2, 
                --action_url = "post_id=3120248",        --跳转地址 
		--apiids_no ="52,13,36,7,12,21",
        version_min="1.9.0", --版本号限制 
               fixnum=6, 
                    },


--冬季赛
{ 
        cd=86400,  --强弹间隔 
        id=141,        --唯一标识 
        start_time = '2022-02-11 00:00:01',        --展示时间 
        end_time = '2022-02-11 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220124/ca49cdb6a63757133548ab2a9beddf69.png",        --图片展示 
                action=99, 
                action_url = "s4_https://sso.mini1.cn/ssourl/#/transit?url=https://zmsjzds.mini1.cn/home/&portrait=1",        --跳转地址 
		apiids_no ="52,21",
        --version_min="1.9.0", --版本号限制 
               fixnum=6, 
                    },




--大唐中国年
{ 
        cd=86400,  --强弹间隔 
        id=142,        --唯一标识 
        start_time = '2022-02-12 00:00:01',        --展示时间 
        end_time = '2022-02-12 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220119/5bc7cdbf5ae2b43fd3014fe1199437d2.png",        --图片展示 
                action=70, 
                --action_url = "s4_https://sso.mini1.cn/#/transit?url=https%3A%2F%2Fh5.mini1.cn%2Fact%2Fc5m%2Fsale-bag-skin%2F&openBrowser=3&portrait=2",        --跳转地址 
		--apiids_no ="52,21",
        version_min="1.9.0", --版本号限制 
               fixnum=6, 
                    },


--狗坐骑
{ 
        cd=86400,  --强弹间隔 
        id=143,        --唯一标识 
        start_time = '2022-02-13 00:00:01',        --展示时间 
        end_time = '2022-02-13 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220126/7cdd051a95e211055e21a6bb986c0af2.png",        --图片展示 
                action=33, 
                --action_url = "s4_https://sso.mini1.cn/#/transit?url=https%3A%2F%2Fh5.mini1.cn%2Fact%2Fc5m%2Fsale-bag-skin%2F&openBrowser=3&portrait=2",        --跳转地址 
		--apiids_no ="52,21",
apiids="1,2,3,7,11,12,13,15,18,19,21,28,29,32,34,36,39,45,55,56,57,58,60,62,63,64,65,66,68,69,70,71,72,73,74,75,76,77,78,79,80,82,83,92,93,94,10,49,50,96,999",
        version_min="1.9.0", --版本号限制 
               fixnum=6, 
                    },



--花小楼新歌
{ 
        cd=86400,  --强弹间隔 
        id=144,        --唯一标识 
        start_time = '2022-02-14 00:00:00',        --展示时间 
        end_time = '2022-02-14 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220214/6acd3185bf42e17e6da1a0f08ee92bc6.png",        --图片展示 
                action=99, 
                action_url = "https://y.qq.com/jzt/a495f7/fb64de.html?jztid=6958&ADTAG=kolhz_mnsj&channelId=2005000234&openBrowser=1",        --跳转地址 
		apiids_no ="52,21,36,7,116,129,128,113,112,102,125,126,127,110,124,123,199,109,122,121,101,100",
        --version_min="1.2.5", --版本号限制 
               fixnum=6, 
                    },


--匹诺曹
{ 
        cd=86400,  --强弹间隔 
        id=145,        --唯一标识 
        start_time = '2022-02-18 00:00:01',        --展示时间 
        end_time = '2022-02-18 17:59:59', 
        pic_url="https://image.mini1.cn/d/20220218/3b7a5aff241da8eb8f4f1c2ba8f03815.png",        --图片展示 
                action=32, 
                --action_url = "post_id=3120248",        --跳转地址 
		--apiids_no ="52,13,36,7,12,21",
        version_min="1.9.0", --版本号限制 
               fixnum=6, 
                    },


--花小楼新专辑
{ 
        cd=86400,  --强弹间隔 
        id=146,        --唯一标识 
        start_time = '2022-02-18 18:00:00',        --展示时间 
        end_time = '2022-02-18 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220218/f80ad1166dbccaf7323eb091e66488f5.png",        --图片展示 
                action=99, 
                action_url = "https://hd.huya.com/huyaDIYzt/21465/mobile/index.html?openBrowser=1",        --跳转地址 
		apiids_no ="52,21,36,7,116,129,128,113,112,102,125,126,127,110,124,123,199,109,122,121,101,100",
        --version_min="1.2.5", --版本号限制 
               fixnum=6, 
                    },


--编程
{ 
        cd=86400,  --强弹间隔 
        id=147,        --唯一标识 
        start_time = '2022-02-19 00:00:01',        --展示时间 
        end_time = '2022-02-19 23:59:59', 
        pic_url="https://image.mini1.cn/d/20220218/4e409800e5c81dade9951cdd497bf80f.png",        --图片展示 
                action=99, 
                action_url = "s4_https://course.miniaixue.com/activity?id=hanjia2&fromType=1060&utm_source=%E6%8B%8D%E8%84%B8%E5%BC%B9%E7%AA%97&utm_medium=cpm&utm_term=%E9%97%AF%E5%85%B3%E9%80%81%E7%9A%AE%E8%82%A4&utm_content=%E5%92%8C%E8%BF%B7%E5%B0%8F%E9%85%B7%E4%B8%80%E8%B5%B7%E5%81%9A%E5%86%A0%E5%86%9B%E9%80%81%E7%9A%AE%E8%82%A4&utm_campaign=20220219-%E5%AF%92%E5%81%87%E5%BC%95%E6%B5%81-%E8%BF%B7%E4%BD%A0%E4%B8%96%E7%95%8C-%E7%B2%BE%E9%80%89%E8%B5%84%E8%AE%AFbanner-%E5%86%A0%E5%86%9B%E9%80%81%E7%9A%AE%E8%82%A4-1060&_channel_track_key=Lp2yQp8N&openBrowser=1&portrait=1",        --跳转地址 
		apiids_no ="52,21,116,129,128,113,112,102,125,126,127,110,124,123,199,109,122,121,101,100",
        --version_min="1.9.0", --版本号限制 
               fixnum=6, 
                    },



--免流量
{ 
        cd=86400,  --强弹间隔 
        id=148,        --唯一标识 
        start_time = '2022-02-25 00:00:00',        --展示时间 
        end_time = '2022-03-10 23:59:59', 
        pic_url="https://image.mini1.cn/d/20211231/54c379f2b64a40481f5a99728911cdfc.png",        --图片展示 
                action=99, 
                action_url = "s4_https://h5.mini1.cn/p/free-flow/?portrait=1",        --跳转地址 
		apiids_no ="52,21,12,116,129,128,113,112,102,125,126,127,110,124,123,199,109,122,121,101,100",
        --version_min="1.2.5", --版本号限制 
               fixnum=5, 
                    },


},





--------------------------------------------------------------------------------------------
    patch = {
        {
            ver_list = "0.37.10",
            apiids = "45",
            url="http://map1.mini1.cn/map/1/patch/0.37.10/",
            fn="d6b2103451b2c4f1a160033c2deeca54",
            down_type = 0,   -- 0=偷偷下载  1=提示下载
            info_type = 0,   -- 0=不提示    1=提示重启  2=锁UI 强制重启
        },
    },


    achieve = {
        url = "http://203.195.149.58:8080",  --成就开关
        --apiids = "1,101,126",
    },

    skinIDList = {51,48,47,21,42,37,29,24,23,46},

    gchat = { version_min = "0.43.5", apiids_no="9999" },  --群组聊天开关
   

    upload_limit = {
        tree_level = 0,
        acc_create_day = 0,
        apiids_no = '9999',
    },	---上传地图限制

    


    skinIDJumpUrlist =
    {
        --需要跳转外部网页的id

        --[46]={ url="https://m.ixigua.com/video/app/user/home/?to_user_id=101242464610&format=html&utm_source=mini&utm_medium=mini_referral&utm_campaign=minishijie?openBrowser=1" },
        --[24]={ url="https://m.ixigua.com/video/app/user/home/?to_user_id=101242464610&format=html&utm_source=mini&utm_medium=mini_referral&utm_campaign=minishijie?openBrowser=1" },
        --[20]={ url="https://m.ixigua.com/video/app/user/home/?to_user_id=101242464610&format=html&utm_source=mini&utm_medium=mini_referral&utm_campaign=minishijie?openBrowser=1" },
         --[191] = { url = "https://www.ixigua.com/7055626703988752899" },

        --	     apiids = "999",
        --       apiids_no = '1',

    },


    btn = {
        community = 1,
    },

    http_error_report = {
        upload   = { rate = 100 },
        download = { rate = 10 },
        download_ok = { rate = 10 },
    },

    qqvip={
       open=1,--1开启，0关闭
       action_url="https://act.qzone.qq.com/vip/meteor/blockly/p/6288x986e7",--配置跳转链接
       red_mark={--配置开启,不配置默认不显示红点
                cd=86400,--刷新间隔,以秒为单位
                count=1,--周期内红点展示次数
               
         },
      },

    shequ = {
        url_mb2 = 'https://minichat.mini1.cn/share/communityEntrance.html?portrait=1&openBrowser=3',
        url_pc2 = 'https://minichat.mini1.cn/share/communityEntrance.html?portrait=1&openBrowser=3',
        --apiids_no = '21,132,131,130,991,28,59,119,992,58,57,56,55,114,97,96,95,118,117,299,94,93,92,88,84,83,82,116,81,54,80,91,129,87,79,402,128,78,77,90,113,112,410,102,76,89,86,85,125,126,127,110,75,63,66,67,68,70,72,73,303,62,74,71,64,65,124,69,345,24,22,61,302,60,123,399,199,51,52,99,53,109,122,121,999,200,101,100,50,49,47,45,44,43,42,41,40,39,38,37,36,35,34,33,32,30,29,20,19,18,17,16,15,14,12,11,10,9,8,6,4,2,1,9999,5,7,31,13,3',
apiids_no="60,58,97,21,52,36,28",
--apiids ="1,110,69,96,92,94,65,74,80,112,50,67,78,71,113,84,95,73,82,70,83,77,90,49,10",
    },


    match = {
        url_mb = 's4_https://sso.mini1.cn/ssourl/#/transit?url=https%3A%2F%2Fwss.mini1.cn%2F&openBrowser=3&portrait=1',
        url_pc = 's4_https://sso.mini1.cn/ssourl/#/transit?url=https%3A%2F%2Fwss.mini1.cn%2F&openBrowser=3',
        mb_ver = 20190103,   --移动版本
        pc_ver = 20190103,   --pc版本
        apiids_no = '9999,21,7,36,60',
    },

    red_marks = {    --游戏左下按钮红点提示

        shequ = {
            mb_ver = 20220117,   --移动版本
            pc_ver = 20220117,   --pc版本
            cd = 8640000, --每600秒一个周期
            count = 0, --周期内显示3次

        }, --社区

        match = {
            mb_ver = 20211217,   --移动版本
            pc_ver = 20211217,   --pc版本
            --apiids = "999",
            cd = 8640000,   --每600秒一个周期
            count=1,    --周期内显示3次

        },    --赛事

        subsp = {
            ver = 20230121,
            cd = 8640000,   --每600秒一个周期
            count= 1,    --周期内显示3次
        },    --订阅


    },


    play_map_report_url = "http://shequ.mini1.cn:8080",
    proxy_url = "http://shequ.mini1.cn:8087",

    first_page_cache_time = 600,

    alert_no_pass = {
        apiids = '1,2,3,4,5,6,8,9,10,11,13,14,16,17,18,19,20,29,30,31,32,33,34,35,37,38,39,40,41,42,43,44,49,50,51,60,61,64,65,69,71,74,62,70,72,73,63,66,67,68,75,22,24,53,200,99,45',
    },--设置密码的弹窗

        inside_game = {
            --对内分享
            title = '每日分享',
            content =  '暑期嘉年华，欢乐无极限。各种精彩活动等着你来参与！',
            pic_url = 'https://image.mini1.cn/c/20200828/sq190626.png',
            action = 99,
            action_url = 'https://activity.mini1.cn/activity_share/20190627/',
        },

        outer_game = {
            --对外分享
            title = '迷你世界QQ版',
            content = '与QQ好友一起畅玩沙盒世界',
            pic_url = 'https://image.mini1.cn/c/20200907/7f60b2ede67db9ae56b7851342eff78d.png',
            action = 99,
            action_url = 'https://youxi.vip.qq.com/m/act/c2feb51aff_mini1_551360.html?_wv=1&_wwv=4',
        },




    priority_jump = {
        apiids = '21',
        version_min = '0.37.0',
        version_max = '0.99.0',
        [21] = "https://imgcache.qq.com/club/themes/mobile/middle_page/index.html?url=https%3A%2F%2Fqzs.qq.com%2Fopen%2Fmobile%2Ftransfer-page%2Findex.html%3Fid%3D3%26dest%3Dtmast%253A%252F%252Fappdetails%253Fselflink%253D1%2526appid%253D42286397%2526extradata%253Dscene%253Aplayingcard%26via%3DFBI.ACT.H5.TRANSFER3_MARKET_YINGYONGBAO_COM.TENCENT.ANDROID.QQDOWNLOADER_5848_QDTQ",
    },

    forum_jump = {
        apiids = '21',
        version_min = '0.37.0',
        version_max = '0.37.0',
        [21] = "https://imgcache.qq.com/club/themes/mobile/middle_page/index.html?url=https%3A%2F%2Fqzs.qq.com%2Fopen%2Fmobile%2Ftransfer-page%2Findex.html%3Fid%3D88%26dest%3Dhttps%253A%252F%252Fqzs.qq.com%252Fopen%252Fbaymax%252F16%252F11116_2ffdad27caa713cbd2f66c7e13b9bbe3_0.html%26via%3DFBI.ACT.H5.TRANSFER88_MARKET_YINGYONGBAO_COM.TENCENT.ANDROID.QQDOWNLOADER_5848_MNSJ",
    },

    zhibo_btn   = {    --直播按钮开关
        --apiids_no = '52,32,13,6,7,999,2,129,36,109,101,102,122,124,125,121,123,127,126,110,100,128',
        apiids = '9999',
        url_mb  = 's4_http://live.mini1.cn?openBrowser=2&portrait=2',
    },

        devcenter_btn = { -- 创作中心按钮
        --apiids = "1,110,999",
        apiids_no="",
        version_min = '1.12.0',
    },

	raceSystemCfg = {
	    url = "http://159.75.243.39:3071/"
    },

    AR_show_pic         = { apiids_no = '9999',	},   --AR图片是否展示
    ARControl_lobby     = {	apiids = '9999',	},
    ARControl_store     = {	apiids_no = '9999',	},
    ARControl_store_pc  = {	apiids_no = '9999',	},
    ARControl_store_mb  = {	apiids_no = '9999',	},

    ARControl_switch_bg = {	apiids = '9999', },             --实时切背景
    ARControl_close_mobile_type = {'aabb', 'bbcc', 'ccdd' },   --禁止AR列表
    AR_pic_url = 'https://mnxgc.mini1.cn/v2/',   --AR跳转url
    AR_wiki_url = 'https://mnxgc.mini1.cn/v2/', --引导url

    AR_place_pc = {	apiids_no = '9999',	},  --AR坑位pc
    AR_place_mb = {	apiids_no = '9999',	},  --AR坑位移动

    qq_hall_btn = {
        apiids       = '101',
        start_time   = '2019-07-29 00:00:00',
        end_time     = '2019-08-29 23:59:59',
        url          = 'http://act.qqgame.qq.com/a20190704dwk/index_p.html?openBrowser=1',
    },


    creator_buy_inside = {
        apiids_no = '9999',   --开发者商城内购
    },

    creator_buy_config = {
		passcard_level = 4,
        apiids_no = '9999',   --开发者商城设置
    },

	creator_remind = {                --开发者提示
        url = "http://www.mini1.cn", --外链
    },

	--工作室客户端开关, 默认开启
    work_space = {
		version_min = '1.1.5',  -- 最低版本
	    open = 1, -- 1 打开 0 关闭
uin_linst='918243081,918242726,925830542,925828591,925830166,918240016,918251700,923432019,926448193,936982720,916545719,936158286,916426582,916420115,936982100,916550058,936991200,1592072730',
        --apiids = '1,13,110,2,121,47,58,45,7,36,12,8',
    },

    show_fps = {
        apiids_no = '9999',
    },

    statisticByWorld = {
        apiids_no = '9999',
    },

    experter_push_map= {
        apiids_no = '9999',
    },

    posting_btn  = { apiids_no = '9999', },  --动态按钮打开
    posting_pic  = { super_uin_list="1000,1103,1101,1102,1109,2315,540640612,611535474", apiids='9999' },  --动态可传图

	 --可发布gif,跳转
	posting_link = { super_uin_list="1000,1103,1101,1102,1109,2315,540640612,611535474,1344179371", apiids='9999' },

    open_tips = { apiids_no='9999' },

    share_game_invite_link = {
        url = "https://activity.mini1.cn/joinGameRoom/",    --好友分享快速进入游戏
        apiids_no = '9999',
    },

--迷你队长账户1000的菜单栏
    new_player_wiki = {
        url = "https://www.mini1.cn/xszl?portrait=1", --新手资料
        apiids_no = '21,5,13,54,36,7,3,2,121,129,52,',
    },


    scene_fallback = { apiids_no = '9999', },   --编辑场景还原

    open_word_search = { apiids_no = '9999', },   --文字搜索功能开关

    skinlist = {
        {
            id = 2,
            skinname = 'bulitin2',
            desc = '21751',
            downloadurl = '',
            savepath = "bulitin:ui/mobile/texture2/",
            md5 = '',
            active = true, ---当前是不是使用
            enable = true, ---当前皮肤是不是有效
        },
        {
            id = 3,
            skinname = 'networkskin3',
            desc = '21752',
            downloadurl = 'http://map1.mini1.cn/map/1/skins/ui3.zip',
            downloadurl2 = 'http://map1.mini1.cn/map/1/skins/ui3_18.zip',
            savepath = "networkskin:data/http/skins/networkskin3.zip",
            md5 = '967298478d65f1d16e104c996a71389f',
            md52 = '397f721e48434b7d9d569d174ca72ecd',
            size = 8,
            active = false,
            enable = true,
        },
        {
            id = 4,
            skinname = 'networkskin4',
            desc = '21753',
            downloadurl = 'http://map1.mini1.cn/map/1/skins/ui4.zip',
            downloadurl2 = 'http://map1.mini1.cn/map/1/skins/ui4_18.zip',
            savepath = "networkskin:data/http/skins/networkskin4.zip",
            md5 = '07818c4c9b82062e967f0a08930c84ab',
            md52 = '73b53a852a551228a1c3d42288b01bf8',
            size = 8,
            active = false,
            enable = true,
        },
    },

    outer_shop = {
        url = "https://minishijie.tmall.com/shop/view_shop.htm?zbsc&openBrowser=1",
        apiids_no = "9999,52,8,17,55,18,19,15,126,87,59,28,7,12,58,52,13,21,96,3,34,36",
    },

    --迷你抽盒机开关
		mini_lottery = {
			pc_links = 
			{
				{
					apiids_list = {110,100,101,200,121,122,109,199,123,124,127,126,125,102,112,113,128,129,116,117,118,114,119},
					url = "s4_https://mall.miniworldstory.com/?portrait=2&openBrowser=3",
					isBroswerUrl = false
				},
			},
			mobile_links = 
			{
				{
					apiids_list = {999},
					url = "s4_https://mall.miniworldstory.com/?portrait=1&openBrowser=3",
					isBroswerUrl = false
				},
					{
					apiids_list = {1,2,4,5,6,8,9,10,11,14,15,16,17,18,19,20,29,30,31,32,33,35,37,38,39,40,41,42,43,44,47,49,50,53,51,60,61,22,24,69,65,64,71,74,62,73,72,70,68,67,66,63,75,85,86,89,76,90,77,78,79,87,91,80,54,81,82,83,84,88,92,93,94,95,97,55,56,57,59,28},
					url = "s4_https://mall.miniworldstory.com/?portrait=1&openBrowser=3",
					isBroswerUrl = false
				},
			},
			
			apiids_no = "7,13,36,99,399,302,345,303,410,402,299,992,991,58,21,96,999999,45,99999,3,34,12",
		},


	-- 万人号+买卖账号
	multi_user = {
	   switch=1, --0代表关闭，1代表打开

       times=80,--代表异常次数
      
		apiids_no='9999,60,999,',--代表修改密码上线渠道
	},

	-------------地图标签------------
    active_maptag = {
    },

    ------------关闭上传界面的话题选中----
    close_shareTopicSelect = true,
	close_share_TagSelect = false,

	--右上角主页面活动入口

    --正式环境！

	action_conf=
	{
{
                -- 家园果实
                id=6,
                icon = 'https://image.mini1.cn/c/20210125/5476faf7cf37c4a4d208adfb9020929a.png',
                nameid = 41158,
				start_time='2023-01-29 15:00:00',
			    end_time='2024-01-29 23:59:00',
				--apiids = "110",
				version_min = "0.52.0",
				cd=86400,
				check_size='24.47',
        },





    	{
                -- 实名认证
                id=5,
                icon = 'https://image.mini1.cn/c/20200807/4483c79f6f57e37a9bd54d4e8702074e.png',
				start_time='2020-08-19 00:00:00',
			    end_time='2022-12-30 23:59:59',
                nameid = 32526,
                apiids_no = "2,121,5,7,12,36,31,9999,1,999,12,132,131,130,991,28,59,119,992,58,57,56,55,114,52,97,96,95,118,117,299,94,93,92,88,84,83,82,116,81,54,80,91,129,87,79,402,128,78,77,90,113,112,410,102,76,89,86,85,125,126,127,110,75,63,65,66,67,68,69,70,72,73,303,62,74,71,64,65,124,69,345,24,22,61,302,60,123,399,199,51,99,53,109,122,121,999,200,101,100,50,49,47,45,44,43,42,41,40,39,38,37,36,35,34,33,32,30,29,20,19,18,17,16,15,14,13,12,11,10,9,8,6,4,2,1,5,7,31,13,21,3",  
        },


		
	},


revive = {
     ad_id = 2,                      --广告位id
     version_min = "0.53.5",           --最低版本号
     apiids ="1,2,3,7,11,12,13,15,18,19,21,28,29,32,33,34,36,39,45,55,56,58,60,62,63,64,65,66,68,69,70,71,72,73,74,75,76,77,78,79,80,82,83,92,93,94,10,49,50,96,999",      --防止没有广告的渠道
     revive_probability = 1,       --复活按钮出现概率,填1为百分百出现，填0为不出现
     stringid_t = "按钮文案标题",       --按钮文字描述
     stringid_n = "按钮文案内容",       --奖励悬浮窗描述
     reward1={ --第一套奖励
     day_min=0, --生存数区间
     day_max=10,
     item1 = {11004,1,0.01},--item={道具ID，数量，概率}
     item2 = {11014,1,0.01},
     item3 = {11024,1,0.01},
     item4 = {11034,1,0.01},
     item5 = {12231,1,0.02},
     item6 = {12232,1,0.02},
     item7 = {12233,1,0.02},
     item8 = {12234,1,0.02},
     item9 = {11001,1,0.02},
     item10 = {11002,1,0.02},
     item11 = {11003,1,0.02},
     item12 = {11011,1,0.02},
     item13 = {11012,1,0.02},
     item14 = {11013,1,0.02},
     item15 = {11021,1,0.02},
     item16 = {11022,1,0.02},
     item17 = {11023,1,0.02},
     item18 = {11031,1,0.02},
     item19 = {11032,1,0.02},
     item20 = {11033,1,0.02},
     item21 = {11580,1,0.01},
     item22 = {12001,1,0.01},
     item23 = {12002,1,0.01},
     item24 = {12003,1,0.01},
     item25 = {12004,1,0.01},
     item26 = {12050,1,0.01},
     item27 = {12051,1,0.01},
     item28 = {12201,1,0.01},
     item29 = {12202,1,0.01},
     item30 = {12203,1,0.01},
     item31 = {12204,1,0.01},
     item32 = {12205,1,0.01},
     item33 = {12225,1,0.01},
     item34 = {12211,1,0.01},
     item35 = {12212,1,0.01},
     item36 = {12213,1,0.01},
     item37 = {12214,1,0.01},
     item38 = {12221,1,0.01},
     item39 = {12222,1,0.01},
     item40 = {12223,1,0.01},
     item41 = {12224,1,0.01},
     item42 = {12498,1,0.01},
     item43 = {12501,1,0.01},
     item44 = {12502,1,0.01},
     item45 = {12503,1,0.01},
     item46 = {12504,1,0.01},
     item47 = {12505,1,0.01},
     item48 = {12507,1,0.01},
     item49 = {12508,1,0.01},
     item50 = {12509,1,0.01},
     item51 = {12510,1,0.01},
     item52 = {12511,1,0.01},
     item53 = {12512,1,0.01},
     item54 = {12515,1,0.01},
     item55 = {12517,1,0.01},
     item56 = {12519,1,0.01},
     item57 = {12520,1,0.01},
     item58 = {12521,1,0.01},
     item59 = {12523,1,0.01},
     item60 = {12524,1,0.01},
     item61 = {12525,1,0.01},
     item62 = {12529,1,0.01},
     item63 = {12531,1,0.01},
     item64 = {431,1,0.01},
     item65 = {432,1,0.01},
     item66 = {433,1,0.01},
     item67 = {434,1,0.01},
     item68 = {435,1,0.01},
     item69 = {436,1,0.01},
     item70 = {437,1,0.01},
     item71 = {438,1,0.01},
     item72 = {439,1,0.01},
     item73 = {440,1,0.01},
     item74 = {441,1,0.01},
     item75 = {442,1,0.01},
     item76 = {443,1,0.01},
     item77 = {444,1,0.01},
     item78 = {401,1,0.01},
     item79 = {402,1,0.01},
     item80 = {416,1,0.01},
     item81 = {404,1,0.01},
     item82 = {405,1,0.01},
     item83 = {400,1,0.01},
     },
     reward2={--第二套奖励
     day_min=11,--生存天数
     item1 = {11004,1,0.01},--item={道具ID，数量，概率}
     item2 = {11014,1,0.01},
     item3 = {11024,1,0.01},
     item4 = {11034,1,0.01},
     item5 = {12231,1,0.02},
     item6 = {12232,1,0.02},
     item7 = {12233,1,0.02},
     item8 = {12234,1,0.02},
     item9 = {11001,1,0.02},
     item10 = {11002,1,0.02},
     item11 = {11003,1,0.02},
     item12 = {11011,1,0.02},
     item13 = {11012,1,0.02},
     item14 = {11013,1,0.02},
     item15 = {11021,1,0.02},
     item16 = {11022,1,0.02},
     item17 = {11023,1,0.02},
     item18 = {11031,1,0.02},
     item19 = {11032,1,0.02},
     item20 = {11033,1,0.02},
     item21 = {11580,1,0.01},
     item22 = {12001,1,0.01},
     item23 = {12002,1,0.01},
     item24 = {12003,1,0.01},
     item25 = {12004,1,0.01},
     item26 = {12050,1,0.01},
     item27 = {12051,1,0.01},
     item28 = {12201,1,0.01},
     item29 = {12202,1,0.01},
     item30 = {12203,1,0.01},
     item31 = {12204,1,0.01},
     item32 = {12205,1,0.01},
     item33 = {12225,1,0.01},
     item34 = {12211,1,0.01},
     item35 = {12212,1,0.01},
     item36 = {12213,1,0.01},
     item37 = {12214,1,0.01},
     item38 = {12221,1,0.01},
     item39 = {12222,1,0.01},
     item40 = {12223,1,0.01},
     item41 = {12224,1,0.01},
     item42 = {12498,1,0.01},
     item43 = {12501,1,0.01},
     item44 = {12502,1,0.01},
     item45 = {12503,1,0.01},
     item46 = {12504,1,0.01},
     item47 = {12505,1,0.01},
     item48 = {12507,1,0.01},
     item49 = {12508,1,0.01},
     item50 = {12509,1,0.01},
     item51 = {12510,1,0.01},
     item52 = {12511,1,0.01},
     item53 = {12512,1,0.01},
     item54 = {12515,1,0.01},
     item55 = {12517,1,0.01},
     item56 = {12519,1,0.01},
     item57 = {12520,1,0.01},
     item58 = {12521,1,0.01},
     item59 = {12523,1,0.01},
     item60 = {12524,1,0.01},
     item61 = {12525,1,0.01},
     item62 = {12529,1,0.01},
     item63 = {12531,1,0.01},
     item64 = {431,1,0.01},
     item65 = {432,1,0.01},
     item66 = {433,1,0.01},
     item67 = {434,1,0.01},
     item68 = {435,1,0.01},
     item69 = {436,1,0.01},
     item70 = {437,1,0.01},
     item71 = {438,1,0.01},
     item72 = {439,1,0.01},
     item73 = {440,1,0.01},
     item74 = {441,1,0.01},
     item75 = {442,1,0.01},
     item76 = {443,1,0.01},
     item77 = {444,1,0.01},
     item78 = {401,1,0.01},
     item79 = {402,1,0.01},
     item80 = {416,1,0.01},
     item81 = {404,1,0.01},
     item82 = {405,1,0.01},
     item83 = {400,1,0.01},
     item84 = {11005,1,0.001},
     item85 = {11015,1,0.001},
     item86 = {11016,1,0.001},
     item87 = {11025,1,0.001},
     item88 = {11035,1,0.001},
     item89 = {12005,1,0.001},
     item90 = {12241,1,0.001},
     item91 = {12242,1,0.001},
     item92 = {12243,1,0.001},
     item93 = {12244,1,0.001},
     item94 = {409,1,0.005},
     item95 = {412,1,0.005},
     item96 = {126,1,0.005},

     },

-- 新版复活位广告奖励
    ad_reward_switch = 1,                --新版奖励开关
    ad_reward_daily_limit = 10,          --每日奖励上限
	ad_reward = {
		[1] = {                          --第1套奖励
			day_min = 0,                     --生存数区间
			day_max = 10000,

			--item={道具ID，数量，权重, 下发方式(0=生存背包,1=下发至仓库,2=下发至定制)}
			item   = {
[1]={11004,1,1,0},
[2]={11014,1,1,0},
[3]={11024,1,1,0},
[4]={11034,1,1,0},
[5]={12231,1,2,0},
[6]={12232,1,2,0},
[7]={12233,1,2,0},
[8]={12234,1,2,0},
[9]={11001,1,2,0},
[10]={11002,1,2,0},
[11]={11003,1,2,0},
[12]={11011,1,2,0},
[13]={11012,1,2,0},
[14]={11013,1,2,0},
[15]={11021,1,2,0},
[16]={11022,1,2,0},
[17]={11023,1,2,0},
[18]={11031,1,2,0},
[19]={11032,1,2,0},
[20]={11033,1,2,0},
[21]={11580,1,2,0},
[22]={12001,1,2,0},
[23]={12002,1,2,0},
[24]={12003,1,2,0},
[25]={12004,1,2,0},
[26]={12050,1,2,0},
[27]={12051,1,2,0},
[28]={12201,1,2,0},
[29]={12202,1,2,0},
[30]={12203,1,2,0},
[31]={12204,1,2,0},
[32]={12205,1,2,0},
[33]={12225,1,2,0},
[34]={12211,1,2,0},
[35]={12212,1,2,0},
[36]={12213,1,2,0},
[37]={12214,1,2,0},
[38]={12221,1,2,0},
[39]={12222,1,2,0},
[40]={12223,1,2,0},
[41]={12224,1,2,0},
[42]={12498,1,2,0},
[43]={12501,1,2,0},
[44]={12502,1,2,0},
[45]={12503,1,2,0},
[46]={12504,1,2,0},
[47]={12505,1,2,0},
[48]={12507,1,2,0},
[49]={12508,1,2,0},
[50]={12509,1,2,0},
[51]={12510,1,2,0},
[52]={12511,1,2,0},
[53]={12512,1,2,0},
[54]={12515,1,2,0},
[55]={12517,1,2,0},
[56]={12519,1,2,0},
[57]={12520,1,2,0},
[58]={12521,1,2,0},
[59]={12522,1,2,0},
[60]={12523,1,2,0},
[61]={12524,1,2,0},
[62]={12525,1,2,0},
[63]={12529,1,2,0},
[64]={12531,1,2,0},
[65]={431,1,2,0},
[66]={432,1,2,0},
[67]={433,1,2,0},
[68]={434,1,2,0},
[69]={435,1,2,0},
[70]={436,1,2,0},
[71]={437,1,2,0},
[72]={438,1,2,0},
[73]={439,1,2,0},
[74]={440,1,2,0},
[75]={441,1,2,0},
[76]={442,1,2,0},
[77]={443,1,2,0},
[78]={444,1,2,0},
[79]={401,1,2,0},
[80]={402,1,2,0},
[81]={416,1,2,0},
[82]={404,1,2,0},
[83]={405,1,2,0},
[84]={400,1,2,0},
[85]={20503,1,2,2},
[86]={20504,1,2,2},
[87]={20505,1,2,2},
[88]={20509,1,2,2},
[89]={20510,1,2,2},
[90]={20511,1,2,2},
[91]={20513,1,2,2},
[92]={20514,1,2,2},
[93]={20515,1,2,2},
[94]={20516,1,2,2},
[95]={20517,1,2,2},
[96]={20518,1,2,2},
[97]={20519,1,2,2},
[98]={20520,1,2,2},
[99]={20521,1,2,2},
[100]={20531,1,2,2},
[101]={20533,1,2,2},
[102]={20534,1,2,2},
[103]={20535,1,2,2},
[104]={20536,1,2,2},
[105]={20537,1,2,2},
[106]={20551,1,2,2},
[107]={20553,1,2,2},
[108]={20560,1,2,2},
[109]={20584,1,2,2},
[110]={20589,1,2,2},
[111]={20591,1,2,2},
[112]={20629,1,2,2},
[113]={20630,1,2,2},
[114]={20631,1,2,2},
[115]={20632,1,2,2},
[116]={20633,1,2,2},
[117]={20634,1,2,2},
[118]={20635,1,2,2},
[119]={20636,1,2,2},
[120]={20637,1,2,2},
[121]={20638,1,2,2},
[122]={20639,1,2,2},
[123]={20640,1,2,2},
[124]={20641,1,2,2},
[125]={20642,1,2,2},
[126]={20643,1,2,2},
[127]={20644,1,2,2},
[128]={20645,1,2,2},
[129]={20646,1,2,2},
[130]={20647,1,2,2},
[131]={20648,1,2,2},
[132]={20649,1,2,2},
[133]={20650,1,2,2},
[134]={20651,1,2,2},
[135]={20741,1,2,2},
[136]={20742,1,2,2},
[137]={20743,1,2,2},
[138]={20744,1,2,2},
[139]={20745,1,2,2},
[140]={20746,1,2,2},
[141]={20747,1,2,2},
[142]={20748,1,2,2},
[143]={20749,1,2,2},
[144]={20750,1,2,2},
[145]={20751,1,2,2},
[146]={20752,1,2,2},
[147]={20753,1,2,2},
[148]={20754,1,2,2},
[149]={20788,1,2,2},
[150]={20789,1,2,2},
[151]={20790,1,2,2},
[152]={20791,1,2,2},
[153]={20792,1,2,2},
[154]={20793,1,2,2},
[155]={20794,1,2,2},
[156]={20795,1,2,2},
[157]={20796,1,2,2},
[158]={20797,1,2,2},
[159]={20032,2,2,1},
[160]={20038,2,2,1},
[161]={20036,2,2,1},
[162]={24817,2,2,1},
[163]={24816,2,2,1},
[164]={24810,2,2,1},
[165]={24807,2,2,1},
[166]={20037,2,2,1},
[167]={24803,2,2,1},
			},
		},
	},
	
 },



	
	ar_factory_btn ={apiids_no = '9999,60',},   --星工场
	ar_drawing_btn ={apiids_no = '9999',},   --星装备
	ar_motion_btn  ={apiids_no = '9999',},   --星舞动
	ar_motion_seat ={apiids_no = '9999',},   --星舞动坑位


    --商城推荐
    shop_recommend = {
skinTagsLimits = 
{
    {
            ids = {63},
            apiids = "110,1,81,79,45",
    },
    {
            ids = {78},
            apiids = "999",
    },
},
        rollingCommendSkins =
        {
            {type = 1,id = 30,name = "柳仙儿返场",picUrl = "https://image.mini1.cn/c/20200924/57b03136fdf55c24e2f6db7c6efe8f0a.png",picId = 10023},
            {type = 2,id = {733,732,731,730},name = "山海寻梦",picUrl = "https://image.mini1.cn/c/20200924/4d783111e09091fcec6a66a16e830c77.png",picId = 10024},
            {type = 1,id = 79,name = "巫塔",picUrl = "https://image.mini1.cn/c/20200904/def8c9dc8d8549ad894d746296765ac0.png",picId = 10022},
            {type = 2,id = {719,720,718,717,721,485},name = "蒸汽朋克",picUrl = "https://image.mini1.cn/c/20200820/dd39e0912f04559739f544a54378cd7b.png",picId = 10021},
        },
        groupCommendSkins =
        {
           {
                title = "中秋喜乐，与你共渡",
                version_min = "0.48.0",
                skins = {
                    { type = 1, id = 81, tag = 4 },
                    { type = 1, id = 69, tag = 2 },
                    { type = 2, id = { 733,732,731,730 }, tag = 0 },
                    { type = 2, id = { 725,726,727,728 }, tag = 0 },
                }
            },
           {
                title = "彩虹旋风×龙行世界",
                version_min = "0.46.0",
                skins = {
                    { type = 1, id = 70, tag = 2 },
                    { type = 1, id = 72, tag = 2 },
                    { type = 2, id = { 696,697,698,506 }, tag = 0 },
                    { type = 2, id = { 699,693,694,695,411 }, tag = 0 },
                }
            },
           {
                title = "端午祝福",
                version_min = "0.44.0",
                skins = {
                    { type = 1, id = 69, tag = 2 },
                    { type = 1, id = 70, tag = 2 },
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
                title = "周年梦幻",
                version_min = "0.41.5",
                skins = {
                    { type = 1, id = 60, tag = 2 },
                    { type = 1, id = 40, tag = 2 },
                    { type = 2, id = { 194,624,622,623,618 }, tag = 0 },
                    { type = 2, id = { 619,620,621,503 }, tag = 0 },
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
                title = "古风情怀",
                skins =
                {
                    {type = 1,id = 24,tag = 2,langs = "2,4,5,7,12",version_min = "0.38.0"},--type1皮肤，2avatar后台配置的主题
                    {type = 2,id = {302,361,351,371},tag = 0},--部件ID
                    {type = 2,id = {446,442,352,436},tag = 0},--标签tag无=0，限时=1，热卖=2，特惠=3，典藏=4
                    {type = 2,id = {363,354,375,359},tag = 0},
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
                title  = "刺客联盟",
                skins =
                {
                    {type = 1,id = 45,tag = 2},
                    {type = 1,id = 46,tag = 2},
                    {type = 2,id = {335,354,369,366,359,326},tag = 0},
                    {type = 2,id = {79,358,368,353,367,68,324},tag = 0},
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
            {
                title  = "职业畅想",
                skins =
                {
                    {type = 1,id = 44,tag = 2},
                    {type = 2,id = {82,83,84,85,86},tag = 0},
                    {type = 2,id = {26,27,29,30},tag = 0},
                    {type = 2,id = {113,114,115,116,117,136},tag = 0},
                }
            },
        },

        skinTags =
        {
            --皮肤分组标签
            {
                title = "热卖",
                id = {81,75,30,80,72,70,69,62,59,29},
            },

            {
                title = "武侠系列",
                id = {20,46,45,8,13,57,43,21,23,24},
            },

            {

                title = "魔法系列",
                id = {33,32,41,39,37,77,79},
            },

            {
                title = "迷萌系列",
                id = {47,4,3,1,26,5,27,61,60,63,55},
            },


            {
                title = "科幻系列",
                id = {51,48,40,42,44,28,68,67},
            },

            {
                title = "冒险系列",
                id = {11,18,19,14,17},
            },

            {
                title = "经典",
                id = {49,36,35,34,6,16,15,7},
            },
            {
                title = "变形金刚",
                id = {74,52,53,58,64,65,66},
            },
            {
                title = "小马宝莉",
                id = {71},
            },
            {
                title = "节日限定",
                id = {31,22,9,50,10,54},
            },
            {
                title = "新春限定",
                id = {25,2,38,12,56},
            },
        },


    },

	open_friendgift = { apiids = '1,110,69,65,64,71,74,62,73,72,70,68,67,66,63,75,76,112,113,77,78,81,79,45,999' }, --商城好友赠送功能开关


--地图模板化开关
templated={
	map_templated_switch = 2,  	--填1全部开 填2仅开白名单 填3全部不开    
    for_learning_only = {},  	--可上传仅供学习地图的白名单 
    buyout = {523822201,733997332,1052808151,845164719,1026305855,983349518,782091413,918296141,856757223,763202085,1126,925756319,700096705,1024759701,899993838,2222,149314886,276869238,5269274,1091437957,484335529,1103,484335529,1078551,952103528,149314886,1136400041,535288505,1271888865,6666,557477698},	--可上传买断制和仅供学习地图的白名单
    official = {1280136988,1154525,1175094554,754443663,1052808151,1026305855,6666,733997332,1124283157,623047860,845164719,1175094554,557477698},--可上传官方模板地图的名单 

    forbidden = 1,				--禁用云服使用二次创作的地图开服 0不禁用 1禁用
	},

--存档数据互通开关
data_communication = {
    switch = 1,			--填1全部开 填2仅开白名单 填3全部不开
    white_list = {523822201,918296141,856757223,952103528,925756319,700096705,1024759701,899993838,1126,630718072,2222,978429425,149314886,276869238,5269274,304843,1078551,2576116,5269274,5564296,12816828,20933993,31196602,40619945,54473067,66732537,70443711,72458055,78740664,82740213,92375007,101863836,123339931,125493798,136682878,139072032,139705252,149314886,165524780,167943318,202734803,243191419,244073994,274496134,276869238,308836469,343841508,391254142,404197159,405195631,414220953,432881311,474960944,523768824,567465206,602649352,697730551,704839260,731528656,925756319,758583605,733997332,1077654877,1088465516,1025167797,937446528,958214999,1035638108,1063634892,1055820437,958497472,958497351,958497663,974128811,977883228,1026025574,1067145837,1067147654,1067144660,917676928,953121534,927077469,917680145,1071333758,993190741,1056337648,1065127220,1071446502,1077650413,1077502997,1077791114,1070500598,1077784511,1080953368,1080823834,1080813820,1051125078,1063589818,981966019,1078373699,1071227074,1087954897,1087921702,1019103946,1055814680,1056128497,1056145887,1055972250,1070726140,1059303653,1063176561,1063172991,711144941,773106570,1057616945,1011534294,918901679,1063170942,1063163943,1063478843,893316052,1063170918,1063815151,717929863,644400740,694900810,770466413,475622289,397547486,493243879,356151799,1063415676,356151799,480918060,1070629499,1070456742,1070629924,1070442903,193866135,555974156,1030403447,328540644},	--存档数据互通功能白名单
    free_quantity = 10,	--玩家可免费上传游戏数据存档数量
	},
---------------------------------------------------新实名配置
opennewauth = 1,			-- 是否使用新实名配置方案,1:是,0:不是 
	newauthcheck = {
		title = "新版实名认证配置",
		
		--广告方案A-F
		setup_ads_A = {showpic = "",gift = "22428:1,22429:1,22399:1",url="",id=5101052021001},
		setup_ads_B = {showpic = "",gift = "22428:1,22429:1,22399:1",url="",id=5101052021002},
		setup_ads_C = {showpic = "",gift = "22428:1,22429:1,22399:1",url="",id=5101052021003},
		setup_ads_D = {showpic = "",gift = "22428:1,22429:1,22399:1",url="",id=5101052021004},
		setup_ads_E = {showpic = "",gift = "22428:1,22429:1,22399:1",url="",id=5101052021005},
		setup_ads_F = {showpic = "",gift = "22428:1,22429:1,22399:1",url="",id=5101052021006},
		
		--实名制配置字段 触发点-广告方案
		program1 = { triggerid = "1-B,2-B,3-B,4-B,6-B,7-B,8-B,9-B,10-B,11-B,12-B,13-B,14-B"},
		program2 = { triggerid = "1-B,2-B,3-B,4-B,6-B,7-B,8-B,9-B,10-B,11-B,12-B,13-B,14-B"},        
		program3 = { triggerid = ""},
		
		--渠道配置
		appid = 
		{ 
			-- 默认渠道10000，1
			id_10000 = 
			{
				-- 30%新用户使用program1方案，70%新用户使用program2方案
				newuser = "30-program1,70-program2",
				
				-- 100%存量用户使用program1方案
				exgistuser = "100-program1",
				time = "1627981041"
			},
			-- 特定渠道配置
			id_101 = 
			{
				newuser = "30-program1,70-program2",
				exgistuser = "100-program1",
				time = "1624595789"
			},
          

		}
	},
------------全民创造节-----------
active_hottopic={
	date = 1625068800,
	{id = 353454,content="团队竞技训练营",remarks=""},
	{id = 332933,content="模板地图二创",remarks=""},
	{id = 315171,content="打工模拟器",remarks=""},
    {id = 273958,content="突出重围",remarks=""},
    {id = 152272,content="模拟日常生活",remarks=""},
	{id = 177739,content="冰雪狂欢，激燃冬日",remarks=""},
    {id = 172840,content="迷你欢乐大亨",remarks=""},
	{id = 172838,content="欢乐时光",remarks=""},
	{id = 149846,content="进击的土块",remarks=""},


	
	

	

},
------------音乐播放器-----------
music_player = 
    {
        super_uin_list = "",
        black_cid_list = {17922898527442},
        mode = "1,2,3",
        world_type = "4,5",
        default_setting = 2,
        default_allow_insert = 1,
        show_allow_insert = "1,2",
        recommend_list= {314746447,325159330,319362035,303437993,212676452,337922188,305446050,244497931,305351943,310985384,284945036,287872029,324206840,307890882,289284084,270426158,288440146,280652228,246017346},
        new_recommend_list= {314746447,325159330,319362035,303437993,212676452,337922188,305446050,244497931,305351943,310985384,284945036,287872029,324206840,307890882,289284084,270426158,288440146,280652228,246017346},
    },
------------地图派对功能设置-----------
map_party_setting = {
        super_uin_list = "",
},
---------------------------------------------------地图上传详情页面配置
map_upload_page = {
	name_limit = 13,
	desc_limit = 300,
	addcover = {
		open = 1,
		width_min = 512,
		height_min = 288,
		width_max = 2048,
		height_max = 2048,
		size_limit = 5120,
		tip_type = 1,
	},
	[100] = {
		useful = 0,
		num_limit = 3,
	},
	[1] = {
		useful = 1,
		num_limit = 3,
	},
	[2] = {
		useful = 1,
		num_limit = 3,
	},
	[3] = {
		useful = 1,
		num_limit = 3,
	},
	[4] = {
		useful = 1,
		num_limit = 3,
	},
	[5] = {
		useful = 1,
		num_limit = 3,
	},
	[6] = {
		useful = 1,
		num_limit = 3,
	},
	[7] = {
		useful = 1,
		num_limit = 3,
	},
	[101] = {
		useful = 1,
		num_limit = 3,
	},
}, 


	outman = {
		time = {1622537148,1630399548},
		mapId = {16307990824038,49152631519701,20135965934567,24387152847332}
	},

	gate_name = '20miniwGate1',

--个人中心改版配置
profile_revision = {
	switch = {							-- 个人中心总开关
		apiids_no = "",			        --不可以展示的渠道
		version_min = "1.08.0"			-- 最小展示版本
	},

	purchase_show_coin = 10,				--买展示位金额

	max_show_num = 10,						--最大拥有展示位数量
},

ShopNewestTextTip = {
    switch = 1,                           -- 功能开关：1开启，0关闭 
    apiids_no = "9999",					-- 渠道id    apiids = /apiids_no =
	version_min = "1.07.0",			-- 版本号    version_min = /version_max =
    show ={
     num = 2,
     weight ={"battlePass","fruits","gacha","gift","skin","avatar","horse"},
    },
    fruits = {
		ver = 20211109,					-- 对应的id 			id不同视为新的
		start_time = "2021-11-29 00:00:00",  	-- 开始时间(string)  	example "2021-08-20 23:59:59"
		end_time = "2021-12-05 23:59:59",		-- 结束时间(string)  	example 同上
        contents = {         -- 提示内容配置  
              cd = 43200,        -- 文字提示间隔时间(秒, int)           
              count = 28,       -- 文字提示次数   
              text = "最强音浪更新上线",  --文字提示内容
              countdown = 1638633601,  --倒计时开始时间
              priority = 0,  -- 优先级：1优先展示文字，0优先展示倒计时
                },  
         cd = 43200,        -- 文字提示间隔时间(秒, int)           
         count = 28,       -- 文字提示次数   
         text = "最强音浪更新上线",  --文字提示内容
    },
	-- 皮肤上新
	skin = {
		ver = 20211002,					-- 对应的id 			id不同视为新的
		start_time = "2021-10-20 00:00:00",  	-- 开始时间(string)  	example "2021-08-20 23:59:59"
		end_time = "2021-10-31 00:00:00",		-- 结束时间(string)  	example 同上
        contents = {         -- 提示内容配置  
              cd = 300,        -- 文字提示间隔时间(秒, int)           
              count = 2,       -- 文字提示次数   
              text = "新皮肤上线",  --文字提示内容
              countdown = 1634745601,  --倒计时开始时间
              priority = 1,  -- 优先级：1优先展示文字，0优先展示倒计时
                },  	
	},
	-- avatar上新
	avatar = {
		ver = 20211002,					-- 对应的id 			id不同视为新的
		start_time = "2021-10-20 00:00:00",  	-- 开始时间(string)  	example "2021-08-20 23:59:59"
		end_time = "2021-10-31 00:00:00",		-- 结束时间(string)  	example 同上
        contents = {         -- 提示内容配置  
              cd = 300,        -- 文字提示间隔时间(秒, int)           
              count = 2,       -- 文字提示次数   
              text = "新定制装扮系列",  --文字提示内容
              countdown = 1634745601,  --倒计时开始时间
              priority = 1,  -- 优先级：1优先展示文字，0优先展示倒计时
                },  
	},
	-- 坐骑
	horse = {
		ver = 20211002,					-- 对应的id 			id不同视为新的
		start_time = "2021-10-20 00:00:00",  	-- 开始时间(string)  	example "2021-08-20 23:59:59"
		end_time = "2021-10-31 00:00:00",		-- 结束时间(string)  	example 同上
        contents = {         -- 提示内容配置  
              cd = 300,        -- 文字提示间隔时间(秒, int)           
              count = 2,       -- 文字提示次数   
              text = "坐骑更新",  --文字提示内容
              countdown = 1634745601,  --倒计时开始时间
              priority = 1,  -- 优先级：1优先展示文字，0优先展示倒计时
                },  
	},
	-- 扭蛋
	gacha = {
		ver = 20211002,					-- 对应的id 			id不同视为新的
		start_time = "2021-10-20 00:00:00",  	-- 开始时间(string)  	example "2021-08-20 23:59:59"
		end_time = "2021-10-26 12:00:00",		-- 结束时间(string)  	example 同上
        contents = {         -- 提示内容配置  
              cd = 300,        -- 文字提示间隔时间(秒, int)           
              count = 2,       -- 文字提示次数   
              text = "扭蛋产出更新",  --文字提示内容
              countdown = 1634745601,  --倒计时开始时间
              priority = 1,  -- 优先级：1优先展示文字，0优先展示倒计时
                },  	
	},
	-- 礼包
	gift = {
		ver = 20211002,					-- 对应的id 			id不同视为新的
		start_time = "2021-10-20 00:00:00",  	-- 开始时间(string)  	example "2021-08-20 23:59:59"
		end_time = "2021-10-28 00:00:00",		-- 结束时间(string)  	example 同上
        contents = {         -- 提示内容配置  
              cd = 300,        -- 文字提示间隔时间(秒, int)           
              count = 2,       -- 文字提示次数   
              text = "商城礼包更新-字数比较多情况",  --文字提示内容
              countdown = 1635231600,  --倒计时开始时间
              priority = 1,  -- 优先级：1优先展示文字，0优先展示倒计时
                },  
	},
},



 --个人中心-创作者中心屏蔽开关
	PlayerCenterCreatorSwitch = {
		apiids_no = "999,5,21,7,52,36",
        version_max = "2.0.0"
	},
	--地图下载时是否强制请求一次地图信息
	forceReqMapInDownload = 0,
	--2.0导流配置
	diversion = {
		onshow  = 0,							--0代表入口关闭,1代表入口开启

		apiids  = "999",						--渠道控制
		
		version_min = "1.7.2",  				--版本号控制

		task = {
			[1] = {
					name = '登陆触发运营消息',
					content = '花光迷你币？这个地图你玩过吗？来迷你基地，看看【大家都在玩】什么？',
					weekly = 1,
					event = 1,
					target = 1,
			},
			[2] = {
					name = '最近玩伴升级邀请',
					content = '和你一起玩过游戏的 XXX 向你发出邀请，前往迷你基地一起玩！',
					daily = 1,
					event = 2,
					target = 1,
			},
		},
		urlTab = {
			dzgdw 	= "https://sen-access.mini1.cn/r/zB", 	--固定位
			dzyqxx 	= "https://sen-access.mini1.cn/r/JB", 	--游戏邀请消息
			dzdsxx	= "https://sen-access.mini1.cn/r/EB", 	--运营消息
			hyxx	= "https://sen-access.mini1.cn/r/BB",	--好友消息
			hyyq	= "https://sen-access.mini1.cn/r/FB",	--游戏邀请
			zjwb	= "https://sen-access.mini1.cn/r/XB",	--最近玩伴
			hysq	= "https://sen-access.mini1.cn/r/2B",	--好友申请
			jqqx	= "https://sen-access.mini1.cn/r/KB",	--进群申请
		},
	},

--哪些渠道不显示向父母求助按钮
Askparents_appid_no  = {31,52,21,36},

    --向家长求助使用方案，两个选项，old就是朱兴龙那一套老方案点击发送到微信中，new就是罗文琦的那套新方案打开一个h5页面，在h5页面里面做引导
    Askparents_programme = 'old',

--是否启用家长守护模式，false就是不启用，那么即使在迷你守护中添加了时长和充值限制，APP也不会真的去限制他
parents_guard = true,

   --找回账号链接
     find_account_link   = 's4_https://h5.mini1.cn/act/c5m/account-appeal/#/home?openBrowser=3&portrait=1',  
   --找回账号方案
   find_account_option_new_apiids = {apiids = "7,12,13,36,1,132,131,130,991,28,59,119,992,58,57,56,55,114,97,96,95,118,117,299,94,93,92,88,84,83,82,116,81,54,80,91,129,87,79,402,128,78,77,90,113,112,410,102,76,89,86,85,125,126,127,110,75,63,66,67,68,70,72,73,303,62,74,71,64,65,124,69,345,24,22,61,302,60,123,399,199,51,52,99,53,109,122,121,999,200,101,100,50,49,47,45,44,43,42,41,40,39,38,37,36,35,34,33,32,30,29,20,19,18,17,16,15,14,12,11,10,9,8,6,4,2,1,9999,5,7,31,13,3",
	version_min = "1.08.5",
},
  
    --忘记密码开关
    forgotPwd_option_new_apiids={
         appids_no="21,36",
       version_min="1.08.5"
        },
    --忘记密码H5页面
   forgotPwd_h5link = 's4_https://h5.mini1.cn/act/c5m/account-appeal/#/password?openBrowser=3&portrait=1',
    
    --账号申诉开关
   complaint_option_new_apiids={
         appids_no="21",
       version_min="1.08.5"
        },
    -- 账号申诉H5页面
    complaint_account_link = 's4_https://h5.mini1.cn/act/c5m/account-appeal/#/appeal?openBrowser=3&portrait=1',

   --哪些渠道要开启人脸认证，以及人脸认证最大可尝试次数，超出次数依旧没有认证成功会直接不让登陆
   face_detect_appid_yes = {},
   face_detect_Maximum = 5,
   -- 人脸识别是否开启abtest，0是关闭ab测试，开启的渠道都要人脸识别，1是开启ab测试，只有一部分需要人脸识别
    face_detect_abtest = 1,
   --渠道号控制
	face_detect_ios_version_min = '1.8.0',
	face_detect_android_version_min = '1.8.0',

      --隐私协议版本号，每次法务更新了隐私协议之后都需要更新，命名规则：年+月+日+时
      privacy_agreement_version = '202301131800',


limit_rule_login_open = 1, -- 登录配置开关
limit_rule_count_down=30,--防沉迷弹窗关掉倒计时，默认30秒 
limit_rule_login = {
	tips_msg = "亲爱的冒险家，根据国家游戏防沉迷规定，18岁以下的未成年人仅能在法定节假日和每周五、周六、周日20:00 ~ 21:00玩游戏。",
anti_addiction_link = {
  --哪些渠道不显示查看我的实名信息按钮
        show_myRealName_information_appid_no = {31,13,21,36}, -- 括号里面是不显示的渠道
	-- 防沉迷弹窗不显示迷你编程的深度链接的有哪些渠道，审核状态填写5,7,12,13,36，运营状态全都删除
	anti_addiction_minicodeDeeplinlk_appid_no = {31,21,36,13}, 
	--防沉迷弹窗不显示迷你基地的深度链接的有哪些渠道，审核状态填写5,7,12,13,36，运营状态全都删除
	anti_addiction_minichatDeeplinkt_appid_no = {31,21,36,13},
	--配置弹窗的中的内容，以及哪些文字需要使用特殊颜色显示，以及跳转地址
	minicode_meg = "想探索更多创造的奥秘，可以#L#cfa7a0f前往《迷你星工场》#n，和百万地图创作者交流学习，超多教程和精美地图任你创作改编，还能领取迷小酷皮肤哦！",
	minichat_meg = "",
	minicode_meg_link_phone = "https://www.miniaixue.com/download-app?channel_link_type=web&utm_campaign=20230203%E8%BF%B7%E4%BD%A0%E4%B8%96%E7%95%8C%E9%98%B2%E6%B2%89%E8%BF%B7%E5%BC%B9%E7%AA%97&sat_cf=2&_channel_track_key=YIkdMKQ7&openBrowser=1",
	minicode_meg_link_windows = "https://www.miniaixue.com/download-app?channel_link_type=web&utm_campaign=20230203%E8%BF%B7%E4%BD%A0%E4%B8%96%E7%95%8C%E9%98%B2%E6%B2%89%E8%BF%B7%E5%BC%B9%E7%AA%97&sat_cf=2&_channel_track_key=YIkdMKQ7&openBrowser=1",
	minichat_meg_link = "",
    --https://sen-access.mini1.cn/r/y
},
	limit_rule = { -- 防沉迷时长限制规则列表
		apiid_no = {5,7,12,31,36,85,86,299,76,2,58,13},--审核期间和运营期间配置一样	
		apiid_priority_game = {13},  -- 优先使用游戏的实名进行防沉迷，如果没有再使用渠道的年龄来防沉迷
		[1] = {
            login_min_age_60 = 13, -- 60抖音云渠道小于13岁，不让登录（特殊的）
			login_min_age_60_tips = '亲爱的冒险家，根据国家法律规定，14岁以下未成年人玩游戏需经家长同意，祝开心生活，健康成长。', -- 60抖音渠道≤13岁不让登陆文案描述

			-- 常规渠道登陆限制
			age = {min=0,max=17},
			-- 每天的禁止登录时段
			allow_time = {
				[1] = {min='20:00',max='21:00'},
			},
			-- 每周可以登录的日期
			allow_week_day = {5,6,7},
			-- 指定节假日允许登录
			allow_day = {'2022-06-03','2022-06-04','2022-06-05','2022-09-10','2022-09-11','2022-09-12','2022-10-01','2022-10-02','2022-10-03','2022-10-04','2022-10-05','2022-10-06','2022-10-07','2023-01-02','2023-01-23','2023-01-24','2023-01-25','2023-01-26'}, 	
			-- 不允许登录的日期
			not_allow_day = {'2022-10-08','2022-10-09','2023-01-28','2023-01-29'},
		},
	},


		-- 指定渠道登录限制，例如字节云，在配置的时候需要注意，上面的要配置，这里的也要配置，字节比较严，他直接不允许13岁及其以下孩童进入游戏
		appoint_apiid_60 = {
			age = {min=14,max=17},
			-- 可登录时间段
			allow_time = {
				[1] = {min='20:00',max='21:00'},
			},
			-- 每周可以登录的日期
			allow_week_day = {5,6,7},
			-- 指定节假日允许登录
			allow_day = {}, 
			-- 不允许登录的日期
			not_allow_day = {},
},
	-- 登录版本限制
	version_rule = {
		appoint_apiid = {
			[5] = '1.2.0', --  鸿蒙渠道版本号小于等于1.2.0无法继续使用，后续维护的人注意，这里是一个数组，可以继续增加其他渠道
            [7] = '1.7.9', --  华为渠道，1.7.9版本以及以下的版本无法登录
		},
		min_version = '1.4.0', -- 其他渠道版本号小于等于1.4.0无法继续使用
		tips_msg = '版本过低，请前往应用商店升级至最新版本',
	},
},

 -- 服务器的防沉迷
    limit_rule_login_server = {
        white_uin = {1182270234,1537137067}, -- 加白服务器防沉迷的迷你号
		apiid_no = {}, -- 哪些渠道不使用任何防沉迷
		apiid = {110,1}, -- 哪些渠道使用迷你世界的防沉迷 
        channel_apiid = {121,2}, -- 哪些渠道使用渠道防沉迷+迷你世界的防沉迷
		gray_rate = 100, -- 灰度百分比
        gray_rate_2 = 50, -- 4399灰度百分比
        age = {
            min = 0,
            max = 17
        }, -- 防沉迷的年龄限制
        allow_time = {
            -- 防沉迷的时间限制
            [1] = {
                min = '20:00',
                max = '21:00'
            }
        },
        -- 每周可以登录的日期
        allow_week_day = {5,6,7},
        -- 指定日期允许登录
        allow_day = {},
        -- 不允许登录的日期
        not_allow_day = {},

        login_min_age_60 = 13 -- 60渠道小于13岁，不让登录
    },


--防沉迷充值 迷你世界
limit_rule_recharge_open = 1, -- 充值配置开关
limit_rule_recharge = {	
	limit_rule = { 
		apiid_no = {5,7,12,31,36,85,86,76,121,13,2,58}, --审核期间和正常运营期间都是一样的
	pay_min_age = 7, -- 小于等于该岁数的无法支付任何额度
		pay_min_age_tips = "亲爱的冒险家，根据国家游戏防沉迷规定，不得向不满8周岁的用户提供充值服务。",     
 -- 提示语句
       day_recharge_open=0,--按日累计充值上限开关，默认关闭限制
       limit_all_apiid_open = 1, -- 全渠道充值限制开关,1是开，0是关
	   limit_all_apiid = { -- 全渠道最多每月只能充多少钱
				amount = 10000,
			},
       limit_top_single = { --单个渠道最多每月只能充多少钱
				[7] = 5000, -- 华为渠道限制最高充值
			}, 
	   limit_channel_repay = {--强渠道未成年充值限额（包括直充、web直充、代付、充值卡充值）
				[1] = {
					age = {min = 0, max = 17},
					pay = {once = 400, day_recharge = 400, amount = 400}
				},
			},        
		[1] = {
			-- 原则，最简化，只包含年龄范围，每月的充值额度
			age = {min=8,max=15},
			pay = {once =50,day_recharge=100,amount =200},
		},
		[2] = {
			-- 原则，最简化，只包含年龄范围
			age = {min=16,max=17},
			pay = {once = 100, day_recharge=200,amount = 400 },
		},
        [3] = {
			-- 原则，最简化，只包含年龄范围
			age = {min = 18,max = 200},
			pay = {once =10000,day_recharge=1000,amount = 10000 },
		},
	},
	special_limit_rule = { -- 防沉迷规则列表
		apiid_no = {}, -- 防沉迷登录包含的渠道号(哪些渠道部做限制)
		pay_min_age = 4, -- 小于该岁数的无法支付任何额度
		[1] = {
			-- 原则，最简化，只包含年龄范围，每月的充值额度
			age = {min=0,max=17},
			pay = {once = 20, amount = 100},
		},
	},
},


--versionmax要比线上正在运行的版本号大一点才能生效
   qq_binding = { apiids = '1,4,6,9,10,14,15,16,18,20,22,24,28,29,30,32,33,35,37,38,39,40,41,42,43,47,49,50,51,53,54,58,59,60,61,62,63,64,65,66,67,68,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,89,90,91,92,93,94,95,96,97,99,100,109,110,112,113,114,116,117,118,119,122,123,124,125,126,127,128,130,131,132,199,200,299,302,303,345,399,402,410,991,992,999,5,11,45,34,8,17,88,52,55,57', version_max = "1.23.10"},
     wx_binding = { apiids = '1,4,6,9,10,14,15,16,18,20,22,24,28,29,30,32,33,35,37,38,39,40,41,42,43,47,49,50,51,53,54,58,59,60,61,62,63,64,65,66,67,68,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,89,90,91,92,93,94,95,96,97,99,100,109,110,112,113,114,116,117,118,119,122,123,124,125,126,127,128,130,131,132,199,200,299,302,303,345,399,402,410,991,992,999,5,11,45,34,8,17,88,52,55,57', version_max = "1.23.10"},
     QQ_Entry_Option={apiids = '1,4,6,9,10,14,15,16,18,20,22,24,28,29,30,32,33,35,37,38,39,40,41,42,43,47,49,50,51,53,54,58,59,60,61,62,63,64,65,66,67,68,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,89,90,91,92,93,94,95,96,97,99,100,109,110,112,113,114,116,117,118,119,122,123,124,125,126,127,128,130,131,132,199,200,299,302,303,345,399,402,410,991,992,999,5,45,34,8,17,88,52,55,57', version_max = "1.23.10"},
     WeChat_Entry_Option={apiids = '1,4,6,9,10,14,15,16,18,20,22,24,28,29,30,32,33,35,37,38,39,40,41,42,43,47,49,50,51,53,54,58,59,60,61,62,63,64,65,66,67,68,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,89,90,91,92,93,94,95,96,97,99,100,109,110,112,113,114,116,117,118,119,122,123,124,125,126,127,128,130,131,132,199,200,299,302,303,345,399,402,410,991,992,999,5,45,34,8,17,88,52,55,57', version_max = "1.23.10"},
     login_btn = {apiids_no = '31,52',version_max="1.23.10"},

     show_acc_login_btn = { apiids_no="9999", version_min="1.07.0" },

    --新版本登陆页面的账号管理按钮，这个version_min在任何情况下都不需要去修改
     login_btn_new = {apiids_no = "12",version_min="1.04.6"},
     --哪些渠道不显示切换账号按钮 
     Switch_other_accounts = {apiids_no = "31,52,60,", version_max = "1.23.10"},
      --哪些渠道不显示账号找回按钮 
       Account_Retrieval = { apiids_no = "", version_max = "1.23.10"},  
      --哪些是强渠道，该策略会影响到默认设置
       Strong_channel = {7,12},


      --充值前检测email绑定，现在这个功能已经弃用了，以后都不需要再调整了，备注时间2021年11月18日，罗文琦
      check_bind_email_recharge = { apiids = '999', },


    firstpay = {
        version_min = "1.6.0",
		icon = "https://webpicture.mini1.cn/20221214/182411041019b6-e637-54e2-876f-ad057188be14.gif",	-- 图标路径
		iconName = "1元皮肤", --图标名字
    }, -- 主界面首充/续充入口开关

    friend_pay = { apiids="1,110,45,13" },  --好友代付


    qq_share = {
       qq    = { apiids_no = '56,52,60,36,21',version_min='0.45.5'},
       qzone = { apiids_no = '56,52,60,36,21',version_min='0.45.5'},
        wx    = { apiids_no = '56,16,58,97,3,34,54,36,11,52,60,36,21',version_min='0.45.0'},
        wb    = { apiids_no ='9999,52,60,36,21',version_min='0.32.1'},
        wxfriends = { apiids_no = '56,16,58,97,3,34,13,54,36,11,52,60,21',version_min='0.32.1'},
        minifriends = { apiids_no = '9999',version_min='0.32.1' },
        posting = { apiids_no = '9999',version_min='0.32.1' },
        wx_wb_pub = { apiids ='1,4,6,8,9,10,14,15,16,17,18,19,20,22,24,29,30,32,33,35,37,38,39,40,41,42,43,44,47,49,50,51,53,54,55,56,57,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,99,100,101,102,109,110,112,113,114,116,117,118,119,122,123,124,125,126,127,128,129,130,131,132,199,200,299,302,303,345,399,402,410,991,992,999,9999,2,121,5,12,13,3,11,45,34' },


 --运营状态 是否在分享图片上显示二维码
        show_QR_code = {apiids = '132,131,130,991,28,59,119,992,58,57,56,55,114,97,96,95,118,117,299,94,93,92,88,84,83,82,116,81,54,80,91,129,87,79,402,128,78,77,90,113,112,410,102,76,89,86,85,125,126,127,110,75,63,66,67,68,70,72,73,303,62,74,71,64,65,124,69,345,24,22,61,302,123,399,199,51,99,53,109,122,121,999,200,101,100,50,49,47,45,44,43,42,41,40,39,38,37,35,34,33,32,30,29,20,19,18,17,16,15,14,12,11,10,9,8,6,4,2,1,9999,5'},
    },

	-- 渠道号实名限制登录,拿不到渠道实名信息则强制退出到登录页面
	limit_rule_channel = {
		apiid = {7},
	},


--可下载存档数配置
	downArchiveMaxNum = 100,


-- 迷你世界创作用户引流
miniedu_remindcfg = {
	-- 是否打开关闭弹窗
	openwindow = 1,
	
	-- 不生效渠道
	ignore_channel = {}, 

	-- 开放游玩结束前n分钟
	remain_time = 5,
	
	-- 弹窗的中的内容
	msg_content = "时间快到了，来「迷你编程」随时随地创作吧！还有免费官方教程助你成为编程创作大神！",
	
	-- 迷你编程下载落地页 
	links_data = {	
		link_phone = " https://course.miniaixue.com/activity?id=hanjia2&fromType=1058&utm_source=%E8%BF%B7%E4%BD%A0%E4%B8%96%E7%95%8C&utm_medium=cpm&utm_term=%E5%88%9B%E4%BD%9C%E8%80%85%E6%8F%90%E7%A4%BA%E5%BC%B9%E7%AA%97&utm_content=%E8%B7%91%E9%85%B7%E5%9C%B0%E5%9B%BE%2B%E8%B6%85%E8%83%BD%E5%AE%9D%E8%97%8F&utm_campaign=20220107-%E5%B8%B8%E8%A7%84%E5%BC%95%E6%B5%81-%E8%BF%B7%E4%BD%A0%E4%B8%96%E7%95%8C-%E5%88%9B%E4%BD%9C%E8%80%85%E6%8F%90%E7%A4%BA%E5%BC%B9%E7%AA%97-%E5%AF%92%E5%81%872-1058&_channel_track_key=m09sVNKR?openBrowser=1",
		link_windows =  "https://miniaixue.com/?openBrowser=1",
	}
},


--跳舞厅
music_config = {
	players_type = 0, --0:所有用户 1:开发者 2:工作室用户
	--creator_level = 3,
	players_look = 1, --0:不可以看到, 1:可以
--super_uin_list="1136400041,1226771348,400415944,842180093,1058088715,874216562,302015213,508282737,1271888865,418062998,123333474,15477421,900339071,228348274,1431268310,1166541129,1271888865,418062998,123333474,15477421,900339071,1281546710,1345319556,1126,1004,1002,1182271222,1402057358,1402174841,2222", 
},

--跳舞厅预点歌入口
presetmusic_config = {
	uin_list = "1402057358,1402174841,1014",
},

	--钢琴自动演奏
	piano_demo = {
		players_type = 0, --0:所有用户 1:开发者 2:工作室用户
		version_min = "1.13.0",
		autoPlay_time = "8", --单位秒
	},

--全面云服测试快速匹配房间时，走一键云服接口的超时时间
allCloudABOneKeyRentTime = 15,

--聊天气泡
chat_bubble_config = {
	open = {},
},

--游戏人数上限
maprule_teamset = {
   
},

--地图传送道具
cportal_config= {
	players_type = 1, --0:所有用户 1:开发者 2:工作室用户
	creator_level = 7,
	players_look = 1, --0:不可以看到, 1:可以
	super_uin_list= "1127,228348274,1091437957,1118,1103,1002,1004,1103,1126,1234,1014,1005,1015,1073936555,1454148318,845164719,982616035,149314886,1214217160,1317320850,1229411261,1211346315,1167326364,1182684703,1213845791,731528656,57916222,864141360,864185050,864150166,792399802,730134196,775033736,57916222,328540644,1451154369,1009,5269274,328540644,57916222,5269274,623459,49190752,1271257006,493508306,1024759701,1025167797,1182684703,1167326364,1213845791,1183107198,1206635376,1260463217,1261943386,1172998159,1199599214,1205137312,1205137476,414220953,1053755629,1055206814,1609009803,1114997155,1316409178,1287432977,1187333091,1522194317,1201977464,1521913132,1186894799,731528656,1238186092,1236330631,1580782200,1580787926,1580902672,1194153668,1272709445,1272657547,1272705906,1286554897,276869238,571147736,1086145099,811311,911211,588988,962767,106458375,864141360,864185050,792399802,864150166,1479101484,1682140943,1611128847,1606580576,1657712110,1445471098,304843,139705252,101863836,393704994,49190752,1479101377,1111,254905544,586313211,1006299126,264992774,198374065,590769418,1103,1205301304,276149488,1267603566,85705371,1769944901,1226732651,1226783998,1226709522,1226712684,1226713081,1248996989,1234353148,1147875382,1077309849,1192248888,1188717234", 
},

commentConfig = {
	--新旧开关
	feedback_channel = {
		
	},
	--评论最大数
	max_length = 300,
    report_time = 5,
    emoticon = 1,--评论区表情包,1为开启 0为关闭
	--	老的过滤时间
    old_time = 1664121600,
	--	新输入方式开关,1为开启 0为关闭
	newinput = 1,
	--	新输入方式渠道开关
	newinput_switch = {
	apiids = '45',
}

},
-- 地图上传界面的跳转话题配置
-- text url_xx 任何一个没配 都不会显示
upArchiveTopicCfg = {
    -- apiids = "110,1,999",                 -- 总开关 (开启的渠道 注释全开)
    version_min = "1.7.0",                  -- 最小版本号
    url_mb = 's4_https://sso.mini1.cn/ssourl/#/transit?url=https://wss.mini1.cn/category/1/detail/1206/info',
    url_pc = 's4_https://sso.mini1.cn/ssourl/#/transit?url=https://wss.mini1.cn/category/1/detail/1206/info',

    text = "创作对战地图，投稿赢超多福利！",                -- 文本
},

-- 登录错误后，是否上报日志，配置成true 表示登录失败上报错误日志
login_error_report = true,

-- 账号密码错误弹出输入密码弹框开关
account_password_input_pop = {
	apiids = "9999,1,999,12,2,121,5,7,12,36,31,9999,1,999,12,132,131,130,991,28,59,119,992,58,57,56,55,114,52,97,96,95,118,117,299,94,93,92,88,84,83,82,116,81,54,80,91,129,87,79,402,128,78,77,90,113,112,410,102,76,89,86,85,125,126,127,110,75,63,65,66,67,68,69,70,72,73,303,62,74,71,64,65,124,69,345,24,22,61,302,60,123,399,199,51,99,53,109,122,121,999,200,101,100,50,49,47,45,44,43,42,41,40,39,38,37,36,35,34,33,32,30,29,20,19,18,17,16,15,14,13,12,11,10,9,8,6,4,2,1,5,7,31,13,21,3",
	version_min = "1.09.0"
},

-- 新版账号手机一键登录开关
account_mobile_quick_login = {
	apiids = "1,999",
	version_min = "1.11.0"
},

 -- 新版账号手机登录开关
    account_mobile_login = {
        apiids = "1,999",
        version_min = "1.15.0"
    },

-- 新版登录开关（loading中下拉配置）
newLoginCfg = {
	accessAppids = {1,999,31,12,36,58,7,13,57,2},               -- 新版登录总开关 (开启的渠道,,兜底为代码里accessAppids)
	defaultStrongAppids = {2,5,7,12,13,36,31,58,57},		-- 新版登录强制渠道兜底开关 (代码里还有一份)
    channel_bind = {					        -- 新版渠道绑定开关
		switch = {
			apiids = "999",
		},
        max_bind_num = 3,                      -- 最大绑定数量
		bindDlgShows = {						-- 绑定界面弹出开关
			apiids = "999,12,36,58,7,13,2,57",
		},
     },
	openLog = {								    -- lua日志开关
        apiids = "",
     } ,
	new_login_2 = { -- 登陆二期开关
            apiids = "1,999,11,78,83,50,80,95,84,82,92,96,94,69",
	   versions = {  -- 渠道开启前提下，最小版本控制(版本批量控制)，大于等于开启
				["1.15.0"] = {1},
				["1.16.0"] = {999},
                ["1.18.1"] = {11,78,83,50,80,95,84,82,92,96,94,69},
			}
        },
	regist_switch = {   -- 注册入口开关
			apiids = "1,999,77",
		},
},


-- 绑定换绑开关
account_change_bind_switch = {
	apiids = "1,999,7,12,13,36",
	version_min = "1.08.0"
},

-- oppo强制渠道登陆实验开关
    --account_force_login_test_switch = {
        --apiids = "999",
        --version_min = "1.08.0"
    --},

--oppo渠道登录(仅限注册新账号）
    Login_Oppo_Switch = {
		apiids= "13",
  version_min = "1.14.3"
	},

 --是否显示联系客服按钮
    service_btn={
        apiids_no = "58,97",
      version_min = "1.14.0" 
    },

   --是否显示在线客服公众号及二维码
    service_code={
        apiids_no = "7,36,31,13,21,97,52,58",
      version_min = "1.14.0"  
    },

   --登录设备管理
    devices_account_mgr= {
        apiids_no = "",
      version_min = "1.14.0"  
    },

   --第三方信息共享清单和个人信息收集清单
    detail_info_url = {
        player_detail_url = "https://www.mini1.cn/personal_information_list.html", --个人信息清单配置地址
		third_share_info = "https://www.mini1.cn/sdk_information_list.html", --第三方信息共享清单配置地址
        apiids_no = "",
       version_min = "1.14.0"  
        },

   --游戏内隐私政策配置地址（撤回）
    privacy_policy_url = {
                url = "https://www.mini1.cn/privacy_policy.html", --隐私政策配置地址
        apiids_no = "",
        version_min = "1.14.0"     
        },

   --ios账号删除开关（账号注销显示的是账号删除）
    account_deleted = { 
             apiids = "45",
          version_min = "1.15.0"         
    },


  --新账号管理（game_in是游戏内,game_out是游戏外）
        new_account_manager={
        apiids_no="",
        version_max="1.30.0",     -- 总开关
        game_in = {     -- 游戏内精准控制到版本
              version_max="1.30.0",
        },
       --game_out = {     -- 游戏外精准控制到版本
       --version_max="1.30.0",
       --},
        pass_modify_switch = true,    -- 密码修改强制退出开关,true是开，false是关
		pass_modify_quit_tips = "你的迷你号密码已修改，请重新输入密码登录"
    },
	
  --iOS渠道激活码页签开关
    ios_codereward_cfg = {
        open_flag = 1, -- 0:关闭,1:打开(默认1)
        version_max = "1.24.0", -- 最高版本号
    },

 --ip归属地开关显示
	ip_home = {
		version_min = "1.18.0", -- 最小版本
		apiids_no = "", -- 渠道
	},
  change_name = { apiids_no ="" ,
     close_start_time="2022-10-12 22:00:00",
     close_end_time="2022-10-12 23:00:00",
    }, ---是否可以改名字

	--安全定制装扮 是否可以编辑名称
	safetyCustomSkinEditRef = {apiids_no="",
     close_start_time="2022-09-06 10:35:00",
     close_end_time="2022-09-06 10:40:00",
    },
 	
	--安全心情修改 动态发布 动态回复 是否打开
 	safetyModifyRef = {apiids_no="",
     close_start_time="2022-10-12 22:00:00",
     close_end_time="2022-10-12 23:00:00",
    },
 
 	--检查是否打开安全 IM群组相关开关是否打开
 	safetyIMGroupRef = {apiids_no="",
     close_start_time="2022-10-12 22:00:00",
	 close_end_time="2022-10-12 23:00:00",
   },

	--检查是否打开安全 IM房间内、家园相关开关是否打开
 	safetyIMRoomRef = {apiids_no="",
     close_start_time="2022-10-12 22:00:00",
     close_end_time="2022-10-12 23:00:00",
   },

		--个人中心 地图推荐语修改
		map_recommend = {
			apiids_no = "",
			close_start_time="2022-10-12 22:00:00",
		   	close_end_time="2022-10-12 23:00:00",
		},

display_developstore_vipset = {
      

    }, -- 显示开发者商店大会员配置开关

    --好友配置相关
    new_friend_cfg = {
        search_pull_page_num = 12,  -- 分页最大拉取数量
        search_max_num       = 100, -- 搜索返回uin最大数量
        recommend_max_num    = 100, -- 推荐返回uin最大数量
		apply_notice_num      = 120, -- 申请提醒值
        apply_notice_repeat_day = 48, -- 申请失效时间，单位h，0表示永久 
    },

-- 周年庆速配派对匹配地图
match_party = {
	{mapId = "94884417504234",},
	{mapId = "95541547500522",},
	{mapId = "94837172863978"},
	{mapId = "95429878350826"}
},
    -- 新游戏退出界面
    new_exitGame = {
        newexitGame_look = 1 -- 0:老的, 1:新的
    },
	-- 地图触发器交互界面时间间隔
    TriggerMapInteractive = {
        TriggerMapInteractive_time = 10, -- 单位分钟
		TriggerMapInteractive_startTime = 3 -- 游戏开始后多少时间才会显示
    },
	--免流量包配置
    mobile_data_package = {
        open = 1, -- 0:关闭,1:打开(控制开关展示，默认1)
        day_show_limit = 1, --(弹窗每日曝光上限配置：默认1)
        total_show_limit = 7, --(弹窗曝光次数关闭配置：默认7)
        clear_record = 0, -- 0:关闭,1:打开(弹窗曝光次数全部清零配置:默认0)
		apiids_no = "58,21,116,129,128,113,112,102,125,126,127,110,124,123,199,109,122,121,101,100"	--允许的渠道列表
    },
--新隐私协议配置
	new_policy = {
		apiids_no = "0",
		new_ui_tab = {
			policyText = "我已详细阅读并同意[color=#76b04a]<html><a href='1'>《游戏许可及服务协议》</a></html>[color]、[color=#76b04a]<html><a href='2'>《隐私政策》</a></html>[color]、[color=#76b04a]<html><a href='3'>《儿童隐私政策》</a></html>[color]",
policyText2 = "我已详细阅读并同意[color=#76b04a]<html><a href='0'>《%s》</a></html>[color]、[color=#76b04a]<html><a href='1'>《游戏许可及服务协议》</a></html>[color]、[color=#76b04a]<html><a href='2'>《隐私政策》</a></html>[color]、[color=#76b04a]<html><a href='3'>《儿童隐私政策》</a></html>[color]",
			urlList = {
				"http://www.mini1.cn/index.php/licenseAgreement",
				"http://www.mini1.cn/index.php/privacyPolicy",
				"https://www.mini1.cn/children.html"
			} --对应policyText 里面的超链接索引
		},
		old_ui_tab = {
			policyText = "我已详细阅读并同意 #L#cfa7a0f《游戏许可及服务协议》@@1#n、#L#cfa7a0f《隐私政策》@@2#n、#L#cfa7a0f《儿童隐私政策》@@3#n",
			urlList = {
				"http://www.mini1.cn/index.php/licenseAgreement",
				"http://www.mini1.cn/index.php/privacyPolicy",
				"https://www.mini1.cn/children.html",
			}, 
		}
	},

    --通用邀请弹窗显示配置
	common_invite_config = {
		version_min = "1.20.0", -- 最小版本
		--队伍邀请
		team = {
			cd = 12,
		},
		--房间邀请
		room = {
			cd = 12,
		},
		--好友申请
		friend = {
			cd = 12,
		},
		--家园邀请
		homeland = {
			cd = 12,
		},
		--排序规则
		invitekeycfg = {
		{ key = 'exp_invitepop_01',sortrule ={1,4,5,7},},
		{ key = 'exp_invitepop_02',sortrule ={1,4,5,7},},
		{ key = 'exp_invitepop_03',sortrule ={1,4,5,7},},
	},
	},

	safety_platform_switch = {
		--地图评论
		map_comment = {
 			close_start_time="2022-10-12 22:03:00",
    		close_end_time="2022-10-12 22:30:00",
		},	

        --组队玩 队伍名称
		teamup_name = {
			apiids_no = "",
			close_start_time="2022-10-19 22:00:00",
		   	close_end_time="2024-01-16 12:00:00",

		},

		--资源工坊
		resource_center = {
			apiids_no = "",
			close_start_time="2022-10-19 22:00:00",
			close_end_time="2022-10-23 22:00:00",

		},
	},

    --地图卡滑动停留上报 时间 单位：秒
    map_card_stay_report_interval = 0,


    --信息卡配置
    playerInfoCard = {
        --不可被查看信息卡的uin列表
        prohibitLook = {
            1000,
            10000,
            1107,
            1108,
            1109,


            593853376,
        },

        --大数据短标签 最大展示数量，不配代表不限制（有多少显示多少）
        labelShowCnt = 3,

        --大数据短标签 排序顺序（归类值，未配的按返回顺序拼后面）
        lableGroupSort = "1,2,4,3,5",

        --大数据短标签 颜色配置 归类值 <-> 颜色Code(支持 green, blue, yellow, pink, orange)
        labelGroupColor = {
            --未配置或者不支持的颜色Code 目前默认是green 2022.10.26
            --[GroupValue] = "green",
            [1] = "green",
            [2] = "blue",
            [3] = "yellow",
            [4] = "pink",
            [5] = "orange",
        },
    },

	--性别开关配置
	show_gender = {
    	open = 0, -- 0:关闭  1:开启
		version_min = "1.18.0", -- 最小版本
		apiids_no= "", -- 渠道
	},

	--方块形状开关（是否打开，默认选择）
	block_switch = {
       showBlock = 1, -- 0=显示,1=关闭
       default = 0, -- 默认选择0=圆角,1=直角
    },
	--数据周报配置
	weekly_report = {
		open = 1, -- 0:关闭  1:开启
        players_type = 1, -- 0:所有用户 1:开发者 
        creator_level = 1,  --开发者等级1及以上
		--apiids_no = "", --屏蔽的渠道列表
		qr_code_no ="21", --配置中的渠道不会拼接二维码
    },

--老的写字板和留言板没有时间戳的是否做隐藏处理 true隐藏 false不隐藏
        hide_unmoderated_text_old_version = {
                open = false,
 --老版本客户端是否能够使用字牌等 true 不能使用 false 能够使用
                old_client_notable_using = false,
        },
--星工厂星装扮上传开关
	avaterArDressOpen = {
		open = true
	},

NearbyFriend = {
                --附近人总开关
                is_Open = true,
                --附近人位置上报时间间隔
                location_report_lenth = 600,
                --附近人禁止使用渠道
                apiids_no= '60,19,3,999',
        },

--客服系统按钮显示配置
	customerservice = {
		version_min = "1.20.10", -- 最小版本
		apiids_no= "36,21",
        --apiids= "1,110,69,96,92,94,65,74,80,112,50,67,78,71,113,84,95,73,82,70,83,77,90,49,10,999",
	},

-- 进入云服房间自动开启语音
auto_voice_cloud = {
	{	
version_min = "1.17.0", -- 最小版本
mapid =11,
roomids = {}
	}
}

}


