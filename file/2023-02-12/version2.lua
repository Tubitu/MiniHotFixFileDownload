{
    ver = '0.12.1',
    _file_desc_ = "version2_0",
	    {
        -- 20230206 fym 【藏品集市】bug更新
        ver_list = "1.23.0 1.23.1 1.23.2 1.23.5",
        install = function()

            -- 1、【藏品集市】藏品列表翻页功能
            local AuctionSystemDataManager = ClassList["AuctionSystemDataManager"] or {}; 
            AuctionSystemDataManager.ResetSaleData = function(self)
                self.SaleData = nil
            end

            -- 查看商品（售卖列表）点击事件
            local AuctionMarketCtrl = ClassList["AuctionMarketCtrl"] or {}; 
            AuctionMarketCtrl.ItemDetailBtn_OnClick = function (self, obj, context)
                print("fym test AuctionMarketCtrl.ItemDetailBtn_OnClick hotfix update")
                local itemId = self.model:GetSelectItemId()
                local item_type = self.model:GetSelectItemType()
                standReportEvent("2211", "FREE_MARKET", "FreeMarketGoodsButton", "click", {standby1 = item_type, standby2 = itemId})
                self:RequestGoodsList(function()
                    self.view.widgets.IsShowItemDetail:setSelectedIndex(1)
                end)
            end

            -- 统一接口：请求指定商品的售卖数据  点击查看商品按钮、变更排序方式都走这个逻辑
            AuctionMarketCtrl.RequestGoodsList = function (self, call_back)
                print("fym test AuctionMarketCtrl.RequestGoodsList hotfix update")
                local item_type = self.model:GetSelectItemType()
                local itemId = self.model:GetSelectItemId()
                if not item_type or not itemId or itemId == 0 then
                    return
                end
                GetInst("AuctionSystemDataManager"):ResetSaleData()
                local page_index = 1
                self.model:SetPageIndex(page_index)
                local sort_type = self.model:GetSortType() or 1
                GetInst("AuctionSystemService"):ReqAuctionSaleData(item_type, itemId, page_index, sort_type, function(ret)
                    if ret and ret.ret == 0 and ret.data and ret.data[1] then
                        self.view.widgets.none_solt_tip:setVisible(false)
                        if call_back and type(call_back) == "function" then
                            call_back()
                        end
                        self:UpdateGoodsDetailListView()
                    else
                        self.view.widgets.none_solt_tip:setVisible(true)
                    end
                end)
            end

            -- 2、【藏品集市】上架商品功能页中帮助按钮打开说明界面
            local SaleManagerCtrl = ClassList["SaleManagerCtrl"] or {}
            if SaleManagerCtrl.RegisterUIEvents then
                print("fym test SaleManagerCtrl.RegisterUIEvents hotfix update")
                local old_func = SaleManagerCtrl.RegisterUIEvents;
                SaleManagerCtrl.RegisterUIEvents = function(self)
                    -- 帮助按钮
                    GetInst("MiniUIEventDispatcher"):addEventListener(self.view.widgets.btn_help, UIEventType_Click, function(obj, context)
                        local context = [[1、冒险家可上架部分藏品内容进行售卖，需设置藏品价格、售卖时间和是否匿名出售；tips：可查看近期成交记录来了解当前藏品平均成交价格噢~#r
    2、藏品上架前需处于非使用状态，并且上架后藏品状态将会进行隐藏，上架期间无法使用藏品；若冒险家需恢复藏品使用，需将藏品进行下架处理；#r
    3、售卖时间结束后，藏品未售出则不会在自由市场展示，玩家需进行重新上架等处理；#r
    4、藏品手续费将会在成功交易后进行扣除，未成交藏品不会扣除手续费；冒险家们交易成功后记得前往“我的藏品”领取相应货币噢~#r
    5、藏品手续费是根据藏品定价的8%来收取，手续费将会在交易成功后进行扣除；#r
    6、藏品上架后约5分钟才会出现在自由市场中，请各位冒险家耐心等待；#r
    7、通过出售藏品获得的迷你币不可用于购买藏品、发送红包和赠送功能。]]
                        GetInst("UIManager"):Open("CommonHelp", {textTitle = GetS(170207), textContent = context})
                    end)
                    
                    old_func(self)
                end
            end
        end
    },
    {
        -- by lizi
        -- 20230112  IP问题-凹凸皮肤文案热更
        ver_list = "1.23.0 1.23.1 1.23.2",
        install = function()
            local ShopSkinDisplayView = ClassList["ShopSkinDisplayView"] or {}
            if ShopSkinDisplayView.SetDesc then
                local OLD0112_SkinDisplay_SetDesc = ShopSkinDisplayView.SetDesc;
                ShopSkinDisplayView.SetDesc = function(self, skinDef)
                    OLD0112_SkinDisplay_SetDesc(self, skinDef);

                    --凹凸皮肤描述修正
                    if skinDef.ID == 305 then
                        local descDef = self.define.desc
                        local descColor1 = descDef.descColor[1]
                        local descColor2 = descDef.descColor[2]
                        local descColor3 = descDef.descColor[3]
                        local skindefDesc = "同伴，是永远不能背叛的！"
                        self:GetChild("Desc",self.descPanel):SetText(skindefDesc,descColor1,descColor2,descColor3)
                    end
                end
            end
        end
    },
	{
        -- 20230113 fym 更新 迷你币充值注意事项说明
        ver_list = "1.23.0 1.23.1 1.23.2",
        install = function()
            function BuyMiniCoinHelpFrame_OnShow()	
                getglobal("BuyMiniCoinHelpFrameBkg"):SetSize(690,440);
                getglobal("BuyMiniCoinHelpFrameTitle"):SetSize(690,56);
                getglobal("BuyMiniCoinHelpFrameBox"):SetSize(650,360);
                getglobal("BuyMiniCoinHelpFrameBoxPlane"):SetSize(650,360);
                getglobal("BuyMiniCoinHelpFrameTitleName"):SetText(GetS(30182));
                local rich = getglobal("BuyMiniCoinHelpFrameBoxContent")
                rich:resizeRect(650, 26);
                local str = [[	1、赠送部分的迷你币不可用于藏品集市、发送红包和赠送功能。#r
    2、首充双倍档位即——PC及安卓渠道100元充值1000迷你币赠送1000迷你币档位、10元充值100迷你币赠送100迷你币档位；iOS渠道108元充值1080迷你币赠送1080迷你币档位、12元充值120迷你币赠送120迷你币档位#r
    3、官方不会有任何转账和发红包的要求，要求转账发红包的都是骗子！#r
    4、不要相信“破解版本”，不要相信“冒充客服”的陌生人！]]
                rich:SetText(str, 61, 69, 70);
                rich:ScrollFirst();	
                rich:SetWidth(650);
            end
        end
    },
	{
        --by lizi
        --20230111  协助处理iOS平台上报缺失参数问题
        ver_list = "1.23.0",
        install = function()
            if _G.OnPlatformStandReportEvent then
                _G.OnPlatformStandReportEvent = function(sceneId, columnId, componentId, eventCode, ...)
                   local params = {...} --不定参数
                    local eventtbs = {} --standby参数
                    for key, value in ipairs(params) do
                        eventtbs[string.format("standby%d", key)] = value;
                    end
                    print('OnPlatformStandReportEvent',sceneId, columnId, componentId, eventCode, eventtbs)
                    standReportEvent(sceneId, columnId, componentId, eventCode, eventtbs);
                end
            end
        end
    },
	{ 
		ver_list = "1.23.0 1.23.1 1.23.3", 
		install = function() 
			--qp
			local DeveloperEditTriggerModel = ClassList["DeveloperEditTriggerModel"] or {}; 
			DeveloperEditTriggerModel.InitItemConfig = function(self) 
				self:LoadClickNewTriggerItemPro()
				self.data.itemConfig = {}
				self.data.itemConfig[self.define.itemConfig.event] = {}
				self.data.itemConfig[self.define.itemConfig.condition] = {}
				self.data.itemConfig[self.define.itemConfig.action] = {}
				local localtrgger = false
				local curtype = self:GetCurType()
				if curtype and curtype.name then
						localtrgger = ScriptSupportCtrl:checkLocalMainType(curtype.name)
				end
				local itemtype = -1
				if self:GetIncomingParam() then
						itemtype = self:GetIncomingParam().Itemtype or -1
				end
				local keyname = nil
				if localtrgger and curtype and curtype["require"] then
						local key, id = next(curtype["require"])
						keyname = key
				end
				local iscommerce = false
				-- 过滤商业广告触发器
				local worldDesc = AccountManager:getCurWorldDesc()
				if worldDesc and worldDesc.TempType then
						-- iscommerce = worldDesc.TempType == 1 and (worldDesc.gwid > 0 and worldDesc.pwid > 0)
				elseif self.data.LocalEventTypeID[keyname] == 12  then
						iscommerce = true
				end
				local NS_Sheet = {
						--播放视频的触发器
						[3160004] = 'video_trigger_switch',
						--播放qq音乐的触发器
						[1130001] = 'music_trigger_switch',
						[2100004] = 'music_trigger_switch',
						[3140022] = 'music_trigger_switch',
						[3140023] = 'music_trigger_switch',
						--爱奇艺的事件触发器
						[1020012] = 'iqiyi_event_switch',
						-- 显示板视频
						[3200002] = 'display_board_video',
						[3200006] = 'display_board_video',
						[3200007] = 'display_board_video',
						[3200003] = 'display_board_UI',
						--触发器广告配置
						[2130001] = 'triggerPlayAD',
						[3160001] = 'triggerPlayAD',
						[3160002] = 'triggerItemOpenDevStore',
						[3160003] = 'triggerItemOpenTopPurchase',
						[3160005] = 'triggerPlayAD',
						[3160006] = 'triggerItemOpenDevStoreNew',
						--触发器埋点数据接口
						[3210015] = 'trigger_data',
				}
				--xyang黑名单
				local NS_BlackSheet = {
						--触发器广告配置
						[2130001] = 'triggerItemBlackList',
						[3160001] = 'triggerItemBlackList',
						[3160002] = 'triggerItemBlackList',
						[3160003] = 'triggerItemBlackList',
						[3160005] = 'triggerItemBlackList',
						[3160006] = 'triggerItemBlackList',
				}
				local function display_board_switch ()
						local on = false
						if ns_version then
								on = check_apiid_ver_conditions(ns_version.display_board_switch , false)
						end
						return on
				end
				local function checkNsSwitch(id)
						local on = false
						if NS_Sheet[id] and ns_version then
								on = check_apiid_ver_conditions(ns_version[NS_Sheet[id]] , false)
								if NS_BlackSheet[id] then--黑名单优先级高
								   on = not check_apiid_ver_conditions(ns_version[NS_BlackSheet[id]] , false)
								end
						end
						return on
				end
		
				local uitrgger = curtype and curtype.name == 'coustomui'
				local function CanshowTable(data)
						if data == nil and data.DisplayFilter == nil then return true end
						-- 事件不是类型对应的事件类型(例如 局部触发器中方块插件只显示方块事件)
						if localtrgger and data.Type == self.define.itemConfig.event and (keyname and data.ChildType ~= self.data.LocalEventTypeID[keyname]) then
								return false
						end
						if data.Type == 3 and data.ChildType == 20 and  not display_board_switch() then
								return false
						end
						local returnTypeTable = StringSplit(data.DisplayFilter,",")
						if returnTypeTable == nil then return false end
						if localtrgger then  -- 局部触发器过滤
								local ignlist = StringSplit(returnTypeTable[3],"|")
								if itemtype ~= -1 and tonumber(ignlist[1]) ~= 0 then
										for k ,v in pairs(ignlist) do
												if tonumber(v) == itemtype then
														return true
												end
										end
										return false
								else
										return tonumber(returnTypeTable[2]) == 1
								end
						else -- 全局触发器过滤
								if #returnTypeTable >= 4 and iscommerce then
										return tonumber(returnTypeTable[4]) == 0 -- 如果是模板地图 4号位标记为1 的禁用
								end
								if NS_Sheet[data.ID] then
										return tonumber(returnTypeTable[1]) == 1 and checkNsSwitch(data.ID)
								end
								if uitrgger == false and ((data.Type == 3 and data.ChildType == 19) or
												(data.Type == 2 and data.ChildType == 15) or (data.Type == 1 and data.ChildType == 12)) then
										-- return false
										return data.ID == 3190009 or data.ID == 3190010
								end
								
								return tonumber(returnTypeTable[1]) == 1
						end
						return false
				end
		
				local function getTypeConfig(typeTable,type,childType)
						local childTypeTable = {}
						local typeBase = type * self.define.itemConfig.itemTypeBase
						local childTypeBase = childType * self.define.itemConfig.itemChildTypeBase
						local startIndex = typeBase + childTypeBase + 1
						local endIndex = startIndex + self.define.itemConfig.itemChildTypeMaxCount
						for i = startIndex,endIndex do 
								local triggerItemDef = ScriptSupportFunc:getTriggerItemDef(i, true)
								if triggerItemDef and CanshowTable(triggerItemDef) then  -- 局部过滤显示触发器
										table.insert(childTypeTable,triggerItemDef)
										self:CheckAndAddNewTriggerItemDef(triggerItemDef, type, childType)
								else
										-- break
								end 
						end 
						if #childTypeTable ~= 0 then
								typeTable[childType] = childTypeTable
						end 
				end 
		
				
				for i = 1,self.define.itemConfig.maxChildType do
						getTypeConfig(self.data.itemConfig[self.define.itemConfig.event],self.define.itemConfig.event,i)
						getTypeConfig(self.data.itemConfig[self.define.itemConfig.condition],self.define.itemConfig.condition,i)
						getTypeConfig(self.data.itemConfig[self.define.itemConfig.action],self.define.itemConfig.action,i)
				end
			end 
			--ht
			local createWorldTempleteCtrl = ClassList["createWorldTempleteCtrl"] or {}; 
			createWorldTempleteCtrl.tableCellAtIndex = function(self, tableView, index)
					local data = self.model:GetDataByShowIdx(index+1);
					local cell = self.view:UpdateTableViewCell(data, index, index + 1 == self.model:GetSelectIdx());

					local img = self.view:GetChild("Img", cell)
					local imgName = img:GetName()

					if data and data.imgUrl then
							local path = "ui/mobile/texture0/bigtex/" .. data.imgUrl
							img:SetTexture(path)
					elseif data and data.webUrl then
							local url_list = {data.webUrl}
							local cache_file_path = mapservice.downloadThumbnailRoot .. ns_advert.func.trimUrlFile(data.webUrl)
							img:SetTexture(mapservice.thumbnailDefaultTexture)

							DownloadThumbnail(url_list, cache_file_path, imgName, nil, nil, userdata);        
					elseif data and not data.imgUrl and not data.webUrl and data.mapHttpInfo then
							local function DownloadThumbnailCallback(status, errcode, filepath, userdata)
									local newData = self.model:GetDataByShowIdx(index+1);

									if not filepath then
											return;
									end

									if not status == NewMiniWorksServiceDownloadStatus.downloadSucess then
											return;
									end

									local templete = GetInst("UIManager"):GetCtrl("createWorldTemplete");
									if not templete or not templete.view then
											return;
									end

									img:SetTexture(filepath)
							end

							GetInst("NewMiniWorksService"):GetMapThumbnail(data.mapHttpInfo, nil, DownloadThumbnailCallback);
					elseif data and not data.imgUrl and not data.webUrl and not data.mapHttpInfo then
							local img = self.view:GetChild("Img", cell)
							img:SetTexture("ui/mobile/texture0/bigtex/RandomTerrain.png")
					end
					return cell
			end
		end, 
	},
	{
        -- 20221228 wangyu 海洋运营活动跳转问题修复
        ver_list = "1.22.0",
        install = function()
            if _G.g_jump_ui_switch then
                _G.g_jump_ui_switch[87] = function()
                    if getglobal("ActivityMainFrame"):IsShown() and ActivityMainFrame then
                        ActivityMainCtrl:AntiActive()
                    end
                    GetInst("OceanActivityMgr"):openMainView()
                end
            end
        end
    },
	{
        -- by lizi
        -- 20221227  商城气泡首次进去显示空白问题
        ver_list = "1.20.10 1.20.12 1.20.13 1.21.0 1.21.2 1.22.0",
        install = function()
            if ClassList["ChatBubbleMgr"] then
                ClassList["ChatBubbleMgr"].GetChatbubbleCfg = function(self)
                    if self.bubblecfg and next(self.bubblecfg) then 
                        return self.bubblecfg
                    end
                    self.bubblecfg = {};
                    local orginsdata = ns_business_config.bubble_cfg.orig;
                    for key, val in pairs(orginsdata or {}) do
                        local min_ver = val and val.Min_version or "";
                        local version_min_ = ClientMgr:clientVersionFromStr(min_ver);
                        local version_now_ = ClientMgr:clientVersion();
                        print( "version=" .. version_min_ .. "/" .. version_now_ );
                        if  version_min_ <= version_now_ then
                            self.bubblecfg[key] = val;
                        end
                    end
                    return self.bubblecfg;
                end
            end

            if ClassList["BroadcastMgr"] then
                ClassList["BroadcastMgr"].GetBroadcastCfg = function(self)
                    if self.broadcastcfg and next(self.broadcastcfg) then 
                        return self.broadcastcfg
                    end
                    self.broadcastcfg = {}
                    local orginsdata = ns_business_config.broadcast.orig;
                    for key, val in pairs(orginsdata or {}) do
                        local min_ver = val and val.Clt_version or "";
                        local version_min_ = ClientMgr:clientVersionFromStr(min_ver);
                        local version_now_ = ClientMgr:clientVersion();
                        print( "version=" .. version_min_ .. "/" .. version_now_ );
                        if  version_min_ <= version_now_ then
                            self.broadcastcfg[key] = val;
                        end
                    end
                    return self.broadcastcfg;
                end
            end
        end
    },
	{
        -- 20221227 fym 修复云服地图自建房间与现有房间id相同的情况下，在两个房间内分别发红包偶现失败的问题
        ver_list = "1.21.0 1.21.2 1.22.0",
        install = function()
            function GetCurWorldIdAndRoomId()
                local map_id, room_id, name
                if ClientCurGame:isInGame() and CurWorld and AccountManager:getMultiPlayer() > 0 then
                    if ROOM_SERVER_RENT == ClientMgr:getRoomHostType() then
                        room_id = GetCurrentCSRoomId() -- 云服有房间id
                        if WorldMgr and WorldMgr.getFromWorldID then
                            map_id = WorldMgr:getFromWorldID()
                            name = WorldMgr:getCurWorldName() or RoomInteractiveData.curInRoomName
                        else
                            map_id = DeveloperFromOwid
                            name = RoomInteractiveData.curInRoomName
                        end
                    else
                        if IsRoomOwner() then
                            -- 房主
                            local wid = CurWorld:getOWID()
                            local worldDesc = AccountManager:findWorldDesc(wid)
                            if worldDesc then
                                if worldDesc.fromowid and worldDesc.fromowid ~= 0 then
                                    map_id = worldDesc.fromowid						
                                elseif worldDesc.worldid and worldDesc.worldid ~= 0 then
                                    map_id = worldDesc.worldid
                                else
                                    map_id = wid				
                                end
                                name = worldDesc.worldname
                            else
                                map_id = wid
                            end
                        else
                            -- 客机
                            if WorldMgr and WorldMgr.getFromWorldID then
                                map_id = WorldMgr:getFromWorldID()
                            else
                                map_id = DeveloperFromOwid
                            end
                            local worldDesc = AccountManager:findWorldDesc(map_id)
                            if worldDesc then
                                name = worldDesc.worldname
                            end
                        end
                    end
                end
                print("GetCurWorldIdAndRoomId map_id = ", map_id, ", room_id = ", room_id or "nil", ", map_name = ", name)
                return map_id, room_id, name or ""
            end
        end
    },
	{
        -- by wangyang
        -- 20221226 消息中心
        ver_list = "1.21.0 1.21.2",
        install = function()
            local CompSysMsgDetailCtrl = ClassList["CompSysMsgDetailCtrl"] or {}; 
            CompSysMsgDetailCtrl.BtnRefuseClick = function(self)
                local data = self.model:GetDetailData()
                local msgData = data.data
                if msgData then
                    local jump = msgData.extra and msgData.extra.jump or {}
                    if next(jump) then
                        if tonumber(jump.jump_to) == 460 then -- 工作室邀请同意
                            -- JumpToFucntion[460](jump.jump_name, 0)
                            if GetInst("WorkSpaceDataManager") then
                                GetInst("WorkSpaceDataManager"):ReqConfirmInvite(tonumber(jump.jump_name), 0)
                            end
                        elseif tonumber(jump.jump_to) == 463 then -- 工作室邀请同意
                            -- JumpToFucntion[463](0)
                            GetInst("WorkSpaceDataManager"):ReqConfirmVipInvite(0)
                        end
                    end
                end
            end

            CompSysMsgDetailCtrl.BtnGotoClick = function(self)
                local data = self.model:GetDetailData()
                local msgData = data.data
                if msgData then
                    local jump = msgData.extra and msgData.extra.jump or {}
                    if next(jump) then
                        if tonumber(jump.jump_to) == 460 then -- 工作室邀请同意
                            -- JumpToFucntion[460](jump.jump_name, 1)
                            if GetInst("WorkSpaceDataManager") then
                                GetInst("WorkSpaceDataManager"):ReqConfirmInvite(tonumber(jump.jump_name), 1)
                            end
                        elseif tonumber(jump.jump_to) == 463 then -- 工作室邀请同意
                            -- JumpToFucntion[463]()
                            GetInst("WorkSpaceDataManager"):gotoWebCheckVipInvite()
                        else
                            threadpool:work(function()
                                self:MsgItemJump(jump.jump_type, jump.jump_to, {type = 0, jump = jump})
                            end)
                        end
                    end
                end
                -- 按钮被点击
                GetInst("MessageCenterDataMgr"):ReportEvent('MAIL_CONTENT_2', 'JumpButton', 'click', data.reportParam)
            end
        end
    },
	{
		ver_list = "1.21.0",
		install = function()
			--wangshuai
			local ScriptSupportTask = _G.ScriptSupportTask
			if ScriptSupportTask then
				
				local DataJsonLenMax = 60*1024
				--[[
					新配置需要合并发送给客机的消息包
					上面SSTASKID定义的消息如果需要打包发送就需要在MergeMsgID中定义
				]]--
				local MergeMsgID = {
					-- [SSTASKID.PLAYER_SHOWUI] = {1}, --打开一个UI界面 --屏蔽
					[SSTASKID.CUSTOMUI_SETTEXT] = {1}, --设置customui元素文字
					[SSTASKID.CUSTOMUI_SETTEXTURE] = {1}, --设置customui元素纹理
					[SSTASKID.CUSTOMUI_SETSIZE] = {1}, --设置customui元素大小
					[SSTASKID.CUSTOMUI_SETFONTSIZE] = {1}, --设置customui元素文本大小
					[SSTASKID.CUSTOMUI_SETCOLOR] =  {1}, --设置customui元素文本颜色
					[SSTASKID.CUSTOMUI_SHOWELEMENT] = {1}, --显示customui界面的元素
					[SSTASKID.CUSTOMUI_ROTATEELEMENT] = {1}, --旋转customui界面的元素
					[SSTASKID.CUSTOMUI_SETELEMENTALPHA] = {1}, --设置customui元素透明度
					[SSTASKID.CUSTOMUI_SETELEMENTSTATE] = {1}, --设置customui元素状态
					[SSTASKID.CUSTOMUI_SETELEMENTPOSITION] = {1}, --设置customui元素位置
				}
				
				
				ScriptSupportTask.constructor = function(self)
					self.DevEventPermits = {}
					self.DevActionPermits = {}
					self.m_PkgMsg = {}
					self.m_lastSyncData = {}
					self.m_UinList = {}
					self.taskBatchSendCount = 0
					self.taskBatchSendCountMax = 1
					self.CJson = require("cjson")
				end

				ScriptSupportTask.getAllPlayersUin = function(self)
					return self.m_UinList
				end
				
				ScriptSupportTask._tojson = function (self,tab)
					local ok, json = pcall(JSON.encode, JSON, tab);
					if ok then
						return json;
					else
						print(' _tojson table to json failed',tab);
					end
					return ''
				end
			
				ScriptSupportTask._totab = function (self,json)
					local ok, t = pcall(JSON.decode, JSON, json);
					if ok and type(t) == 'table' then
						return t;
					else
						print('json to table failed ',json);
					end
					return {}
				end
			
				ScriptSupportTask.OnTick = function (self)
					--不需要同步时，不进行任何操作
					if not self:batchTableHasAny() then
						return
					end
				
					self.taskBatchSendCount = self.taskBatchSendCount + 1
					--每隔一段时间，同步一次客机的task
					if self.taskBatchSendCount >= self.taskBatchSendCountMax then
						--按用户传输需要同步的内容
						for uin, tdTable in pairs(self.m_PkgMsg) do
							local maxIdx = tdTable.idx
							local msgList = tdTable.msg
							local tabs = {}
							for i = 1, maxIdx do
								if msgList[i] then
									table.insert(tabs, msgList[i])
								end
							end
							-- 编码
							if #tabs > 0 then
								local paramjson = self:_tojson(tabs) or ''
								-- 同步
								if string.len(paramjson) <= DataJsonLenMax then
									if WorldMgr and WorldMgr.syncSSTaskToPlayer then
										WorldMgr:syncSSTaskToPlayer(uin, SSTASKID.HOST_MERGEMSGID, paramjson)
									end
								else --极限情况分包发送
									--[[
										tabs = {msg,msg,msg}
									]]
									local len = 0
									local curmsg ={}
									local count = 0
									for i = 1, #tabs do
										local curjson = self:_tojson(tabs[i]) or ''
										local tlen = string.len(curjson)
										if len + tlen > DataJsonLenMax then --
											curjson = self:_tojson(curmsg) or ''
											if WorldMgr and WorldMgr.syncSSTaskToPlayer and curjson ~= '' then
												WorldMgr:syncSSTaskToPlayer(uin, SSTASKID.HOST_MERGEMSGID, curjson)
											end
											curmsg = {}
											len = 0
											count = 0
										end
										count = count + 1
										curmsg[count] = tabs[i]
										len = len + tlen
									end
									if #curmsg > 0 then
										local curjson = self:_tojson(curmsg) or ''
										if WorldMgr and WorldMgr.syncSSTaskToPlayer then
											WorldMgr:syncSSTaskToPlayer(uin, SSTASKID.HOST_MERGEMSGID, curjson)
										end
										curmsg = {}
									end
								end
							end
						end
						self.m_PkgMsg = {}
						self.taskBatchSendCount = 0
			
						--这里需要标记一下idx 表示上一个tick的数据
						for uin, tdTable in pairs(self.m_lastSyncData) do
							for taskid, tab in pairs(tdTable) do
								for key, _ in pairs(tab) do
									self.m_lastSyncData[uin][taskid][key].idx = -1
								end
							end
						end
						
					end
				end
			
				ScriptSupportTask.batchTableHasAny = function(self)
					if next(self.m_PkgMsg) then
						return true
					end
					return false
				end
			
				ScriptSupportTask.ClearSyncData = function (self,playerid)
					if playerid then
						self.m_lastSyncData[playerid] = nil
						for i, uin in ipairs(self.m_UinList) do
							if uin == playerid then
								table.remove(self.m_UinList, i)
								break
							end
						end
					else
						self.m_lastSyncData = {}
						self.m_UinList = {}
					end
				end
			
				ScriptSupportTask.InitSyncData = function (self,playerid)
					for _, uin in ipairs(self.m_UinList) do
						if uin == playerid then
							return
						end
					end
					table.insert(self.m_UinList, playerid)
				end
			
				ScriptSupportTask.pushOneUinMsg = function(self,uin,taskid,param,key)
					if not self.m_lastSyncData[uin] then self.m_lastSyncData[uin] = {} end
					if not self.m_lastSyncData[uin][taskid] then self.m_lastSyncData[uin][taskid] = {} end
					if not self.m_PkgMsg[uin] then self.m_PkgMsg[uin] = {idx = 0, msg = {}} end
				
					local oldParamTab = self.m_lastSyncData[uin][taskid][key]
					if not oldParamTab then
						local idx = self.m_PkgMsg[uin].idx + 1 --递增索引
						self.m_PkgMsg[uin].idx = idx
						self.m_PkgMsg[uin].msg[idx] = {p = param, i = taskid}
			
						self.m_lastSyncData[uin][taskid][key] = {param = param, idx = idx}
					else
						local oldIdx = oldParamTab.idx --旧值数组中的索引
						if oldIdx == -1 then
							--上一个tick有发这个数据，需要判断是否一样
							if table.equal(oldParamTab.param, param) then
								--啥都不干
							else
								self.m_PkgMsg[uin].msg[oldIdx] = nil --旧值置空
								local idx = self.m_PkgMsg[uin].idx + 1 --递增索引
								self.m_PkgMsg[uin].idx = idx
								self.m_PkgMsg[uin].msg[idx] = {p = param, i = taskid} --赋值新索引
			
								oldParamTab.param = param
								oldParamTab.idx = idx
							end
						else
							self.m_PkgMsg[uin].msg[oldIdx] = nil --旧值置空
							local idx = self.m_PkgMsg[uin].idx + 1 --递增索引
							self.m_PkgMsg[uin].idx = idx
							self.m_PkgMsg[uin].msg[idx] = {p = param, i = taskid} --赋值新索引
			
							oldParamTab.param = param
							oldParamTab.idx = idx
						end
					end
				end
			
				ScriptSupportTask.pushMsg = function(self,playerid,taskid,param)
					local paramix = MergeMsgID[taskid]
					local key = ''
					for _, v in pairs(paramix) do
						local ix1 = paramix[v]
						if ix1 and param[ix1]  then
							key = tostring(param[ix1])
						end
					end
			
					if playerid == 0 then
						local array = self:getAllPlayersUin()
						for i = 1, #array do
							self:pushOneUinMsg(array[i],taskid,param,key)
						end
					else
						self:pushOneUinMsg(playerid,taskid,param,key)
					end
				end
				
				ScriptSupportTask.Host_MergeMsg = function (self,playerid, tdata)
					--客户端兼容 新老版本数据打包
					local key = next(tdata)
					if type(key) == "number" then
						for i = 1, #tdata do
							local taskid = tdata[i].i
							-- 执行
							local funcname = self.TaskReg[taskid]
							local func = funcname and self[funcname]
							if func then
								func(self, playerid, tdata[i].p)
							end
						end
					else
						for k, v in pairs(tdata) do
							k = tonumber(k)
							-- 如果后面开发者相关接口打包发送了 需要检测开发者权限
							-- 执行
							local funcname = self.TaskReg[k]
							local func = funcname and self[funcname]
							if func then
								for i = 1, #v, 1 do
									func(self, playerid, v[i])
								end
							end
						end
					end
				end
				
				-- 同步任务给客机执行
				ScriptSupportTask.sendTaskToPlayer = function(self, playerid, taskid, tdata)
					playerid = playerid or 0 -- nil表示全部广播
					if taskid == nil or tdata == nil  then
						return false
					end
					if not self.TaskReg[taskid] then
						assert(false)
						return false
					end
					if MergeMsgID[taskid] then --数据打包发送
						self:pushMsg(playerid, taskid, tdata)
						return true
					end

					-- 编码
					local paramjson = ScriptSupportCtrl:tableToJson(tdata) or ''
					if string.len(paramjson) > DataJsonLenMax then
						assert(false)
						return false
					end

					-- 同步
					if WorldMgr and WorldMgr.syncSSTaskToPlayer then
						local ret = WorldMgr:syncSSTaskToPlayer(playerid, taskid, paramjson)
						if ret then
							return true
						end
					end
					--assert(false)
					return false
				end
			end
		end
	},
	{
        -- 20221214 fym 修复 发红包失败后提示不正确 的问题
        ver_list = "1.21.0",
        install = function()
            -- 请求服务器发红包
            local RedPocketService = ClassList["RedPocketService"] or {}
            RedPocketService.ReqSendRedPocket = function(self, param, report)
                local reqParams = self:ParamCheck(param)
                if not reqParams then
                    if report and report.fail_callback and type(report.fail_callback) == "function" then
                        report.fail_callback()
                    end
                    return
                end
                local url = g_http_root .. "miniw/red_packet?"
                reqParams.act = 'make_red_packet'
                local paramStr, md5 = http_getParamMD5(reqParams)
                url = url .. paramStr .. '&md5=' .. md5
                ShowLoadLoopFrame(true, "red_packet?act=make_red_packet")
                ns_http.func.rpc(url, function(ret)
                    ShowLoadLoopFrame(false)
                    print("ReqSendRedPocket ret = ", ret)
                    if ret and ret.ret == 0 then
                        if report and report.success_callback and type(report.success_callback) == "function" then
                            report.success_callback(ret.data and ret.data.rp_index or "")
                        end
                        GetInst("MiniUIManager"):CloseUI("RedPocketAutoGen")
                    elseif ret then
                        if report and report.fail_callback and type(report.fail_callback) == "function" then
                            report.fail_callback()
                        end
                        if ret.ret == 1000014 then
                            ShowGameTipsWithoutFilter(GetS(70921))
                        elseif ret.ret == 1000019 then
                            ShowGameTipsWithoutFilter(GetS(70917))
                        else
                            ShowGameTipsWithoutFilter("操作失败，请稍后重试")				
                        end
                    end
                end, nil, nil, true, true)
            end

            --初始化界面
            local SelectFriendView = ClassList["SelectFriendView"] or {}
            SelectFriendView.Refresh = function(self, list)
                if tolua.isnull(self.widgets.friends_list) or tolua.isnull(self.widgets.none_friend_tips) then
                    return
                end
                standReportEvent("1015", "CHOOSE_BLESS_FRIEND", "ChooseBlessFriend", "view")
                if list and next(list) then
                    self.widgets.friends_list:removeChildren()
                    for i, info in ipairs(list) do
                        if info and info.uin and info.uin > 1000 then
                            local item = UIPackage:createObject("RedPocket", "FrendTemplate")
                            if item and info.needpull ~= 1 then
                                self:UpdateFriendUI(item, info)
                                local in_room = item:getChild("in_room")
                                if in_room then
                                    in_room:setText(GetS(70930))                    
                                end
                                self.widgets.friends_list:addChildAt(item, i - 1)
                            end
                        end
                    end
                    self.widgets.IsHaveFriendCtlr:setSelectedIndex(1)
                else
                    self.widgets.IsHaveFriendCtlr:setSelectedIndex(0)
                end
            end

            -- 20221214 wangyu 头像编辑界面报错问题修复
            local main_personalHead_settingView = ClassList["main_personalHead_settingView"] or {};
            main_personalHead_settingView.InitView = function(self)
                self.widgets.frame3Title:setText(GetS(3489))
                HeadCtrl:CurrentIconHead(self.widgets.headIcon);
            end
        end
    },
	{ 
		ver_list = "1.21.0", 
		install = function() 
			--hongtao
			local PropertyUIController = ClassList["PropertyUIController"] or {}; 
			PropertyUIController.OnShortcutLostFocus = function(self, context, node)
				local text = self:getText()
				local number_str = string.byte(text)
				local number = tonumber(number_str)
				if number and 97 <= number and number <= 122 then
					number = number - 32
					local str = string.char(number)
					self:setText(str)
				--     --小写字母转换成大写，但是按键值不转
				--     local str = string.char(number - 32)
				--     self:setText(str)
				-- elseif number and 65 <= number and number <= 90 then
				--     --按键值转小写
				--     number = number + 32
				end
				if number and 65 <= number and number <= 90 then
					---------------按钮绑定输入65-90（ASCII码）-------------------
					node:dispatcher(UIEditorDef.UIEDITOR_MSG.set_ui_btn_key_bind_ctl,number)
				end
				if "" == text then
					---------------传入空字符则解除绑定-------------------
					node:dispatcher(UIEditorDef.UIEDITOR_MSG.set_ui_btn_key_bind_ctl,0)
				end
			end

			local UIEditorModel = ClassList["UIEditorModel"] or {}; 
			UIEditorModel.loadInfoFromProject = function(self, project, owid)
				self.data.pUIProject = project
				self.data.authorUin = project:GetAuthorUin()
				self.data.author = project:GetAuthorName()
				self.data.uiid = project:GetId()
				self.data.name = project:GetName()
				self.data.path = project:GetPath()
				self.data.createTime = project:GetCreateTime()
				self.data.modifyTime = project:GetModifyTime()
				self.data.fromId = project:GetFromId()
				self.data.size = project:GetDirSize()
				self.data.layerLevel = project:GetFrameLevel()

				self.data.isTemplete = project:GetAttributeSwitchState(DEVUI_PROJECT_ATTR_TEMPLATE)
				self.data.openShowMouse = project:GetAttributeSwitchState(DEVUI_PROJECT_ATTR_OPERATEMOUSE)
				self.data.openOtherCloseMe = project:GetAttributeSwitchState(DEVUI_PROJECT_ATTR_AUTOCLOSE)

				local allVisible = false
				local toprightVisible = false
				self.toprightList = {}
				self.toprightList[UIEditorDef.TREE_ITEM_TYPE.MAP] = 1
				self.toprightList[UIEditorDef.TREE_ITEM_TYPE.SHOP] = 1
				self.toprightList[UIEditorDef.TREE_ITEM_TYPE.INVITE] = 1
				self.toprightList[UIEditorDef.TREE_ITEM_TYPE.CHAT] = 1
				for index, value in pairs(UIEditorDef.TREE_ITEM_TYPE) do
					if value < 31 then
						if value == UIEditorDef.TREE_ITEM_TYPE.CHAT then--xyang 新版新增了聊天按钮，显示选项需要和老版本小地图保持一致。为了向下兼容，新代码第一次进入后需要对chat初始化
							if owid and 0 ~= owid then
								local hadChat = self:GetWDescEx(owid,"UIEditorTreeItemHadChat")
								if not hadChat then--没有值，需要初始化
									self:SetWDescEx(owid,"UIEditorTreeItemHadChat",1)
									local bVisible = project:GetGameElementStateEx(UIEditorDef.TREE_ITEM_TYPE.MAP)--获取小地图是否显示
									project:SetGameElementStateEx(UIEditorDef.TREE_ITEM_TYPE.CHAT, bVisible)--设置入聊天按钮
								end
							end
						end
						self.data.uiMainVisible[value] = project:GetGameElementStateEx(value)
						if self.data.uiMainVisible[value] then
							allVisible = true
						end
						if self.toprightList[value] and self.data.uiMainVisible[value] then
							toprightVisible = true
						end
					end
				end
				self.data.uiMainVisible[UIEditorDef.TREE_ITEM_TYPE.MAIN] = allVisible
				self.data.uiMainVisible[UIEditorDef.TREE_ITEM_TYPE.TOPRIGHT] = toprightVisible

				self.data.currentState = 1
				self.data.states = {}

				self.data.stateDatas = {}

				local strKeyBind = project:GetKeyBindStr()
				local tabKeyBind = json2table(strKeyBind)
				for _, value in ipairs(tabKeyBind) do
					local pos = string.find(value, "#")
					local nodeid = string.sub(value, 1, pos - 1)
					local keyCode = tonumber(string.sub(value, pos + 1))

					self.data.keyBind[nodeid] = keyCode
				end
				-- print(' keybind :', self.data.keyBind)

				local printInfo = {
					isTemplete = self.data.isTemplete,
					openShowMouse = self.data.openShowMouse,
					openOtherCloseMe = self.data.openOtherCloseMe,
				}

				for _, key in pairs(UIEditorDef.SET_VAL_KEY) do
					local val = project:GetLuaValue(key)
					if val then
						self.data.setVal[key] = val
					end
				end
				-- print('luaSetVal', self.data.setVal)
				-- print('project set:', printInfo)
			end

			local ResourceDataManager = ClassList["ResourceDataManager"] or {}; 
			ResourceDataManager.SetGloaderIconCustomPic = function(self, oldGloader, strPicId)
				local gloader = tolua.cast(oldGloader, "miniui.GLoader")
				if not gloader then return end

				gloader:setURL("miniui/miniworld/img_custompicture_loading_big.png")
				gloader:setCustomData(strPicId);

				if self.data.customPicDownError[strPicId] then
					local width = gloader:getWidth()
					local height = gloader:getHeight()
					if width < 160 or height < 160 then
						gloader:setURL("miniui/miniworld/img_custompicture_deleteresource_small.png")
					else
						gloader:setURL("miniui/miniworld/img_custompicture_deleteresource_big.png")
					end
				end

				self:DownCustomPicByStrId(strPicId, function(user_data, val)
					gloader = tolua.cast(gloader, "miniui.GLoader")
					if not gloader then return end
					local curUrl = gloader:getCustomData();
					if type(curUrl) ~= "string" then
						print('gloder is release!!')
						return
					end

					if curUrl ~= "" and not string.find(curUrl, strPicId) then
						print('gloader changed icon:',  strPicId, curUrl)
						return
					end

					if val == 0 then
						local path = user_data.filePath
						if self.data.customPicReadError[path] then
							return
						end

						if self.data.customPicMiniMapError[path] == nil and (gloader:getName() == "miniIcon" or gloader:getName() == "icon_item") then
							local miniMapPath = self:GetCustomPicMinPic(path, true)
							if miniMapPath then
								gloader:setURL(miniMapPath)
								return
							end
						end

						local tex, realWidth, realHeight = CustomPicMgr:GetTexture2DFromCustomPicFile(path, 0, 0)
						if tex then
							tex = tolua.cast(tex, "cc.Texture2D")
							if tex then
								gloader:setTexture(tex)
							end
						else
							self.data.customPicReadError[path] = 1
						end
					else
						local width = gloader:getWidth()
						local height = gloader:getHeight()
						if width < 160 or height < 160 then
							gloader:setURL("miniui/miniworld/img_custompicture_deleteresource_small.png")
						else
							gloader:setURL("miniui/miniworld/img_custompicture_deleteresource_big.png")
						end
					end
				end)
			end
		end, 
	},
	{
        -- 20221213 wangyu 新增积分商城全局跳转id
        ver_list = "1.21.0",
        install = function()
            if _G.g_jump_ui_switch then
                _G.g_jump_ui_switch[1019] = function()
                    ShopJumpTabView(24)
                end
            end
        end
    },
	{
        -- 20221207 wangyu 修复积分商城开关控制问题
        ver_list = "1.20.10 1.20.12 1.20.13",
        install = function()
            local ShopService = ClassList["ShopService"] or {};
            ShopService.InitIntegralMallConfig = function (self, cfg)
                local config = cfg and cfg.IntegralMall or nil
                if config and check_apiid_ver_conditions(config) then
                    self.data.IntegralMallSwitch = config.switch
                else
                    self.data.IntegralMallSwitch = nil
                end
            end
        end
    },
	{
        -- 20221129 lizi 部分玩家登陆卡顿问题
        ver_list = "1.20.10",
        install = function()
            if _G.DownloadPicAndSet then
                _G.DownloadPicAndSet = function(icon,url,Frame)
                    if "string" == type(url) and #url > 0 then
                        local filePath = g_photo_root .. getHttpUrlLastPart(url) .."_";     --加上"_"后缀       
                        local function downloadFinish()     
                             local fsize = gFunc_getStdioFileSize(filePath)/1000
                             if fsize > 0 then
                                setkv( url, filePath );
                                if icon and icon.SetTexture then
                                    icon:SetTexture(filePath);
                                    IconFit(icon);
                                    if Frame and not Frame:IsShown() then 
                                        Frame:Show()
                                    end 
                                elseif not tolua.isnull(icon) and icon.setURL then
                                    if gFunc_isStdioFileExist(filePath) then
                                        icon:setURL(filePath)
                                    end
                                    if not tolua.isnull(Frame) and Frame then 
                                        Frame:setVisible(true)
                                    end 
                                end
                                
                                -- RefreshActivityAllIcons()
                             end
                        end
                        ns_http.func.downloadPng( url, filePath, nil, nil, downloadFinish );
                    end
                end
            end
        end
    },
    {
        -- 20221124 wangyu 修复个人形象可设置未拥有装扮和坐骑的问题
        ver_list = "1.20.10 1.20.12",
        install = function()
            local main_personalImage_settingCtrl = ClassList["main_personalImage_settingCtrl"] or {};
            main_personalImage_settingCtrl.Btn_useClick = function (self)
                --使用中直接返回
                if self.view.widgets.btn_use:getController("useState"):getSelectedIndex() == 1 then
                    return
                end
                
                local param = copy_table(self.model:GetSelectSkinInfo())
                
                if param.SkinID > 0 then
                    local skinTime = AccountManager:getAccountData():getSkinTime(param.SkinID)
                    if skinTime ~= -1 then
                        return
                    end
                end
                if param.MountID > 0 and param.MountBaseId > 0 then
                    local level = AccountManager:getAccountData():getHorseLevel(param.MountBaseId)
                    if level < (param.MountID - param.MountBaseId) then
                        return
                    end
                end

                local callback = function (ret)
                    HideNoTransparentLoadLoop()
                    if ret.code == 0 then
                        local usingList = self:GetBtnUsingList()
                        for key, value in pairs(usingList) do
                            if key == self.define.tabType.skin then
                                --#standby1:按钮状态：1=使用 2=购买 3=前往，#standby3：使用成功(上报使用的skin_id)
                                standReportEvent("7", "LOOK_EDIT", "SkinChooseUseButton", "click",{standby1 = 1,standby3 = value})
                            elseif key == self.define.tabType.mount then
                                standReportEvent("7", "LOOK_EDIT", "RideChooseUseButton", "click",{standby1 = 1,standby3 = value})
                            elseif key == self.define.tabType.avater then
                                local avater_id = JSON:encode(value)
                                standReportEvent("7", "LOOK_EDIT", "AvatarChooseUseButton", "click",{standby1 = 1,standby3 = avater_id})
                            end
                        end

                        ShowGameTipsWithoutFilter(GetS(173010))
                        GetInst("PlayerCenterManager"):SetPlayerSkinInfo(param)
                        self.view.widgets.btn_use:getController("useState"):setSelectedIndex(1)
                    end
                end
                ShowNoTransparentLoadLoop()
                GetInst("PlayerCenterManager"):SetPersonCenterInfo(callback, param)
            end
            main_personalImage_settingCtrl.Mount_listClickItem = function (self, obj, context)
                local item = tolua.cast(context:getData(), 'miniui.GComponent') 
                local tablist = self.view.widgets.mount_list-- tolua.cast(obj, "miniui.GList")
                local index = tablist:getChildIndex(item) + 1
                --转换显示对象索引为项目索引。
                local itemIndex = tablist:childIndexToItemIndex(index) or 1
            
                local selStatus = self.view.widgets.btn_check:isSelected()
                local mountsSkinList = selStatus and self.model:GetAllMountsDataList() or self.model:GetOwnMountsDataList()
            
                local mountDef = mountsSkinList[itemIndex]
                local modelId = mountDef.BaseHorseID and (mountDef.BaseHorseID + mountDef.Level) or 0
                local curMountsID = self.model:GetSelectHorseId()
                --选中相同坐骑坐骑id置为0
                modelId = curMountsID == modelId and 0 or modelId
                local param = {
                    MountID = modelId,
                    MountBaseId = mountDef.BaseHorseID
                }
                self.model:SetSelectMountsInfo(param)
                self.model:SetSelectHorseId(modelId)
                self.model:SetSelectModelIndex(itemIndex,index)
            
                self.view:ShowMountsView(modelId)
                self.view:ShowItemSelectState(self.view.widgets.mount_list, index)
            
                if mountDef.gray and modelId ~= 0 then
                    self.view.widgets.btn_buy_mount:setVisible(true)
                    self.view.widgets.btn_buy_skin:setVisible(false)
                else
                    self.view.widgets.btn_buy_mount:setVisible(false)	
                end
                self.view.widgets.btn_use:setVisible(not mountDef.gray)
                if self.view.widgets.btn_buy_skin:isVisible() then
                    self.view.widgets.btn_use:setVisible(false)
                end
            
                self:ChangeBtnUsingState()
            end
            local main_personalImage_settingModel = ClassList["main_personalImage_settingModel"] or {};
            main_personalImage_settingModel.SetSelectMountsInfo = function (self, parm)
                self.SkinInfo.MountID = parm.MountID or 0
                self.SkinInfo.MountBaseId = parm.MountBaseId or 0
            end
            local PlayerCenterManager = ClassList["PlayerCenterManager"] or {};
            PlayerCenterManager.SetPersonCenterInfo = function (self, callback, parm)
                local url = g_http_root_map .. "/miniw/profile?"
                local reqParams = {}
                if parm and next(parm) then
                    --hasAvatar存在代表设置的是形象
                    if parm.HasAvatar then
                        local jsonStr = JSON:encode(parm.AvatarSkin)
                        local ctx = ns_http.func.url_encode(jsonStr)
                        reqParams = {
                            act = "setPersonCenterInfo",
                            Model = AccountManager:getRoleModel(),
                            SkinID = parm.SkinID,
                            MountID = parm.MountID,
                            HasAvatar = parm.HasAvatar,
                            AvatarSkin2 = ctx,
                        }
                    else
                        --设置头像
                        reqParams = {
                            act = "setPersonCenterInfo",
                            HeadInfo = JSON:encode(parm.HeadInfo)
                        }
                    end
                else
                    return
                end
                local paramStr = ""
                for index, value in pairs(reqParams) do
                    paramStr = paramStr .. "&" .. index .. "=" .. value
                end
                url = url .. paramStr .. "&" .. http_getS1Map()
                ns_http.func.rpc(url, callback, nil, nil, true)
            end
        end
    },
	{
        -- 20221122 fym 修复 订阅成功后无法领取奖励 的问题
        ver_list = "1.20.10 1.20.12",
        install = function()
            local ShopRechargeNewCtrl = ClassList["ShopRechargeNewCtrl"] or {};
            ShopRechargeNewCtrl.SubscribeReceiveBtn_OnClick = function(self, obj, context, index)
                local data = self.model:GetDataByIndex(index)
                if not data or not data.fee_id then return end
            
                local newStatusData = GetInst("ShopDataManager"):GetSubscriptionStatus()
                if not newStatusData or not next(newStatusData) then return end
            
                local rewardIndex = 0
                local fee_id = 0
                for k, v in pairs(newStatusData) do
                    if v and v[data.fee_id] then
                        for k1, v1 in pairs(v) do
                            if v1.RewardList then 
                                for k2, v2 in ipairs(v1.RewardList) do
                                    if v2.reward_status == 0 then
                                        rewardIndex = k2
                                        fee_id = k1
                                        break
                                    end
                                end
                            end
                        end
                    end
                end
            
                print("SubscribeReceiveBtn_OnClick fee_id ", fee_id, ", rewardIndex = ", rewardIndex)
                ShowLoadLoopFrame2(true, "ShopRechargeNewCtrl:SubscribeReceiveBtn_OnClick")
                GetInst("ShopService"):ReqGetSubscriptionReward(fee_id, rewardIndex, function(ret)
                    ShowLoadLoopFrame2(false)
                    print("user_get_subscribe_reward ret", ret)
                    if ret and ret[1].ret and ret[1].ret == 0 then
                        GetInst("ShopDataManager"):SetSubscriptionStatus(ret.data_info)
                        if GetInst("MiniUIManager"):IsShown("ShopRechargeNew") then
                            GetInst("MiniUIManager"):GetCtrl("ShopRechargeNew"):Refresh()				
                        end
                    end
                end)
            end
        end
    },
	{
	    --by fukaijian 拍脸弹窗触达率修复
	    ver_list = "1.20.0",
	    install = function()
	        if GetInst("ActivityPopupManager") then
	            GetInst("ActivityPopupManager").PreDownloadImg = function(self)
	                --将可视化配置加入到原Lua配置中
	                if ns_version.StrongBullet_Pop_New and not ns_version.StrongBullet_Pop_New_VisualAdded then 
	                    self:ConvertStrongPopupCfg()
	                    ns_version.StrongBullet_Pop_New_VisualAdded = true
	                end 
	                --下载图片
	                if ns_version.StrongBullet_Pop_New then
	                    local config = ns_version.StrongBullet_Pop_New
	                    for i = 1, #config do
	                        local aConfig = config[i]

	                        if aConfig.start_time and aConfig.end_time then
	                            local now = getServerTime()
	                            local start_time = uu.get_time_stamp(aConfig.start_time)
	                            local end_time = uu.get_time_stamp(aConfig.end_time)
	                            if  now > start_time - 86400 * 1 and now < end_time then
	                                --当前时间在开始时间前一天就可以开始下载了，且当前时间不能超过结束时间
	                                self:DownLoadPic(config[i])
	                            end
	                        end
	                    end
	                end 
	            end
	        end

	        if GetInst("VisualCfgMgr") and GetInst("VisualCfgMgr").ReqCfg then
	            GetInst("VisualCfgMgr").ReqCfg = function(self,key,callback)
	                local function rspCfg(ret)
	                    if ret then
	                        print("拉取可视化配置数据成功")
	                        self:SetCfg(key,ret)
	                        if key == "Act_PopView" then
	                            GetInst("ActivityPopupManager"):PreDownloadImg()
	                        end 
	                        if callback then 
	                            callback(ErrorCode.OK,ret)
	                        end  
	                    else
	                        print("拉取可视化配置数据失败")
	                        if callback then 
	                            callback(-1)
	                        end 
	                    end 
	                end
	                if key and self.md5s[key] then 
	                    local url,fileName = getLuaConfigFileInfo(self.md5s[key])
	                    if url and fileName then 
	                        local beginIndex = string.find(fileName,"_",1)
	                        if beginIndex then 
	                            fileName = string.sub(fileName,1,beginIndex - 1)
	                        end
	                        ns_http.func.downloadLuaConfig(url,fileName,self.md5s[key],rspCfg,"cdn")
	                    else
	                        print("获取可视化配置数据对应的url失败")
	                        if callback then 
	                            callback(-2)
	                        end 
	                    end 
	                else
	                    print("获取可视化配置数据对应的md5值失败")
	                    if callback then 
	                        callback(-3)
	                    end 
	                end 
	            end
	        end 
	    end
	},
    {
        --by wangyang 消息中心屏蔽测试消息
        ver_list = "1.20.0 1.20.2 1.20.4 1.20.5 1.20.6",
        install = function()
            local MessageCenterDataMgr = ClassList["MessageCenterDataMgr"] or {};
            MessageCenterDataMgr.InsertChannelMsgList = function(self, channel_id, sourcelist, readStatelist)
                channel_id = tostring(channel_id)
                self:GetChannelMsgData(channel_id)
                for i, v in ipairs(sourcelist) do
                    if not self.msgList[channel_id].msg_ids[v.id] and tostring(v.id) ~= '116422377327370000' then -- 这个id是一条误发的测试消息
                        table.insert(self.msgList[channel_id].msglist , v)
                        self.msgList[channel_id].msg_ids[v.id] = readStatelist[v.id] or 0  -- 0、未读  1、已读

                        -- 插入到需要请求的uin、地图列表中
                        self:GetUserinfo(v.send)
                        if v.extra then
                            if v.extra.uins then
                                for i, v_uin in ipairs(v.extra.uins or {}) do
                                    self:GetUserinfo(v_uin)
                                end
                            end
                            self:GetMapinfo(v.extra.map_id)
                        end
                    end
                end

                if #self.msgList[channel_id].msglist > 1 then
                    table.sort(self.msgList[channel_id].msglist, function(a, b) return a.createtime > b.createtime end)
                end

                -- 协程写文件
                threadpool:work(function()
                    self:WriteFile()
                end)

                -- 查询一下消息里涉及到的uin、和地图
                self:RequestUserInfo(self:GetRequestUinsLength()) -- 一次全拉
                self:RequestMapInfo(self:GetRequestMapsLength()) -- 一次全拉
            end
        end
    },
    {
        --by fukaijian 精选配置显示空白修复
        ver_list = "1.18.0 1.18.1 1.18.5 1.19.0 1.19.1 1.19.5 1.20.0 1.20.5 1.20.6",
        install = function()
            if GetInst("ActivityMgr") and GetInst("ActivityMgr").RspActBoxCfg then
                GetInst("ActivityMgr").RspActBoxCfg = function(self,key,code,ret,callback)
                    if code == ErrorCode.OK and ret and ret.enable then
                        --先排序
                        self:SortActBoxCfg(key,ret)
                        --再转换成原Lua数据
                        local retTable = nil
                        if key == "Sift" then
                            retTable = self:ConvertSiftCfg(ret)
                        elseif key == "Advert" then
                            retTable = self:ConvertAdvertCfg(ret)
                        elseif key == "Welfare" then
                            retTable = self:ConvertWelfareCfg(ret)
                        end
                        --数据转换完毕后走原逻辑
                        callback(retTable)
                    else
                        --精选数据拉取失败的概率比较大，如果拉取失败，用上一次拉取到的数据
                        if key == "Sift" then
                            local localData = GetInst("VisualCfgMgr"):GetCfg("Act_" .. key,true)
                            if localData then
                                self:RspActBoxCfg(key,ErrorCode.OK,localData,callback)
                            else
                                callback()
                            end
                        else
                            --走原逻辑
                            callback()
                        end
                    end
                end
            end

            if ActivityMainCtrl and ActivityMainCtrl.ResponseSiftData then
                ActivityMainCtrl.ResponseSiftData = function(self,ret_table_)
                    if  not ret_table_ then
                        return
                    end
                    local pop_advert = {};
                    pop_advert.pop_advert = ret_table_.pop_advert;
                    pop_advert.start_time = ret_table_.start_time;
                    pop_advert.end_time = ret_table_.end_time;
                    pop_advert.cd = ret_table_.cd;
                    pop_advert.count = ret_table_.count;

                    ret_table_ = ret_table_.fine_advert_config;
                    if  not ret_table_ then
                        return
                    end
                    ret_table_.pop_advert = pop_advert;
                    --过滤语言
                    if  get_game_lang() > 0 then
                        for i=1, #ret_table_ do
                            resetLangText( ret_table_[i], "title" );
                            resetLangText( ret_table_[i], "content" );
                            resetLangText( ret_table_[i], "time" );
                            resetLangText( ret_table_[i], "action_txt" );
                        end
                    end

                    --设置数据
                    self:SetSiftData(ret_table_)

                    --由于有下载返回慢的情况，等返回后判断下如果在精选界面，就刷新一下界面信息
                    if getglobal("ActivityMainFrame"):IsShown() and self.data and self.data.curType == self.def.type.sift then
                        self.view:ShowActivityByType(self.data)
                    end
                end
            end
        end
    },
    {
        -- 20221020 fym 修复 【avt】avt已拥有界面肤色标签被隐藏 的问题
        ver_list = "1.20.0",
        install = function()
            local ShopCustomSkinEditCtrl = ClassList["ShopCustomSkinEditCtrl"] or {};
            ShopCustomSkinEditCtrl.Refresh = function (self)
                local incomingParam = self.model:GetIncomingParam()
                if incomingParam then
                    self.model:SetCurEditType(incomingParam.editType)
                    self.model:InitSeatInfo()
                    self.model:OrganizeSkinPartDefs()
                    self.view:ShowHelpBtn(incomingParam.editType)
                    self.view:ShowRemakeBtn(incomingParam.editType)
                    self.view:ShowShareBtn(incomingParam.editType)
                    self.view:ShowStyleTab(incomingParam.editType)
                    self.view:SetTitleText(incomingParam.editType)
                    self.view:ShowBkg(incomingParam.editType)
                    self:ChangeTab(self.define.tabType.dress)
                    self.view:ShowActor(incomingParam.editType,self.model:GetSeatInfo())
                    self.view:ShowARTag(incomingParam.editType,self.model:GetSeatInfo())
                    self.finalStyleTabType = 0
                    self.define.saveinmap = incomingParam.saveinmap or false
                    if incomingParam.editType == 2 or incomingParam.editType == 3 then
                        self:ChangePartTab(2)
                        getglobal("ShopCustomSkinEditRightPanelPage1TypeSlidingBtn1"):Hide()
                    else
                        getglobal("ShopCustomSkinEditRightPanelPage1TypeSlidingBtn1"):Show()
                    end
                    -- 20D风控开关开启时不显示修改昵称按钮
                    local cfg = GetAppSafeGuardCfg("TwentyD")
                    local switch = cfg and cfg.switch or false
                    if cfg and check_apiid_ver_conditions(cfg) and switch then
                        switch = true
                    else
                        switch = false
                    end
                    if (incomingParam.editType == 1 and switch) or incomingParam.editType == 2 or incomingParam.editType == 3 then
                        getglobal("ShopCustomSkinEditCenterPanelEditName"):Hide()--审核编辑名字，定制皮肤、星装扮关闭
                        self.censorName = false --审查名称状态
                    else
                        getglobal("ShopCustomSkinEditCenterPanelEditName"):Show()--审核编辑名字，插件库定制皮肤开启
                        self.censorName = true --审查名称状态
                    end
                end
            end
        end
    },
    {
        ver_list = "1.20.0",
        --特殊字符昵称玩家无法查看装扮收集系统
        --by Garry
        install = function()
            if GetInst("SkinCollectManager") and GetInst("SkinCollectManager").getRequireUrl then
                GetInst("SkinCollectManager").getRequireUrl = function(self, param)
                    local url = g_http_root .. "/miniw/welfare?"
                    local param = param or {}
                    param["createTime"] = CSMgr:getAccountCreateTime()
                    if param["rolename"] then
                        param["rolename"] = ns_http.func.url_encode(ns_http.func.base64_encode(AccountManager:getNickName(),true))
                    end
                    local paramStr, md5 = http_getParamMD5(param)
                    url = url .. paramStr .. '&md5=' .. md5
                    return url
                end
            end
        end
    },
    {
        -- by changhongfeng
        -- 20221019  免流服务校验加密串删除
        ver_list = "1.12.0 1.12.2 1.12.3 1.12.4 1.12.5 1.12.6 1.12.8 1.13.0 1.13.1 1.13.2 1.13.3 1.13.5 1.13.6 1.14.0 1.14.1 1.14.2 1.14.3 1.14.4 1.15.0 1.15.1 1.15.2 1.15.3 1.15.5 1.16.0 1.16.1 1.16.2 1.17.0 1.17.1 1.17.2 1.18.0 1.18.1 1.18.5 1.19.0 1.19.1 1.19.5 1.20.0",
        install = function()
            if _G.ReqMobileDataPackageState then
                ReqMobileDataPackageState_Old = ReqMobileDataPackageState;
                _G.ReqMobileDataPackageState = function()
                    if IsInHomeLandMap and IsInHomeLandMap() then
                        --家园模式下不弹出
                        return
                    end

                    local MobileTipsShowed = getFunctionVpValue( ReqMobileDataPackageState_Old, "MobileTipsShowed")
                    --UI每次展示都会检查状态，这里检查是不是进入地图后第一次展示
                    if MobileTipsShowed then
                        return
                    end

                    --第一次检查状态后
                    MobileTipsShowed = true
                    setFunctionVpValue( ReqMobileDataPackageState_Old, "MobileTipsShowed", MobileTipsShowed)

                    --检查当前网络运营商
                    if get_game_env() ~= 1 then
                        --不是移动网络都不用弹
                        if ClientMgr:getNetworkState() ~= 2 then return end
                    end

                    local uin_ = AccountManager:getUin() or get_default_uin()
                    local sign_, s2t_, pure_s2t_ = get_login_sign()
                    local time_ = os.time()
                    local auth_ = gFunc_getmd5(time_ .. sign_ .. uin_)
                    local default_param = {
                        uin = uin_,
                        auth = auth_,
                        time = time_,
                        s2t  = pure_s2t_
                    }
                    local url = ""
                    if get_game_env() == 1 then
                        url = "https://h5.miniworldplus.com/api/traffic/user/getStatus?"
                    else
                        url = "https://actapi.mini1.cn/api/flow/user/getStatus?"
                    end
                    for k, v in pairs(default_param) do
                        if k ~= "uin" then
                            url = url .. "&" .. k .. "=" .. v
                        else
                            url = url .. k .. "=" .. v
                        end
                    end
                    url = url ..s2t_

                    local _callback = function(retstr)
                        local ret = JSON:decode(retstr)
                        if ret and ret.code == 200 then
                            if ret.data == 0 then
                                CheckMobileDataPackageState()
                            end
                        end
                    end

                    ns_http.func.rpc_string_raw_ex(url, _callback);
                end
            end
        end
    },
    {
        ver_list = "1.19.0 1.19.5",
        install = function()
            --qp
            SSClassTriggerContent.SetScriptInfo = function(self, triggerid, info)
                local gmstr = info.content
                if gmstr then
                    self:ClearScriptReport(triggerid)
                    local data  = {""}
                    local function FindStr(str,bparan)
                        local eparan = nil
                        if bparan == [[%[=*%[]] then  eparan = "%]=*%]" end
                        if bparan == [[']] then  eparan = [[']] end
                        if bparan == [["]] then  eparan = [["]] end
                        if not eparan then return end
                        local bx1,bx2 = string.find(str,bparan)
                        if bx2 then
                            if bparan == [[%[=*%[]] then
                                local tmp = string.sub(gmstr,bx1-2,bx1-1)
                                if tmp == '--' then
                                    return
                                end
                            end
                            local ex1,ex2 = string.find(str,eparan,bx2 + 1)
                            if ex2 then
                                return  bx2+1,ex1
                            end
                        end
                    end
                    while gmstr ~= '' do
                        local b ,e = FindStr(gmstr,'%[=*%[')
                        local b2,e2 = FindStr(gmstr,[[']])
                        if not b then
                            b = b2 e = e2
                        elseif b2 and b2 < b then
                            b = b2 e = e2
                        end
                        local b3,e3 = FindStr(gmstr,[["]])
                        if not b then
                            b = b3 e = e3
                        elseif b3 and b3 < b then
                            b = b3 e = e3
                        end
                        if not b or not e then break end
                        local str = string.sub(gmstr,b,e-1)
                        if str ~= '' then
                            str = string.gsub(str,"^[%s\n\r\t]*(.-)[%s\n\r\t]*$","%1")
                            local blen = false
                            for i = 1, #data, 1 do
                                if string.len(data[i]) + string.len(str) <= 65520 then
                                    data[i] = data[i]..'['.. str..'],'
                                    blen = true
                                    break
                                end
                            end
                            if not blen then
                                table.insert(data,str)
                            end
                        end
                        gmstr = string.sub(gmstr,e+1)
                    end
                    for i = 1, #data, 1 do
                        self:SyncSetScriptString(triggerid,i,data[i])
                    end
                end
            end
        end
    },
    {
        ver_list = "1.18.0 1.18.1 1.19.0 1.19.1 1.19.5",
        install = function()
            --zlj
            local GiftPackFrameOpenBtnOnClick_old = GiftPackFrameOpenBtn_OnClick;
            function GiftPackFrameOpenBtn_OnClick()
                -- body
                local gOpenType = getFunctionVpValue(GiftPackFrameOpenBtnOnClick_old, "gOpenType")
                if gOpenType == 0 then
                    GiftPackFrameCloseBtn_OnClick();
                    return
                end

                local gPackDef = getFunctionVpValue(GiftPackFrameOpenBtnOnClick_old, "gPackDef")
                if not CurMainPlayer or not gPackDef then return end

                local ret = 1
                local addlist = ""
                local gItemID = getFunctionVpValue(GiftPackFrameOpenBtnOnClick_old, "gItemID")
                local gPackShorCutIdx = getFunctionVpValue( GiftPackFrameOpenBtnOnClick_old, "gPackShorCutIdx")
                ret, addlist = CurMainPlayer:openPackGift(gItemID, gPackShorCutIdx, gPackDef.iPackID, addlist)
                if ret == 0 and addlist ~= nil and string.len(addlist) > 0 then
                    if not (ROOM_SERVER_RENT == ClientMgr:getRoomHostType()) then--云服
                        local list = split(addlist, "|")
                        for k,v in ipairs(list) do
                            local itemDef = ItemDefCsv:getAutoUseForeignID(math.floor(v/1000));
                            if itemDef then
                                ShowGameTips(GetS(21801)..itemDef.Name.."*"..v%1000, 3, nil, nil, true);
                            end
                        end
                    end

                    GiftPackFrameCloseBtn_OnClick();
                    ClientMgr:playSound2D("sounds/ui/info/book_seriesunlock.ogg", 1);
                else
                    local str = ""
                    if ret == 1 then
                        str = GetS(21799)
                    elseif ret == 3 then
                        str = GetS(21800)
                    else
                        str = GetS(21798)
                    end
                    ShowGameTips(str, 3);
                    ClientMgr:playSound2D("sounds/ui/info/crafting_error.ogg", 1);
                end
            end
        end
    },
    {
        ver_list = "1.17.0 1.18.0 1.18.1 1.19.0 1.19.1 1.19.5",
        install = function()
            --yangmingyang
            local ModManager = SandboxClass:Class("ModManager") or {};
            ModManager.GetTxtDescInModsOfMapAndSave = function(self,owid,onGame,specialType)
                onGame = onGame or true
                specialType = specialType or 0

                if onGame and self:isExistMod(owid,false) == false then
                    return
                end
                local rootpath = 'data'
                if specialType == 1 then rootpath = rootpath ..'/homegarden/homegarden_map' end
                local modFolderPath = rootpath..'/w' .. owid..'/mods'
                if  not gFunc_isStdioDirExist(modFolderPath) then return end

                local lang = AccountManager:getArchiveLang()
                local modpaths = {'plot' ,'task','block','actor','item','shop','status'}

                local GetTxtDescOfPlotMod = function (jstab,filename)
                    local property = jstab.property
                    local target_str = ''
                    if not property then return end
                    if property.name and property.name ~= '' then target_str = target_str .. property.name ..';' end
                    if property.content then
                        for i = 1, #property.content do
                            if property.content[i].text and  property.content[i].text ~= '' then
                                target_str = target_str .. property.content[i].text ..';'
                            end
                            if property.content[i].answer then
                                for j = 1, #property.content[i].answer do
                                    local answer_txt = ''
                                    answer_txt = property.content[i].answer[j].text
                                    if property.content[i].answer[j].multilangtext then
                                        local multiLangText = property.content[i].answer[j].multilangtext
                                        multiLangText = (ClientMgr and ClientMgr.parseTextFromLanguageJson) and ClientMgr:parseTextFromLanguageJson(multiLangText,lang) or ""
                                        if multiLangText and multiLangText ~= '' then
                                            answer_txt = multiLangText
                                        end
                                    end
                                    if answer_txt and answer_txt ~= '' then
                                        target_str = target_str .. answer_txt ..';'
                                    end
                                end
                            end
                            if  property.content[i].multilangtext then
                                local multiLangText = property.content[i].multilangtext
                                multiLangText = (ClientMgr and ClientMgr.parseTextFromLanguageJson) and ClientMgr:parseTextFromLanguageJson(multiLangText,lang) or ""
                                if multiLangText and multiLangText ~= '' then
                                    target_str = target_str .. multiLangText ..';'
                                end
                            end
                        end
                    end
                    if target_str ~= '' then
                        WorldStringManager:insert(filename,target_str,WSB_PLOT_MOD,owid,specialType)
                    end
                end

                local GetTxtDescOfTaskMod = function (jstab,filename)
                    local jstab = jstab.property
                    if not jstab then return end
                    local target_str = ''
                    local taskdef = nil
                    if jstab.id then
                        taskdef =  GameMod:createNpcTaskDef(jstab.id)
                    end
                    if not taskdef and jstab.copyid then
                        taskdef =  GameMod:createNpcTaskDef(jstab.copyid)
                    end
                    if not taskdef then return end

                    if jstab.name and jstab.name ~= '' then target_str = target_str .. jstab.name ..';' end
                    if  jstab.multilangtext then
                        local multiLangText = jstab.multilangtext
                        multiLangText = (ClientMgr and ClientMgr.parseTextFromLanguageJson) and ClientMgr:parseTextFromLanguageJson(multiLangText,lang) or ""
                        if multiLangText and multiLangText ~= '' then
                            target_str = target_str .. multiLangText ..';'
                        end
                    end

                    local function parsestr(data,ix)
                        local num = taskdef:getDialogueNum(ix)
                        for i = 1, #data do
                            local txt = data[i].text
                            if txt and txt ~= ''then
                                if i <= num then
                                    local def = taskdef:getDialogueDef(ix,i-1)
                                    if def then
                                        local str  = def.Text
                                        if string.sub(str,1,1) == '@' then
                                            local sid = tonumber(string.sub(str,1))
                                            if GetS(sid) ~= txt then
                                                target_str = target_str ..txt ..';'
                                            end
                                        else
                                            target_str = target_str ..txt ..';'
                                        end
                                    else
                                        target_str = target_str .. txt ..';'
                                    end
                                else
                                    target_str = target_str .. txt ..';'
                                end
                            end

                            if  data[i].multilangtext and ix == 0 then
                                local multiLangText = data[i].multilangtext
                                multiLangText = (ClientMgr and ClientMgr.parseTextFromLanguageJson) and ClientMgr:parseTextFromLanguageJson(multiLangText,lang) or ""
                                if multiLangText and multiLangText ~= '' then
                                    target_str = target_str .. multiLangText ..';'
                                end
                            end

                            if data[i].answer then
                                for j = 1, #data[i].answer do
                                    local txt = data[i].answer[j].text
                                    if txt and txt ~= '' then
                                        if i <= num then
                                            local def = taskdef:getDialogueDef(ix,i-1)
                                            if def then
                                                local asnum = def.getAnswerNum()
                                                if j <= asnum and def.getAnswerDef(j-1) then
                                                    local str = def.getAnswerDef(j-1).Text
                                                    if string.sub(str,1,1) == '@' then
                                                        local sid = tonumber(string.sub(str,1))
                                                        if GetS(sid) ~= txt then
                                                            target_str = target_str ..txt ..';'
                                                        end
                                                    else
                                                        target_str = target_str ..txt ..';'
                                                    end
                                                else
                                                    target_str = target_str .. txt ..';'
                                                end
                                            else
                                                target_str = target_str .. txt ..';'
                                            end
                                        else
                                            target_str = target_str .. txt ..';'
                                        end
                                    end
                                end
                            end
                        end
                    end

                    if jstab.plot_dialogue then
                        parsestr(jstab.plot_dialogue,0)
                    end

                    if jstab.uncompleted_dialogue then
                        parsestr(jstab.uncompleted_dialogue,1)
                    end

                    if jstab.completed_dialogue then
                        parsestr(jstab.completed_dialogue,2)
                    end

                    if target_str ~= '' then
                        WorldStringManager:insert(filename,target_str,WSB_TASK_MOD,owid)
                    end
                end

                local GetTxtDescOfBlockMod = function (jstab,filename)
                    local target_str = ''
                    local blockdef = nil
                    local property = jstab.property
                    if property.id then
                        blockdef =  GameMod:createBlockDef(property.id,true)
                    end
                    if not blockdef and property.copyid then
                        blockdef =  GameMod:createBlockDef(property.copyid,true)
                    end
                    if blockdef then
                        local data = nil
                        if  jstab.item_property then
                            data = jstab.item_property
                        elseif  property.english_name then
                            local ename = property.english_name
                            if ename == '' then return end
                            local ret ,content = ModMgr:readModJsonFileByPath(modFolderPath .. '/behavior/item/' .. ename.. '.json',false)
                            if ret then
                                local etab = json2table(content)
                                data = etab.property
                            end
                        end
                        if not data then return end
                        if data.name and data.name ~= "" and data.name ~= blockdef.Name then  target_str = target_str .. data.name ..';' end
                        if data.describe and data.describe ~= "" and data.describe ~= blockdef.MultiLangDesc then  target_str = target_str .. data.describe ..';' end

                        if  data.multilangname then
                            local multiLangText = data.multilangname
                            multiLangText = (ClientMgr and ClientMgr.parseTextFromLanguageJson) and ClientMgr:parseTextFromLanguageJson(multiLangText,lang) or ""
                            if multiLangText and multiLangText ~= '' and blockdef.MultiLangName then
                                target_str = target_str .. multiLangText ..';'
                            end
                        end

                        if  data.multilangdesc then
                            local multiLangText = data.multilangdesc
                            multiLangText = (ClientMgr and ClientMgr.parseTextFromLanguageJson) and ClientMgr:parseTextFromLanguageJson(multiLangText,lang) or ""
                            if multiLangText and multiLangText ~= '' and blockdef.MultiLangDesc then
                                target_str = target_str .. multiLangText ..';'
                            end
                        end
                    end

                    if property.name and property.name ~= '' then target_str = target_str .. property.name ..';' end
                    if target_str ~= '' then
                        local keystrstr = tostring(AccountManager:getUin()) .. filename
                        WorldStringManager:insert(keystrstr,target_str,WSB_BLOCK_MOD,owid)
                    end

                end

                local GetTxtDescOfMonsterMod  = function(jstab,filename)
                    jstab = jstab.property
                    if not jstab then return end
                    local checkActorCopyID =  function(actorid)
                        actorid = tonumber(actorid)
                        local num = DefMgr:getAntiCrackToLoadNum()
                        for i = 1, num, 1 do
                            local anticrack = DefMgr:getAntiCrackToLoadDef(i-1)
                            if anticrack and (anticrack.Type == 3 and anticrack.ID == actorid) then
                                return 3400
                            end
                        end
                        return actorid
                    end

                    local actorid = -1
                    local target_str = ""
                    if jstab.id then actorid =  jstab.id end
                    if jstab.copyid then actorid = checkActorCopyID(jstab.copyid) end

                    local customDef =  GameMod:createMonsterDef(actorid,false)
                    if customDef then
                        if jstab.name and jstab.name ~= '' and jstab.name ~= customDef.Name  then target_str = target_str .. jstab.name ..';' end
                        if jstab.desc and jstab.desc ~= '' then target_str = target_str .. jstab.desc ..';' end
                        if jstab.dialogue and jstab.dialogue ~= '' and jstab.dialogue ~= customDef.Dialogue then target_str = target_str .. jstab.dialogue ..';' end
                        if jstab.english_name and jstab.english_name ~= '' then filename = jstab.english_name end

                        if  jstab.multilangname then
                            local multiLangText = jstab.multilangname
                            multiLangText = (ClientMgr and ClientMgr.parseTextFromLanguageJson) and ClientMgr:parseTextFromLanguageJson(multiLangText,lang) or ""
                            if multiLangText and multiLangText ~= '' and customDef.Name then
                                target_str = target_str .. multiLangText ..';'
                            end
                        end

                        if  jstab.multilangdesc then
                            local multiLangText = jstab.multilangdesc
                            multiLangText = (ClientMgr and ClientMgr.parseTextFromLanguageJson) and ClientMgr:parseTextFromLanguageJson(multiLangText,lang) or ""
                            if multiLangText and multiLangText ~= '' then
                                target_str = target_str .. multiLangText ..';'
                            end
                        end

                        if target_str ~= '' then
                            local keystrstr = tostring(AccountManager:getUin()) .. filename
                            WorldStringManager:insert(keystrstr,target_str,WSB_ACTOR_MOD,owid)
                        end

                    end
                end

                local GetTxtDescOfItemMod = function (jstab,filename)
                    jstab = jstab.property
                    if not jstab then return end
                    local itemid = -1
                    local target_str = ""

                    if jstab.id then itemid =  jstab.id end
                    if jstab.copyid then itemid = jstab.copyid end

                    local customDef = GameMod:createItemDef(itemid)
                    if  customDef then
                        if jstab.name and jstab.name ~= '' and jstab.name ~= customDef.Name  then target_str = target_str .. jstab.name ..';' end
                        if jstab.describe and jstab.describe ~= '' and jstab.describe ~= customDef.Desc  then target_str = target_str .. jstab.describe ..';' end
                        if jstab.english_name and jstab.english_name ~= '' then filename = jstab.english_name end

                        if  jstab.multilangname then
                            local multiLangText = jstab.multilangname
                            multiLangText = (ClientMgr and ClientMgr.parseTextFromLanguageJson) and ClientMgr:parseTextFromLanguageJson(multiLangText,lang) or ""
                            if multiLangText and multiLangText ~= '' and customDef.Name then
                                target_str = target_str .. multiLangText ..';'
                            end
                        end

                        if  jstab.multilangdesc then
                            local multiLangText = jstab.multilangdesc
                            multiLangText = (ClientMgr and ClientMgr.parseTextFromLanguageJson) and ClientMgr:parseTextFromLanguageJson(multiLangText,lang) or ""
                            if multiLangText and multiLangText ~= '' and customDef.Desc ~= multiLangText then
                                target_str = target_str .. multiLangText ..';'
                            end
                        end

                        if target_str ~= '' then
                            local keystrstr = tostring(AccountManager:getUin()) .. filename
                            WorldStringManager:insert(keystrstr,target_str,WSB_ITEM_MOD,owid)
                        end

                    end
                end

                local GetTxtDescOfNPCShopMod = function (jstab,filename)
                    jstab = jstab.property
                    local target_str = ""
                    if not jstab then return end
                    if jstab.name and jstab.sShopName ~= '' then target_str = target_str .. jstab.sShopName ..';' end
                    if jstab.sShopDesc and jstab.sShopDesc ~= '' then target_str = target_str .. jstab.sShopDesc ..';' end
                    if jstab.english_name and jstab.english_name ~= '' then filename = jstab.english_name end


                    if target_str ~= '' then
                        local keystrstr = tostring(AccountManager:getUin()) .. filename
                        WorldStringManager:insert(keystrstr,target_str,WSB_NPCSHOP_MOD,owid)
                    end

                end


                local GetTxtDescOfStatusMod = function (jstab,filename)
                    jstab = jstab.property
                    local statusId = -1
                    local target_str = ""

                    if jstab.id then statusId =  jstab.id end
                    if jstab.copyid then statusId = jstab.copyid end

                    local customDef = GameMod:createStatusDef(statusId)
                    if  customDef then
                        if jstab.name and jstab.name ~= '' and jstab.name ~= customDef.Name  then target_str = target_str .. jstab.name ..';' end
                        if jstab.describe and jstab.describe ~= '' and jstab.describe ~= customDef.Desc  then target_str = target_str .. jstab.describe ..';' end
                        if jstab.english_name and jstab.english_name ~= '' then filename = jstab.english_name end

                        if  jstab.multilangname then
                            local multiLangText = jstab.multilangname
                            multiLangText = (ClientMgr and ClientMgr.parseTextFromLanguageJson) and ClientMgr:parseTextFromLanguageJson(multiLangText,lang)
                            if multiLangText and multiLangText ~= '' and customDef.Name then
                                target_str = target_str .. multiLangText ..';'
                            end
                        end

                        if  jstab.multilangdesc then
                            local multiLangText = jstab.multilangdesc
                            multiLangText = (ClientMgr and ClientMgr.parseTextFromLanguageJson) and ClientMgr:parseTextFromLanguageJson(multiLangText,lang)
                            if multiLangText and multiLangText ~= '' and customDef.Desc ~= multiLangText then
                                target_str = target_str .. multiLangText ..';'
                            end
                        end

                        if target_str ~= '' then
                            local keystrstr = tostring(AccountManager:getUin()) .. filename
                            WorldStringManager:insert(keystrstr,target_str,WSB_STATUS_MOD,owid)
                        end

                    end
                end

                --先删掉老的文件
                WorldStringManager:removeFile(WSB_PLOT_MOD)
                WorldStringManager:removeFile(WSB_TASK_MOD)
                WorldStringManager:removeFile(WSB_BLOCK_MOD)
                WorldStringManager:removeFile(WSB_ACTOR_MOD)
                WorldStringManager:removeFile(WSB_ITEM_MOD)
                WorldStringManager:removeFile(WSB_NPCSHOP_MOD)
                WorldStringManager:removeFile(WSB_STATUS_MOD)

                --再尝试写入新的内容
                local dirResult =  MdirScaner()
                ModFileMgr:scanOneLevel(modFolderPath,dirResult,true)

                local defaultUUID =  ModMgr:getMapDefaultModUUID()
                local dirCount = dirResult:getcount()
                for j = 0, dirCount - 1 do
                    local dir1 = dirResult:getPathIndex(j)
                    local str1 = string.gsub(dir1,"-","_")          --'-'会导致截断
                    local str2 = string.gsub(defaultUUID,"-","_")   --'-'会导致截断
                    if string.find(str1,str2) then
                        modFolderPath = dir1     --后面函数有用到
                        for k, v in pairs(modpaths) do
                            local dir = dir1..'/behavior/'..v
                            if gFunc_isStdioDirExist(dir) then
                                local files = ModFileMgr:getModFile(dir)
                                local icount = files:getcount()
                                for i = 1, icount, 1 do
                                    local file = files:getPathIndex(i-1)
                                    local filedir = dir..'/'..file..'.json'
                                    local ret ,content = ModMgr:readModJsonFileByPath(filedir,false)
                                    if ret then
                                        local tab = json2table(content)
                                        if  next(tab) ~= nil and tab.property then
                                            if v == 'plot' then GetTxtDescOfPlotMod(tab,file) end
                                            if v == 'task' then GetTxtDescOfTaskMod(tab,file) end
                                            if v == 'block' then GetTxtDescOfBlockMod(tab,file) end
                                            if v == 'actor' then GetTxtDescOfMonsterMod(tab,file) end
                                            if v == 'item' then GetTxtDescOfItemMod(tab,file) end
                                            if v == 'shop' then GetTxtDescOfNPCShopMod(tab,file) end
                                            if v == 'status' then GetTxtDescOfStatusMod(tab,file) end
                                        end
                                    end
                                end
                            end
                        end
                        break;
                    end
                end
            end
        end
    },
    {
        ver_list = "1.19.0 1.19.1 1.19.5",
        -- 20220927 by cym Bug修复-1.19.0更新后仓库物品消失
        install = function()
            local ShopWarehouseView = ClassList["ShopWarehouseView"] or {}
            ShopWarehouseView.ShowLayoutIsSearch = function(self, isSearch)
                self.isSearch = isSearch
                local screenHeight = 0
                if isSearch then
                    screenHeight = 400
                    self.ShopWarehouseBox:SetAnchorOffset(0, 50)
                    self.define.RightBoxListView.height = screenHeight
                    self.ShopWarehouseBox:SetHeight(screenHeight)
                else
                    screenHeight = 500
                    self.ShopWarehouseBox:SetAnchorOffset(0, 17)
                    self.define.RightBoxListView.height = screenHeight
                    self.ShopWarehouseBox:SetHeight(screenHeight)
                end
            end
        end
    },
    {
        -- by wangyu
        -- 20220923  退出地图判断是否需要显示悦享卡任务结算弹窗
        ver_list = "1.19.0 1.19.1 1.19.5",
        install = function()
            if ClassList["NewBattlePassDataManager"] then
                ClassList["NewBattlePassDataManager"].OnLeaveWorld = function(self)
                    --未命中的ABtest不显示任务结算弹窗
                    if not SetAndGetABTest("exp_battlepassmission_01") then
                        return
                    end
                    if not self:IsBPSeasonThree() then return end
                    local IsArchiveListShown = IsUIFrameShown("lobbyMapArchiveList")
                    local IsGameHallMainShown = GetInst("MiniUIManager"):GetCtrl("GameHallMain")
                    --不在开始游戏、联机大厅、主界面则不显示悦享卡任务结算弹窗
                    if not IsArchiveListShown and not IsGameHallMainShown and not IsMiniLobbyShown() then
                        return
                    end
                    --本周任务经验已达到数量上限则不显示悦享卡任务结算弹窗
                    local groupExp = GetInst("BPMissionCfg"):GetCurNewWeekData()
                    if groupExp and next(groupExp) and groupExp.exp_now_week >= groupExp.exp_max then
                        return
                    end
                    local callBack = function()
                        local notEmpty = false
                        local showMissiionList = GetInst("BPMissionCfg"):GetNeedShowMissionIdList()
                        for key, value in pairs(showMissiionList or {}) do
                            if value and next(value) then
                                --存在需要展示的每周任务
                                notEmpty = true
                                break;
                            end
                        end
                        if not notEmpty then return end
                        local now = AccountManager:getSvrTime()
                        local uin = AccountManager:getUin()
                        local isChecked =  getkv("BattlePassPopupTask"..uin) or 0
                        --选择了今日不再提示
                        if isChecked ~= 0 and IsSameDay(now, isChecked) then
                            GetInst("BPMissionCfg"):ClearNeedShowMissionIdList()
                            return
                        end
                        GetInst("MiniUIManager"):AddPackage({"miniui/miniworld/BattlePass"})
                        GetInst("MiniUIManager"):OpenUI("main_popuptask", "miniui/miniworld/BattlePass", "main_popuptaskAutoGen")
                    end
                    --离开游戏时进行一次批量上报
                    BatchReportNewBPTask(0,callBack)
                end
            end
        end
    },
    {
        --by huangrulin
        --hrl20220922 租赁服追踪
        ver_list = "1.17.0 1.17.1 1.17.2 1.18.0 1.18.1 1.19.0 1.19.1",
        install = function()
            if FriendTraceMgr and FriendTraceMgr.ReqTrace then
                local oldFunc = FriendTraceMgr.ReqTrace
                FriendTraceMgr.ReqTrace = function(self, desUin, rptInfo)
                    if desUin then
                        local fridData = GetFriendDataByUin(desUin, true, true) or {}
                        local ingameExdata = fridData.ingame_exdata
                        if ingameExdata then
                            local roomID = ingameExdata.roomID
                            local roomType = GetInst("RoomService"):GetRoomTypeByID(roomID)
                            if roomType == AllRoomManager.RoomType.CloudServer then
                                local roomUin, rid = getRoomUinAndRoomID(roomID)
                                if roomUin and rid then
                                    local roomlist, loginSuc =
                                    GetInst("RoomService"):ReqRoomListByUinSync(roomUin, rid, true, {connect_mode = "any"})
                                    roomlist = roomlist or {}
                                    if not loginSuc then
                                        ShowGameTips(GetS(146), 3)
                                        return
                                    end
                                    local roomDesc = roomlist[1]
                                    if roomDesc then
                                        GetInst("RoomService"):EnterRoomByDesc(0, false, roomDesc)
                                        return
                                    end
                                end
                            end
                        end
                    end
                    return oldFunc(self, desUin, rptInfo)
                end
            end
        end
    },
    {
        -- by huangxin：【【好友】连续快速点击好友跟随按键，会出现lua报错 bug
        ver_list = "1.19.0 1.19.1 1.19.5",
        install = function()
            function DealGamejoin(roomDesc,param)
                local owid = 0
                if  roomDesc and roomDesc.aid then
                    owid =  roomDesc.aid
                elseif param and param.cid then
                    owid =  param.cid
                end
                DealGameJoinOrGameOpen(owid,param)
            end
        end,
    },
    {
        -- by lizhibao
        -- 20220921  家园商店下架到期的巴啦啦系列宠物
        ver_list = "1.16.0 1.16.1 1.16.2 1.17.0 1.17.1 1.17.2 1.18.0 1.18.1 1.19.0 1.19.1 1.19.5",
        install = function()
            if ClassList["HomelandShopPetModel"] then
                ClassList["HomelandShopPetModel"].GetCurShowData = function(self)
                    local copyShowData = {}
                    local currShowType = GetInst("HomeLandConfig").define.HomeDrawTypeCfg.PetType;
                    local currShowData = GetInst("HomeLandConfig"):GetHomeDrawDefByType(currShowType);
                    for idx, data in pairs(currShowData) do
                        -- 热更处理 屏蔽掉版权到期的巴啦啦系列
                        if data and data.SeriesName ~= 40803 then
                            table.insert(copyShowData, data)
                        end
                    end
                    return copyShowData;
                end
            end
        end
    },
    {
        ver_list = "1.18.0 1.18.1",
        install = function()
            --yangmingyang
            local DeveloperEditTriggerModel = ClassList["DeveloperEditTriggerModel"] or {};
            DeveloperEditTriggerModel.DeletePlayAD = function(self, list)
                local ret = {}
                for k, v in pairs(list) do
                    if v[1] then
                        local Type = v[1].Type
                        local ChildType = v[1].ChildType
                        if Type == 3 and ChildType == 16 then--"开发者"
                            local tmp = {}
                            for k2, v2 in ipairs(v) do
                                local ID = v2.ID
                                if ID ~= 3160005 then-- "播放广告"
                                    table.insert(tmp, v2)
                                end
                            end
                            if tmp[1] then
                                ret[k] = tmp
                            end
                        elseif Type == 2 and ChildType == 13 then--"播放"
                            local tmp = {}
                            for k2, v2 in ipairs(v) do
                                local ID = v2.ID
                                if ID ~= 2130001 then-- "播放广告完成判断"
                                    table.insert(tmp, v2)
                                end
                            end
                            if tmp[1] then
                                ret[k] = tmp
                            end
                        else
                            ret[k] = v
                        end
                    else
                        ret[k] = v
                    end
                end
                return ret
            end
        end
    },
    {
        ver_list = "1.18.0 1.18.1",
        install = function()
            --wangshuai
            local findMd5StrFromCDNUrl1 = function(url)
                if type(url) ~= "string" then
                    return false
                end
                local startIndex, endIndex = 0, 0
                local startIndex = string.find(url:reverse(), '%/')
                startIndex = #url - startIndex + 2
                endIndex = startIndex + 32 - 1
                if startIndex < 1 or endIndex > #url then
                    return false
                end
                local str = string.sub(url, startIndex, endIndex)
                print("findMd5StrFromCDNUrl1 md5:", str)
                return string.match(str, "[A-Fa-f0-9]+", 1) == str, str
            end
            function HandleClientAssetsByUrl(url)
                if not _G.SSMgrAssets then
                    return
                end

                _G.SSMgrAssets.m_AssetsLoad = false
                _G.SSMgrAssets.assetsCount = 100000 --当需要下载时先把值设成最大值，放置立即就返加载完成
                _G.SSMgrAssets.audioAssetCount = 100000

                local ok, md5 = findMd5StrFromCDNUrl1(url)
                if not ok then
                    md5 = os.time()
                end
                local filepath = "data/http/ma/" .. md5 .. ".data"
                local function callback(user_data, code)
                    _G.SSMgrAssets:OnDownLoadConfig(user_data, code)
                end
                ns_http.func.downloadFile(url,filepath,md5,callback,{filepath = filepath})
            end

            function GetAssetsLoadFinished()
                if _G.SSMgrAssets.m_AssetsLoad then
                    return true
                end
                if _G.SSMgrAssets.assetsCount <= 0 and _G.SSMgrAssets.audioAssetCount <= 0 then
                    _G.SSMgrAssets.m_AssetsLoad = true
                    return true
                end
                return false
            end

            if _G.SSMgrAssets then
                _G.SSMgrAssets.OnDownLoadConfig = function(self, userdata, code)
                    local content = nil -- 解包缓存
                    local savedata = nil -- 存档数据
                    local datas = nil -- 加载数据
                    local filepath = userdata.filepath
                    if filepath then
                        local file = io.open(LuaInterface:getStdioRoot() .. filepath, 'r')
                        if file then
                            content = file:read('*a')
                            file:close()
                        else
                            self.m_AssetsLoad = true
                            return
                        end
                    else
                        print("OnDownLoadConfig ERROR! load filename failed")
                        self.m_AssetsLoad = true
                        return
                    end

                    -- 解包
                    if content then
                        local msgpack = loadwwwcache("MessagePack")
                        local data = ScriptSupportCtrl:decrypt(content)
                        if data and (data ~= "") then
                            savedata = msgpack.unpack(data)
                            if savedata and savedata.owid then
                                datas = savedata.data
                            else
                                datas = savedata -- 保留没有owid时的原始数据
                            end
                        end
                    end

                    if not datas or not datas.data then
                        print("load datas failed")
                        self.m_AssetsLoad = true
                        return
                    end

                    self.assetsCount = 0
                    self.audioAssetCount = 0--自定义音频需要下载完才能进游戏
                    --自定义音频
                    local audiomap = datas.data['audio']
                    if audiomap then
                        local tab = {}
                        for _, value in pairs(audiomap) do
                            table.insert(tab, value)
                        end
                        local count = #tab
                        if count > 0 then
                            self.audioAssetCount = self.audioAssetCount + count
                            local index = 0
                            FullyCustomAudioProgress(index, count)
                            for i = 1, count do
                                local audioData = tab[i]
                                local audioid = audioData.audioid
                                local url = audioData.url
                                local fileMd5 = audioData.md5
                                if url and url ~= "" then
                                    local file_name_ = "data/http/customaudio/" .. audioid
                                    local needDownload = true
                                    if gFunc_isStdioFileExist(file_name_) then
                                        local check_md5_ = gFunc_getSmallFileMd5(file_name_);
                                        if check_md5_ == fileMd5 then
                                            needDownload = false
                                        else
                                            gFunc_deleteStdioFile(file_name_);  --清理旧文件
                                        end
                                    end
                                    if needDownload then
                                        local audioPath = "data/http/customaudio/" .. audioid .. ".tmp"
                                        if gFunc_isStdioFileExist(audioPath) then
                                            gFunc_deleteStdioFile(audioPath)
                                        end
                                        local function callback(userdata, code)
                                            index = index + 1
                                            self.audioAssetCount = self.audioAssetCount - 1
                                            if userdata and (code == nil or code == 0)  then
                                                FullyCustomAudioProgress(index, count)
                                                gFunc_renameStdioPath(audioPath, file_name_)
                                            end
                                        end
                                        ns_http.func.downloadFile(url,audioPath,nil,callback,{})
                                    else
                                        index = index + 1
                                        self.audioAssetCount = self.audioAssetCount - 1
                                        FullyCustomAudioProgress(index, count)
                                    end
                                else
                                    index = index + 1
                                    self.audioAssetCount = self.audioAssetCount - 1
                                end
                            end
                        end
                    end

                    --自定义图片
                    local custompic = datas.data['custompic']
                    if custompic then
                        GetInst("ResourceDataManager"):SetCustomPicMaxDown(100)
                        local startTime = os.time()
                        local index, count = 0, 0
                        for _, _ in pairs(custompic) do
                            count = count + 1
                        end
                        self.assetsCount = self.assetsCount + count
                        for idstr, url in pairs(custompic) do
                            local ok, md5 = findMd5StrFromCDNUrl1(url)
                            if not ok then
                                md5 = nil
                            end
                            local function call_back(userdata, val)
                                if os.time() - startTime >= 10 then
                                    self.assetsCount = 0 --超过10秒直接进游戏，后台下载
                                    GetInst("ResourceDataManager"):SetCustomPicMaxDown(3)
                                else
                                    self.assetsCount = self.assetsCount - 1
                                    index = index + 1
                                    FullyCustomPicProgress(index, count)
                                    if index == count then
                                        print("DownCustomPicByStrIds cost time:" .. (os.time() - startTime), os.time())
                                        GetInst("ResourceDataManager"):SetCustomPicMaxDown(3)
                                    end
                                end
                            end
                            GetInst("ResourceDataManager"):DownCustomPicByStrIdAndUrl(idstr, url, md5, call_back)
                        end
                    end
                end
            end
        end
    },
    {
        -- by chenwei
        -- 2022-09-05  角色特长处理迁移数据后使用老版本角色升级激活操作提示
        ver_list = "1.4.0 1.4.1 1.4.5 1.4.6 1.5.0 1.5.1 1.5.4 1.6.0 1.6.1 1.6.4 1.7.0 1.7.1 1.7.2 1.8.0 1.8.2 1.8.3 1.8.4 1.8.5 1.8.6 1.9.0 1.10.0 1.10.1 1.10.2 1.10.5 1.11.0 1.11.1 1.11.2 1.11.4 1.11.5 1.11.6 1.11.7 1.11.8 1.11.9 1.11.12 1.12.0 1.12.2 1.12.3 1.12.4 1.12.5 1.12.6 1.12.8 1.12.9 1.13.0 1.13.1 1.13.5 1.14.0 1.15.2 1.15.5 1.16.0 1.16.1 1.17.0 1.17.5",
        install = function()
            local ShopRoleCtrl = ClassList["ShopRoleCtrl"] or {};
            ShopRoleCtrl.ConfirmUpGenuisLv = function(self, btnName, modelId)
                Log("ConfirmUpGenuisLv:");
                if btnName == "right" and modelId then
                    local model = modelId;
                    local genuisLv = AccountManager:getAccountData():getGenuisLv(model);
                    local nextLvDef = DefMgr:getRoleDef(model, genuisLv+1);
                    if nextLvDef ~= nil then
                        local code = AccountManager:getAccountData():notifyServerUnlockRole(model, genuisLv+1)
                        if code == 0 then

                            --解锁角色成功, 刷新界面
                            self:SelectRole(self.model:GetCurSelectRoleIndex(), false);
                            --升级后显示的界面

                            if genuisLv == 0 then
                                local param = {shareType="role", model=model, type=2}
                                GetInst("UIManager"):GetCtrl("Shop"):PopGetRoleView(param);
                            else
                                local param = {shareType="role", model=model, type=3}
                                GetInst("UIManager"):GetCtrl("Shop"):PopGetRoleView(param);
                            end

                            local costName = "道具";
                            if nextLvDef.ULConsumeType  == 2 then   --迷你币
                                --统计消耗迷你币
                                local needNum = nextLvDef.ULConsumeValue;
                                local name = "激活"..nextLvDef.Name..nextLvDef.GeniusLv.."级天赋";
                                StatisticsTools:expenseMiniCoin(name, 1, needNum);

                                costName = "迷你币";
                            end
                            --统计角色激活天赋事件
                            local content1 = nextLvDef.Name..nextLvDef.GeniusLv.."级天赋";
                            StatisticsTools:gameEvent("StoreRoleEvent", "激活天赋", content1, "激活消耗", costName);
                        else
                            ShowGameTipsWithoutFilter(GetS(t_ErrorCodeToString[code]), 3)
                        end
                    end
                end
            end

            ShopRoleCtrl.MiniCoinReplaceUpgradeGenuisLv = function(self, btnName, modelId)
                Log(" ShopRoleCtrl:MiniCoinReplaceUpgradeGenuisLv:");
                if btnName == "right" and modelId then
                    local model = modelId;
                    local genuisLv = AccountManager:getAccountData():getGenuisLv(model);
                    local roleDef = DefMgr:getRoleDef(model, genuisLv+1);
                    if roleDef  ~= nil then
                        local hasNum = AccountManager:getAccountData():getAccountItemNum(roleDef.ULConsumeID);
                        local needNum = roleDef.ULConsumeValue;
                        local lackMiniNum = (needNum-hasNum)*roleDef.Ratio;
                        if lackMiniNum <= AccountManager:getAccountData():getMiniCoin() then
                            local getGenuisLv = AccountManager:getAccountData():getGenuisLv(model);
                            local code = AccountManager:getAccountData():notifyServerUnlockRole(model, getGenuisLv+1)
                            if code == 0 then
                                self:SelectRole(self.model:GetCurSelectRoleIndex(), false);
                                if getGenuisLv == 0 then
                                    local param = {shareType="role", model=model, type=2}
                                    GetInst("UIManager"):GetCtrl("Shop"):PopGetRoleView(param);
                                else
                                    local param = {shareType="role", model=model, type=3}
                                    GetInst("UIManager"):GetCtrl("Shop"):PopGetRoleView(param);
                                end


                                --统计消耗迷你币
                                local name = "激活"..roleDef.Name..roleDef.GeniusLv.."级天赋";
                                StatisticsTools:expenseMiniCoin(name, 1, lackMiniNum);
                                --统计角色激活天赋事件
                                local content1 = roleDef.Name..roleDef.GeniusLv.."级天赋";
                                StatisticsTools:gameEvent("StoreRoleEvent", "激活天赋", content1, "激活消耗", "道具加迷你币");
                            else
                                ShowGameTipsWithoutFilter(GetS(t_ErrorCodeToString[code]), 3)
                            end
                        else
                            local lackNum = lackMiniNum - AccountManager:getAccountData():getMiniCoin();
                            local text = GetS(3597, lackNum);
                            StoreMsgBox(1, text, GetS(456), -1, lackNum, lackMiniNum);
                            getglobal("StoreMsgboxFrame"):SetClientString( "迷你币不足" );

                        end
                    end
                end
            end
        end
    },
    {
        ver_list = "1.4.0 1.4.1 1.4.5 1.4.6 1.5.0 1.5.1 1.5.4 1.6.0 1.6.1 1.6.4 1.7.0 1.7.1 1.7.2 1.8.0 1.8.2 1.8.3 1.8.4 1.8.5 1.8.6 1.9.0 1.10.0 1.10.1 1.10.2 1.10.5 1.11.0 1.11.1 1.11.2 1.11.4 1.11.5 1.11.6 1.11.7 1.11.8 1.11.9 1.11.12 1.12.0 1.12.2 1.12.3 1.12.4 1.12.5 1.12.6 1.12.8 1.12.9 1.13.0 1.13.1 1.13.5 1.14.0 1.15.2 1.15.5 1.16.0 1.16.1 1.17.0 1.17.5",
        install = function()
            -- yaoxinqun
            function check_apiid_ver_conditions( condition_configs, default_ )
                if  condition_configs then

                    --超级白名单
                    if  condition_configs.super_uin_list then
                        local uin = AccountManager:getUin();
                        local pos_  = string.find( ',' .. condition_configs.super_uin_list .. ',', ',' .. uin .. ',' )
                        if  pos_ then
                            print("in slist");
                            return true   --忽略所有条件，一定成功
                        end
                    end


                    --白名单
                    if  condition_configs.uin_list then
                        local uin = AccountManager:getUin();
                        local pos_  = string.find( ',' .. condition_configs.uin_list .. ',', ',' .. uin .. ',' )
                        if  pos_ then
                            --ok
                        else
                            print("not in uin_list");
                            return false
                        end
                    end


                    --开发者等级
                    if  condition_configs.creator_level then
                        local level_ = getCreateLevel()
                        if  level_ < condition_configs.creator_level then
                            print( "creator_level check fail" )
                            return false
                        end
                    end


                    --apiid
                    if  condition_configs.apiids then
                        --apiid 允许列表
                        local finder_ = ',' .. ClientMgr:getApiId() .. ',';
                        local ret     = string.find( ',' .. condition_configs.apiids .. ',', finder_ );
                        if  ret then
                            --可以显示
                        else
                            print( "apiids check fail" )
                            return false;   --不在列表中
                        end
                    elseif  condition_configs.apiids_no then
                        --apiids 不开列表
                        local finder_ = ',' .. ClientMgr:getApiId() .. ',';
                        local ret     = string.find( ',' .. condition_configs.apiids_no .. ',', finder_ );
                        if  ret then
                            print( "apiids_no check fail" )
                            return false;   --在禁止列表中
                        end
                    end

                    --ver
                    if condition_configs.version_min then
                        local version_min_ = ClientMgr:clientVersionFromStr( condition_configs.version_min );
                        local version_now_ = ClientMgr:clientVersion();
                        print( "version=" .. version_min_ .. "/" .. version_now_ );
                        if  version_min_ > version_now_ then
                            print( "version_min check fail" )
                            return false;
                        end
                    end

                    if condition_configs.version_max then
                        local version_max_  = ClientMgr:clientVersionFromStr( condition_configs.version_max );
                        local version_now_  = ClientMgr:clientVersion();
                        print( "version=" .. version_max_ .. "/" .. version_now_ );
                        if  version_max_ < version_now_ then
                            print( "version_max check fail" )
                            return false;
                        end
                    end


                    --语言
                    if  condition_configs.lang then
                        local lang_ = get_game_lang()
                        print( "lang=" .. lang_ .. " | " ..  condition_configs.lang );
                        if  lang_ == condition_configs.lang then
                            --匹配
                        else
                            print("lang check fail" );
                            return false;
                        end
                    end

                    --语言组合
                    if  condition_configs.langs then
                        local finder_ = ',' .. get_game_lang() .. ',';
                        local ret     = string.find( ',' .. condition_configs.langs .. ',', finder_ );
                        print( "langs=" .. finder_ .. " | " ..  condition_configs.langs );
                        if  ret then
                            --匹配
                        else
                            print("langs check fail" );
                            return false;
                        end
                    end


                    --time
                    if  condition_configs.start_time then
                        local now_ = getServerNow()
                        local start_time_ = uu.get_time_stamp( condition_configs.start_time );
                        if  now_ < start_time_ then
                            print( "start_time check fail" )
                            return false
                        end
                    end

                    if  condition_configs.end_time then
                        local now_ = getServerNow()
                        local end_time_ = uu.get_time_stamp( condition_configs.end_time );
                        if  now_ > end_time_ then
                            print( "end_time check fail" )
                            return false
                        end
                    end

                    if  condition_configs.close_start_time   then --定时关闭
                        local now_ = getServerNow()
                        local close_start_time_ = uu.get_time_stamp( condition_configs.close_start_time );
                        if now_ > close_start_time_ then
                            if  condition_configs.close_end_time then --关闭时段结束
                                local close_end_time_ = uu.get_time_stamp( condition_configs.close_end_time );
                                if  now_ < close_end_time_ then
                                    Log( "close_time check fail" )
                                    return false
                                end
                            else
                                Log( "close_time check fail" )
                                return false
                            end
                        end
                    end

                    if  condition_configs.countrys and AccountManager.account and AccountManager.account.svrinfo then
                        --apiid 允许列表
                        local finder_ = ',' .. AccountManager.account.svrinfo.country .. ',';
                        local ret     = string.find( ',' .. condition_configs.countrys .. ',', finder_ );
                        if  ret then
                            --可以显示
                        else
                            return false;   --不在列表中
                        end
                    elseif  condition_configs.noCountrys and AccountManager.account and AccountManager.account.svrinfo then
                        --apiids 不开列表
                        local finder_ = ',' .. AccountManager.account.svrinfo.country .. ',';
                        local ret     = string.find( ',' .. condition_configs.noCountrys .. ',', finder_ );
                        if  ret then
                            return false;   --在禁止列表中
                        end
                    end

                    -- 设备ID
                    if condition_configs.device_ids and ClientMgr.getDeviceID then
                        local deviceId = ClientMgr:getDeviceID() or ""
                        if deviceId ~= "" and deviceId ~= "0" then
                            local pos_  = string.find( ',' .. condition_configs.device_ids .. ',', ',' .. deviceId .. ',' )
                            if  pos_ then
                                print("in deviceId");
                                return true   --忽略所有条件，一定成功
                            end
                        end
                    end

                    --可以显示
                    return true;

                else
                    --配置为空
                    if  default_ then
                        return true
                    else
                        return false
                    end
                end

            end
        end
    },

    {
        --by huangrui 2022-09-03
        --开发者商店icon显示bug
        ver_list = "1.18.0 1.18.1",
        install = function()
            LoadStoreGroupInfo_old = LoadStoreGroupInfo
            function LoadStoreGroupInfo(bneedfresh)
                local ItemGroupID2Name_new = getFunctionVpValue(LoadStoreGroupInfo_old, "ItemGroupID2Name")
                local OldItemGroupID2Name_new = getFunctionVpValue(LoadStoreGroupInfo_old, "OldItemGroupID2Name")
                local StoreGroupTypeMap_new = getFunctionVpValue(LoadStoreGroupInfo_old, "StoreGroupTypeMap")

                local mapId, authorUin = GetMapIdAndUin()
                gStoreGroupTypList = {}
                if mapId == 0 or authorUin == 0 then return end
                local tmplist = {}
                --if bneedfresh or not StoreGroupTypeMap_new[1] then
                if bneedfresh  or not StoreGroupTypeMap_new[1] then
                    StoreGroupTypeMap_new = {}
                    --local code, list = AccountManager:dev_mapstore_get_itemgroup_list(authorUin, mapId, false)
                    local code, list, needaddGroup =DeveloperStoreGetItemgrouplist(authorUin, mapId)
                    if code and type(list) == 'table' then
                        local maxnum, baselist = #ItemGroupID2Name_new, {}
                        local haveall = false;
                        for k,v in pairs(list) do --此处list已经是做过深度拷贝的
                            if type(v) == 'table' and v.GroupID and v.Pos then
                                table.insert(tmplist, v)
                                StoreGroupTypeMap_new[v.GroupID] = v
                                if 1 == v.GroupID then
                                    haveall = true
                                end
                                if v.GroupID <= maxnum then
                                    baselist[v.GroupID] = 1
                                end
                            end
                        end
                        if #baselist < 1 then --服务器的数据里  基础的10个不全  需要补上
                            if needaddGroup then
                                maxnum = #OldItemGroupID2Name_new
                                for i=1,maxnum do
                                    if not baselist[i] then
                                        local StoreGroupType = {}
                                        StoreGroupType.GroupID = i
                                        StoreGroupType.Pos = i
                                        StoreGroupType.GroupName = OldItemGroupID2Name_new[i]
                                        StoreGroupTypeMap_new[i] = StoreGroupType
                                        table.insert(tmplist, StoreGroupType)
                                        setFunctionVpValue(LoadStoreGroupInfo_old, "IsNeedUpload", true)
                                    end
                                end
                            else
                                for i=1,1 do
                                    if not baselist[i] then
                                        local StoreGroupType = {}
                                        StoreGroupType.GroupID = i
                                        StoreGroupType.Pos = i
                                        StoreGroupType.GroupName = ItemGroupID2Name_new[i]
                                        StoreGroupTypeMap_new[i] = StoreGroupType
                                        table.insert(tmplist, StoreGroupType)
                                        setFunctionVpValue(LoadStoreGroupInfo_old, "IsNeedUpload", true)
                                    end
                                end
                            end
                        else --检测是不是有综合和全部 没有则补齐
                            -- body
                            if not haveall then
                                local StoreGroupType = {}
                                StoreGroupType.GroupID = 1
                                StoreGroupType.Pos = 1
                                StoreGroupType.GroupName = ItemGroupID2Name_new[1]
                                StoreGroupTypeMap_new[1] = StoreGroupType
                                table.insert(tmplist, StoreGroupType)
                            end
                        end
                    else
                        local maxnum, baselist = #ItemGroupID2Name_new, {}
                        if #baselist < 1 then --服务器的数据里  基础的10个不全  需要补上
                            for i=1,1 do
                                if not baselist[i] then
                                    local StoreGroupType = {}
                                    StoreGroupType.GroupID = i
                                    StoreGroupType.Pos = i
                                    StoreGroupType.GroupName = ItemGroupID2Name_new[i]
                                    StoreGroupTypeMap_new[i] = StoreGroupType
                                    table.insert(tmplist, StoreGroupType)
                                    setFunctionVpValue(LoadStoreGroupInfo_old, "IsNeedUpload", true)
                                end
                            end
                        end
                    end
                else --用本地数据
                    for k,v in pairs(StoreGroupTypeMap_new) do
                        table.insert(tmplist, StoreGroupTypeMap_new[k])
                    end
                end

                if tmplist and #tmplist > 1 then
                    local skus = DeveloperStoreGetItemlist(authorUin, mapId)
                    local itemGroupKey = {}
                    itemGroupKey[1] = true -- 综合
                    for k, v in pairs(skus or {}) do
                        local itemGroup = v.ItemGroup or 1 -- 如果itemgroup为nil则默认为1
                        itemGroupKey[itemGroup] = true
                    end
                    for i=#tmplist, 1, -1 do
                        local groupID = tmplist[i].GroupID
                        if groupID and not itemGroupKey[groupID] then -- 数量大于1的标签才显示
                            table.remove(tmplist, i)
                        end
                    end
                end

                setFunctionVpValue(LoadStoreGroupInfo_old, "StoreGroupTypeMap", StoreGroupTypeMap_new)
                table.sort(tmplist, function(a, b) return a.Pos < b.Pos end)
                for i=1,#tmplist do
                    gStoreGroupTypList[i] = tmplist[i].GroupID
                    tmplist[i].Pos = i
                end
            end
        end
    },
    {
        --by hanhuihua
        --修复邀请好友进入房间倒计时结束，点击二级弹窗确认进入房间黑屏
        ver_list = "1.13.0 1.13.1 1.13.2 1.13.3 1.13.5 1.13.6 1.13.7 1.14.0 1.14.1 1.14.2 1.14.3 1.14.4 1.15.0 1.15.1 1.15.2 1.15.3 1.15.5 1.16.0 1.16.1 1.16.2 1.17.0 1.17.1 1.17.2 1.18.0 1.18.1",
        install = function()
            local main_inviteCtrl = ClassList["main_inviteCtrl"] or {} ;
            main_inviteCtrl.Update = function(self)
                -- body
                self.cnt = self.cnt or 10
                if self.cnt == 0 then
                    if g_PopUpsData.curIndex == #(g_PopUpsData.msg) then
                        g_PopUpsData.curIndex = 0;
                        g_PopUpsData.msg = {};
                        GetInst("MiniUIManager"):CloseUI("main_inviteAutoGen")
                        if getglobal("MessageBoxFrame"):IsShown() then
                            getglobal("MessageBoxFrame"):Hide()
                        end
                        return
                    else
                        self:UpdateView()
                        self.cnt = 10
                        self.view.widgets.btn_cancel:getChild("title"):setText(GetS(190006, self.cnt))
                    end
                else
                    self.cnt = self.cnt - 1
                    self.view.widgets.btn_cancel:getChild("title"):setText(GetS(190006, self.cnt))
                end
            end
        end
    },
    {
        -- wangyang 20220822
        ver_list = "1.17.0 1.17.1",
        install = function()
            local ArchiveInfoDetailCtrl = ClassList["ArchiveInfoDetailCtrl"] or {};
            ArchiveInfoDetailCtrl.SetPlayingCount = function(self, curArchiveMap)
                if curArchiveMap and curArchiveMap.owid then
                    local playingNum = GetInst("RoomService"):GetMapPlayerNum(curArchiveMap.owid, true)
                    self.view:SetMapPlayingCount(playingNum)
                    threadpool:work(function()
                        GetInst("RoomService"):ReqMapPlayerCount({curArchiveMap.owid}, spData)
                        local playingNum = GetInst("RoomService"):GetMapPlayerNum(curArchiveMap.owid, false)
                        local ctrl = GetInst("MiniUIManager"):GetCtrl("ArchiveInfoDetail")
                        if playingNum > 0 and ctrl then
                            ctrl.view:SetMapPlayingCount(playingNum)
                        end
                    end)
                else
                    self.view:SetMapPlayingCount(0)
                end
            end

            ArchiveInfoDetailCtrl.SetRewardInfo = function(self, archiveWorldDesc)
                local owid = archiveWorldDesc.fromowid or archiveWorldDesc.worldid
                MapRewardClass:SetMapsReward(owid, archiveWorldDesc.realowneruin, archiveWorldDesc.realNickName,archiveWorldDesc.ownerIconFrame);
                ArchiveWorldDescWorldId = archiveWorldDesc.worldid

                local state = MapRewardClass:GetRewardState(archiveWorldDesc.worldid)
                local count = MapRewardClass:GetMapTotlaScore()
                local isOpen = MapRewardClass:IsOpen()

                self.view:SetMapRewardInfo(state, count, isOpen)
            end


            local ArchiveInfoDetailView = ClassList["ArchiveInfoDetailView"] or {};
            ArchiveInfoDetailView.SetMapRewardInfo = function(self, state, count, isOpen)
                if not state then return end
                local opState = state
                opState = opState == 2 and 0 or opState
                opState = opState + 1
                self:SetMapOperateDetail(2, self:TransToTenThousand(count), opState)-- 大于10000需要转 x.x万

                local touchEnabled = not (state == 2)
                self.widgets.detailViewInteractRm2_ewardBtn:setGrayed(not touchEnabled)
                self.widgets.detailViewInteractRm2_ewardBtn:setTouchable(touchEnabled)

                -- isOpen 是否可点击
                self.widgets.detailViewInteractRm2_ewardWidget:setVisible(isOpen)
            end

        end
    },
    {
        ver_list = "1.17.0 1.17.1",
        install = function()
            --wangshuai
            local ResourceDataManager = ClassList["ResourceDataManager"] or {};
            ResourceDataManager.prepareEncryptFile = function(self, item)
                local realWidth, realHeight, tex = 0, 0, nil
                local tmpPath = item.filepath .. os.time()
                g_DevEncrypt:EncryptFile(item.filepath, tmpPath, 1, "")
                tex, realWidth, realHeight = CustomPicMgr:GetTextureFromCustomPicFile(tmpPath, realWidth, realHeight)
                if gFunc_isStdioFileExist(tmpPath) then
                    gFunc_deleteStdioFile(tmpPath)
                end
                if realWidth == 0 and realHeight == 0 then --C++tex是Null
                    return nil
                end
                local infoTab = {
                    uin = AccountManager:getUin(),
                    author = AccountManager:getNickName(),
                    name = item.resname,
                    version = ClientMgr:clientVersion(),
                    width = realWidth ~= 0 and realWidth,
                    height = realHeight ~= 0 and realHeight,
                }

                local jsonFile = JSON:encode(infoTab)
                local data = xxtea.encrypt(jsonFile, string.len(jsonFile), 'b64')
                local length = string.len(data)

                -- print('[prepareEncryptFile]', length, data, infoTab)
                g_DevEncrypt:EncryptFile(item.filepath, item.filepath, 1, data)

                return infoTab
            end
        end
    },
    {
        -- chenwei 20220819
        ver_list = "1.17.0 1.17.1",
        install = function()
            function ShowQRCodePay(cost)
                local frameQRCodeTips = getglobal("StoreMsgboxFrameQRCodeTips")
                if frameQRCodeTips then
                    frameQRCodeTips:SetText("扫一扫充值，" .. "#cFA7A0F" ..  "点击分享", 51,55,55)
                end

                -- 清除老二维码
                local payQRCodeBkg = getglobal("StoreMsgboxFrameQRCodePayBkg")
                if payQRCodeBkg then
                    payQRCodeBkg:SetTexture("ui/white.png")
                end
                if SdkManager:check_realname_auth(cost) == false then
                    return ErrorCode.FAILED
                end
                GetInst("ShopAskForPay"):QueryMiniCoinAskForLimit(0,function()
                    -- 第二个参数，索要道具类型：1 迷你币，2 皮肤 3 悦享卡
                    GetInst("ShopAskForPay"):ReqMiniCoinAskForUrl(cost, 1, function(url)
                        local filename = "AskForPayQrTarget2.png"
                        if gFunc_isStdioFileExist(filename) then
                            gFunc_deleteStdioFile(filename)
                        end

                        local bSucc = QRCode:EncodeStringToPngFile(url,filename,8, LuaColorRGBA(0, 0, 0, 255), LuaColorRGBA(255, 255, 255, 255))
                        if bSucc then
                            local icon = getglobal("StoreMsgboxFrameQRCodePayBkg")
                            if icon then
                                icon:ReleaseTexture(filename)
                                icon:SetTexture(filename);
                            end
                        end
                    end)
                end)
            end
        end
    },
    {
        -- by lizhibao
        -- 20220726  武器熟练度移动端升不满级问题
        ver_list = "1.16.0 1.16.1 1.16.2 1.17.0 1.17.1 1.17.2",
        install = function()
            if _G.get__weapon_skilled_maxpoint then
                _G.get__weapon_skilled_maxpoint = function()
                    local maxvalue = 900; --默认最高3级
                    local weaponcfg = ns_business_config.weaponProficiency or {};
                    for __, value in pairs(weaponcfg) do
                        if maxvalue < value.maxValue then
                            maxvalue = value.maxValue;
                        end
                    end
                    return maxvalue;
                end
            end
        end
    },
    {
        -- 20220817 fym 运营配置强弹活动问题修改
        ver_list = "1.17.0 1.17.1 1.17.2 1.17.5",
        install = function()
            local ActivityPopupManager = ClassList["ActivityPopupManager"] or {};
            ActivityPopupManager.BolShowStrongPopup = function (self, strongConfig)
                if strongConfig.task_conditions then
                    local lastTime = getkv("strongpopuptime" .. (strongConfig.id or 0), "strongpopup") or 0
                    if lastTime > 0 then
                        local now_ = getServerTime()
                        local lastFixNum = getkv("strongpopup_fixnum") or 0
                        local fixnum = strongConfig.fixnum
                        local ignoreCD = false
                        if fixnum then
                            ignoreCD = fixnum > lastFixNum
                        end
                        if not ignoreCD and (now_- lastTime) < (strongConfig.cd or 0) then
                            return false
                        end
                        if strongConfig.task_conditions.frequency and strongConfig.task_conditions.frequency == 1 then
                            return false
                        end
                        local notShowAgain = getkv("strongpopup_notshowagain" .. (strongConfig.id or 0), "strongpopup") or 0
                        if notShowAgain == 1 and strongConfig.task_conditions.notShowAgain and strongConfig.task_conditions.notShowAgain == 1 then
                            return false
                        end
                    end
                    local DAY = 86400
                    if strongConfig.task_conditions.onlyNewUser then
                        local createTime =  AccountManager:get_account_create_time() or 0
                        local startTime = GetInst("TimerUtil"):TimeStr2TimeStamp(strongConfig.start_time)
                        if startTime > createTime then
                            if strongConfig.task_conditions.onlyNewUser == 0 then --老用户弹拍脸
                                return true
                            else
                                return false
                            end
                        else
                            if createTime - startTime  < DAY then
                                if strongConfig.task_conditions.onlyNewUser == 0 then  --不弹拍脸
                                    return false
                                else --新用户弹拍脸
                                    return true
                                end
                            else
                                if strongConfig.task_conditions.onlyNewUser == 0 then --老用户弹拍脸
                                    return true
                                else
                                    return false
                                end
                            end
                        end
                    end
                    if strongConfig.task_conditions.player_create_time_begin and strongConfig.task_conditions.player_create_time_end then
                        local player_create_time_begin = GetInst("TimerUtil"):TimeStr2TimeStamp(strongConfig.task_conditions.player_create_time_begin)
                        local player_create_time_end = GetInst("TimerUtil"):TimeStr2TimeStamp(strongConfig.task_conditions.player_create_time_end)
                        local createTime =  AccountManager:get_account_create_time() or 0
                        if createTime > player_create_time_begin and createTime < player_create_time_end then
                            return true
                        else
                            return false
                        end
                    end
                    if strongConfig.task_conditions.unlogin_days then
                        local uin   = AccountManager:getUin() or 0;
                        local code,lastLoginTime =  AccountManager:get_last_login_time(uin)
                        if code ==  ErrorCode.OK then
                            if lastLoginTime > 0 then
                                local servertime = getServerTime()
                                if servertime - lastLoginTime >= strongConfig.task_conditions.unlogin_days*DAY then
                                    return true
                                end
                            end
                            return false
                        else
                            return false
                        end
                    end
                    return true
                else
                    return true
                end
            end
        end
    },
    {
        -- by huangxin
        -- 20220816  个人中心-设置性别下拉报错问题修复
        ver_list = "1.17.0 1.17.1",
        install = function()
            PlayerCenterDataEditPage1GenderBtn_OnClick_old = PlayerCenterDataEditPage1GenderBtn_OnClick
            function PlayerCenterDataEditPage1GenderBtn_OnClick()
                local box = getglobal("PlayerCenterDataEditPage1GenderList");
                local down = getglobal("PlayerCenterDataEditPage1GenderDown");
                local up   = getglobal("PlayerCenterDataEditPage1GenderUp");
                local listBkg = getglobal("PlayerCenterDataEditPage1GenderListBkg");
                local Title =  getglobal("PlayerCenterDataEditPage1TitleSystemBtnTitle");
                local name = getglobal("PlayerCenterDataEditPage1TitleSystemBtnName");
                local nameBkg = getglobal("PlayerCenterDataEditPage1TitleSystemBtnNameBkg");
                local page2 = getglobal("PlayerCenterDataEditPage2");
                standReportEvent("7", "PERSONAL_INFO_SETTINGS", "Gender", "click")

                if box:IsShown() then
                    box:Hide();
                    down:Show();
                    up:Hide();
                    listBkg:Hide();
                    if GetInst("TitleSystemInterface"):TitleIsOPen() then
                        local TitleIsShow = getFunctionVpValue(PlayerCenterDataEditPage1GenderBtn_OnClick_old, "TitleIsShow")
                        if TitleIsShow then
                            Title:Show();
                        else
                            name:Show();
                            nameBkg:Show();
                        end
                    else
                        page2:SetPoint("top", "PlayerCenterDataEditPage1", "bottom", 0, 10);
                    end
                else

                    box:Show();
                    down:Hide();
                    up:Show();
                    listBkg:Show();
                    if GetInst("TitleSystemInterface"):TitleIsOPen() then
                        if Title:IsShown() then
                            setFunctionVpValue(PlayerCenterDataEditPage1GenderBtn_OnClick_old, "TitleIsShow",true)
                        end
                        Title:Hide();
                        name:Hide();
                        nameBkg:Hide();
                    else
                        page2:SetPoint("top", "PlayerCenterDataEditPage1", "bottom", 0, 60);
                    end
                end
            end
        end
    },
    {
        -- by lizhibao
        -- 20220726  商城播报和气泡的版本限制未生效
        ver_list = "1.12.0 1.12.1 1.12.2 1.12.3 1.12.4 1.12.5 1.12.6 1.12.8 1.13.0 1.13.1 1.13.2 1.13.3 1.13.5 1.13.6 1.14.0 1.14.1 1.14.2 1.14.3 1.14.4 1.15.0 1.15.1 1.15.2 1.15.3 1.15.5 1.16.0 1.16.1 1.16.2",
        install = function()
            if ClassList["ChatBubbleMgr"] then
                ClassList["ChatBubbleMgr"].GetChatbubbleCfg = function(self)
                    if self.bubblecfg then
                        return self.bubblecfg
                    end
                    self.bubblecfg = {};
                    local orginsdata = ns_business_config.bubble_cfg.orig;
                    for key, val in pairs(orginsdata or {}) do
                        local min_ver = val and val.Min_version or "";
                        local version_min_ = ClientMgr:clientVersionFromStr(min_ver);
                        local version_now_ = ClientMgr:clientVersion();
                        print( "version=" .. version_min_ .. "/" .. version_now_ );
                        if  version_min_ <= version_now_ then
                            self.bubblecfg[key] = val;
                        end
                    end
                    return self.bubblecfg;
                end
            end
            if ClassList["BroadcastMgr"] then
                ClassList["BroadcastMgr"].GetBroadcastCfg = function(self)
                    if self.broadcastcfg then
                        return self.broadcastcfg
                    end
                    self.broadcastcfg = {}
                    local orginsdata = ns_business_config.broadcast.orig;
                    for key, val in pairs(orginsdata or {}) do
                        local min_ver = val and val.Clt_version or "";
                        local version_min_ = ClientMgr:clientVersionFromStr(min_ver);
                        local version_now_ = ClientMgr:clientVersion();
                        print( "version=" .. version_min_ .. "/" .. version_now_ );
                        if  version_min_ <= version_now_ then
                            self.broadcastcfg[key] = val;
                        end
                    end
                    return self.broadcastcfg;
                end
            end
        end
    },
    {
        ver_list = "1.16.0",
        install = function()
            --yangmingyang
            NpcStoreTable = {
                CurEditorIndex = 1,

                itemList ={},

                config = {
                    ItemID = 100,
                    Name = "",
                    Desc = "",

                    Attr = {
                        {
                            Type = 'Selection',
                            Name_StringID = 6317, --选择生物
                            CurVal = 100,
                            CurNum = 1,
                            CanShow = true
                        },
                        {
                            Type = 'Selection',
                            Name_StringID = 6317, --选择生物
                            CurVal = 101,
                            CurNum = 1,
                            CanShow = true
                        },
                        {
                            Type = 'Slider',
                            Name_StringID = 21713, --星星购买
                            CurVal = 0, Min = 0, Max = 999, Step = 1,
                            ValShowType = 'Int',
                            CanShow = true
                        },
                        {
                            Type = 'Slider',
                            Name_StringID = 21715, --单次可购买数量
                            CurVal = 1, Min = 1, Max = 64, Step = 1,
                            ValShowType = 'Int',
                            CanShow = true
                        },
                        {
                            Type = 'Slider',
                            Name_StringID = 21716, --可购买次数
                            CurVal = 301, Min = 1, Max = 301, Step = 1,
                            ValShowType = 'Int',
                            CanShow = true
                        },
                        {
                            Type = 'Slider',
                            Name_StringID = 21718, --补充时间
                            CurVal = 5, Min = 5, Max = 3600, Step = 5,
                            ValShowType = 'Int',
                            CanShow = true
                        },
                        {
                            Type = 'Switch',
                            Name_StringID = 21717, --补充时间
                            CurVal = 0,
                            ValShowType = 'Int',
                            CanShow = true
                        },
                        {
                            Type = 'ADSwitch',
                            Name_StringID = 21719, --补充时间
                            CurVal = 0,
                            ValShowType = 'Int',
                            CanShow = true
                        },
                    },


                }
            }

        end
    },
    {
        ver_list = "1.12.0 1.12.1 1.12.2 1.12.3 1.12.4 1.12.5 1.12.6 1.12.8 1.13.0 1.13.1 1.13.2 1.13.3 1.13.5 1.13.6 1.14.0 1.14.1 1.14.2 1.14.3 1.14.4 1.15.0 1.15.1 1.15.2 1.15.3 1.15.5 1.16.0 1.16.1",
        --20220729 by Garry 虚拟卡屏蔽应用宝充值渠道
        --20220801 by Garry 应用宝、IOS屏蔽觉醒主页购票入口
        install = function()
            function Fix0729_SearchFriendFrame_OnShow()
                local apiId = ClientMgr and ClientMgr:getApiId() or 0
                if apiId == 21 then --应用宝
                    local searcFrameName = FriendMgr.DlgType_SearchFriendFrame
                    if getglobal(searcFrameName .. "QRCodeScannerBtn") then
                        getglobal(searcFrameName .. "QRCodeScannerBtn"):Hide()
                    end
                end
            end

            if _G.SearchFriendFrame_OnShow then
                local oldFunc_SearchFriendFrame_OnShow = _G.SearchFriendFrame_OnShow
                _G.SearchFriendFrame_OnShow = function()
                    oldFunc_SearchFriendFrame_OnShow();
                    Fix0729_SearchFriendFrame_OnShow();
                end
            end

            if GetInst("GameHallDataManager") and GetInst("GameHallDataManager")._In_ScanSupport then
                oldFunc_In_ScanSupport = GetInst("GameHallDataManager")._In_ScanSupport
                GetInst("GameHallDataManager")._In_ScanSupport = function(self)
                    local apiId = ClientMgr and ClientMgr:getApiId() or 0
                    if apiId == 21 then --应用宝
                        return false
                    end
                    return oldFunc_In_ScanSupport(self)
                end
            end

            local main_yinxiangCardView = ClassList["main_yinxiangCardView"] or {}
            if main_yinxiangCardView.InitView then
                local oldFunc_yinxiangCardView_InitView = main_yinxiangCardView.InitView
                main_yinxiangCardView.InitView = function(self)
                    oldFunc_yinxiangCardView_InitView(self);
                    local apiId = ClientMgr and ClientMgr:getApiId() or 0
                    if apiId == 21 then --应用宝
                        self.widgets.btn_scanner:setVisible(false)
                    end
                end
            end

            --20220801 by Garry 应用宝、IOS屏蔽觉醒主页购票入口
            local main_juexingmovie_hallView = ClassList["main_juexingmovie_hallView"] or {}
            if main_juexingmovie_hallView.RefreshProfileInfo then
                local main_juexingmovie_hallView_RefreshProfileInfo = main_juexingmovie_hallView.RefreshProfileInfo
                main_juexingmovie_hallView.RefreshProfileInfo = function(self)
                    main_juexingmovie_hallView_RefreshProfileInfo(self);
                    local apiId = ClientMgr and ClientMgr:getApiId() or 0
                    if apiId == 21 or (ClientMgr and ClientMgr:isApple()) then
                        self.widgets.btnGp_ticket:setVisible(false)
                    end
                end
            end
        end
    },
    {
        -- by lizhibao
        -- 20220726  武器熟练度在切换账号后本地数据丢失问题
        ver_list = "1.16.0 1.16.1",
        install = function()
            if _G.WeaponSkin_HelperModule then
                _G.WeaponSkin_HelperModule.GetWeaponSkinProficiencyCache = function(self)
                    local content = {}
                    for wType, value in ipairs(self.define.itemIds) do
                        if AccountManager:getAccountData().getSkilledPoint then
                            local Point = AccountManager:getAccountData():getSkilledPoint(wType - 1)
                            --存在当前类型的武器熟练度，并且缓存的熟练度大于服务器记录的熟练度则需要上报
                            local proficiencyValue = self.skinProficiency[wType] and self.skinProficiency[wType].value or 0
                            if Point > proficiencyValue then
                                table.insert(content, string.format("%d_%d", wType, Point))
                            else
                                local skillpoint = proficiencyValue - Point;
                                if skillpoint > 0 then --同步到本地数据 防止因切设备导致本地数据为空
                                    AccountManager:getAccountData():addSkilledPoint(wType - 1, skillpoint)
                                end
                            end
                        end
                    end
                    if next(content) then
                        content = table.concat(content,",")
                        self:ReqSaveWeaponSkinProficiency(content)
                    end
                end
            end
        end
    },
    {
        -- 2022-07-30 xiaoqiang
        ver_list = "1.15.0 1.15.1 1.15.2 1.15.3 1.15.4 1.15.5 1.16.0 1.16.1 1.16.2",
        install = function()
            local NewAccountService = NewAccountService or ClassList["NewAccountService"] or {}
            NewAccountService.SwitchAccountLogin = function(self, curData, switchData)
                local bContinue = true
                if not switchData or not curData then
                    bContinue = false
                    return bContinue
                end

                if IsEnableNewLogin and IsEnableNewLogin() and switchData then
                    if IsEnableNewBindLogin and IsEnableNewBindLogin() and switchData.bindCur then
                        LoginManager:NotifyCustomEvent(LoginManager.EVENT_CHANNEL_BIND_SERVER_HANDLE,
                                {event = LoginChannelBindMgr.EVENT_SVR_SWITCH_START, data = {account = switchData, enryptPw = true}})
                    else
                        LoginManager:NotifyCustomEvent(LoginManager.EVENT_ACCOUNT_PASSWORD_LOGIN, switchData)
                    end
                else
                    if CheckNetworkErrTipsShow and CheckNetworkErrTipsShow() then
                        bContinue = false
                        return bContinue
                    end

                    if CallJavaChannelLoginStatus then
                        if not CallJavaChannelLoginStatus() then
                            bContinue = false
                            return bContinue
                        end
                    end

                    if curData and next(curData) and (curData.Uin == switchData.Uin) then
                        if switchData.loginType == "Passwd" then
                            NewLoginSystem_RequestLoginAccount(switchData.Uin, switchData.Passwd, "", false)
                        elseif switchData.loginType == "question" then
                            NewLoginSystem_RequestLoginAccount1(switchData.Uin,switchData.question[1],switchData.question[2],"",true)
                        elseif switchData.loginType == "wechat" then
                            GetInst("QQWeChatLoginManager"):QQWeChatLogin()
                        elseif switchData.loginType == "qq" then
                            GetInst("QQWeChatLoginManager"):QQWeChatLogin()
                        elseif switchData.loginType == "kuaishou" then
                            GetInst("QQWeChatLoginManager"):KuaiShouLogin(nil, nil, nil, AccountManager:getUin())
                        elseif switchData.loginType == "facebook" then
                            NewLoginSystem_OverseaFaceBookLogin()
                        elseif switchData.loginType == "phone"
                                or switchData.loginType == "channel" then
                            -- 旧版本  使用新版手机登陆，使用authinfo登陆
                            NewLoginSystem_RequestLoginAuthInfo(switchData.authinfo)
                        end
                    else
                        if switchData.loginType == "Passwd" then
                            NewLoginSystem_RequestLoginAccount(switchData.Uin, switchData.Passwd, "", false)
                        elseif switchData.loginType == "question" then
                            NewLoginSystem_RequestLoginAccount1(switchData.Uin,switchData.question[1],switchData.question[2],"",true)
                        elseif switchData.loginType == "wechat" then
                            AccountLoginFrameWeChatLogin_OnClick()
                        elseif switchData.loginType == "qq" then
                            AccountLoginFrameQQLogin_OnClick()
                        elseif switchData.loginType == "kuaishou" then
                            AccountLoginFrameKuaishouLogin_OnClick()
                        elseif switchData.loginType == "facebook" then
                            NewLoginSystem_OverseaFaceBookLogin()
                        elseif switchData.loginType == "phone"
                                or switchData.loginType == "channel" then
                            NewLoginSystem_RequestLoginAuthInfo(switchData.authinfo)
                        end
                    end
                    LoginScreenFrameShowLoginBtn()
                end

                bContinue = true
                return bContinue
            end

            NewAccountService.SwitchAccountInputLogin = function(self, type, uin, password, key)
                local bContinue = true
                if not type or not uin or not password then
                    bContinue = false
                    return bContinue
                end

                if type == NewAccountHelper.PASSWORD_TAG_NUMBER then
                    if IsEnableNewLogin and IsEnableNewLogin() then
                        LoginManager:NotifyCustomEvent(LoginManager.EVENT_ACCOUNT_PASSWORD_LOGIN, {Uin = uin, Passwd = password, handInput = true, loginType = "Passwd"})
                    else
                        NewLoginSystem_RequestLoginAccount(uin, password, "", true)
                    end
                elseif type == NewAccountHelper.PASSWORD_TAG_QUESTION then
                    if IsEnableNewLogin and IsEnableNewLogin() then
                        LoginManager:NotifyCustomEvent(LoginManager.EVENT_ACCOUNT_QUESTION_LOGIN, {Uin = uin, question = {key, password}, shouldNotMd5 = 0, handInput = true, loginType = "question"})
                    else
                        NewLoginSystem_RequestLoginAccount1(uin, key, password,"", nil, true)
                    end
                end

                bContinue = true
                return bContinue
            end
        end,
    },
    {
        --by lizhibao
        --20220718  iOS端屏蔽配置致激活码失效问题
        ver_list = "1.15.0 1.15.1 1.15.2 1.15.3 1.15.4 1.15.5 1.16.0 1.16.1",
        install = function()
            if _G.ActivityFrame_OnShow then
                local OLD0718_ActivityFrame_OnShow = _G.ActivityFrame_OnShow
                _G.ActivityFrame_OnShow = function()
                    OLD0718_ActivityFrame_OnShow();

                    if ClientMgr:isApple() then
                        getglobal("ActivationCodeReward"):Show();
                        ActivityTypeButtonAligment()
                    end
                end
            end
        end
    },
    {
        ver_list = "1.15.0 1.15.1 1.15.2 1.15.3 1.15.4 1.15.5 1.16.0 1.16.1 1.16.2",
        install = function()
            local mgr = ClassList["RecommendOnlineFriendDataMgr"] or {}
            mgr.GetABTest = function (self)
                if not self.conf then
                    return false
                end
                if self.conf.abtest == 0 then
                    return true
                end

                return SetAndGetABTest("exp_growth_friend_online_playing")

            end
        end,
    },
    {
        ver_list = "1.16.0 1.16.1 1.16.2",
        install = function()
            print("install 星装扮隐藏肤色按钮")
            -- wudeshen 星装扮隐藏肤色按钮

            local c =  ClassList["ShopCustomSkinEditCtrl"]
            if not c then
                print(" failed install")
                return
            end
            local ctrl = ClassList["ShopCustomSkinEditCtrl"] or {}
            local oldFunc = ctrl.Refresh
            ctrl.Refresh = function (self)

                oldFunc(self)
                local incomingParam = self.model:GetIncomingParam()

                if incomingParam.editType == 2 or incomingParam.editType == 3 then
                    self:ChangePartTab(2)
                    getglobal("ShopCustomSkinEditRightPanelPage1TypeSlidingBtn1"):Hide()
                else
                    getglobal("ShopCustomSkinEditRightPanelPage1TypeSlidingBtn1"):Show()

                end
            end
            local shopDataMgr = ClassList["ShopDataManager"]
            if not shopDataMgr then
                print(" shopDataMgr install failed ")
                return
            end
            shopDataMgr.InitPlayerUsingSeatInfo = function (self)
                if not isEducationalVersion then
                    threadpool:work(function()
                        local seatID = AccountManager:avatar_seat_current()
                        if seatID and seatID > 0 then
                            local code,seatInfo = AccountManager:avatar_seat_info(seatID)
                            if code == ErrorCode.OK and seatInfo then
                                if seatInfo.skin  then
                                    local skin = 0
                                    local pants = 0
                                    local cloth = 0
                                    local head = 0
                                    for k, v in pairs(seatInfo.skin) do
                                        if k == 10 then
                                            skin = 1
                                        end
                                        if k == 6 then
                                            pants = 1
                                        end
                                        if k == 4 then
                                            cloth = 1
                                        end
                                        if k == 1 then
                                            head = 1
                                        end
                                    end
                                    if skin == 1 and (pants == 0 or cloth == 0 or head == 0) then
                                        if pants == 0 then
                                            local partDef = GetInst("ShopDataManager"):GetSkinPartDefById(4)
                                            seatInfo.skin[6] = {cfg = partDef,skin = {
                                                ModelID = 4,
                                                AuthorUin = 1000,
                                                Part = 6
                                            }}
                                        end
                                        if cloth == 0 then
                                            local partDef = GetInst("ShopDataManager"):GetSkinPartDefById(3)
                                            seatInfo.skin[4] = {cfg = partDef,skin = {
                                                ModelID = 3,
                                                AuthorUin = 1000,
                                                Part = 4
                                            }}
                                        end
                                        if head == 0 then
                                            local partDef = GetInst("ShopDataManager"):GetSkinPartDefById(2)
                                            seatInfo.skin[1] = {cfg = partDef,skin = {
                                                ModelID = 2,
                                                AuthorUin = 1000,
                                                Part = 1
                                            }}
                                        end
                                        local code = AccountManager:avatar_seat_save(seatID, seatInfo)
                                        GetInst("ShopDataManager"):AddSkinSeatInfo(seatID,seatInfo)
                                    end
                                end
                                self.data.playerUsingSeatInfo = seatInfo
                            end
                        else
                            self.data.playerUsingSeatInfo = nil
                        end -- if seatID and seatID > 0 then
                    end)
                end -- if not isEducationalVersion then
            end -- shopDataMgr.InitPlayerUsingSeatInfo = function (self)
        end
    },
    {
        --by huangrui
        --非法邮件异常处理
        ver_list = "1.15.1 1.15.2 1.15.3 1.15.5 1.16.0 1.16.1 1.16.2 1.17.0 1.17.1 1.17.2",
        install = function()
            local oldFunc = LoadMailList
            LoadMailList = function ()
                oldFunc()
                -- 处理非法邮件
                if mailservice.mails and #mailservice.mails > 0 then
                    for i=#mailservice.mails, 1, -1 do
                        local data = mailservice.mails[i]

                        -- 非法邮件 2022-8-18 0:0:0 - 2022-8-25 14:30:0
                        if data.create_time >= 1660752000 and data.create_time < 1661409000 and (data.from == "business_demand_skin" or data.from == "business_op_demand_apply") then
                            table.remove(mailservice.mails, i)
                        end
                    end
                end
            end
        end
    },
    {
        -- chenwei 20220825 修复角色转皮肤之后兼容老版本好友头像不显示问题
        ver_list = "1.17.0 1.17.1 1.17.2",
        install = function()
            HeadCtrl.SetPlayerHeadByUin = function(self, iconName,uin,model,skinId,isHeadAvt)
                if skinId and skinId >= 257 and skinId <= 266 then
                    skinId = 0
                end
                local icon
                if tolua.type(iconName) == "miniui.GLoader" then

                    icon = iconName
                else
                    if iconName == nil or #iconName <= 0 then return end
                    icon = getglobal(iconName);
                    if uin == AccountManager:getUin() then
                        HeadCtrl:CurrentHeadIcon(iconName);
                        return;
                    end
                end

                --先设置本地图片头像
                if skinId ~= nil and skinId > 0 then
                    local skinDef = RoleSkinCsv:get(skinId);
                    if skinDef ~= nil then
                        if tolua.type(icon) == "miniui.GLoader" then
                            HeadCtrl:SetPlayerHead(icon,2,skinDef.Head);
                        else
                            HeadCtrl:SetPlayerHead(icon:GetName(),2,skinDef.Head);
                        end
                        return;
                    else
                        if model ~= nil and model > 0 then
                            if tolua.type(icon) == "miniui.GLoader" then
                                HeadCtrl:SetPlayerHead(icon,2,model);
                            else
                                HeadCtrl:SetPlayerHead(icon:GetName(),2,model);
                            end
                        end
                    end
                end

                threadpool:work(function()
                    local seatInfo = avatarContentCacheByUin(uin,isHeadAvt);
                    if seatInfo ~= nil then
                        SkinDataSort(seatInfo);
                    end
                    if seatInfo ~= nil and seatInfo.skin ~= nil and #seatInfo.skin > 0 then  --model:1~10(角色皮肤)
                        if HeadCtrl.otherHeadInfo.data == nil then
                            HeadCtrl.otherHeadInfo.data = seatInfo.skin;
                            HeadCtrl.otherHeadInfo.uin = uin;
                        else
                            if JSON:encode(HeadCtrl.otherHeadInfo.data) ==  JSON:encode(seatInfo.skin) and HeadCtrl.otherHeadInfo.h ~= nil and  HeadCtrl.otherHeadInfo.uin == uin then
                                HeadCtrl:SetCurrentHeadIcon(icon,HeadCtrl.otherHeadInfo);
                                return;
                            else
                                HeadCtrl.otherHeadInfo.uin = uin;
                            end
                        end
                        if tolua.type(icon) == "miniui.GLoader" then
                            HeadCtrl:SetPlayerHead(icon,3,seatInfo);
                        else
                            HeadCtrl:SetPlayerHead(icon:GetName(),3,seatInfo);
                        end
                    else
                        if model ~= nil and model > 0 then
                            if tolua.type(icon) == "miniui.GLoader" then
                                HeadCtrl:SetPlayerHead(icon,2,model);
                            else
                                HeadCtrl:SetPlayerHead(icon:GetName(),2,model);
                            end

                        else
                            if tolua.type(icon) == "miniui.GLoader" then
                                HeadCtrl:SetPlayerHead(icon,2,model);
                            else
                                HeadCtrl:SetPlayerHead(icon:GetName(),2,1);
                            end
                        end
                    end
                end);
            end
        end
    },
    {
        --by keguanqiang
        --1.17.x版本商城特殊处理一律不显示新增的10个角色皮肤
        ver_list = "1.17.0 1.17.1 1.17.2",
        install = function()
            local ShopDataManager = ClassList["ShopDataManager"] or {};
            ShopDataManager.InitSkinDefs = function(self)
                self.data.skinDefs = {}
                local skinNum = RoleSkinCsv:getNum()
                local isVaild = function(skinid)
                    return not (LuaInterface:getCltVersion() < (1*65536 + 18*256 + 0 ) and skinid >=257 and skinid <= 266)
                end

                for i = 1,skinNum do
                    local skinDef = RoleSkinCsv:getByIndex(i - 1)
                    local isShow = AccountManager:skin_can_show(skinDef.ID)
                    if isShow and isVaild(skinDef.ID)  then
                        table.insert(self.data.skinDefs,skinDef)
                    end
                end
                --建立索引关系
                self:LinkSkinDefs()
                --装扮换装系列皮肤索引关系
                self:LinkChangeSkinDefs()
            end
        end
    },
    {
        --by liwentao
        --会员过期 玩家皮肤 和 头像框脱下bug 修复
        ver_list = "1.15.0 1.15.1 1.15.2 1.15.3 1.15.5 1.16.0 1.16.1 1.16.2 1.17.0 1.17.1 1.17.2",
        install = function()
            local MembersSysMgr = ClassList["MembersSysMgr"] or {}
            MembersSysMgr.OnMembersSkinTimeExpired = function(self)
                if self:IsMember() then return end
                local curData = self:GetMembersData()
                local curUseSkinId = AccountManager:getRoleSkinModel()
                local function resetHeadIcon()
                    local headPath = getkv("head_pic_cache")
                    if headPath and #headPath > 0 and gFunc_isStdioFileExist(headPath) then
                        -- getglobal("MiniLobbyFrameTopRoleInfoHeadIcon"):SetTexture(headPath)
                        SetMiniLobbyRoleInfoIcon(headPath) --mark by hfb for new minilobby
                        HeadCtrl:UseNewHead(1,headPath)
                    else
                        local index = GetHeadIconIndex()
                        -- getglobal("MiniLobbyFrameTopRoleInfoHeadIcon"):SetTexture("ui/roleicons/" .. index .. ".png")
                        SetMiniLobbyRoleInfoIcon("ui/roleicons/" .. index .. ".png") --mark by hfb for new minilobby
                        --记录头像文件
                        ns_playercenter.headIndexFile = "ui/roleicons/" .. index .. ".png"
                        t_exhibition.playerinfo.headIndexFile = "ui/roleicons/" .. index .. ".png"
                        HeadCtrl:UseNewHead(1,"ui/roleicons/" .. index .. ".png")
                    end
                end

                local function use(skinDef, skinId)
                    --提示飘字
                    ShowGameTips(GetS(614))

                    --刷新角色当前使用的定制皮肤坑位信息
                    GetInst("ShopDataManager"):InitPlayerUsingSeatInfo()
                    --刷新当前页面的UI
                    if GetInst("ShopDataManager"):GetPreSkinOrgSkin(skinDef.ID) then
                        --使用装扮换装皮肤要同时使用配套的头像框
                        if skinId == 0 then
                            GetInst("ShopService"):UseChangeSkinHeadFrame(1)
                        end
                    else
                        --重置头像
                        resetHeadIcon()
                    end
                end

                if curData.skin_id and curData.skin_id > 0 and curUseSkinId == curData.skin_id then
                    local skinDef = GetInst("ShopDataManager"):GetSkinDefById(curUseSkinId)
                    if AccountManager:useRoleSkinModel(0) then
                        use(skinDef, 0)
                    end
                end
            end
        end
    },
    {
        -- by changhongfeng
        -- 20220829  新手任务兼容新增删除任务配置
        ver_list = "1.12.0 1.12.1 1.12.2 1.12.3 1.12.4 1.12.5 1.12.6 1.12.8 1.13.0 1.13.1 1.13.2 1.13.3 1.13.5 1.13.6 1.14.0 1.14.1 1.14.2 1.14.3 1.14.4 1.15.0 1.15.1 1.15.2 1.15.3 1.15.5 1.16.0 1.16.1 1.16.2 1.17.0 1.17.1 1.17.2",
        install = function()
            if ClassList["UserTaskDataManager"] then
                ClassList["UserTaskDataManager"].RefreshNewNoviceTasks = function(self,tasks)
                    local config = copy_table(self.data.config_parse[9])
                    if not config or not next(config) then return end;
                    print("UserTaskDataManager:RefreshNewNoviceTasks ", config)

                    self.data.NewNoviceTaskData.final_suit_award = config.final_suit_award;
                    self.data.NewNoviceTaskData.try_suit_award = config.try_suit_award;
                    self.data.NewNoviceTaskData.final_award_target = config.final_award_target;
                    if not tasks or not next(tasks) then return end;

                    local mission = config.mission;
                    for k, v in pairs(mission) do
                        if tasks[k] then
                            v.progress = tasks[k].progress;
                            v.status = tasks[k].status;
                            v.taskid = k;
                        else
                            mission[k] = nil
                        end
                    end

                    --兼容删除任务
                    self.data.NewNoviceTaskData.tasks = {};
                    for k, v in pairs(mission) do
                        table.insert(self.data.NewNoviceTaskData.tasks,v)
                    end

                    self:sortNewNoviceTasks()
                end
            end
        end
    },
    {
        --by wudeshen
        --邮件提示升级版本
        ver_list = "1.15.0 1.15.1 1.15.2 1.15.3 1.15.5  1.16.0 1.16.1 1.17.0 1.17.1 1.17.2",
        install = function()
            local oldFunc = MailFrame_OnMailsPulled
            MailFrame_OnMailsPulled = function ()
                if #mailservice.mails > 0 then
                    for i = 1, #mailservice.mails do
                        local maildata = mailservice.mails[i]
                        if tonumber(maildata.type) == 21 then
                            maildata.title = "好友索要"
                            maildata.content = "好朋友向你发起了索要，请更新到最新的版本赠送哦~十分感谢"
                        elseif tonumber(maildata.type) == 22 then
                            maildata.title = "收到礼物"
                            maildata.content = "好朋友给你赠送了礼物，请更新到最新的版本领取哦~"
                        end
                    end
                end
                oldFunc()
            end
        end
    },
    {
        --by wudeshen
        --邮件防篡改
        ver_list = "1.15.0 1.15.1 1.15.2 1.15.3 1.15.5  1.16.0 1.16.1 1.17.0 1.17.1 1.17.2",
        install = function()
            local ShopFriendGiftCtrl = ClassList["ShopFriendGiftCtrl"]
            ShopFriendGiftCtrl.ReqWantGift = function(self)
                local tips = {
                    [1] = 30189,
                    [2] = 30190,
                    [3] = 30191,
                    [4] = 30192,
                }
                local skinID = self.model:GetGiftData().ID or 0
                local url = g_http_common .. "/miniw/business?act=demand_skin&friend_uin=%d&skinid=%d&title=%s&content=%s&ctx=%s&".. http_getS1(true)
                local friendIndex = self.model:GetMyFriendsIndex()
                local friendInfo = self.model:GetMyFriendsBrief()[friendIndex]
                local friendUin = 0
                local friendName = ""
                if friendInfo then
                    friendUin = friendInfo.uin
                    friendName = friendInfo.name
                end
                local uin = AccountManager:getUin()
                local blessTipIndex = self.model:GetBlessingTipsIndex()
                local btis = tips[blessTipIndex]
                local giftName = ''
                local skinDef = GetInst("ShopDataManager"):GetSkinDefById(skinID)
                if skinDef then
                    giftName = skinDef.Name or ""
                end
                local tipsText = GetS(btis,"#cFA7A0F"..giftName.."#n")
                local sendMailContent = GetS(30198,friendName,tipsText)
                local mailcontent = ns_http.func.url_encode(sendMailContent)
                local mailtitle = ns_http.func.url_encode(GetS(30185))

                local jsonExtendData = {}
                jsonExtendData.friendname = friendName
                jsonExtendData.frienduin = friendUin --被索要uin
                jsonExtendData.skinid = skinID
                jsonExtendData.wantuin = uin --索要uin
                jsonExtendData.sendname = AccountManager:getNickName()
                jsonExtendData.skinprice = self.define.wantSkinPirce
                jsonExtendData.blesssStr = btis
                jsonExtendData.strid = 30198
                local jsonStr = JSON:encode(jsonExtendData)
                local base64_encode_jsonStr = ns_http.func.base64_encode(jsonStr)
                local ctx = ns_http.func.url_encode(base64_encode_jsonStr)
                url = string.format(url,friendUin,skinID,mailtitle,mailcontent,ctx)
                local rspWantGift = function(ret)
                    print("merci  demand_skin ret", ret)
                    ShowLoadLoopFrame(false)
                    if ret and ret[1] and (ret[1].ret == self.define.RequestDemandSkinCode.OK  or  ret[1].ret == self.define.RequestDemandSkinCode.DEMAND_REFUSE_SENDMAIL) then
                        self.view:ShowWantGiftSuccessFrame(true,friendName)
                        self.view.BlessingTips:Hide()
                        self.model:SetFrameType(self.define.FrameType.WANTGIFT)
                    elseif ret and ret[1] then
                        if ret[1].ret == self.define.RequestDemandSkinCode.DEMAND_LIMIT_DAILY then --每日索要上限
                            local demand_limit = ns_shop_config2 and ns_shop_config2.demand_skin_conf and ns_shop_config2.demand_skin_conf.demand_limit or 0
                            ShowGameTipsWithoutFilter(GetS(30289,demand_limit))
                        elseif ret[1].ret == self.define.RequestDemandSkinCode.DEMAND_SAMEUIN_ERROR then --每日只能向同一玩家赠送
                            local demand_same_limit = ns_shop_config2 and ns_shop_config2.demand_skin_conf and ns_shop_config2.demand_skin_conf.demand_same_friend_limit or 0
                            ShowGameTipsWithoutFilter(GetS(30290,demand_same_limit))
                        elseif ret[1].ret == self.define.RequestDemandSkinCode.DEMAND_MONEY_LIMIT_MOUTH then --每月索要金额已达上限
                            ShowGameTipsWithoutFilter(GetS(30292))
                        elseif not TipsByHttpTimeCheckError(ret[1].ret) then
                            ShowGameTips(GetS(30195), 3)
                        end
                    else
                        ShowGameTips(GetS(30195), 3)
                    end
                    if ret and ret[1] and (ret[1].ret == self.define.RequestDemandSkinCode.OK or  ret[1].ret == self.define.RequestDemandSkinCode.DEMAND_REFUSE_SENDMAIL) then
                        standReportEvent("2203", "SHOP_GIVEORASK_BlESS","GiveOrAsk2", "click",{standby1 =friendUin,standby2=1,standby3=1})
                    else
                        standReportEvent("2203", "SHOP_GIVEORASK_BlESS","GiveOrAsk2", "click",{standby1 =friendUin,standby2=1,standby3=0})
                    end
                end
                ShowLoadLoopFrame(true,"file:ShopFriendGiftCtrl --func:ReqWantGift")
                threadpool:work(function()
                    ns_http.func.rpc(url,rspWantGift, nil, nil, true)
                end)
            end

            ShopFriendGiftCtrl.SendVipGiftReq = function (self, giftData,friendUin,friendName)
                local itemDef = ItemDefCsv:get(giftData.item_id)
                local vipcardName = ""
                if itemDef then
                    vipcardName = itemDef.Name
                end
                local blessTipIndex = self.model:GetBlessingTipsIndex()
                local tipsText = self.define.UIConfig[self.define.FrameType.BLESSINGTIPS].VipTips[blessTipIndex]
                local VipTipStr = {
                    [1] = 70841,
                    [2] = 70842,
                    [3] = 70843,
                }
                local tipsStr = VipTipStr[blessTipIndex]

                local sendMailContent = GetS(30169,AccountManager:getNickName(),AccountManager:getUin(),vipcardName,tipsText)
                local mailcontent = ns_http.func.url_encode(sendMailContent)
                local mailtitle = ns_http.func.url_encode(GetS(30168))
                local jsonExtendData = {}
                jsonExtendData.sendname = AccountManager:getNickName()
                jsonExtendData.giftData =  giftData
                jsonExtendData.friendUin =  AccountManager:getUin()
                jsonExtendData.vipstr = tipsStr
                jsonExtendData.itemid = giftData.item_id
                local jsonStr = JSON:encode(jsonExtendData)
                local mailctx = ns_http.func.url_encode(jsonStr)

                --判断是普通赠送还是通过索要邮件来赠送
                local isNormarPresent = true--是否普通赠送
                local mailid = 0 --索要邮件ID
                local reply = 2 --赠送操作 reply  1 同意 2 赠送 3 拒绝
                local incomingParam = self.model:GetIncomingParam()
                if incomingParam and incomingParam.enterType and  incomingParam.enterType == self.define.enterType.mail then
                    isNormarPresent = false
                    mailid = incomingParam.mailid or 0
                    reply = 1 --同意赠送
                end
                local _callback = function(ret)
                    print("merci SendVipGiftReq ret ",ret)
                    print("merci SendVipGiftReq friendName ",friendName)
                    if ret and ret.ret == 0 then
                        MessageBox(4, GetS(70839,friendName), nil, nil, true)
                        if not isNormarPresent then
                            GetInst("ShopService"):AddWantGiftMailID(mailid)
                        end
                    elseif ret and ret.ret == 70826 then--重复赠送
                        ShowGameTipsWithoutFilter(GetS(self.define.TipsStr.HadGiveAwayVip,vipcardName))
                    end
                end
                GetInst("MembersSysMgr"):ReqVipDemandReply(giftData.store_id,friendUin,0,mailtitle,mailcontent,reply,mailctx,mailid,_callback)
            end

            ShopFriendGiftCtrl.SendVipDemandReq = function (self)
                --交互频繁提示
                local refreshDuration = 1.5
                if self.lastoptime == nil then self.lastoptime = 0 end
                local nowtime = AccountManager:getSvrTime()
                local duration = nowtime - self.lastoptime
                if duration < refreshDuration then
                    ShowGameTips(GetS(1000213))
                    return
                end
                self.lastoptime = nowtime

                local giftData = self.model:GetGiftData()
                local friendIndex = self.model:GetMyFriendsIndex()
                local friendInfo = self.model:GetMyFriendsBrief()[friendIndex]
                local friendUin = 0
                local friendName = ""
                if friendInfo then
                    friendUin = friendInfo.uin
                    friendName = friendInfo.name
                end
                local blessTipIndex = self.model:GetBlessingTipsIndex()
                local btis = self.define.UIConfig[self.define.FrameType.WANTGIFTTIPS].VipTips[blessTipIndex]
                local giftName = ''
                local itemDef = ItemDefCsv:get(giftData.item_id)
                if itemDef then
                    giftName = itemDef.Name
                end
                local tipsText = GetS(btis,"#cFA7A0F"..giftName.."#n")
                local sendMailContent = GetS(30198,friendName,tipsText)
                local mailcontent = ns_http.func.url_encode(sendMailContent)
                local mailtitle = ns_http.func.url_encode(GetS(70840))

                local jsonExtendData = {}
                jsonExtendData.friendname = friendName
                jsonExtendData.frienduin = friendUin --被索要uin
                jsonExtendData.wantuin = AccountManager:getUin() --索要uin
                jsonExtendData.sendname = AccountManager:getNickName()
                jsonExtendData.giftData =  giftData
                jsonExtendData.vipstr = btis
                local jsonStr = JSON:encode(jsonExtendData)
                local mailctx = ns_http.func.url_encode(jsonStr)
                local vipgiftConfig =  ns_shop_config2.VipSystemConfig.Open_vipgift
                local rspWantGift = function(ret)
                    if ret and (ret.ret == self.define.RequestDemandSkinCode.OK  or  ret.ret == self.define.RequestDemandSkinCode.DEMAND_REFUSE_SENDMAIL) then
                        self.view:ShowWantGiftSuccessFrame(true,friendName)
                        self.view.BlessingTips:Hide()
                        self.model:SetFrameType(self.define.FrameType.WANTGIFT)
                    elseif ret and ret.ret == self.define.RequestDemandSkinCode.DEMAND_LIMIT_DAILY  then --每日索要上限
                        local demand_limit = vipgiftConfig.demand_limit or 0
                        ShowGameTipsWithoutFilter(GetS(30289,demand_limit))
                    elseif ret and ret.ret == self.define.RequestDemandSkinCode.DEMAND_SAMEUIN_ERROR then --每日只能向同一玩家赠送
                        local demand_same_limit = vipgiftConfig.demand_same_friend_limit or 0
                        ShowGameTipsWithoutFilter(GetS(30290,demand_same_limit))
                    elseif ret and not TipsByHttpTimeCheckError(ret.ret) then
                        ShowGameTips(GetS(30195), 3)
                    end
                end
                GetInst("MembersSysMgr"):ReqVipDemand(giftData.store_id,friendUin,mailtitle,mailcontent,mailctx, rspWantGift)
            end

            ShopFriendGiftCtrl.SendWeaponGiftReq = function (self, giftData,friendUin,friendName)
                local weaponDef = giftData.weaponDef
                local needNum = 0
                if weaponDef.CostType == self.define.weaponSort.costType.coin then--货币
                    needNum = weaponDef.Cost
                elseif  weaponDef.CostType == self.define.weaponSort.costType.prop  then--道具
                    needNum = weaponDef.Num
                end
                local blessTipIndex = self.model:GetBlessingTipsIndex()
                local tipsText = self.define.UIConfig[self.define.FrameType.BLESSINGTIPS].Tips[blessTipIndex]
                local TipsId = {
                    [1] = 30161,
                    [2] = 30162,
                    [3] = 30163,
                }
                local btis = TipsId[blessTipIndex]
                local weaponName = weaponDef.Name .."（"..GetS(611).."）"
                local sendMailContent = GetS(30169,AccountManager:getNickName(),AccountManager:getUin(),weaponName,tipsText)
                local mailcontent = ns_http.func.url_encode(sendMailContent)
                local mailtitle = ns_http.func.url_encode(GetS(30168))
                local mail_type = g_enum_comm.email_comm_type.weaponskin
                local _callback = function(ret)
                    print("merci SendWeaponGiftReq ret ",ret)
                    if ret and ret.ret == 0 then
                        MessageBox(4, GetS(120296,friendName), nil, nil, true)
                        local incomingParam = self.model:GetIncomingParam()
                        if incomingParam and incomingParam.sendGiftSucceedReply then
                            incomingParam.sendGiftSucceedReply()
                        end
                    elseif ret and ret.ret == 120291 then
                        ShowGameTipsWithoutFilter(GetS(120291,friendName))
                    else
                        ShowGameTipsWithoutFilter(GetS(120295))
                    end
                end
                local jsonExtendData = {}
                jsonExtendData.sendname = AccountManager:getNickName()
                jsonExtendData.blesssStr = btis
                jsonExtendData.weaponid = weaponDef.SkinID
                jsonExtendData.senduin = AccountManager:getUin()
                local jsonStr = JSON:encode(jsonExtendData)
                local ctx = ns_http.func.url_encode(jsonStr)
                GetInst("ShopService"):SendWeaponGiftReq(weaponDef.SkinID, friendUin, needNum, mailtitle,mailcontent,mail_type, weaponDef.CostType,ctx,_callback)

            end

            local oldUpdateCurMailContent = UpdateCurMailContent
            function UpdateCurMailContent(excuteMail)
                local maildata = excuteMail or GetCurMail()
                if maildata then
                    if maildata.type and g_enum_comm.email_comm_type.wantgift == tonumber(maildata.type) then--索取装扮邮件
                        maildata.title =  GetS(30185)
                        local url_decode_jsonStr = ns_http.func.url_decode(maildata.ctx)
                        local base64_decode_jsonStr = ns_http.func.base64_decode(url_decode_jsonStr)
                        local jsonData = JSON:decode(base64_decode_jsonStr)
                        if jsonData.skinid and jsonData.blesssStr then

                            local skinDef = GetInst("ShopDataManager"):GetSkinDefById(jsonData.skinid)
                            local skinName = ""
                            if skinDef then
                                skinName = skinDef.Name or ""
                            end
                            local tipsText = GetS(jsonData.blesssStr,"#cFA7A0F"..skinName.."#n")
                            maildata.content = GetS(30198,jsonData.friendname,tipsText)
                        end
                    elseif maildata.type and g_enum_comm.email_comm_type.vipcard_demand == tonumber(maildata.type) then-- 索取会员
                        local url_decode_jsonStr = ns_http.func.url_decode(maildata.ctx)
                        local jsonData = JSON:decode(url_decode_jsonStr)
                        if jsonData.vipstr then
                            local giftName = ''
                            local btis = jsonData.vipstr
                            local itemDef = ItemDefCsv:get(jsonData.giftData.item_id)
                            if itemDef then
                                giftName = itemDef.Name
                            end
                            local tipsText = GetS(btis,"#cFA7A0F"..giftName.."#n")
                            maildata.content = GetS(30198,jsonData.friendname,tipsText)
                        end
                    elseif maildata and maildata.type and (g_enum_comm.email_comm_type.weaponskin == tonumber(maildata.type)) then
                        local url_decode_jsonStr = ns_http.func.url_decode(maildata.ctx)
                        local jsonData = JSON:decode(url_decode_jsonStr)
                        if jsonData.blesssStr then
                            local weaponDef = GetInst("ShopDataManager"):FindCurrentWeaponDef(jsonData.weaponid)
                            local weaponName = weaponDef.Name .."（"..GetS(611).."）"
                            maildata.content = GetS(30169, jsonData.sendname, jsonData.senduin,weaponName,GetS(jsonData.blesssStr))
                            maildata.title = GetS(30168)
                        end
                    elseif maildata and maildata.type and g_enum_comm.email_comm_type.vipcard_present == tonumber(maildata.type) then--赠送会员邮件
                        local url_decode_jsonStr = ns_http.func.url_decode(maildata.ctx)
                        local jsonData = JSON:decode(url_decode_jsonStr)
                        if jsonData.vipstr then
                            local itemDef = ItemDefCsv:get(jsonData.giftData.item_id)
                            local vipcardName = ""
                            if itemDef then
                                vipcardName = itemDef.Name
                            end
                            maildata.content = GetS(30169, jsonData.sendname , jsonData.friendUin, vipcardName, GetS(jsonData.vipstr))

                        end

                        --[[local tes = string.gsub( organizedContent, '\\n', '#r')

                    tes = tes ..GetS(70850)
                    Text:SetText(tes or "", 61, 69, 70);]]
                    else
                        local url_decode_jsonStr = ns_http.func.url_decode(maildata.ctx or "")
                        local base64_decode_jsonStr = ns_http.func.base64_decode(url_decode_jsonStr)
                        local ok, jsonData = pcall(JSON.decode, JSON, base64_decode_jsonStr)
                        if ok and jsonData and jsonData.titlestr then
                            maildata.title = GetS(jsonData.titlestr)
                            local param2 = jsonData.param2 or ""
                            if jsonData.skinid then
                                local skinDef = GetInst("ShopDataManager"):GetSkinDefById(jsonData.skinid)
                                local skinName = ""
                                if skinDef then
                                    param2 = skinDef.Name or ""
                                end
                            elseif jsonData.itemid then
                                local itemDef = ItemDefCsv:get(jsonData.itemid)
                                if itemDef then
                                    param2 = itemDef.Name or ""
                                end
                            end
                            maildata.content = GetS(jsonData.contentstr, jsonData.param1, param2)
                        end
                    end
                end
                oldUpdateCurMailContent(excuteMail)

            end

            function MailFrameMailContGotoBtn_OnClick()
                local maildata = GetCurMail()
                local CurMailIndex = getFunctionVpValue(GetCurMail, "CurMailIndex")
                MailCommentViewStandReport(maildata, "Check", "click", true);
                if maildata and maildata.type and (g_enum_comm.email_comm_type.wantgift == tonumber(maildata.type) or
                        g_enum_comm.email_comm_type.vipcard_demand == tonumber(maildata.type))then
                    if not GetInst("ShopService"):FindWantGiftMailID(maildata.id) then
                        --发送索取操作状态接口
                        if g_enum_comm.email_comm_type.wantgift == tonumber(maildata.type) then
                            local url_decode_jsonStr = ns_http.func.url_decode(maildata.ctx)
                            local base64_decode_jsonStr = ns_http.func.base64_decode(url_decode_jsonStr)
                            local jsonData = JSON:decode(base64_decode_jsonStr)
                            local skinid = 0
                            local wantuin = 0
                            local skinprice = 0
                            local friendname = ""
                            if jsonData then
                                skinid =  jsonData.skinid or 0
                                wantuin =  jsonData.wantuin or 0
                                skinprice =  jsonData.skinprice or 0
                                friendname =  jsonData.friendname or ""
                            end
                            local title = ns_http.func.url_encode(GetS(30200))
                            local skinDef = GetInst("ShopDataManager"):GetSkinDefById(skinid)
                            local skinName = ""
                            if skinDef then
                                skinName = skinDef.Name or ""
                            end
                            local content = ns_http.func.url_encode(GetS(30199,friendname,skinName))
                            local tick = getglobal("MailFrameMailContSwitchTick")
                            local ishide = 0
                            if tick:IsShown() then
                                ishide = 1
                            end
                            GetInst("ShopService"):SendWantGiftReq(skinid,wantuin,skinprice,title,content,0,ishide, nil, {titlestr = 30200,  contentstr = 30199, param1 = friendname, param2 = skinName, skinid = skinid})
                        elseif g_enum_comm.email_comm_type.vipcard_demand == tonumber(maildata.type) then
                            local url_decode_jsonStr = ns_http.func.url_decode(maildata.ctx)
                            local jsonData = JSON:decode(url_decode_jsonStr)
                            local store_id = 0
                            local wantuin = 0
                            local skinprice = 0
                            local friendname = ""
                            local giftData = nil
                            if jsonData then
                                giftData = jsonData.giftData
                                wantuin =  jsonData.wantuin or 0
                                skinprice =  jsonData.skinprice or 0
                                friendname =  jsonData.friendname or ""
                                store_id = jsonData.giftData and jsonData.giftData.store_id or 0
                            end
                            local title = ns_http.func.url_encode(GetS(70848)) --邮件标题
                            local giftName = ''
                            if giftData then
                                local itemDef = ItemDefCsv:get(giftData.item_id)
                                if itemDef then
                                    giftName = itemDef.Name
                                end
                            end
                            local content = ns_http.func.url_encode(GetS(70849 ,friendname,giftName))
                            local tick = getglobal("MailFrameMailContSwitchTick")
                            local ishide = 0
                            if tick:IsShown() then
                                ishide = 1
                            end
                            local ctx = {
                                titlestr = 70848,
                                contentstr = 70849,
                                param1 = friendname,
                                param2 = giftName,
                                itemid = giftData.item_id,
                            }
                            ctx = JSON:encode(ctx)
                            ctx = ns_http.func.base64_encode(ctx)
                            GetInst("MembersSysMgr"):ReqVipDemandReply(store_id,wantuin,ishide,title,content,3,ctx, maildata.id)            end
                        DeleteMail(CurMailIndex)
                    end
                elseif maildata and maildata.type and (g_enum_comm.email_comm_type.XQlabelresult == tonumber(maildata.type)) then
                    local url_decode_jsonStr = ns_http.func.url_decode(maildata.ctx)
                    local jsonData = JSON:decode(url_decode_jsonStr)
                    local appeal_end_time = 0
                    if jsonData then
                        appeal_end_time = jsonData.appeal_end_time or 0
                    end

                    local ct = getServerTime()
                    --appeal_end_time 申述结束时间  星启计划邮件 申诉邮件创建时间＞15天  已过申诉时效，无法申诉
                    if appeal_end_time and appeal_end_time ~= 0 and ct > appeal_end_time then
                        ShowGameTipsWithoutFilter(GetS(181016), 3);
                    else
                        DoMailJump(GetCurMail(),0);
                    end
                else
                    DoMailJump(GetCurMail(),0);
                end
                if MailJumpStandReport then
                    MailJumpStandReport(GetCurMail(), "JumpButton", "click", true);
                end
            end

            local shopService = ClassList["ShopService"]
            shopService.SendWantGiftReq = function (self, skinid,frienduin,coin_num,title,content,opt_type,ishide,callback, ctx)
                -- local url = g_http_common .. "/miniw/business?act=op_demand_apply&friend_uin=%d&skinid=%d&coin_num=%d&title=%s&content=%s&op_ret=%d&ishide=%d&itemid=%d&".. http_getS1(true)
                local itemid = 0
                local skinDef = GetInst("ShopDataManager"):GetSkinDefById(skinid)
                if skinDef then
                    itemid = skinDef.UnlockItem
                end
                -- url = string.format(url,frienduin,skinid,coin_num,title,content,opt_type,ishide,itemid)
                ctx = JSON:encode(ctx)
                ctx = ns_http.func.base64_encode(ctx)
                local function urlEncode(s)
                    s = string.gsub(s, "([^%w%.%- _])", function(c) return string.format("%%%02X", string.byte(c)) end)
                    return string.gsub(s, " ", "+")
                end
                ctx = urlEncode(ctx)
                local url = g_http_common.."miniw/business?"
                local reqParams = { act = 'op_demand_apply', friend_uin = frienduin, skinid = skinid, coin_num = coin_num,
                                    title = title, content = content, op_ret = opt_type, ishide = ishide, itemid = itemid, ctx = ctx}
                local paramStr,md5 = http_getParamMD5(reqParams)
                url =  table.concat({url,paramStr,'&md5=',md5})
                threadpool:work(function()
                    ns_http.func.rpc(url,callback, nil, nil, true,true)
                end)
            end

        end
    },
    {
        ver_list = "1.18.0 1.18.1",
        --20220909 modify by xiaoqiang  --修复添加好友转圈热更
        install = function()
            function ReqAddFriend(des_uin)
                ShowNoTransparentLoadLoop()
                friendservice.addFriendUin = des_uin
                local url = nil;

                local src_uin = AccountManager:getUin()
                local cur_time = os.time()
                local s2_, s2t_, pure_s2t_ = get_login_sign()
                local token = gFunc_getmd5("" .. cur_time .. s2_ .. src_uin)
                local lang = get_game_lang() or "nil"
                local apiid = ClientMgr:getApiId() or "nil"
                local country = get_game_country() or "nil"
                local ver = ClientMgr:clientVersionToStr(ClientMgr:clientVersion()) or "nil"
                local userInfoCardstatisticID = nil
                if  friendStatisticID ~= nil    and friendStatisticSrc ~=nil    then
                    statisticsGameEvent(friendStatisticID,"%s",friendStatisticSrc);
                    local statisticfromID = nil;
                    if friendStatisticID == 59 then
                        userInfoCardstatisticID = friendStatisticID
                    end
                    if friendStatisticSrc == "QRScanedAddFriend"    then
                        statisticfromID = "0";
                    elseif friendStatisticSrc == "MiniIDAddFriend"  then
                        statisticfromID = "1";
                    elseif friendStatisticSrc == FriendMgr.DlgType_RecentPlaymate   then
                        statisticfromID = "2";
                    elseif friendStatisticSrc == "NearbyFriend" then
                        statisticfromID = "3";
                    elseif friendStatisticSrc == "MiniWorksAddFriend"       then
                        statisticfromID = "4";
                    else
                        statisticfromID ="5";     --个人中心添加好友
                    end

                    if friendStatisticSrc == "FrindsPointsActivity" then  --好友积分活动
                        statisticfromID ="6";
                    end

                    url = CreateFriendRequest("/server/friend")
                            :addparam("apiid", apiid)
                            :addparam("cmd", "apply_friend")
                            :addparam("country", country, nil, true)
                            :addparam("des_uin", des_uin)
                            :addparam("from",statisticfromID)
                            :addparam("lang", lang, nil, true)
                            :addparam("pushchannel", get_push_chat_push_channel())
                            :addparam("s2t", pure_s2t_)
                            :addparam("src_uin", src_uin)
                            :addparam("time", cur_time)
                            :addparam("token", token)
                            :addparam("uin", src_uin)
                            :addparam("ver", ver, nil, true)
                            :finish();
                    friendStatisticID = nil;
                    friendStatisticSrc = nil;
                else
                    statisticsGameEvent(6000,"%s","PlayCenterAddFriend");
                    url = CreateFriendRequest("/server/friend")
                            :addparam("apiid", apiid)
                            :addparam("cmd", "apply_friend")
                            :addparam("country", country, nil, true)
                            :addparam("des_uin", des_uin)
                            :addparam("from","5")
                            :addparam("lang", lang, nil, true)
                            :addparam("pushchannel", get_push_chat_push_channel())
                            :addparam("s2t", pure_s2t_)
                            :addparam("src_uin", src_uin)
                            :addparam("time", cur_time)
                            :addparam("token", token)
                            :addparam("uin", src_uin)
                            :addparam("ver", ver, nil, true)
                            :finish();
                    if friendStatisticID ~= nil then
                        friendStatisticID = nil;
                    end
                    if friendStatisticSrc ~= nil then
                        friendStatisticSrc = nil;
                    end
                end

                if threadpool.running then
                    local code, retstr, userdata = friendservice:commonReqInterface(url, true, true, userInfoCardstatisticID)
                    if code == ErrorCode.OK then
                        -- 请求成功
                        return RespAddFriend(retstr,userdata)
                    else
                        HideNoTransparentLoadLoop()
                        return code
                    end
                else
                    ns_http.func.rpc_string_raw(url, RespAddFriend, userInfoCardstatisticID)
                end

                return -1
            end
        end,
    },
    {
        -- by huangxin：【【开发者商店】福利页签下方加上数量限制的说明，限制30个】
        ver_list = "1.19.0 1.19.1 1.19.5",
        install = function()
            local WelfareComponentView = ClassList["WelfareComponentView"] or {} ;
            WelfareComponentView.SetParam = function(self,Param)
                if #Param > 0 then
                    if #Param >= GetInst("NewDeveloperStoreInterface"):GetWelfareLimit() then
                        self.widgets.addButton:setVisible(false)
                    else
                        self.widgets.addButton:setVisible(true)
                    end
                    self.widgets.ctrl:setSelectedIndex(0)
                    self.widgets.n0:setNumItems(#Param)
                else
                    self.widgets.ctrl:setSelectedIndex(1)
                    self.widgets.addButton:setVisible(true)
                end
            end
            local NewDeveloperStoreInterface = ClassList["NewDeveloperStoreInterface"] or {} ;
            NewDeveloperStoreInterface.ReshNum = function(self,framtype)
                local tips =  getglobal("DeveloperStoreMapPurchaseFrameNumberTips");
                if self:IndexFromIsShow(1) then -- 福利刷新
                    tips:Hide();
                elseif self:IndexFromIsShow(2) then
                    if framtype then
                        if framtype == 1 then -- 广告数目刷新
                            tips:Show();
                            tips:SetText(GetS(21662)..self:GetAdNum().."/"..self:GetAdLimit())
                        elseif framtype == 2 then -- 福利数目刷新
                            tips:Show();
                            tips:SetText(GetS(21662)..self:GetWelfareNum().."/"..self:GetWelfareLimit())
                        else
                            tips:Hide();
                        end
                    else
                        tips:Hide();
                    end
                else--商品数量刷新
                    tips:Show();
                    tips:SetText(DeveloperGetLimtStr())
                end
            end
            NewDeveloperStoreInterface.GetWelfareLimit= function(self)
                return 30
            end
        end,
    },
    {
        --by luoshuai
        --20220927 个人中心动态可上传图片bug
        ver_list = "1.19.0 1.19.1 1.19.5",
        install = function()
            if _G.ZoneDynamicInsertPicBtnPos then
                local oldFun = _G.ZoneDynamicInsertPicBtnPos
                _G.ZoneDynamicInsertPicBtnPos = function()
                    local picBtn = getglobal("DynamicPublishFrameInsertPicBtn");
                    local m_ZoneDynamicMgrParam = getFunctionVpValue(oldFun, "m_ZoneDynamicMgrParam")
                    local num = m_ZoneDynamicMgrParam.curPicCount==3 and 2 or m_ZoneDynamicMgrParam.curPicCount
                    picBtn:SetPoint("topleft","DynamicPublishFrameDynamicPic","topleft", 5+num*140, 0)
                    if m_ZoneDynamicMgrParam.curPicCount==3 then
                        picBtn:Hide();
                    else
                        if ns_version and check_apiid_ver_conditions(ns_version.posting_pic, false) then
                            picBtn:Show();
                        end
                    end
                end
            end
        end
    },
    {
        -- by huangxin：修改【【地图无法更新上传】国内地图无法更新上传，出现海外地图上传翻译按钮】
        ver_list = "1.19.0 1.19.1 1.19.5",
        install = function()
            local ShareArchiveCtrl = ClassList["ShareArchiveCtrl"] or {}
            ShareArchiveCtrl.SetLabelTips = function(self,curLabelText,GameLabelState)
                if curLabelText == ("#cB9B9B9"..GetS(25757).."#n") or not GameLabelState or GameLabelState == 0 then
                    self.view:UpdateLabelTips("")
                else
                    local strId = 192013 + GameLabelState - 2
                    local str = GetS(strId)
                    self.view:UpdateLabelTips("#c6f9196"..str)
                end
            end
        end,
    },
    {
        --by huangrulin
        --hrl20220922 地图在玩人数显示不正确
        ver_list = "1.19.0 1.19.1 1.19.5",
        install = function()
            local RoomServiceCls = ClassList["RoomService"]
            if RoomServiceCls then
                RoomServiceCls.AsynReqMapPlayerCount = function(self, mapwids)
                    print("hx AsynReqMapPlayerCount mapwids",mapwids)
                    if "table" ~= type(mapwids) or not next(mapwids) then
                        return
                    end
                    if #mapwids == 1 then
                        local strmapid =tostring(mapwids[1])
                        if self.m_mapPlayerNumAndRoomCount[strmapid] then
                            if os.time() -  self.m_mapPlayerNumAndRoomCount[strmapid].updatetime < 20 then
                                return
                            end
                        end
                    end
                    local genkey, gid = GetInst("UIEvtHook"):GenKeyWithPrefix(self.EVT_GEN_PREFIX_SYNC_THREAD_NOTIFY)
                    self:InsertSyncWaitingStatus(true, genkey)
                    if not AccountManager:loginRoomServer(false, 0, genkey) then
                        return
                    end
                    local uin_ = AccountManager:getUin() or get_default_uin()
                    local url = AllRoomManager:CreateRoomServerRequest("/server/room")
                                              :addparam("channel", ClientMgr:getApiId())
                                              :addparam("cmd", "query_map_player_count")
                                              :addparam("country", get_game_country() or "nil")
                                              :addparam("language", get_game_lang() or "nil")
                                              :addparam("map_ids", table.concat(mapwids, ','))
                                              :addparam("time", os.time())
                                              :finish();
                    print("hx AsynReqMapPlayerCount url",ur)
                    ns_http.func.rpc_string_raw(url, function (retStr)
                        print("hx AsynReqMapPlayerCount retStr",retStr)
                        if not retStr then
                            return
                        end

                        local ok, ret = pcall(JSON.decode, JSON, retStr);
                        if not (ok and type(ret) == 'table' and type(ret.data) == 'table') then
                            return
                        end

                        local data = ret.data
                        if not (type(data.list) == 'table') then
                            return
                        end

                        for _, value in ipairs(data.list) do
                            if "table" == type(value) then
                                if value.aid then
                                    local straid =tostring(value.aid);
                                    local palycount = tonumber(value.online)
                                    local roomcount = tonumber(value.roomcnt)
                                    self.m_mapPlayerNum[straid] = palycount
                                    self.m_mapPlayerNumAndRoomCount[straid] = {}
                                    self.m_mapPlayerNumAndRoomCount[straid].playcount = palycount
                                    self.m_mapPlayerNumAndRoomCount[straid].roomcount = roomcount
                                    self.m_mapPlayerNumAndRoomCount[straid].updatetime = os.time()
                                end
                            end
                        end
                    end);
                end

                --请求地图游玩人数
                RoomServiceCls.ReqMapPlayerCount = function(self, mapwids, spData)
                    spData = spData or {}

                    local retTab = {}

                    if "table" ~= type(mapwids) or not next(mapwids) then
                        return retTab
                    end

                    --  对于一个地图请求做优化减少请求时间
                    if #mapwids == 1 then
                        local strmapid =tostring(mapwids[1])
                        if self.m_mapPlayerNumAndRoomCount[strmapid] then
                            if os.time() -  self.m_mapPlayerNumAndRoomCount[strmapid].updatetime < 20 then
                                retTab[strmapid] = {};
                                retTab[strmapid].playcount =  self.m_mapPlayerNumAndRoomCount[strmapid].playcount
                                retTab[strmapid].roomcount =  self.m_mapPlayerNumAndRoomCount[strmapid].roomcount
                                return retTab
                            end
                        end
                    end

                    local genkey, gid = GetInst("UIEvtHook"):GenKeyWithPrefix(self.EVT_GEN_PREFIX_SYNC_THREAD_NOTIFY)
                    self:InsertSyncWaitingStatus(true, genkey)
                    if not AccountManager:loginRoomServer(false, 0, genkey) then
                        return
                    end

                    if self:FindSyncWaitingStatus(genkey) then
                        local code, _ret = threadpool:wait(gid, 2);
                        if code ~= ErrorCode.OK or _ret ~= genkey then
                            return retTab
                        end
                    end

                    local uin_ = AccountManager:getUin() or get_default_uin()
                    local url = AllRoomManager:CreateRoomServerRequest("/server/room")
                                              :addparam("channel", ClientMgr:getApiId())
                                              :addparam("cmd", "query_map_player_count")
                                              :addparam("country", get_game_country() or "nil")
                                              :addparam("language", get_game_lang() or "nil")
                                              :addparam("map_ids", table.concat(mapwids, ','))
                                              :addparam("time", os.time())
                                              :finish();

                    print("RoomService:ReqMapPlayerCount")

                    local retStr = self:SyncRpcRaw(url, spData.outtime or nil, false);
                    print("ReqMapPlayerCount retStr " .. tostring(retStr))
                    repeat
                        if not retStr then
                            break
                        end

                        local ok, ret = pcall(JSON.decode, JSON, retStr);
                        if not (ok and type(ret) == 'table' and type(ret.data) == 'table') then
                            break
                        end

                        local data = ret.data
                        if not (type(data.list) == 'table') then
                            break
                        end

                        for _, value in ipairs(data.list) do
                            if "table" == type(value) then
                                if value.aid then
                                    local straid =tostring(value.aid);
                                    local palycount = tonumber(value.online)
                                    local roomcount = tonumber(value.roomcnt)
                                    retTab[straid] = {};
                                    self.m_mapPlayerNum[straid] = palycount
                                    self.m_mapPlayerNumAndRoomCount[straid] = {}
                                    retTab[straid].playcount = palycount
                                    self.m_mapPlayerNumAndRoomCount[straid].playcount = palycount
                                    retTab[straid].roomcount = roomcount
                                    self.m_mapPlayerNumAndRoomCount[straid].roomcount = roomcount
                                    self.m_mapPlayerNumAndRoomCount[straid].updatetime = os.time()
                                end
                            end
                        end
                        break
                    until true

                    return retTab
                end
            end
        end
    },
    {
        -- by yangxun:H5不同地图详情页跳转修复
        ver_list = "1.19.0 1.19.1 1.19.5",
        install = function()
            ShowMiniWorksMapDetail_old = ShowMiniWorksMapDetail;
            --:显示工坊地图详情, 被调函数:WorksArchive_OnClick()
            function ShowMiniWorksMapDetail(map, options, connoisseur_uin, userdata)
                if map then
                    options = options or {};
                    local wdesc = CreateWorldDescFromMap(map);
                    PrintMapInfo(map);
                    ArchiveWorldDesc = wdesc;
                    CurArchiveMap = map;
                    CurArchiveMapOptions = options;
                    CurArchiveConnoisseurUin = connoisseur_uin;

                    local param = {}
                    param.ArchiveWorldDesc=ArchiveWorldDesc
                    param.CurArchiveMap=CurArchiveMap
                    param.CurArchiveConnoisseurUin=CurArchiveConnoisseurUin
                    param.CurArchiveMapOptions=CurArchiveMapOptions
                    --之前userdata被写死用来作AppendReportInfo, 做个拓展
                    if isEnableNewCommonSystem and isEnableNewCommonSystem() then
                        if userdata then
                            if userdata.from == "comment" then
                                param.CommentParam = userdata.commentParam;
                            else
                                param.AppendReportInfo= userdata
                            end
                        end
                    else
                        param.AppendReportInfo= userdata
                    end

                    if GetInst("mainDataMgr"):AB_newFrameOfPlatform() then
                        if GetInst("MiniUIManager") then
                            if GetInst("MiniUIManager"):GetCtrl("ArchiveInfoDetail") then
                                GetInst("MiniUIManager"):CloseUI("ArchiveInfoDetailAutoGen")
                            end
                        end

                        GetInst("MiniUIManager"):AddPackage({"miniui/miniworld/common", 'miniui/miniworld/c_hpm_common'})
                        GetInst("MiniUIManager"):OpenUI("ArchiveInfoDetail","miniui/miniworld/ArchiveInfoDetail","ArchiveInfoDetailAutoGen",param)
                    else
                        GetInst("UIManager"):Open("ArchiveInfoFrameEx",param)
                    end


                    local MiniWorksMapShare_CurrentMap = getFunctionVpValue( ShowMiniWorksMapDetail_old, "MiniWorksMapShare_CurrentMap")

                    --保存当前地图
                    MiniWorksMapShare_CurrentMap = map;

                    setFunctionVpValue( ShowMiniWorksMapDetail_old, "MiniWorksMapShare_CurrentMap", MiniWorksMapShare_CurrentMap)
                end
            end
        end,
    },
    {
        ver_list = "1.19.0 1.19.1 1.19.5",
        install = function()
            --by rice
            -- 2022-09-28 修复单机转好友联机房间，好友点击追踪失败的bug
            local OLD_OnOpenRoomFinish = OnOpenRoomFinish
            OnOpenRoomFinish = function(worldid, createExInfo)
                createExInfo = createExInfo or {}
                if "number" == type(worldid) and "table" == type(createExInfo) and not createExInfo.connect_mode then
                    if IsArchiveMapCollaborationMode(worldid) then
                        createExInfo.connect_mode = 1
                    end
                end
                return OLD_OnOpenRoomFinish(worldid, createExInfo)
            end

            local FriendTraceMgr = ClassList["FriendTraceMgr"] or {};
            -- 2022-09-28 埋点增加standy2,standby3参数
            FriendTraceMgr.RptTraceBtnStatus = function(self,fridUin, hostGameTk, confirmStep)
                local cache = self.data.rptCache[fridUin] or {}
                if cache.hostGameTk ~= hostGameTk or cache.confirmStep ~= confirmStep then
                    local standby1 = self:__TransStepToStdby1(confirmStep)
                    local standby2 = fridUin
                    local standby3 = FriendMgr:BolInMapPlay()
                    standReportEvent("31", "FRIEND_FRIEND_CONTENT", "FollowRequestButton", "view", {standby1 = standby1,standby2 = standby2,standby3 = standby3});
                end

                self.data.rptCache[fridUin] = {
                    confirmStep = confirmStep,
                    hostGameTk = hostGameTk,
                }
            end
            -- 2022-09-28 埋点增加standy2,standby3参数
            FriendTraceMgr.__TraceNormal = function(self,desUin, ingameExdata, rptInfo)
                local roomID = ingameExdata.roomID
                if ingameExdata.canFriendTrace then
                    if ingameExdata.isP2pSingleRoom and rptInfo then
                        local reportData = {}
                        reportData.standby1 = self:__TransStepToStdby1(self.define.traceConfirmStep.Allow)
                        reportData.standby2 = desUin
                        reportData.standby3 = FriendMgr:BolInMapPlay()
                        InsertStandReportGameJoinParamArg({sceneid=rptInfo.sceneid,cardid=rptInfo.cardid,compid=rptInfo.compid})
                        GetInst("ReportGameDataManager"):NewGameJoinParam(rptInfo.sceneid,rptInfo.cardid,rptInfo.compid)
                        standReportEvent(rptInfo.sceneid, rptInfo.cardid, rptInfo.compid, "click", reportData)
                    end
                    self:__DoEnterRoom(roomID, rptInfo)
                elseif ingameExdata.canConfirmTrace then
                    local confirmStep = self:__TraceConfirmStep(desUin, ingameExdata.hostGameTk)
                    if ingameExdata.isP2pSingleRoom and rptInfo then
                        local reportData = {}
                        reportData.standby1 = self:__TransStepToStdby1(confirmStep)
                        reportData.standby2 = desUin
                        reportData.standby3 = FriendMgr:BolInMapPlay()
                        InsertStandReportGameJoinParamArg({sceneid=rptInfo.sceneid,cardid=rptInfo.cardid,compid=rptInfo.compid})
                        GetInst("ReportGameDataManager"):NewGameJoinParam(rptInfo.sceneid,rptInfo.cardid,rptInfo.compid)
                        standReportEvent(rptInfo.sceneid, rptInfo.cardid, rptInfo.compid, "click", reportData)
                    end
                    if confirmStep == self.define.traceConfirmStep.Allow then
                        self:__DoEnterRoom(roomID, rptInfo)
                    elseif confirmStep == self.define.traceConfirmStep.Reject then
                        ShowGameTips(GetS(28833))
                    elseif confirmStep == self.define.traceConfirmStep.Req then
                        ShowGameTips(GetS(28832))
                    else
                        self:__ReqTraceConfirm(desUin, ingameExdata.hostGameTk)
                        ShowGameTips(GetS(28835))
                    end
                else
                    ShowGameTips(GetS(28834))
                end
            end
            --  2022-09-28 追踪埋点修复；好友界面显示当前房间人数
            local FriendMgr = ClassList["FriendMgr"] or {};
            FriendMgr.BolInMapPlay = function(self)
                if ClientCurGame:isInGame() then
                    return 1 --游戏内
                end
                return 0--游戏外
            end

            FriendMgr.UpdateFriendItem = function (self,cell, fridData)
                local fridUi = cell
                self:UpdateFriendCommonItem(fridUi, fridData)

                local BasicInfo = self:GetChildByIns(fridUi, "BasicInfo")
                local ChatBtn = self:GetChildByIns(fridUi, "ChatBtn")
                local TrackBtn = self:GetChildByIns(fridUi, "TrackBtn")
                local WateringBtn = self:GetChildByIns(fridUi, "WateringBtn")
                local DeleteBtn = self:GetChildByIns(fridUi, "DeleteBtn")
                local HomeLandBtn = self:GetChildByIns(fridUi, "HomeLandBtn")
                local Apply = self:GetChildByIns(fridUi, "Apply")
                local TraceStatus1 = self:GetChildByIns(BasicInfo, "TraceStatus1")
                local TraceStatus2 = self:GetChildByIns(BasicInfo, "TraceStatus2")

                BasicInfo:Hide()
                ChatBtn:Hide()
                TrackBtn:Hide()
                WateringBtn:Hide()
                DeleteBtn:Hide()
                HomeLandBtn:Hide()
                Apply:Hide()
                TraceStatus1:Hide()
                TraceStatus2:Hide()

                self:GetChildByName(BasicInfo:GetName() .. "GroupEntryText"):Hide()
                self:GetChildByName(BasicInfo:GetName() .. "Name"):Show()
                self:GetChildByName(BasicInfo:GetName() .. "Uin"):Hide()
                self:GetChildByName(BasicInfo:GetName() .. "Status"):Show()
                self:GetChildByName(BasicInfo:GetName() .. "Status"):SetPoint("bottomleft", fridUi:GetName(), "bottomleft", 109, -20)
                WateringBtn:SetPoint("right", fridUi:GetName(), "left", -170, 0)
                TrackBtn:SetPoint("left", fridUi:GetName(), "left", 395, 0)

                if fridData and fridData.apply_num then
                    self:UpdateApplyItem(FriendMgr.DlgType_MyFriends, Apply, fridData)
                    Apply:Show()

                    self:ReportFriendStandData("FRIEND_FRIEND_CONTENT", "FriendApply", "view")
                    self:ReportFriendStandData("FRIEND_FRIEND_CONTENT", "Ignore", "view")
                    return
                end

                BasicInfo:Show()
                local tartgetUin = fridData.uin
                fridUi:SetClientString(tostring(tartgetUin))

                self:GetChildByName(BasicInfo:GetName() .. "GenderIcon"):SetGray(true)
                self:GetChildByName(BasicInfo:GetName() .. "HeadIcon"):SetGray(true)
                self:GetChildByName(BasicInfo:GetName() .. "HeadFrameNormal"):SetGray(true)
                self:GetChildByName(BasicInfo:GetName() .. "HeadFramePushedBG"):SetGray(true)
                self:GetChildByName(BasicInfo:GetName() .. "HeadBkg"):SetGray(true)
                self:GetChildByName(BasicInfo:GetName() .. "Status"):SetTextColor(135, 132, 122)
                self:GetChildByName(BasicInfo:GetName() .. "Uin"):SetTextColor(135, 132, 122)
                self:GetChildByName(BasicInfo:GetName() .. "Bkg"):SetTextureTemplate("TemplateBigBkg12")
                self:GetChildByName(BasicInfo:GetName() .. "BkgMask"):Hide()

                if not fridData or fridData.needpull == 1 --[[--没有详细信息]] then
                    UpdateFriendEntry(fridUi, nil)
                else
                    ChatBtn:Show()

                    local unReadChat = friendservice.myfriendsUnreadUinSet[tartgetUin]

                    UpdateFriendEntry(fridUi, fridData)

                    if (not fridData.is_online) and tartgetUin ~= GetMiniCaptainUin() then  --offline
                    else
                        self:GetChildByName(BasicInfo:GetName() .. "GenderIcon"):SetGray(false)
                        self:GetChildByName(BasicInfo:GetName() .. "HeadIcon"):SetGray(false)
                        self:GetChildByName(BasicInfo:GetName() .. "HeadFrameNormal"):SetGray(false)
                        self:GetChildByName(BasicInfo:GetName() .. "HeadFramePushedBG"):SetGray(false)
                        self:GetChildByName(BasicInfo:GetName() .. "HeadBkg"):SetGray(false)
                        self:GetChildByName(BasicInfo:GetName() .. "Status"):SetTextColor(18, 162, 76)
                        self:GetChildByName(BasicInfo:GetName() .. "Uin"):SetTextColor(73, 70, 63)
                        self:GetChildByName(BasicInfo:GetName() .. "Bkg"):SetTextureTemplate("TemplateBigBkg6")
                        self:GetChildByName(BasicInfo:GetName() .. "BkgMask"):Show()
                    end

                    --屏蔽图标
                    local ignoreIcon = self:GetChildByName(ChatBtn:GetName() .. "IgnoreIcon")
                    ignoreIcon:Hide()
                    if tartgetUin ~= GetMiniCaptainUin() and FriendFrame_GetIgnoreState(tartgetUin) then
                        ignoreIcon:Show()
                    end

                    local showChatBtn = true
                    local showStatus = true
                    local homeLandStatus = true
                    local waterStatus = false
                    local genderIconStatus = true
                    local trackBtnStatus = false
                    local bInGaming = fridData.is_ingame or false
                    local bOnline = fridData.is_online or false
                    local ingame_exdata = fridData.ingame_exdata

                    if tartgetUin == GetMiniCaptainUin() then  --迷你队长
                        -- genderIconStatus = false
                        -- showStatus = false
                        bOnline = true
                        homeLandStatus = false
                        waterStatus = false
                        trackBtnStatus = false
                    else
                        if AccountManager:can_water(tartgetUin) or AccountManager:can_bug(tartgetUin) then
                            local waterNum = AccountManager:getWater(tartgetUin)
                            local wormsNum = AccountManager:getWorms(tartgetUin)
                            if waterNum > 0 or wormsNum > 0 then
                                waterStatus = true
                            end
                        end

                        -- 兼容不在线，没有处理在游戏内状态
                        if not bOnline then
                            bInGaming = false
                        end

                        if bInGaming then
                            trackBtnStatus = true
                        end
                    end

                    if trackBtnStatus then
                        TraceStatus1:Show()
                        TraceStatus2:Show()
                        TraceStatus1:SetTextColor(101,116,118)
                        TraceStatus2:SetTextColor(101,116,118)

                        if FriendTraceMgr:GetInst():RefreshTrackBtn(TrackBtn, fridData.uin, fridData.ingame_exdata) then
                            local reportData = {
                                standby1 = fridData.uin,
                                standby2 = self:BolInMapPlay()
                            }
                            self:ReportFriendStandData("FRIEND_FRIEND_CONTENT", "Card", "view", reportData)

                            -- 多人游戏
                            if ingame_exdata.roomlabel then
                                TraceStatus1:SetPoint("topleft", BasicInfo:GetName(), "topleft", 460, 28)
                                TraceStatus2:SetPoint("bottomleft", BasicInfo:GetName(), "bottomleft", 460, -28)

                                local gameLabel = tonumber(ingame_exdata.roomlabel) or 0
                                if gameLabel == 0 then
                                    gameLabel = GetLabel2Owtype(ingame_exdata.roomtype or 0)
                                end
                                SetRoomTag(nil, TraceStatus1, gameLabel)
                                local tempText = TraceStatus1:GetText()
                                tempText = string.format(GetS(1112920), tempText)
                                TraceStatus1:SetText(tempText)

                                local roomInfo = ""
                                local curPlayerNum = ingame_exdata.curPlayerNum or 1
                                local maxPlayerNum = ingame_exdata.maxPlayerNum or 6
                                if ingame_exdata.roomname then
                                    roomInfo = ingame_exdata.roomname.." ("..curPlayerNum.."/"..maxPlayerNum..")"
                                end
                                TraceStatus2:SetText(roomInfo)
                            else
                                -- 兼容低版本玩家的状态
                                TraceStatus1:SetText(GetS(1112919))
                                TraceStatus1:SetPoint("left", BasicInfo:GetName(), "left", 460, 0)
                                TraceStatus2:Hide()
                            end
                        else
                            -- 单人游戏
                            TraceStatus1:SetText(GetS(1112918))
                            TraceStatus1:SetPoint("left", BasicInfo:GetName(), "left", 460, 0)
                            TraceStatus2:Hide()
                        end
                    else
                        -- 离线
                    end

                    if showStatus then
                        self:GetChildByName(BasicInfo:GetName() .. "Status"):Show()
                        if not bOnline then
                            local offlineStr = self:GetOfflineLoginTimeStr(fridData.lastLoginTime)
                            getglobal(BasicInfo:GetName() .. "Status"):SetText(offlineStr)
                        else
                            getglobal(BasicInfo:GetName() .. "Status"):SetText(GetS(4715))
                        end
                    else
                        self:GetChildByName(BasicInfo:GetName() .. "Status"):Hide()
                    end

                    if genderIconStatus then
                        self:GetChildByName(BasicInfo:GetName() .. "GenderIcon"):Show()
                    else
                        self:GetChildByName(BasicInfo:GetName() .. "GenderIcon"):Hide()
                    end

                    --增加性别开关
                    if not if_show_gender() then
                        self:GetChildByName(BasicInfo:GetName() .. "GenderIcon"):Hide()
                    end

                    if self:GetChildByName(BasicInfo:GetName().."RedTag"):IsShown() then
                        self:GetChildByName(BasicInfo:GetName().."RedTag"):Hide()
                    end

                    if showChatBtn then
                        ChatBtn:Show()
                        if unReadChat then
                            self:GetChildByName(ChatBtn:GetName() .. "RedTag"):Show()
                        else
                            self:GetChildByName(ChatBtn:GetName() .. "RedTag"):Hide()
                        end
                    else
                        ChatBtn:Hide()
                    end

                    if homeLandStatus then
                        HomeLandBtn:Show()
                    else
                        HomeLandBtn:Hide()
                    end

                    if waterStatus then
                        WateringBtn:Show()
                    else
                        WateringBtn:Hide()
                    end

                    self:GetChildByName(BasicInfo:GetName() .. "Checked"):Hide()
                end
            end
            -- 2022-09-28 控制追踪按钮重复点击；修复埋点bug
            function MyFriendEntryTemplateTrackBtn_OnClick()
                if _G.using_friend_tracking then
                    return
                end
                _G.using_friend_tracking = true
                local loopTag = "TemplateTrackBtn_OnClick "

                local parentFrame = this:GetParentFrame()
                local fridData, _ = FriendMgr:GetDataWithID(FriendMgr.DlgType_MyFriends, FriendMgr:GetItemStringID(parentFrame))

                --上报
                local friendUin = fridData and fridData.uin or nil
                statisticsGameEventNew(6002, friendUin or 0);

                ReportTraceidMgr:setTraceid("friend")
                InsertStandReportGameJoinParamArg({sceneid="31",cardid='FRIEND_FRIEND_CONTENT',compid="Card",standby3 = friendUin})
                GetInst("ReportGameDataManager"):NewGameJoinParam("31","FRIEND_FRIEND_CONTENT","Card","friend")
                GetInst("ReportGameDataManager"):SetGameJoinParamStandby3(friendUin)
                -- FriendMgr:ReportFriendStandData('FRIEND_LIST', 'Card', 'click', {standby3 = friendUin})

                if ClientCurGame:isInGame() then    --已经在存档内了
                    ShowGameTips(GetS(1204), 3);
                    local bolSingGame = 0
                    if fridData.ingame_exdata and fridData.ingame_exdata.canConfirmTrace  and fridData.ingame_exdata.canConfirmTrace == true then
                        bolSingGame = 1
                    end
                    reportData = {
                        standby1 = 2,  -- 失败
                        standby2 = ErrorCode.FAILED,
                        standby3 = friendUin,
                        standby4 = FriendMgr:BolInMapPlay()
                    }
                    FriendMgr:ReportFriendStandData("FRIEND_FRIEND_CONTENT", "Card", "click", reportData)
                    if bolSingGame == 1 then
                        FriendMgr:ReportFriendStandData("FRIEND_FRIEND_CONTENT", "FollowRequestButton", "click", reportData)
                    else
                        FriendMgr:ReportFriendStandData("FRIEND_FRIEND_CONTENT", "Card", "click", reportData)
                    end
                    _G.using_friend_tracking = nil
                    return;
                end

                if fridData then
                    InsertStandReportGameJoinParamArg({sceneid="31",cardid='FRIEND_FRIEND_CONTENT',compid="Card"})
                    GetInst("ReportGameDataManager"):NewGameJoinParam("31","FRIEND_FRIEND_CONTENT","Card")
                    local content = string.format(GetS(1112924), ReplaceFilterString(fridData.name), fridData.ingame_exdata and fridData.ingame_exdata.roomname or "")
                    local cb = function ()
                        print("OK:");
                        local userdata = {btnUI = this:GetName()};
                        IsTrackBtnClick = true;
                        local code = FriendChat_ReqFriendRoomByUin(fridData.uin, userdata, true);
                        local reportData = {}
                        if code and code == ErrorCode.OK  then
                            reportData.standby1 = 1
                        else
                            reportData.standby1 = 2
                        end

                        reportData.standby2 = code or ErrorCode.FAILED
                        reportData.standby3 = friendUin
                        reportData.standby4 = FriendMgr:BolInMapPlay()
                        FriendMgr:ReportFriendStandData("FRIEND_FRIEND_CONTENT", "Card", "click", reportData)
                    end

                    if FriendChat_NewTraceLogic_0817() then
                        cb()
                    else
                        FriendMgr:CustomMessageBox(content, GetS(3018), GetS(1203), nil, cb)
                    end
                end
                _G.using_friend_tracking = nil
            end

            --  2022-09-28修复埋点bug
            function MyGroupEntryTemplateChatBtn_OnClick(index)
                if friendservice.groupchat_switch then
                    if index then
                        index = index
                    else
                        local groupId = FriendMgr:GetItemStringID(this:GetParentFrame())
                        _, _, index = FriendMgr:GetDataWithID(FriendMgr.DlgType_MyGroups, groupId)

                        if groupId == 0 then
                            -- 申请查看item
                            index = index - 1
                        end
                    end

                    CurrentGroupIndex = index
                    local group = friendservice.group[CurrentGroupIndex];
                    FriendChat_OpenFrame(false, FriendMgr.ChatFrame_Tab_Group, group);
                    if group then

                        UpdateGroupChatMessages(group.groupid,true)

                        local reportData = {
                            standby1 = 2,  -- 群组
                            standby2 = ChattingFriendUin
                        }
                        FriendMgr:ReportFriendStandData("FRIEND_CHAT_CONTENT", "Chat", "click", reportData)
                    end

                    FriendChat_FriendTabBtnTemplate_OnClick(2, nil, true)

                    -- 群组聊天按钮点击上报
                    local eventTb = {
                        standby1 = "2",          -- 群组
                        standby2 = tostring(group and group.groupid or -1)     -- 群组id
                    }
                    FriendMgr:ReportFriendStandData("FRIEND_CHAT_CONTENT", "Chat", "click", eventTb)
                end
            end

            -- 2022-09-28 主机创建房间获得房间当前人数和最大人数
            if _G.friendservice then
                friendservice.is_in_game = function()
                    --{{{
                    if ClientCurGame and AccountManager then
                        local ret = ClientCurGame:isInGame() and not IsLanRoom;
                        if ret and ClientMgr then
                            if AccountManager:getMultiPlayer() > 0 then
                                if ROOM_SERVER_RENT == ClientMgr:getRoomHostType() then
                                    if RentPermitCtrl:IsQuickUpRentDebugRoom() then
                                        return false
                                    end
                                    local extraData = RoomInteractiveData.RoomInfoMgr:GetShareCurRoomParam()
                                    pcall(function()
                                        extraData.maxPlayerNum = ClientCurGame:getMaxPlayerNum()
                                        extraData.curPlayerNum = ClientCurGame:getNumPlayerBriefInfo()+1
                                    end)
                                    return ret, RentPermitCtrl:GetRentRoomID(), extraData
                                else
                                    local roomID = ClientCurGame:getHostUin()
                                    local extraData = RoomInteractiveData.RoomInfoMgr:GetShareCurRoomParam()
                                    pcall(function()
                                        extraData.maxPlayerNum = ClientCurGame:getMaxPlayerNum()
                                        extraData.curPlayerNum = ClientCurGame:getNumPlayerBriefInfo()+1
                                    end)
                                    if IsInHomeLandMap and IsInHomeLandMap() then
                                        -- 家园处理
                                        roomID = gFunc_GetHomeGardenWorldIDByUin(roomID)
                                        if extraData and extraData.roomID then
                                            extraData.roomID = roomID
                                        end
                                    end
                                    return ret, tostring(roomID), extraData
                                end
                            else
                                -- 自建地图单人
                                return ret, tostring(ClientCurGame:getHostUin()), {canFriendTrace=false}
                            end
                        else
                            return ret
                        end
                    else
                        return false;
                    end
                    --}}}
                end
            end

        end
    },
    {
        -- by chenwei:修复输入#A+1炸房问题
        ver_list = "1.15.0 1.15.2 1.15.5 1.16.0 1.16.1 1.17.0 1.18.0 1.18.1 1.19.0 1.19.1 1.19.5",
        install = function()
            function TransferStrToEmoji(str)
                print("qiwi test TransferStrToEmoji:", str)
                if not str or str == "" or type(str) ~= "string" then
                    return ""
                end

                local function FindEmojiExpress(str2)
                    return string.find(str2, "#A")
                end

                local function GetEmojiExpressFormat(str2)
                    local pos = FindEmojiExpress(str2)
                    local emoStr = string.sub(str2, pos, pos + 4);
                    return emoStr
                end

                local function ReplaceEmojiExpress(emoStr)
                    local imgUrl = string.format("<img src='ui://Chat/%s'>", g_ChatConfig.transEmoji[emoStr])
                    --将表情转换为富文本使用的表情格式
                    --emoStr = string.gsub(str, emoStr, imgUrl)
                    return imgUrl
                end

                local posEmojiA, posEmojiB = FindEmojiExpress(str)
                if posEmojiA and posEmojiB then
                    local preStr = string.sub(str, 1, posEmojiA - 1) or ""
                    local emoStr = string.sub(str, posEmojiA, posEmojiA + 4)
                    local otherStr = string.sub(str, posEmojiB+4, -1)
                    print("qiwi preStr：", preStr)
                    print("qiwi emoStr：", emoStr)
                    print("qiwi otherStr：", otherStr)

                    --local emoStr = GetEmojiExpressFormat(str)
                    --print("qiwi emoStr：", emoStr)
                    if g_ChatConfig.transEmoji[emoStr] then
                        if otherStr ~= nil and otherStr ~= "" then
                            print("qiwi otherStr has str", ReplaceEmojiExpress(emoStr))
                            local newStr = preStr .. ReplaceEmojiExpress(emoStr) .. TransferStrToEmoji(otherStr)
                            return newStr
                        else
                            print("qiwi otherStr is nil or empty")
                            return preStr .. ReplaceEmojiExpress(emoStr)
                        end
                    else
                        local newStr = preStr .. string.gsub(emoStr, "#A", "") .. TransferStrToEmoji(otherStr)
                        return newStr
                    end
                else
                    return str
                end

                return str
            end
        end
    },
    {
        --by luoshuai
        --20221009 【编辑模式】编辑模式下点击资源工坊会出现主界面，层级错乱bug
        ver_list = "1.19.0 1.19.1 1.19.5",
        install = function()
            if ClassList["ResourceShopCtrl"] then
                ClassList["ResourceShopCtrl"].CloseBtnClicked = function(self, isGotoResourceCenter)
                    --隐藏所有打开过的子页
                    local tabOpenList = self.model:GetTabOpenList()
                    for k,v in pairs(tabOpenList) do
                        local tabTag = self.define.tabs[k].tag
                        GetInst("UIManager"):Hide(tabTag)
                        --部分界面需要隐藏回调
                        local tabCtrl = GetInst("UIManager"):GetCtrl(tabTag)
                        if tabCtrl and tabCtrl.Hide then
                            tabCtrl:Hide()
                        end
                    end
                    --清理缓存
                    self:ClearCache()
                    local isFromLobby = self.model:GetIncomingParam() and self.model:GetIncomingParam().isFromLobby
                    if isFromLobby == ResourceCenterOpenFrom.FromLobby then
                        RefreshMiniLobbyExRoleView() --mark by hfb for new minilobby
                    end
                    --隐藏本界面
                    GetInst("UIManager"):Close(self.define.uiName)
                    local isInGame = ClientCurGame and ClientCurGame:isInGame()
                    if (not isInGame) and (not isGotoResourceCenter) then
                        ShowMiniLobby()
                    end
                end
            end
        end
    },
    {
        -- by liwentao
        -- 2022.10.09
        ver_list = "1.19.5 1.19.1 1.19.0 1.18.1 1.18.0 1.17.0 1.16.1 1.16.0",
        install = function()
            function Check_Safety_Platform_Switch(stype, tipsId, ignoreTips)
                if not stype then
                    return false
                end

                if (not ns_version) or (not ns_version.safety_platform_switch) or (not ns_version.safety_platform_switch[stype]) then
                    return false
                end

                local condition = ns_version.safety_platform_switch[stype]
                if not check_apiid_ver_conditions(condition, true) then
                    if not ignoreTips then
                        local id = tipsId or 100264 --功能正在维护中，暂时无法使用此功能
                        ShowGameTipsWithoutFilter(GetS(id))
                    end

                    return true
                end

                return false
            end

            local New_CommentSystemInterface = ClassList["CommentSystemInterface"] or {};
            New_CommentSystemInterface.initCommentInput = function(self, node, addCommentCallBack, textChangeCallBack)
                local inputCon = node:getController("inputTips");
                local input = node:getChildByPath("n20.m2_inputtext");
                local submitBt = node:getChildByPath("n20.m2_submit");
                local cancel = node:getChildByPath("n20.m2_closeinput");
                local textName = node:getChildByPath("n20.m2_textName");
                local textCtrl = node:getChild("n20"):getController("m1_type");
                local inputCom = node:getChild("n20");
                local choiceTglBtn = node:getChildByPath("n20.n5");

                GetInst("MiniUIEventDispatcher"):addEventListener(input, UIEventType_GainFocus, function(obj, context)
                    inputCon:setSelectedIndex(CommentSystemInterface_TipsMode.edit);
                    self.shouldReport = true;
                end)

                GetInst("MiniUIEventDispatcher"):addEventListener(input, UIEventType_LostFocus, function(obj, context)
                    local input = self.curInput:getChild("n20.m2_inputtext");
                    local text = input:getText();
                    local mode = node:getCustomData();
                    if text ~= "" then
                        self:LostFocuscallback(text);
                    else
                        self:ResetInput();
                    end
                end)

                GetInst("MiniUIEventDispatcher"):addEventListener(submitBt, UIEventType_Click, function(obj, context)
                    if Check_Safety_Platform_Switch("map_comment") then
                        return
                    end

                    local input = self.curInput:getChildByPath("n20.m2_inputtext");
                    local text = string_trim(input:getText());
                    local mode = self:GetCurMode();
                    local needChecktext = ""
                    if string.find(text,"@") ~= nil then
                        local dataTable, displayText = self:ParseInformText2(text, true);
                        needChecktext = displayText
                    else
                        needChecktext = text
                    end

                    if DefMgr:checkFilterString(needChecktext) then
                        ShowGameTipsWithoutFilter(GetS(9200100), 3)
                        self:ClearInput()
                        return
                    end

                    if addCommentCallBack then
                        local callback = function (result, isreSet)
                            if isreSet then

                            else
                                self:HideReponse();
                                self:SubmitResetInput();
                                context:stopPropagation();
                            end
                        end

                        if mode == CommentSystemInterface_InputMode.first then
                            local choiceSelected =  choiceTglBtn:isSelected()
                            local needPushConnoisseur = choiceSelected  -- 是否需推荐给鉴赏家
                            local isTheAuthor = false
                            if choiceSelected then
                                if ArchiveWorldDesc then
                                    if  AccountManager:getUin() == ArchiveWorldDesc.realowneruin then
                                        needPushConnoisseur = false
                                        isTheAuthor = true
                                    end
                                end
                            end
                            local standby = isTheAuthor and 2 or 1
                            standReportEvent(self:GetSceneid(),"MINI_MAP_NEW_Publish", "Publish", "click", {cid=tostring(CommentSystemInterfacePageReport.worldid), standby1=tostring(standby)})
                            addCommentCallBack(text, mode,needPushConnoisseur,callback);
                        else
                            addCommentCallBack(text, mode,nil,callback);
                        end
                    else
                        self:HideReponse();
                        self:SubmitResetInput();
                        context:stopPropagation();
                    end
                end)

                GetInst("MiniUIEventDispatcher"):addEventListener(cancelReply, UIEventType_Click, function(obj, context)
                    self:HideReponse();
                    self:ResetInput();
                end)

                GetInst("MiniUIEventDispatcher"):addEventListener(input, UIEventType_TextChange, function(obj, context)
                    self:InputOnTextChange(obj, context)
                end)

                GetInst("MiniUIEventDispatcher"):addEventListener(node, UIEventType_Click, function(obj, context)
                    self:InputHandleClick(node);
                end)

                GetInst("MiniUIEventDispatcher"):addEventListener(display, UIEventType_Click, function(obj, context)
                    inputCon:setSelectedIndex(CommentSystemInterface_TipsMode.edit);
                    local input = self.curInput:getChildByPath("n20.m2_inputtext");
                    input:setFocus(true);
                end)

                GetInst("MiniUIEventDispatcher"):addEventListener(cancel, UIEventType_Click, function(obj, context)
                    standReportEvent(self:GetSceneid(), "MINI_MAP_NEW_Publish", "Closed", "click", {cid=tostring(CommentSystemInterfacePageReport.worldid)})
                    local mode = self:GetCurMode();
                    if mode == CommentSystemInterface_InputMode.secondPage or mode == CommentSystemInterface_InputMode.secondPageReply then
                        self:ShowOrHideInput(true, CommentSystemInterface_InputMode.secondPage);
                    else
                        self:ShowOrHideInput(true, CommentSystemInterface_InputMode.first);
                    end
                    inputCom:setVisible(false)
                    self:ClearInput();
                    context:stopPropagation();
                end)

                GetInst("MiniUIEventDispatcher"):addEventListener(choiceTglBtn, UIEventType_Click, function(obj, context)
                    local choiceSelected =  choiceTglBtn:isSelected()
                    if choiceSelected then
                        if  AccountManager:getUin() == ArchiveWorldDesc.realowneruin then
                            -- 置顶按钮：OnTop click
                            standReportEvent(self:GetSceneid(), "MINI_MAP_NEW_Publish", "OnTop", "click", {cid=tostring(CommentSystemInterfacePageReport.worldid)})
                        else
                            -- 鉴赏家按钮：Introduce click
                            standReportEvent(self:GetSceneid(), "MINI_MAP_NEW_Publish", "Introduce", "click", {cid=tostring(CommentSystemInterfacePageReport.worldid)})
                        end
                    end
                end)
            end
        end
    },
    {
        ver_list = "1.19.0 1.19.1 1.19.5",
        install = function()
            --by rice
            -- 2022-10-10 补充加入游戏失败埋点逻辑
            if FriendTraceMgr then
                FriendTraceMgr.ReqTrace = function(self,desUin, rptInfo)
                    if not (desUin) then
                        return
                    end
                    local fridData = GetFriendDataByUin(desUin, true, true) or {}
                    local ingameExdata = fridData.ingame_exdata
                    if not (ingameExdata) then
                        return
                    end
                    local roomID = ingameExdata.roomID
                    local roomType = GetInst("RoomService"):GetRoomTypeByID(roomID)
                    -- 进入家园处理
                    local homeWorldId = gFunc_GetHomeGardenWorldIDByUin(desUin)
                    if homeWorldId == roomID then
                        -- 家园邀请
                        if rptInfo.bolReport then
                            GetInst("ReportGameDataManager"):SetBefJoinFailedParamStandby1(GetInst("ReportGameDataManager"):GetGameJoinBeforeStageDefine().goFriendHomeLandFail)
                        end
                        EnterFriendHomeMap(desUin)
                        return
                    end
                    if rptInfo.bolReport then
                        GetInst("ReportGameDataManager"):SetBefJoinFailedParamStandby1(GetInst("ReportGameDataManager"):GetGameJoinBeforeStageDefine().dealRoomInfoFail)
                        GetInst("ReportGameDataManager"):SetBefJoinFailedParamStandby4(roomType)
                    end
                    if roomType == AllRoomManager.RoomType.Normal then
                        self:__TraceNormal(desUin, ingameExdata, rptInfo)
                        return
                    elseif roomType == AllRoomManager.RoomType.CloudServer then
                        if rptInfo.bolReport then
                            GetInst("ReportGameDataManager"):SetBefJoinFailedParamStandby3(roomID)
                        end
                        local roomUin, rid = getRoomUinAndRoomID(roomID)
                        if roomUin and rid then
                            local roomlist, loginSuc =
                            GetInst("RoomService"):ReqRoomListByUinSync(roomUin, rid, true, {connect_mode = "any"})
                            roomlist = roomlist or {}
                            if not loginSuc then
                                ShowGameTips(GetS(146), 3)
                                if rptInfo.bolReport then
                                    ReportBeforeJoinFailedCall(GetS(146))
                                end
                                return
                            end
                            local roomDesc = roomlist[1]
                            if roomDesc then
                                GetInst("RoomService"):EnterRoomByDesc(0, false, roomDesc)
                                return
                            else
                                if rptInfo.bolReport then
                                    ReportBeforeJoinFailedCall("get CloudServer room info failed")
                                end
                            end
                        end
                    elseif roomType == AllRoomManager.RoomType.QuickupCloudServer then
                        if rptInfo.bolReport then
                            GetInst("ReportGameDataManager"):SetBefJoinFailedParamStandby3(roomID)
                        end
                        local csroomdesc = GetInst("RoomService"):ReqQueryQuickupCSRoom(roomID)
                        if csroomdesc then
                            csroomdesc.lcl_outTime = os.time() + 1
                            GetInst("RoomService"):EnterRoomByDesc(index, false, csroomdesc)
                            return
                        else
                            if rptInfo.bolReport then
                                ReportBeforeJoinFailedCall("get QuickupCloudServer room info failed")
                            end
                        end
                    end
                    ShowGameTips(GetS(9319), 3) --你的好友正在单机挖穿地球
                end

                -- 2022-10-10 补充加入游戏失败埋点逻辑
                FriendTraceMgr.__TraceNormal = function(self,desUin, ingameExdata, rptInfo)
                    local roomID = ingameExdata.roomID
                    if ingameExdata.canFriendTrace then
                        rptInfo.compid = "Card"
                        if ingameExdata.isP2pSingleRoom and rptInfo then
                            local reportData = {}
                            reportData.standby1 = self:__TransStepToStdby1(self.define.traceConfirmStep.Allow)
                            reportData.standby2 = desUin
                            reportData.standby3 = FriendMgr:BolInMapPlay()
                            InsertStandReportGameJoinParamArg({sceneid=rptInfo.sceneid,cardid=rptInfo.cardid,compid=rptInfo.compid})
                            GetInst("ReportGameDataManager"):NewGameJoinParam(rptInfo.sceneid,rptInfo.cardid,rptInfo.compid)
                        end
                        self:__DoEnterRoom(roomID, rptInfo)
                    elseif ingameExdata.canConfirmTrace then
                        local confirmStep = self:__TraceConfirmStep(desUin, ingameExdata.hostGameTk)
                        if ingameExdata.isP2pSingleRoom and rptInfo then
                            local reportData = {}
                            reportData.standby1 = self:__TransStepToStdby1(confirmStep)
                            reportData.standby2 = desUin
                            reportData.standby3 = FriendMgr:BolInMapPlay()
                            InsertStandReportGameJoinParamArg({sceneid=rptInfo.sceneid,cardid=rptInfo.cardid,compid=rptInfo.compid})
                            GetInst("ReportGameDataManager"):NewGameJoinParam(rptInfo.sceneid,rptInfo.cardid,rptInfo.compid)
                        end
                        if confirmStep == self.define.traceConfirmStep.Allow then
                            self:__DoEnterRoom(roomID, rptInfo)
                        elseif confirmStep == self.define.traceConfirmStep.Reject then
                            ShowGameTips(GetS(28833))
                            if rptInfo.bolReport then
                                ReportBeforeJoinFailedCall(GetS(28833))
                            end
                        elseif confirmStep == self.define.traceConfirmStep.Req then
                            ShowGameTips(GetS(28832))
                            if rptInfo.bolReport then
                                ReportBeforeJoinFailedCall(GetS(28832))
                            end
                        else
                            self:__ReqTraceConfirm(desUin, ingameExdata.hostGameTk)
                            ShowGameTips(GetS(28835))
                            if rptInfo.bolReport then
                                ReportBeforeJoinFailedCall(GetS(28835))
                            end
                        end
                    else
                        ShowGameTips(GetS(28834))
                        if rptInfo.bolReport then
                            ReportBeforeJoinFailedCall(GetS(28834))
                        end
                    end
                end

                -- 2022-10-10 埋点bug修复
                FriendTraceMgr.__DoEnterRoom = function(self,roomID, rptInfo)
                    local roomlist, loginSuc =
                    GetInst("RoomService"):ReqRoomListByUinSync(tonumber(roomID), -1, true, {connect_mode = "any"})
                    roomlist = roomlist or {}
                    if not loginSuc then
                        ShowGameTips(GetS(146), 3)
                    end
                    local roomDesc = roomlist[1]
                    if roomDesc then
                        if rptInfo then
                            InsertStandReportGameJoinParamArg(rptInfo)
                            GetInst("ReportGameDataManager"):NewGameJoinParam(rptInfo.sceneid,rptInfo.cardid,rptInfo.compid)
                            if rptInfo.bolReport then
                                local rpt = AllRoomManager:CalculateRoomDescReportTb(roomDesc) or {}
                                if rpt and rpt.standby2 then
                                    GetInst("ReportGameDataManager"):SetBefJoinFailedParamStandby3(rpt.standby2)
                                else
                                    GetInst("ReportGameDataManager"):SetBefJoinFailedParamStandby3(roomID)
                                end
                            end
                        end
                        GetInst("RoomService"):EnterRoomByDesc(0, false, roomDesc)
                    else
                        ShowGameTips(GetS(26008), 3)
                        if rptInfo.bolReport then
                            GetInst("ReportGameDataManager"):SetBefJoinFailedParamStandby3(roomID)
                            ReportBeforeJoinFailedCall(GetS(26008))
                        end
                    end
                end

                FriendTraceMgr.RptTraceBtnStatus = function(self,fridUin, hostGameTk, confirmStep)
                    local cache = self.data.rptCache[fridUin] or {}
                    if cache.hostGameTk ~= hostGameTk or cache.confirmStep ~= confirmStep then
                        local standby1 = self:__TransStepToStdby1(confirmStep)
                        local standby2 = fridUin
                        local standby3 = FriendMgr:BolInMapPlay()
                        standReportEvent("31", "FRIEND_FRIEND_CONTENT", "FollowRequestButton", "view", {standby1 = standby1,standby2 = standby2,standby3 = standby3});
                    end

                    self.data.rptCache[fridUin] = {
                        confirmStep = confirmStep,
                        hostGameTk = hostGameTk,
                    }
                end
            end

            -- 2022-10-10 追踪按钮埋点bug修复
            function MyFriendEntryTemplateTrackBtn_OnClick()
                if _G.using_friend_tracking then
                    return
                end
                _G.using_friend_tracking = true
                GetInst("ReportGameDataManager"):ReSetBefJoinFailedParam(true)
                local loopTag = "TemplateTrackBtn_OnClick "

                local parentFrame = this:GetParentFrame()
                local fridData, _ = FriendMgr:GetDataWithID(FriendMgr.DlgType_MyFriends, FriendMgr:GetItemStringID(parentFrame))

                --上报
                local friendUin = fridData and fridData.uin or nil
                statisticsGameEventNew(6002, friendUin or 0);

                ReportTraceidMgr:setTraceid("friend#follow")
                local bolSingleButton = 0
                if fridData.ingame_exdata and not fridData.ingame_exdata.canFriendTrace and fridData.ingame_exdata.canConfirmTrace then
                    bolSingleButton = 1
                end
                GetInst("ReportGameDataManager"):SetBefJoinFailedParamStandby5(friendUin)
                if ClientCurGame:isInGame() then    --已经在存档内了
                    ShowGameTips(GetS(1204), 3);
                    reportData = {
                        standby1 = 2,  -- 失败
                        standby2 = ErrorCode.FAILED,
                        standby3 = friendUin,
                        standby4 = FriendMgr:BolInMapPlay()
                    }
                    if bolSingleButton == 1 then
                        FriendMgr:ReportFriendStandData("FRIEND_FRIEND_CONTENT", "FollowRequestButton", "click", reportData)
                    else
                        FriendMgr:ReportFriendStandData("FRIEND_FRIEND_CONTENT", "Card", "click", reportData)
                    end
                    _G.using_friend_tracking = nil
                    return;
                end

                if fridData then
                    if bolSingleButton == 1 then
                        InsertStandReportGameJoinParamArg({sceneid="31",cardid='FRIEND_FRIEND_CONTENT',compid="FollowRequestButton",standby3 = friendUin,trace_id = "friend#follow"})
                        GetInst("ReportGameDataManager"):NewGameJoinParam("31","FRIEND_FRIEND_CONTENT","FollowRequestButton","friend#follow")
                    else
                        InsertStandReportGameJoinParamArg({sceneid="31",cardid='FRIEND_FRIEND_CONTENT',compid="Card",standby3 = friendUin,trace_id = "friend#follow"})
                        GetInst("ReportGameDataManager"):NewGameJoinParam("31","FRIEND_FRIEND_CONTENT","Card","friend#follow")
                    end
                    local content = string.format(GetS(1112924), ReplaceFilterString(fridData.name), fridData.ingame_exdata and fridData.ingame_exdata.roomname or "")
                    local cb = function ()
                        print("OK:");
                        local userdata = {btnUI = this:GetName()};
                        IsTrackBtnClick = true;
                        local code = FriendChat_ReqFriendRoomByUin(fridData.uin, userdata, true,true);
                        local reportData = {}
                        if code and code == ErrorCode.OK  then
                            reportData.standby1 = 1
                        else
                            reportData.standby1 = 2
                        end

                        reportData.standby2 = code or ErrorCode.FAILED
                        reportData.standby3 = friendUin
                        reportData.standby4 = FriendMgr:BolInMapPlay()
                        if bolSingleButton == 1 then
                            FriendMgr:ReportFriendStandData("FRIEND_FRIEND_CONTENT", "FollowRequestButton", "click", reportData)
                        else
                            FriendMgr:ReportFriendStandData("FRIEND_FRIEND_CONTENT", "Card", "click", reportData)
                        end
                    end

                    local cbCancel = function ()
                        GetInst("ReportGameDataManager"):SetBefJoinFailedParamStandby1(GetInst("ReportGameDataManager"):GetGameJoinBeforeStageDefine().popupCancel)
                        ReportBeforeJoinFailedCall()
                    end

                    if FriendChat_NewTraceLogic_0817() then
                        cb()
                    else
                        FriendMgr:CustomMessageBox(content, GetS(3018), GetS(1203), cbCancel, cb)
                    end
                end
                _G.using_friend_tracking = nil
            end

            --  2022-10-10 补充加入游戏失败埋点逻辑
            function FriendChat_ReqFriendRoomByUin(uin, userdata, fromTraceBtn, bolReport)
                ----新增审核账号禁止联机功能，但审核开发者广告的仍可联机
                local checker_uin = AccountManager:getUin()
                if IsUserOuterChecker(checker_uin) and not DeveloperAdCheckerUser(checker_uin) then
                    ShowGameTips(GetS(100300), 3);
                    if bolReport then
                        GetInst("ReportGameDataManager"):SetBefJoinFailedParamStandby1(GetInst("ReportGameDataManager"):GetGameJoinBeforeStageDefine().isAuditAccount)
                        ReportBeforeJoinFailedCall(GetS(100300))
                    end
                    return;
                end
                local fridData = GetFriendDataByUin(uin)
                if FriendChat_NewTraceLogic_0817() then
                    local rptInfo = nil
                    if fromTraceBtn and fridData and fridData.ingame_exdata then
                        rptInfo = {
                            sceneid = "31",
                            cardid = "FRIEND_FRIEND_CONTENT",
                            compid = "FollowRequestButton",
                            bolReport = true
                        }
                    end
                    return FriendTraceMgr:ReqTrace(uin, rptInfo)
                end
            end

            --  2022-10-10 补充加入游戏失败埋点逻辑
            function EnterFriendHomeMap(friendUin, invitepassword)
                print("EnterFriendHomeMapEnterFriendHomeMapEnterFriendHomeMap")
                --单机模式不给进
                if IsStandAloneMode() then
                    ReportBeforeJoinFailedCall("singleMode cannot join")
                    return
                end

                if friendUin == nil or friendUin <= 0 then
                    ReportBeforeJoinFailedCall("friendUin is null")
                    return
                end

                if IsInHomeLandMap() and friendUin == GetInst("HomeLandDataManager"):GetCurVisiteHomeMapUin() then
                    HomeLandTestLog("hfb test -- 已经在好友家园中")
                    ReportBeforeJoinFailedCall("you are in friend's homeland")
                    return --已经在好友家园中
                end
                HomelandCallModuleScript("HomelandCommonModule","setTranverseChunkSwitch",false)
                ReqHomelandServerTableByCDN()
                -- 获取好友地图基础信息数据回调
                local function callback(ret, transdata)
                    if not EnterHomeLandInfo or EnterHomeLandInfo.step ~= HomeLandInterativeStep.GET_BASIC_INFO then
                        HomeLandTestLog("hfb test -- 执行步骤不对--获取他人家园基础信息")
                        ReportBeforeJoinFailedCall("do a wrong step")
                        EnterHomeLandInfo = {}
                        HideHomeLandLoading(true)
                        return
                    end
                    if not (ret and ret.ret == 0) then
                        ReportBeforeJoinFailedCall("get friend's homeland info failed")
                        HomeLandTestLog("hfb test -- 别人家园信息拉取失败")
                        EnterHomeLandInfo = {}
                        HideHomeLandLoading(true)
                        ns_error_msg.show( ret, 3)
                        return --拉取数据失败
                    end

                    HomeChestMgr:requestChestTreeReq(friendUin)

                    --请求好友的宠物列表信息
                    GetInst("HomeLandService"):ReqFriendAllPetInfo(nil,friendUin)
                    -- 缓存好友Uin
                    GetInst("HomeLandDataManager"):SetCurVisiteHomeMapUin(friendUin)
                    -- 根据uin获取被访问的玩家的profile
                    GetInst("HomeLandDataManager"):GetProfileByUin(friendUin)
                    -- 缓存家园数据
                    GetInst("HomeLandDataManager"):SetCurVisiteHomeMapData(ret)
                    HomeLandTestLog("hfb test -- 尝试进入好友："..friendUin.."的地图")
                    if not AccountManager.requestManorRoomInfoByUin then
                        HomeLandTestLog("hfb test -- C++接口AccountManager.requestManorRoomInfoByUin 未导出")
                        ReportBeforeJoinFailedCall("get requestManorRoomInfoByUin info failed")
                        EnterHomeLandInfo = {}
                        HideHomeLandLoading(true)
                        ShowGameTips("@error at code interface!", 3)
                        return
                    end

                    ShowHomeLandLoading()
                    getglobal("RoomFrame") --纯粹为了监听事件
                    getglobal("MultiplayerLobbyFrame") --纯粹为了监听事件
                    if not AccountManager:checkRoomServerLogin() then
                        EnterHomeLandInfo.step = HomeLandInterativeStep.CHECK_FOR_ROOM_CLIENT
                        if not AccountManager:loginRoomServer(false) then
                            HomeLandTestLog("hfb test -- 初始化联机网络出错")
                            ReportBeforeJoinFailedCall("init network failed")
                            EnterHomeLandInfo = {}
                            ShowGameTips("@error at connect room server for check!", 3)
                            HideHomeLandLoading(true)
                        end
                    else
                        EnterHomeLandInfo.step = HomeLandInterativeStep.GET_ROOM_DESC
                        AccountManager:requestManorRoomInfoByUin(friendUin)
                    end
                    -- 缓存牧场信息 不一定用
                    GetInst("HomeLandDataManager"):UpdateHomeLandRankInfo(ret)
                    --检测任务
                    GetInst("HomeLandGuideTaskManager"):CheckEnterFriendHome()
                    GetInst("HomeLandGuideTaskManager"):CheckPetEnterFriendHome()
                end

                local owid = gFunc_GetHomeGardenWorldIDByUin(friendUin)
                EnterHomeLandInfo = {uin = friendUin, owid = owid, step = HomeLandInterativeStep.GET_BASIC_INFO, invitepassword = invitepassword}
                if IsInHomeLandMap() and AccountManager:getMultiPlayer() > 0 then --先退出联机
                    HomeLandTestLog("hfb test -- 先退出联机再进家园")
                    ReportBeforeJoinFailedCall("you must exit game first")
                    EnterHomeLandInfo.step = HomeLandInterativeStep.RE_ENTER_HOMELAND
                    ExitHomeLandAndTurnToNextOperate()
                    return
                end
                ShowHomeLandLoading() --显示loading
                -- 获取好友地图基础信息数据
                GetInst("HomeLandService"):ReqManorData( "all", callback, friendUin )
            end

            --  2022-10-10 增加记录进入游戏加载前失败埋点数据
            local ReportGameDataManager = ClassList["ReportGameDataManager"] or {};
            ReportGameDataManager.Init = function(self)
                self.standReportGameLoadParam = {}
                -- self.standReportGameQuitParam = {}
                self.standRecordSwitchParam = {} --记录 standReportGameLoadParam 或 standReportJoinParam ，供切换游戏使用
                self.gameSwitchParamStandby1 = "0"
                self.standReportExitReason = nil
                self.standReportJoinParam = {}
                self.standReportBefJoinFailedParam = {} --记录进入游戏加载前失败埋点数据
                self.startLoadTime = 0  --加载地图开始的时间戳
                self.gameLoadType = 0 --1为创建地图 2为加入地图
                self.lastPing = 0
                self.tblFpsRecord = {}
                self.define =
                {
                    heartbeatScene_id = "1003",
                    heartbeatCard_id = "GAME_HEART_BEAT",
                    heartbeatComp_id = "heartactive",
                }

                -- 区分联机类型 1:本地单机 2:联机 3:好友联机 4：单人游戏
                self.defineNetType =
                {
                    singleMode       = 1,
                    onlineMode       = 2,
                    friendOnlineMode = 3,
                    singlePlayMode   = 4,
                }

                -- 区分地图所属作者：1：自己地图 2：别人地图
                self.defineMapOwn =
                {
                    myMap    = "1",    --自己地图
                    otherMap = "2", --别人地图
                }

                --区分切换游戏模式
                -- 1:创造转模拟冒险
                -- 2:模拟冒险转创造
                -- 3:开发者编辑转玩法
                -- 4:开发者玩法转编辑
                -- 5:单人模式转公开模式
                -- 6:公开模式转单人模式
                self.defineGameChangeMode =
                {
                    creativeToAdventure = "1",
                    adventureToCreative = "2",
                    developEditToPlay   = "3",
                    developPlayToEdit   = "4",
                    singleToPublic      = "5",
                    publicToSingle      = "6",
                }

                -- ctype类型 1:地图 2：家园地图  5：互动剧 10：专题
                self.defineCtype =
                {
                    ctypeMap      = "1",
                    ctypeHomeLand = "2",
                    ctypeInteract = "5",
                    ctypeSpecial  = "10",
                }

                --游戏创建类型 1为创建地图 2为加入地图
                self.defineGameLoadType =
                {
                    gameCreate = "1",
                    gameJoin   = "2",
                }

                -- 地图类型: 0:冒险模式（经典） 1：创造模式（编辑）2：冒险模式（极限）3:创造模式（转模拟冒险）
                -- 4.开发者模式（编辑）5.开发者模式（玩法）6:冒险模式（高级） 9：录像   20：家园
                self.defineGameModeType =
                {
                    adventureClassic  = "0",
                    createEdit        = "1",
                    adventrueLimit    = "2",
                    createToAdventrue = "3",
                    developEdit       = "4",
                    developPlay       = "5",
                    adventureSenior   = "6",
                    vediotape         = "9",
                    homeland          = "20",
                }

                --请求进入房间之前处于的阶段
                self.defineGameJoinBeforeStage = {
                    popupCancel = "1",            ---二次弹框确认是否进入房间，选择了否
                    isAuditAccount = "2",         ---玩家是否审核账号，是
                    goFriendHomeLandFail = "3",   ---进好友家园失败
                    dealRoomInfoFail = "4",       ---处理房间信息，失败
                    requestJoinRoomFail = "5",    ---请求加入房间，失败
                }
            end

            ReportGameDataManager.SetBefJoinFailedParamStandby1 = function(self,standby1)
                self.standReportBefJoinFailedParam.standby1 = standby1  ---standby1:哪一步失败的
            end

            ReportGameDataManager.SetBefJoinFailedParamStandby2 = function(self,standby2)
                self.standReportBefJoinFailedParam.standby2 = standby2  ---standby2:失败原因，错误码或者飘的提示（有则上传，没有为空）
            end

            ReportGameDataManager.SetBefJoinFailedParamStandby3 = function(self,standby3)
                self.standReportBefJoinFailedParam.standby3 = standby3  ---standby3:房间id(有则上传，没有为空)
            end

            ReportGameDataManager.SetBefJoinFailedParamStandby4 = function(self,standby4)
                self.standReportBefJoinFailedParam.standby4 = standby4  ---standby4:房间类型1云服联机,2普通联机,3快速云服联机;（有则上传，没有为空）
            end

            ReportGameDataManager.SetBefJoinFailedParamStandby5 = function(self,standby5)
                self.standReportBefJoinFailedParam.standby5 = standby5  ---standby5:对方uin,没有为空（好友一起玩特有逻辑，其他情况为空）
            end

            ReportGameDataManager.ReSetBefJoinFailedParam = function(self,bolPrepareJoin)
                self.standReportBefJoinFailedParam = {}
                if bolPrepareJoin then
                    self.standReportBefJoinFailedParam.bolPrepareJoin = bolPrepareJoin
                end
            end

            ReportGameDataManager.GetBolBefJoining = function(self)
                local bolPrepareJoin = false
                if self.standReportBefJoinFailedParam and self.standReportBefJoinFailedParam.bolPrepareJoin then
                    bolPrepareJoin = true
                end
                return bolPrepareJoin
            end

            ReportGameDataManager.GetBefJoinFailedParam = function(self)
                return self.standReportBefJoinFailedParam
            end

            ReportGameDataManager.GetGameJoinBeforeStageDefine = function(self)
                return self.defineGameJoinBeforeStage
            end

            --  2022-10-10 新增game_before_join_failed埋点上报
            function ReportBeforeJoinFailedCall(failureReason)
                if GetInst("ReportGameDataManager"):GetBolBefJoining() then
                    if failureReason then
                        GetInst("ReportGameDataManager"):SetBefJoinFailedParamStandby2(failureReason)
                    end
                    local tb = {}
                    tb = GetInst("ReportGameDataManager"):GetBefJoinFailedParam() or {}
                    tb.cid = GetInst("ReportGameDataManager"):GetCId()
                    tb.ctype = GetInst("ReportGameDataManager"):GetCtypeDefine().ctypeMap
                    standReportEvent(GetInst("ReportGameDataManager"):GetGameJoinParam().sceneid,GetInst("ReportGameDataManager"):GetGameJoinParam().cardid,
                            GetInst("ReportGameDataManager"):GetGameJoinParam().compid,"game_before_join_failed",tb)
                    GetInst("ReportGameDataManager"):ReSetBefJoinFailedParam()
                end
            end

            -- 2022-10-10 补充加入游戏失败埋点逻辑
            local RoomService = ClassList["RoomService"] or {};
            RoomService.EnterRoomByDesc = function(self,reportSlot, ignoreNetState, roomDesc, exData, callBack)
                if roomDesc == nil then
                    --MiniBase加入房间失败回调
                    SandboxLua.eventDispatcher:Emit(nil, "MiniBase_JoinCommonEvent",  SandboxContext():SetData_Number("code", 204))
                    return
                end
                exData = exData or {}
                if (not ignoreNetState and ClientMgr:getNetworkState() == 2) then
                    --流量进房间提醒
                    local msgCall = function()
                        self:EnterRoomByDesc(reportSlot, true, roomDesc, exData, callBack)
                    end
                    --MiniBase迷你基地用流量不拦截，APP拦截
                    if not MiniBaseManager:isMiniBaseGame() then
                        MessageBox(7, GetS(21), msgCall);
                        return
                    end
                end
                GetInst("RoomService"):AsynReqMapPlayerCount({roomDesc.map_type})

                GetInst("UIManager"):Close("NormalRoomDetail")
                GetInst("ReportGameDataManager"):SetBefJoinFailedParamStandby1(GetInst("ReportGameDataManager"):GetGameJoinBeforeStageDefine().requestJoinRoomFail)
                --设置房间名
                local roomName = (roomDesc.roomname or roomDesc.room_name) or ""
                setCurInRoomName(roomName)
                setCurInRoomNameByDesc(roomDesc)

                local genkey = GetInst("UIEvtHook"):GenKeyWithPrefix(self.EVT_GEN_PREFIX_JOIN)

                local roomType = self:GetRoomType(roomDesc)
                if AllRoomManager.RoomType.Normal == roomType then
                    roomDesc = AllRoomManager:TransHttpNormalRoomNotAdd(roomDesc)
                    if roomDesc.password and roomDesc.password ~= "" then
                        --MiniBase迷你基地密码在参数中
                        if not MiniBaseManager:isMiniBaseGame() then
                            self:ShowNormalPassInput(reportSlot, roomDesc, exData, genkey, callBack)
                        else
                            --从参数中取密码
                            self:LinkNormalRoomByDesc(roomDesc.password, reportSlot, roomDesc, exData, genkey, callBack);
                        end
                    else
                        --房间没有设置密码
                        self:LinkNormalRoomByDesc("", reportSlot, roomDesc, exData, genkey, callBack);
                    end
                elseif AllRoomManager.RoomType.CloudServer == roomType then
                    self:EnterCloudRoomByDesc(roomDesc, reportSlot, genkey, callBack)
                elseif AllRoomManager.RoomType.QuickupCloudServer == roomType then
                    if not roomDesc.passwd and roomDesc.passwd_md5 and roomDesc.passwd_md5 ~= "" then
                        local passInputCallBack = function() end
                        passInputCallBack = function(password)
                            local ret, tips, failedCode = self:ReqJoinDesQuickupCSRoom(roomDesc.roomid, exData.spData, password)
                            if not ret and failedCode == 11 then
                                ShowGameTips(tips or GetS(567))
                                GetInst("UIManager"):Open("RoomPassWordInput", {callBack = passInputCallBack})
                                ReportBeforeJoinFailedCall(GetS(567))
                            end
                        end
                        if "string" == type(roomDesc.tryPwd) and roomDesc.tryPwd ~= "" then
                            passInputCallBack(roomDesc.tryPwd)
                        else
                            GetInst("UIManager"):Open("RoomPassWordInput", {callBack = passInputCallBack})
                        end
                    else
                        local ret, tips, failedCode = nil, nil, nil
                        if 'number' == type(roomDesc.lcl_outTime) and roomDesc.lcl_outTime >= os.time() then
                            ret, tips, failedCode = self:inFunc_ReqStartJoinQuickupRent(roomDesc, exData.spData, {standby3 = 0}, roomDesc.passwd or "")
                        else
                            ret, tips, failedCode = self:ReqJoinDesQuickupCSRoom(roomDesc.roomid, exData.spData, roomDesc.passwd or "")
                        end
                        if not ret then
                            ShowGameTips(tips or GetS(35888))
                            --MiniBase加入一键云服失败回调
                            SandboxLua.eventDispatcher:Emit(nil, "MiniBase_JoinOneKeyCloudRoom",  SandboxContext():SetData_Number("code", 234):SetData_String("msg", tips))
                            ReportBeforeJoinFailedCall(GetS(35888))
                        end
                    end
                end
            end

            RoomService.LinkNormalRoomByDesc = function(self,password, reportSlot, roomDesc, exData, genkey, callBack)
                Log("AllRoomManager:LinkNormalRoomByDesc:");

                local checker_uin = AccountManager:getUin()
                if IsUserOuterChecker(checker_uin) and not DeveloperAdCheckerUser(checker_uin) then
                    ShowGameTips(GetS(100300), 3)
                    ReportBeforeJoinFailedCall(GetS(100300))
                    return nil;
                end

                if not roomDesc then
                    --MiniBase加入普通房间失败回调
                    SandboxLua.eventDispatcher:Emit(nil, "MiniBase_JoinNormalRoom",  SandboxContext():SetData_Number("code", 204))
                    ReportBeforeJoinFailedCall("rommDesc is null")
                    return
                end

                self:InsertEnterRoomCallBack(callBack, genkey)
                Log("111:");
                local curVersion = ClientMgr:clientVersion();

                local roomType = roomDesc.isServer and 2 or 3
                statistics_9502_handler.OnEnterRoomStatistics(roomDesc.owneruin, reportSlot, roomType, roomDesc.map_type, roomDesc.gamelabel, getShortUin(roomDesc.owneruin))

                if roomDesc.isnearby > 100  and roomDesc.password ~= "" and roomDesc.password ~= password then
                    ShowGameTips(GetS(567), 3);
                    statistics_9502_handler.OnEnterRoomResultStatistics(false, 567)
                    --MiniBase加入普通房间失败回调
                    SandboxLua.eventDispatcher:Emit(nil, "MiniBase_JoinNormalRoom",  SandboxContext():SetData_Number("code", 214))
                    ReportBeforeJoinFailedCall(GetS(567))
                    return
                end

                --为客机截图分享保存数据
                g_ScreenshotShareRoomDesc = roomDesc;

                local t_extra = JSON:decode(roomDesc.extraData);
                if t_extra then
                    local myVer = math.floor(curVersion/256);
                    local roomVer = math.floor(ClientMgr:clientVersionFromStr(t_extra.version)/256);
                    if myVer ~= roomVer then
                        ShowGameTips(GetS(572), 3);
                        statistics_9502_handler.OnEnterRoomResultStatistics(false, 572)
                        --MiniBase加入普通房间失败回调
                        SandboxLua.eventDispatcher:Emit(nil, "MiniBase_JoinNormalRoom",  SandboxContext():SetData_Number("code", 210))
                        ReportBeforeJoinFailedCall(GetS(572))
                        return;
                    end
                end

                StatisticsTools:joinRoom(mIsLanRoom, roomDesc.gamelabel);

                --可否被追踪
                local teamMode = false
                local connect_mode = roomDesc.connect_mode or 0
                if exData.teamMode then teamMode = true end
                local cantrace = ClientMgr:getGameData("cantrace")
                if teamMode then
                    cantrace = 0
                    connect_mode = 2
                elseif 2 == roomDesc.connect_mode then --加组队房间 必须传teamMode=true
                    connect_mode = 0
                end

                AllRoomManager:CpRoomDesc(roomDesc, self.m_teamNorRoomDesc)
                if AccountManager:requestConnectWorldByDesc(self.m_teamNorRoomDesc, password, cantrace, connect_mode, genkey) then
                    AllRoomManager:AddReqConnectRSRoom(roomDesc, roomDesc.owneruin)
                    --[[设置打赏状态]]
                    MapRewardClass:SetMapsReward(roomDesc.map_type)

                    EnterRoomType = roomDesc.gametype;
                    LoginRoomClientIp = roomDesc.regionIp;

                    WWW_ma_multigame();
                    ns_ma.ma_play_map_set_enter( { where="join_room1", fromowid=roomDesc.map_type, gamelabel=roomDesc.gamelabel } )
                    statistics_9502_handler.OnEnterRoomResultStatistics(true)
                    NewBattlePassEventOnTrigger("mulgame");
                else
                    ShowGameTips(GetS(573), 3);
                    statistics_9502_handler.OnEnterRoomResultStatistics(false, 573)
                    --MiniBase加入普通房间失败回调
                    SandboxLua.eventDispatcher:Emit(nil, "MiniBase_JoinNormalRoom",  SandboxContext():SetData_Number("code", 218))
                    ReportBeforeJoinFailedCall(GetS(573))
                end
                --客机记录地图fromowid
                DeveloperFromOwid = roomDesc.map_type;

                if roomDesc.connect_mode == 0 then
                    local worldListRecentlyOpened = AccountManager:getMyRecentlyOpenedWorldList()
                    worldListRecentlyOpened:saveRecentlyPlayedMap(roomDesc.map_type, 0, roomDesc.thumbnail_url, roomDesc.thumbnail_md5, roomDesc.roomname, JOIN_ROOM);
                    worldListRecentlyOpened:saveLastJoinRoomInfo(roomDesc.owneruin, roomDesc.map_type, 0);
                end

                --联机来源埋点
                OnlineSourceStatistics(roomDesc.map_type, false)

                local rpt = copy_table(standReportGameJoinParam or {})
                local temp = AllRoomManager:CalculateRoomDescReportTb(roomDesc) or {}
                -- 联机埋点上报。
                for key, value in pairs(temp) do
                    rpt[key] = value
                end
                rpt.slot = reportSlot

                InsertStandReportGameJoinParamArg(rpt)

                local stanby1_2 = (tonumber(rpt.standby1) or 0)  % 10
                GetInst("ReportGameDataManager"):SetRoomType(stanby1_2)
                GetInst("ReportGameDataManager"):SetCId(rpt.cid)
                GetInst("ReportGameDataManager"):SetJoinSlot(reportSlot)
            end

            RoomService.EnterCloudRoomByDesc = function(self,roomInfo, reportSlot, genkey, callBack)
                if roomInfo then
                    self:InsertEnterRoomCallBack(callBack, genkey)
                    local roomuin, roomid = getRoomUinAndRoomID(roomInfo["_k_"])
                    -- 房间类型：1=玩家云服、2=官服、3=普通房间
                    local reportRoomType = roomInfo.isServer and 2 or 1
                    statistics_9502_handler.OnEnterRoomStatistics(roomuin, reportSlot, reportRoomType, roomInfo.wid, roomInfo.label, roomid)

                    -- 通行证判断已过期
                    if roomInfo.map_passcard_et and roomInfo.map_passcard_et > 0 and roomInfo.map_passcard_et < getServerTime() then
                        MessageBox(4, GetS(9800))
                        --MiniBase加入云服房间失败回调
                        SandboxLua.eventDispatcher:Emit(nil, "MiniBase_JoinCloudRoom",  SandboxContext():SetData_Number("code", 211))
                        ReportBeforeJoinFailedCall(GetS(9800))
                        return
                    end

                    roomInfo.reportSlot = reportSlot
                    if roomInfo.wid and roomInfo.wid > 0 then
                        --加多点限制 如果是违规云服 超管 直接进入
                        if IsCSRoomViolation(roomInfo.open_svr) and ns_playercenter.func.IsPlayerRentSup() then
                            local lefttime = roomInfo["expire_time"] - getServerTime()
                            if lefttime < 0 then
                                ShowGameTips(GetS(9590))
                                --MiniBase加入云服房间失败回调
                                SandboxLua.eventDispatcher:Emit(nil, "MiniBase_JoinCloudRoom",  SandboxContext():SetData_Number("code", 211))
                                ReportBeforeJoinFailedCall(GetS(9590))
                                return
                            end
                            if roomInfo["password"] and roomInfo["password"] == 1 then
                                self:ReqRoomCloudServerAuthority(roomuin, roomid, roomInfo, genkey)
                            else
                                local pwd = roomInfo["password"]
                                if type(pwd) ~= "string" then
                                    pwd = ""
                                end
                                self:ReqRoomCloudServerEnterRoom(roomInfo, pwd, genkey)
                            end
                            return
                        end

                        if roomuin == AccountManager:getUin() then
                            if IsCSRoomViolation(roomInfo.open_svr) then
                                if roomInfo.appeal then
                                    ShowGameTipsWithoutFilter(GetS(9786))
                                    --MiniBase加入云服房间失败回调
                                    SandboxLua.eventDispatcher:Emit(nil, "MiniBase_JoinCloudRoom",  SandboxContext():SetData_Number("code", 225))
                                    ReportBeforeJoinFailedCall(GetS(9786))
                                    return
                                end

                                local key = roomInfo._k_
                                local haveChecked = getkv("cshaveChecked_"..key)
                                if not haveChecked then
                                    if not MiniBaseManager:isMiniBaseGame() then
                                        MessageBox(31, GetS(9780), function(btn)
                                            if btn == 'right' then
                                                --记录一下
                                                setkv("cshaveChecked_"..key, true)
                                            end
                                        end)
                                    else
                                        --MiniBase加入云服房间失败回调
                                        SandboxLua.eventDispatcher:Emit(nil, "MiniBase_JoinCloudRoom",  SandboxContext():SetData_Number("code", 226))
                                        ReportBeforeJoinFailedCall("join cloud room failed")
                                    end
                                    return
                                end
                            end
                        end

                        local lefttime = roomInfo["expire_time"] - getServerTime()
                        -- 是否开启，是否维护
                        if roomInfo.stat == 0 then
                            if lefttime <= 0 then
                                if roomuin ~= AccountManager:getUin() then
                                    statistics_9502_handler.OnEnterRoomResultStatistics(false, 9590)
                                    ShowGameTips(GetS(9590), 3)
                                    --MiniBase加入云服房间失败回调
                                    SandboxLua.eventDispatcher:Emit(nil, "MiniBase_JoinCloudRoom",  SandboxContext():SetData_Number("code", 222))
                                    ReportBeforeJoinFailedCall(GetS(9590))
                                    return
                                else
                                    statistics_9502_handler.OnEnterRoomResultStatistics(false, 9591)
                                    ShowGameTips(GetS(9591), 3)
                                    --MiniBase加入云服房间失败回调
                                    SandboxLua.eventDispatcher:Emit(nil, "MiniBase_JoinCloudRoom",  SandboxContext():SetData_Number("code", 223))
                                    ReportBeforeJoinFailedCall(GetS(9591))
                                    return
                                end
                            else
                                statistics_9502_handler.OnEnterRoomResultStatistics(false, 9546)
                                ShowGameTips(GetS(9546), 3)
                                --MiniBase加入云服房间失败回调
                                SandboxLua.eventDispatcher:Emit(nil, "MiniBase_JoinCloudRoom",  SandboxContext():SetData_Number("code", 224))
                                ReportBeforeJoinFailedCall(GetS(9546))
                                return
                            end
                        elseif roomInfo.maintain == 1 and roomuin ~= AccountManager:getUin() then
                            --暂时不要在这里判断（超管需要在后面继续获取密码进入）
                            --return ShowGameTips(GetS(9547), 3)
                        end

                        -- 版本号判断
                        if roomuin ~= AccountManager:getUin() then
                            local myVer = math.floor(ClientMgr:clientVersion()/256);
                            local roomVer = math.floor(ClientMgr:clientVersionFromStr(roomInfo["ver"])/256);
                            if myVer ~= roomVer then
                                statistics_9502_handler.OnEnterRoomResultStatistics(false, 572)
                                ShowGameTips(GetS(572), 3);
                                --MiniBase加入云服房间失败回调
                                SandboxLua.eventDispatcher:Emit(nil, "MiniBase_JoinCloudRoom",  SandboxContext():SetData_Number("code", 210))
                                ReportBeforeJoinFailedCall(GetS(572))
                                return
                            end
                        end
                        -- 设置
                        RentPermitCtrl:SetRentRoomInfo(roomInfo)
                        -- 密码相关处理
                        if roomInfo["password"] and roomInfo["password"] == 1 then
                            self:ReqRoomCloudServerAuthority(roomuin, roomid, roomInfo, genkey)
                        else
                            local pwd = roomInfo["password"]
                            if type(pwd) ~= "string" then
                                pwd = ""
                            end
                            self:ReqRoomCloudServerEnterRoom(roomInfo, pwd, genkey)
                        end
                    end
                end
            end

            RoomService.RespRoomCloudServerAuthority = function(self,ret, userdata, genkey)
                if ret and ret.ret then
                    if ret.ret == 0 then
                        local password = ret.pw == nil and "" or ret.pw
                        self:ReqRoomCloudServerEnterRoom(userdata.roomInfo, password, genkey)
                    elseif ret.ret == 2 then
                        --如果当前房间是维护状态，那就连密码都省了 不用进了
                        if userdata.roomInfo and userdata.roomInfo.maintain == 1 then
                            statistics_9502_handler.OnEnterRoomResultStatistics(false, 9547)
                            --MiniBase加入云服房间失败回调
                            SandboxLua.eventDispatcher:Emit(nil, "MiniBase_JoinCloudRoom",  SandboxContext():SetData_Number("code", 229))
                            ReportBeforeJoinFailedCall(GetS(9547))
                            return ShowGameTips(GetS(9547), 3)
                        end
                        --MiniBase迷你基地密码在参数中
                        if not MiniBaseManager:isMiniBaseGame() then
                            self:ShowCloudPassInput(userdata.roomInfo, genkey)
                        else
                            --MiniBase从参数中取密码
                            local password = ret.pw == nil and "" or ret.pw
                            self:ReqRoomCloudServerEnterRoom(userdata.roomInfo, password, genkey)
                        end
                    end
                else
                    --MiniBase加入云服房间失败回调
                    SandboxLua.eventDispatcher:Emit(nil, "MiniBase_JoinCloudRoom",  SandboxContext():SetData_Number("code", 228))
                end
            end

            RoomService.ReqRoomCloudServerEnterRoom = function(self,roomInfo, password, genkey)
                local serverid = roomInfo["_k_"]
                --print("ReqRoomCloudServerEnterRoom", roomInfo)
                local uin, roomid = getRoomUinAndRoomID(serverid)
                threadpool:work(function()
                    if ns_version and ns_version.proxy_url then
                        local url = ns_version.proxy_url .. '/miniw/rent_server?act=enter_room&room_uin='..uin.."&room_id="..roomid.."&password="..password.."&" .. http_getS1Map();
                        local userdata = {
                            key = serverid,
                            roomDesc = roomInfo,
                            password = password
                        }
                        local loopTag = "file:RoomService - func:ReqRoomCloudServerEnterRoom"
                        ShowLoadLoopFrame2(true, loopTag, 5)

                        local callBack = function(ret, userdata)
                            ShowLoadLoopFrame2(false, loopTag)
                            if not getglobal("LoadingFrame"):IsShown() and not ClientCurGame:isInGame() then
                                self:RespRoomCloudServerEnterRoom(ret, userdata, genkey)
                            end
                        end

                        ns_http.func.rpc( url, callBack, userdata, nil, true );
                    else
                        --MiniBase加入云服房间失败回调
                        SandboxLua.eventDispatcher:Emit(nil, "MiniBase_JoinCloudRoom",  SandboxContext():SetData_Number("code", 227))
                        ReportBeforeJoinFailedCall("join cloud room failed")
                    end
                end)
            end

            RoomService.RespRoomCloudServerEnterRoom = function(self,result, userdata, genkey)
                local roomDesc = userdata["roomDesc"]
                print("HRL .. RespRoomCloudServerEnterRoom " .. TableToStr(result))
                if result and result.ret and result.ret == 0 and result.runtime then
                    local auth = result.room_auth == nil and "" or result.room_auth
                    AccountManager:setCloudServerAuth(auth)
                    if roomDesc then
                        roomDesc["ip"] = result.room_info.ip
                        roomDesc["port"] = result.runtime.port or 0
                        roomDesc["player_count"] = result.runtime.player_count
                        if roomDesc["port"] == 0 then
                            statistics_9502_handler.OnEnterRoomResultStatistics(false, 12312)
                            --MiniBase加入云服房间失败回调
                            SandboxLua.eventDispatcher:Emit(nil, "MiniBase_JoinCloudRoom",  SandboxContext():SetData_Number("code", 230))
                            return ShowGameTips(GetS(12312))
                        end

                        --玩家刚上传完房间后，房间信息里没有这个值，这个时候用enter_room里面的这个字段
                        if (roomDesc["roomMods"] == nil or roomDesc["roomMods"] == "") and result.room_info.roomMods then
                            roomDesc["roomMods"] = result.room_info.roomMods
                            print("RespCloudServerEnterRoom roomMods:", roomDesc["roomMods"])
                        end

                        if (roomDesc["roomUILibs"] == nil or roomDesc["roomUILibs"] == "") and result.room_info.roomUILibs then
                            roomDesc["roomUILibs"] = result.room_info.roomUILibs
                        end

                        if (roomDesc["roomAudioConfig"] == nil or roomDesc["roomAudioConfig"] == "") and result.room_info.roomAudioConfig then
                            roomDesc["roomAudioConfig"] = result.room_info.roomAudioConfig
                        end

                        AccountManager:addRentHostAddress(userdata["key"], roomDesc["ip"], roomDesc["port"])
                        SetCloudRoomModInfo(roomDesc)

                        local player_max = (result.runtime and result.runtime.player_max) and result.runtime.player_max or 40
                        if AccountManager:requestConnectRentWorld(result.room_info.room_uin, userdata["password"], 0, player_max, 0, userdata["key"], genkey) then
                            AllRoomManager:AddReqConnectRSRentRoom(roomDesc, roomDesc._k_)
                            statistics_9502_handler.OnEnterRoomResultStatistics(true)
                            ShowLoadLoopFrame(true, "file:CloudServerInterface -- func:RespRoomCloudServerEnterRoom")
                            -- --[[设置打赏状态]]
                            -- MapRewardClass:SetMapsReward(roomDesc.fromowid)

                            -- 新增冒险回归活动“联机模式”任务上报
                            if GetInst("ComeBackSysConfig"):IsNeedReportEvent(4) then
                                GetInst("ComeBackSysConfig"):RequestEvent(4)
                            end
                            standReportCloudServerEnterRoom(roomDesc)

                            NewBattlePassEventOnTrigger("mulgame");

                            -- 新增新手引导推荐地图关闭并且进入记录
                            if NewbieGuideManager and NewbieGuideManager:IsSwitch() then
                                NewbieGuideManager:CloseRecommendMapAndMark()
                            end
                        else
                            statistics_9502_handler.OnEnterRoomResultStatistics(false, 573)
                            SandboxLua.eventDispatcher:Emit(nil, "MiniBase_JoinCloudRoom",  SandboxContext():SetData_Number("code", 218))
                            return ShowGameTips(GetS(573), 3);
                        end
                    end
                elseif result and result.msg == "error_expire_time" then
                    statistics_9502_handler.OnEnterRoomResultStatistics(false, 9590)
                    ShowGameTips(GetS(9590) .. ":0" , 3)
                    SandboxLua.eventDispatcher:Emit(nil, "MiniBase_JoinCloudRoom",  SandboxContext():SetData_Number("code", 222))
                    ReportBeforeJoinFailedCall(GetS(9590))
                elseif result and result.msg == "passcard_expire_time"  then
                    -- 通行证判断已过期
                    MessageBox(4, GetS(9800))
                    SandboxLua.eventDispatcher:Emit(nil, "MiniBase_JoinCloudRoom",  SandboxContext():SetData_Number("code", 211))
                    ReportBeforeJoinFailedCall(GetS(9800))
                elseif result and result.ret and result.ret == 10 then
                    statistics_9502_handler.OnEnterRoomResultStatistics(false, 9807)
                    ShowGameTips(GetS(9807), 3)
                    SandboxLua.eventDispatcher:Emit(nil, "MiniBase_JoinCloudRoom",  SandboxContext():SetData_Number("code", 231))
                    ReportBeforeJoinFailedCall(GetS(9807))
                elseif result and result.ret and result.ret == 11 then
                    statistics_9502_handler.OnEnterRoomResultStatistics(false, 9844)
                    ShowGameTips(GetS(9844), 3)
                    SandboxLua.eventDispatcher:Emit(nil, "MiniBase_JoinCloudRoom",  SandboxContext():SetData_Number("code", 232))
                    ReportBeforeJoinFailedCall(GetS(9844))
                elseif result and result.ret and result.ret == 7 then
                    if roomDesc and roomDesc.password ~= "" and not MiniBaseManager:isMiniBaseGame() then
                        ShowGameTips(GetS(567), 3);
                        self:ShowCloudPassInput(roomDesc, genkey)
                        ReportBeforeJoinFailedCall(GetS(567))
                    else
                        ShowGameTips(GetS(500218)) --"当前网络错误进入失败，请稍微重试"
                        ReportBeforeJoinFailedCall(GetS(500218))
                    end
                    SandboxLua.eventDispatcher:Emit(nil, "MiniBase_JoinCloudRoom",  SandboxContext():SetData_Number("code", 214))
                else
                    local str = ns_error_msg.show(result, 3)
                    statistics_9502_handler.OnEnterRoomResultStatistics(false, str)
                    SandboxLua.eventDispatcher:Emit(nil, "MiniBase_JoinCloudRoom",  SandboxContext():SetData_Number("code", 233))
                    ReportBeforeJoinFailedCall(str)
                end
            end
        end
    },
    {
        -- by huangxin：修改字牌封禁信纸不刷新问题 创建的房间单人文本也会被屏蔽问题
        ver_list = "1.19.5",
        install = function()
            local HideUnmoderatedTextManger = ClassList["HideUnmoderatedTextManger"] or {}
            local old_HideUnmoderatedTextMangerInGame = HideUnmoderatedTextManger.InGame
            HideUnmoderatedTextManger.InGame = function(self)
                old_HideUnmoderatedTextMangerInGame(self)
                self.needInitReshText = true;
            end

            local old_HideUnmoderatedTextMangerInitData = HideUnmoderatedTextManger.initData
            HideUnmoderatedTextManger.initData = function(self)
                old_HideUnmoderatedTextMangerInitData(self)
                if self.needInitReshText then
                    if ClientCurGame then
                        self.needInitReshText = false
                        self:RestText();
                    end
                end
            end
            HideUnmoderatedTextManger.RestText = function(self)
                if CurWorld and CurWorld.ReshWorldSignsContainer then
                    CurWorld:ReshWorldSignsContainer();
                end
                if CurMainPlayer then
                    local itemid = CurMainPlayer:getCurToolID()
                    if itemid == ITEM_LETTERS then
                        local playerAttr = CurMainPlayer:getPlayerAttrib();
                        local shotcut = playerAttr:getCurShotcut()
                        CurMainPlayer:onSetCurShortcut(shotcut)
                    end
                end
            end
        end
    },
    {
        --20201010 wangyuBP服任务上报协议安全优化
        ver_list = "1.19.0 1.19.1 1.19.5",
        install = function()
            --请求上报通行证任务进度
            if _G.ReqReportNewBpEvent then
                _G.ReqReportNewBpEvent = function(taskTypeId, val, iType, callback)
                    print("kgq ReportNewBattlePassEvent taskTypeId", taskTypeId, val, iType)
                    --[[
                    local text = "是"
                    if iType == 1 then
                        text = "否"
                    end

                    local tips = "ReportBP 任务类型:"..taskTypeId.." 值:"..val.." 是否全量:"..text;
                    ShowGameTips(tips, type, itemId, num, bNoLimit, withoutFilter)
                    ]]

                    -- 如果相同条件ID任务一条也没开启或全部已完成则return，无需继续上报
                    if not GetInst("BPMissionCfg"):CheckCanReport(taskTypeId) then
                        return
                    end
                    local url = g_http_root .. "/miniw/battlepass?"
                    local reqParams = {
                        act = 'report_task_progress',
                        conditionid = taskTypeId,
                        value = val,
                        type = iType,      --1增量 2全量
                    }
                    local paramStr, md5 = http_getParamMD5(reqParams)
                    url = url .. paramStr .. '&md5=' .. md5
                    ns_http.func.rpc(url, function(data, userData)
                        print("ReportNewBattlePassEvent ret", data, userData)
                        if not data then
                            print("error:ReqReportNewBpEvent data or data[1] is nil! ")
                        elseif data and data.ret and data.ret == 0 then
                            GetInst("BPMissionCfg"):UpdateMissionCountByConditionID(userData.taskTypeId, userData.val, userData.iType)
                            GetInst("BPMissionCfg"):SetCurGameAddExp(data.now_add_exp)
                            GetInst("BPMissionCfg"):InSertNeedShowMissionIdList(data.now_success_task_id)
                            if callback then
                                callback(taskTypeId, val, iType)
                            end
                            -- 判断是否需要显示悦享卡升级提示弹框
                            --NewBattlePass_CheckIsUpgradeCanShow()
                        elseif data.ret and data.ret ~= 0 then
                            print(data.msg .. string.format("[%d] ", data.ret))
                        end
                    end, {taskTypeId= taskTypeId, val=val, iType = iType}, nil, true, true)
                end
            end
            --请求上报通行证批量任务进度
            if _G.ReqBatchReportNewBpEvent then
                local ReqBatchReportNewBpEvent_old = _G.ReqBatchReportNewBpEvent;
                _G.ReqBatchReportNewBpEvent = function(batchTask,callBack)
                    local jsonData = JSON:encode(batchTask)
                    local base64_encode_jsonStr = ns_http.func.base64_encode(jsonData)
                    local url = g_http_root .. "/miniw/battlepass?"
                    local reqParams = {
                        act = 'report_batchtask_progress',
                        batchtask = base64_encode_jsonStr,
                        platform = ClientMgr:getPlatform(),
                    }
                    local paramStr, md5 = http_getParamMD5(reqParams)
                    url = url .. paramStr .. '&md5=' .. md5
                    ns_http.func.rpc(url, function(ret)
                        if ret and ret.ret and ret.ret == 0 then
                            for _, v in pairs(batchTask) do
                                GetInst("BPMissionCfg"):UpdateMissionCountByConditionID(v.conditionid, v.value, v.type)
                            end
                            GetInst("BPMissionCfg"):SetCurGameAddExp(ret.now_add_exp)
                            GetInst("BPMissionCfg"):InSertNeedShowMissionIdList(ret.now_success_task_id)
                            local t_ReportNewBattlePassCache = getFunctionVpValue(ReqBatchReportNewBpEvent_old, "t_ReportNewBattlePassCache")
                            t_ReportNewBattlePassCache.batchtask = {}
                            -- 判断是否需要显示悦享卡升级提示弹框
                            --NewBattlePass_CheckIsUpgradeCanShow()
                        end
                        if callBack then
                            callBack()
                        end
                    end,nil, nil, true, true)
                end
            end
            if _G.http_getParamMD5 then
                _G.http_getParamMD5 = function(tParam)
                    local privateKey = '3dbc5f33add11d1af78ba2af365e0952'
                    local md5_exclude_list = {
                        log = 1,
                        test = 1,
                        json = 1,
                        nickname = 1,
                        title = 1,
                        content = 1,
                        md5 = 1,
                        auth = 1,
                        content_ctx = 1,
                    }

                    local tempParam = copy_table(tParam)
                    tempParam.time = getServerTime()
                    local s2, s2t = get_login_sign();

                    local function urlEncode(s)
                        s = string.gsub(s, "([^%w%.%- _])", function(c) return string.format("%%%02X", string.byte(c)) end)
                        return string.gsub(s, " ", "+")
                    end

                    --创建局部方法，避免使用时方法未加载出现报错
                    local function urlDncode(s)
                        s = string.gsub(s, '%%(%x%x)', function(h) return string.char(tonumber(h, 16)) end)
                        return s
                    end

                    s2 = urlEncode(s2)
                    tempParam.s2 = s2;
                    tempParam.s2t = string.gsub(s2t, '&s2t=', '')
                    tempParam.encrypt_ver = 3 -- 加密类型

                    local _, morParam = url_addParams('')
                    for k, v in pairs(morParam) do
                        if v ~= '' then
                            tempParam[k] = v
                        end
                    end

                    local needEnctyptKey = {}
                    for k, _ in pairs(tempParam) do
                        if not md5_exclude_list[k] then
                            needEnctyptKey[#needEnctyptKey+1] = k
                        end
                    end
                    table.sort(needEnctyptKey, function (a, b)
                        return a < b
                    end)

                    local md5_table = {}
                    for i, v in ipairs(needEnctyptKey) do
                        if tempParam[v] then
                            local decode_parm = urlDncode(tempParam[v]) --防止业务层进行过Encode，所以先decode再Encode
                            local encode_parm = urlEncode(decode_parm)
                            table.insert(md5_table, v .. '=' .. encode_parm)
                        end
                    end
                    local md5Str = table.concat(md5_table, '&')
                    local md5 = gFunc_getmd5(md5Str .. privateKey)

                    local allParames = {}
                    for k, v in pairs(tempParam) do
                        table.insert(allParames, k .. '=' .. v)
                    end

                    local paramStr = table.concat(allParames, '&')
                    -- local urlFix = md5Str .. '&md5=' .. md5
                    return paramStr , md5
                end
            end
        end
    },
    {
        -- by huangxin：旧版本客户单字牌和留言版等功能禁用
        ver_list = "1.16.0 1.16.1 1.17.0 1.18.0 1.18.1 1.19.0 1.19.1 ",
        install = function()
            iSAbleUsingUnmoderated = function()
                if ns_version and ns_version.hide_unmoderated_text_old_version and ns_version.hide_unmoderated_text_old_version.old_client_notable_using then
                    ShowGameTipsWithoutFilter("【功能维护中，请更新客户端版本使用】")
                    return false
                else
                    return true
                end
            end
            local old_OpenGameSignEditFrame = OpenGameSignEditFrame
            OpenGameSignEditFrame = function(blockId)
                if not ClientCurGame:isInGame() then
                    return
                end
                if not iSAbleUsingUnmoderated() then
                    getglobal("GameSignEditFrameEdit"):enableEdit(false)
                    if CurMainPlayer then
                        CurMainPlayer:closeContainer()
                    end
                    return
                end
                old_OpenGameSignEditFrame();
            end
            local old_LettersFrameSaveBtn_OnClick = LettersFrameSaveBtn_OnClick;
            LettersFrameSaveBtn_OnClick = function(flag, dontClose)
                if flag then
                    if LettersContext_OnFocusLost() then
                        if not iSAbleUsingUnmoderated() then
                            return true
                        end
                    end
                end
                old_LettersFrameSaveBtn_OnClick(flag, dontClose);
            end
            local old_LettersFrame_OnShow = LettersFrame_OnShow
            LettersFrame_OnShow = function()
                old_LettersFrame_OnShow()
                if not iSAbleUsingUnmoderated() then
                    getglobal("LettersTitle"):enableEdit(false)
                    getglobal("LettersContext"):enableEdit(false)
                end
            end
            local old_LettersContext_OnFocusGained = LettersContext_OnFocusGained
            LettersContext_OnFocusGained = function()
                iSAbleUsingUnmoderated()
                old_LettersContext_OnFocusGained()
            end
            local old_LettersTitle_OnFocusGained = LettersTitle_OnFocusGained
            LettersTitle_OnFocusGained = function()
                iSAbleUsingUnmoderated()
                old_LettersTitle_OnFocusGained()
            end
        end
    },
    {
        -- by huangxin：20d版本 房间所用存档房主和地图作者是否一致，一致并且开关开启情况下，隐藏所有文本内容--仅屏蔽玩家自己的存档内容
        ver_list = "1.19.5 1.20.0",
        install = function()
            local HideUnmoderatedTextManger = ClassList["HideUnmoderatedTextManger"] or {}
            HideUnmoderatedTextManger.initData = function(self)
                if self.needInitData then
                    self.needInitData = false
                    local wdesc = AccountManager:getCurWorldDesc()
                    local fromid = 0;
                    self.authorUin = 0
                    if wdesc then
                        if  wdesc.fromowid == 0 then
                            fromid = wdesc.worldid
                            self.authorUin = AccountManager:getUin()
                        else
                            fromid =  wdesc.fromowid
                            self.authorUin = getFromOwid(wdesc.fromowid)
                        end

                    else
                        fromid = G_GetFromMapid()
                        self.authorUin = getFromOwid(fromid)
                    end
                    self:ReqCheckTime(fromid)
                end
                if self.needInitReshText then
                    if ClientCurGame then
                        self.needInitReshText = false
                        self.ownerUin = 0
                        if WorldMgr and WorldMgr.getWorldOwnerUin then
                            self.ownerUin = WorldMgr.getWorldOwnerUin()
                        end
                        self:RestText();
                    end
                end
            end
            HideUnmoderatedTextManger.OldVesionIsNoShow = function(self)
                if self.ownerUin ==  self.authorUin then
                    if ns_version and ns_version.hide_unmoderated_text_old_version and ns_version.hide_unmoderated_text_old_version.open then
                        return true
                    end
                end
                return false
            end
        end
    },
    {
        ver_list = "1.19.0 1.19.1 1.19.5",
        install = function()
            -- 2022-10-17 获得准确的code信息
            local RoomService = ClassList["RoomService"] or {};
            RoomService.Init = function(self)
                self.define = {}
                self.define.errorCode = {
                    [1] = 182001,
                    [2] = 182002,
                    [3] = 182003,
                    [4] = 182004,
                    [5] = 182005,
                    [6] = 182006,
                    [7] = 182007,
                    [8] = 182008,
                    [9] = 182009,
                    [10] = 182010,
                    [11] = 182011,
                    [12] = 182012,
                    [15] = 182013,
                    [16] = 182014,
                    [17] = 182015,
                    [18] = 182016,
                    [19] = 182017,
                    [400] = 182018,
                    [401] = 182019,
                    [403] = 182020,
                    [500] = 182021,
                    [501] = 182021,
                    [502] = 182021,
                    [503] = 182021,
                    [504] = 182021,
                }
            end

            --  2022-10-17 csroomdesc判断是否是table
            local MapRoomCtrl = ClassList["MapRoomCtrl"] or {};
            MapRoomCtrl.ItemEnterRoomBtnClicked = function(self)
                local teamupSer = GetInst("TeamupService")
                if teamupSer and teamupSer:IsInTeam(AccountManager:getUin()) then
                    ShowGameTips(GetS(26045))
                    return
                end
                if self:IsClickSleep("ItemEnterRoomBtnClicked") then
                    ShowGameTips(GetS(31028))
                    return
                end
                self:TickClickInterval("ItemEnterRoomBtnClicked")

                local index = this:GetClientUserData(0)
                local cacheInfo = self.model:GetRoomCacheByIndex(index)
                if not cacheInfo then return end

                local AppendReportInfo = self.model:GetIncomingParam().AppendReportInfo
                local alg_inter = AppendReportInfo and AppendReportInfo.alg_inter or "";

                if cacheInfo.type == AllRoomManager.RoomType.QuickupCloudServer then
                    local rpt = cacheInfo.reportv or {}
                    self:StandReport(self.define.ReportMain,"ROOM_LIST",rpt.oID,"click", rpt)
                    local joinInsertTb = {
                        sceneid = self.define.ReportMain,
                        cardid = "ROOM_LIST",
                        compid = rpt.oID,
                        trace_id = self:GetAppendTraceID(),
                        alg_inter = alg_inter,
                        requestid = self:GetRequestID(),
                        slot = AppendReportInfo and AppendReportInfo.slot or nil,
                    }
                    for key, value in pairs(rpt) do
                        joinInsertTb[key] = value
                    end
                    InsertStandReportGameJoinParamArg(joinInsertTb)
                    GetInst("ReportGameDataManager"):NewGameJoinParam(self.define.ReportMain,"ROOM_LIST",rpt.oID,self:GetAppendTraceID(),alg_inter,self:GetRequestID())
                    if AppendReportInfo and AppendReportInfo.slot then
                        GetInst("ReportGameDataManager"):SetJoinSlot(AppendReportInfo.slot)
                    end
                    local mapInfo = self.model:GetIncomingParam().mapInfo
                    if not cacheInfo.roomDesc then
                        local ret, tips = GetInst("RoomService"):ReqJoinQuickupCSRoomByMap(mapInfo.owid, {forceQuickUpCSRoom=true})
                        if not ret then
                            ShowGameTips(tips or GetS(35888))
                        end
                    else
                        local csroomdesc = GetInst("RoomService"):ReqQueryQuickupCSRoom(cacheInfo.roomDesc.roomid)
                        if csroomdesc then
                            if "table" == type(csroomdesc) and next(csroomdesc) then
                                csroomdesc.lcl_outTime = os.time() + 1
                                GetInst("RoomService"):EnterRoomByDesc(index, false, csroomdesc)
                            else
                                ShowGameTips(GetS(csroomdesc), 3)
                            end
                        else
                            ShowGameTips(GetS(35888))
                        end
                        -- local ret, tips = GetInst("RoomService"):ReqJoinDesQuickupCSRoom(cacheInfo.roomDesc.roomid)
                        -- if not ret then
                        --  ShowGameTips(tips or GetS(35888))
                        -- end
                    end
                else
                    if cacheInfo.roomDesc then
                        local rpt = cacheInfo.reportv or {}
                        self:StandReport(self.define.ReportMain,"ROOM_LIST","JoinButton","click", rpt)
                        InsertStandReportGameJoinParamArg(rpt)
                        InsertStandReportGameJoinParamArg({
                            sceneid = self.define.ReportMain,
                            cardid = "ROOM_LIST",
                            compid = "JoinButton",
                            trace_id = self:GetAppendTraceID(),
                            alg_inter = alg_inter,
                            requestid = self:GetRequestID(),
                            slot = AppendReportInfo and AppendReportInfo.slot or nil,
                        })
                        GetInst("ReportGameDataManager"):NewGameJoinParam(self.define.ReportMain,"ROOM_LIST","JoinButton",self:GetAppendTraceID(),alg_inter,self:GetRequestID())
                        if AppendReportInfo and AppendReportInfo.slot then
                            GetInst("ReportGameDataManager"):SetJoinSlot(AppendReportInfo.slot)
                        end
                        GetInst("RoomService"):EnterRoomByDesc(index, false, cacheInfo.roomDesc)
                    end
                end
            end
        end
    },
    {
        ver_list = "1.19.0 1.19.1 1.19.5 1.20.0 1.20.3 1.20.5 1.20.6",
        install = function()
            --by rice
            --  2022-10-17 增加game_join_failed_1需要的参数
            local ReportGameDataManager = ClassList["ReportGameDataManager"] or {};
            ReportGameDataManager.Init = function(self)
                self.standReportGameLoadParam = {}
                -- self.standReportGameQuitParam = {}
                self.standRecordSwitchParam = {} --记录 standReportGameLoadParam 或 standReportJoinParam ，供切换游戏使用
                self.gameSwitchParamStandby1 = "0"
                self.standReportExitReason = nil
                self.standReportJoinParam = {}
                self.standReportBefJoinFailedParam = {} --记录进入游戏加载前失败埋点数据
                self.standReportJoinFailedParam = {}--记录game_join_failed_1需要的参数
                self.standEnterRoomSceneID = nil --记录加入房间的sceneid
                self.startLoadTime = 0  --加载地图开始的时间戳
                self.gameLoadType = 0 --1为创建地图 2为加入地图
                self.lastPing = 0
                self.tblFpsRecord = {}
                self.define =
                {
                    heartbeatScene_id = "1003",
                    heartbeatCard_id = "GAME_HEART_BEAT",
                    heartbeatComp_id = "heartactive",
                }

                -- 区分联机类型 1:本地单机 2:联机 3:好友联机 4：单人游戏
                self.defineNetType =
                {
                    singleMode       = 1,
                    onlineMode       = 2,
                    friendOnlineMode = 3,
                    singlePlayMode   = 4,
                }

                -- 区分地图所属作者：1：自己地图 2：别人地图
                self.defineMapOwn =
                {
                    myMap    = "1",    --自己地图
                    otherMap = "2", --别人地图
                }

                --区分切换游戏模式
                -- 1:创造转模拟冒险
                -- 2:模拟冒险转创造
                -- 3:开发者编辑转玩法
                -- 4:开发者玩法转编辑
                -- 5:单人模式转公开模式
                -- 6:公开模式转单人模式
                self.defineGameChangeMode =
                {
                    creativeToAdventure = "1",
                    adventureToCreative = "2",
                    developEditToPlay   = "3",
                    developPlayToEdit   = "4",
                    singleToPublic      = "5",
                    publicToSingle      = "6",
                }

                -- ctype类型 1:地图 2：家园地图  5：互动剧 10：专题
                self.defineCtype =
                {
                    ctypeMap      = "1",
                    ctypeHomeLand = "2",
                    ctypeInteract = "5",
                    ctypeSpecial  = "10",
                }

                --游戏创建类型 1为创建地图 2为加入地图
                self.defineGameLoadType =
                {
                    gameCreate = "1",
                    gameJoin   = "2",
                }

                -- 地图类型: 0:冒险模式（经典） 1：创造模式（编辑）2：冒险模式（极限）3:创造模式（转模拟冒险）
                -- 4.开发者模式（编辑）5.开发者模式（玩法）6:冒险模式（高级） 9：录像   20：家园
                self.defineGameModeType =
                {
                    adventureClassic  = "0",
                    createEdit        = "1",
                    adventrueLimit    = "2",
                    createToAdventrue = "3",
                    developEdit       = "4",
                    developPlay       = "5",
                    adventureSenior   = "6",
                    vediotape         = "9",
                    homeland          = "20",
                }

                --请求进入房间之前处于的阶段
                self.defineGameJoinBeforeStage = {
                    popupCancel = "1",            ---二次弹框确认是否进入房间，选择了否
                    isAuditAccount = "2",         ---玩家是否审核账号，是
                    goFriendHomeLandFail = "3",   ---进好友家园失败
                    dealRoomInfoFail = "4",       ---处理房间信息，失败
                    requestJoinRoomFail = "5",    ---请求加入房间，失败
                }
            end

            ReportGameDataManager.SetBefJoinFailedParamByRoomNums = function(self,maxnum,num)
                local max = maxnum or 0
                local n = num or 0
                self.standReportBefJoinFailedParam.standby6 = max.."_"..n
            end

            ReportGameDataManager.SetJoinFailedParam = function(self,cid,roomDesc,tb)
                local mapMode = "null" -- A位 区分地图的模式 ：地图类型: 0:冒险模式（经典） 1：创造模式（编辑）2：冒险模式（极限）3:创造模式（转模拟冒险） 4.开发者模式（编辑）5.开发者模式（玩法）6:冒险模式（高级）
                local mapState =  2 -- B位 区分地图的状态 ：地图状态：1-未上传 2-公开 3-私有
                local mapOwn  -- C位 区分地图所属作者：1：自己地图 2：别人地图"
                local ownUin  = OWorldUtils:getUinFromOWID(cid)
                if ownUin == AccountManager:getUin() then
                    mapOwn = GetInst("ReportGameDataManager"):GetGameMapOwnDefine().myMap
                else
                    mapOwn = GetInst("ReportGameDataManager"):GetGameMapOwnDefine().otherMap
                end
                if self.standReportJoinFailedParam == nil then
                    self.standReportJoinFailedParam = {}
                end
                if roomDesc and roomDesc.worldtype then
                    mapMode = roomDesc.worldtype
                    self.standReportJoinFailedParam.standby2 = mapMode.."#"..mapState.."#"..mapOwn
                    if self.standReportJoinFailedParam.standby3  == nil then
                        local rpt = AllRoomManager:CalculateRoomDescReportTb(roomDesc) or {}
                        local roomID  = rpt.standby2
                        self.standReportJoinFailedParam.standby3 = roomID
                    end
                    if self.standReportBefJoinFailedParam.standby4  == nil then
                        local roomType = AllRoomManager:GetJoinRoomType(roomDesc)
                        self.standReportJoinFailedParam.standby4 = roomType
                    end

                    local appendTb = GetInst("ReportGameDataManager"):GetJoinFailedParam()
                    for key, value in pairs(appendTb) do
                        tb[key] = value
                    end
                    standReportEvent(tb.sceneid or "",tb.cardid or "",tb.compid or "","game_join_failed_1",tb)
                    GetInst("ReportGameDataManager"):ReSetJoinFailedParam()
                else
                    threadpool:work(function ()
                        ReqMapInfo({cid},function (maps)
                            if maps and #maps > 0 then
                                local map = maps[1];
                                mapMode = map.worldtype
                            end
                            self.standReportJoinFailedParam.standby2 = mapMode.."#"..mapState.."#"..mapOwn
                            if self.standReportJoinFailedParam.standby3  == nil then
                                local rpt = AllRoomManager:CalculateRoomDescReportTb(roomDesc) or {}
                                local roomID  = rpt.standby2
                                self.standReportJoinFailedParam.standby3 = roomID
                            end
                            if self.standReportBefJoinFailedParam.standby4  == nil then
                                local roomType = AllRoomManager:GetJoinRoomType(roomDesc)
                                self.standReportJoinFailedParam.standby4 = roomType
                            end

                            local appendTb = GetInst("ReportGameDataManager"):GetJoinFailedParam()
                            for key, value in pairs(appendTb) do
                                tb[key] = value
                            end
                            standReportEvent(tb.sceneid or "",tb.cardid or "",tb.compid or "","game_join_failed_1",tb)
                            GetInst("ReportGameDataManager"):ReSetJoinFailedParam()
                        end)
                    end)
                end
            end

            ReportGameDataManager.SetJoinFailedParamStandby3 = function(self,standby3)
                if self.standReportJoinFailedParam == nil then
                    self.standReportJoinFailedParam = {}
                end
                self.standReportJoinFailedParam.standby3 = standby3  ---standby3:房间id(有则上传，没有为空)
            end

            ReportGameDataManager.SetJoinFailedParamStandby4 = function(self,standby4)
                if self.standReportJoinFailedParam == nil then
                    self.standReportJoinFailedParam = {}
                end
                self.standReportJoinFailedParam.standby4 = standby4  ---standby4:房间类型1云服联机,2普通联机,3快速云服联机;（有则上传，没有为空）
            end

            ReportGameDataManager.SetJoinFailedParamByFriendUin = function(self,fuin)
                if self.standReportJoinFailedParam == nil then
                    self.standReportJoinFailedParam = {}
                end
                self.standReportJoinFailedParam.standby5 = fuin
            end

            ReportGameDataManager.SetJoinFailedParamByRoomNums = function(self,maxnum,num)
                if self.standReportJoinFailedParam == nil then
                    self.standReportJoinFailedParam = {}
                end
                local max = maxnum or 0
                local n = num or 0
                self.standReportJoinFailedParam.standby6 = max.."_"..n
            end

            ReportGameDataManager.ReSetJoinFailedParam = function(self)
                self.standReportJoinFailedParam = nil
            end

            ReportGameDataManager.GetJoinFailedParam = function(self)
                return self.standReportJoinFailedParam
            end

            ReportGameDataManager.GetMapState = function(self,mapid)
                local worldDesc = AccountManager:findWorldDesc(mapid)
                local state = "0"
                if worldDesc then
                    local open = worldDesc.open;
                    local isDownLoadMap = GetInst("lobbyDataManager"):IsDownLoadMapArchive(worldDesc)
                    if open == 0 then
                        state = "1"  --未上传
                    elseif open == 1 then
                        state = "2" --公开
                    else
                        state = "3" --私有
                    end
                    if isDownLoadMap then
                        state = "2" --公开
                    end
                end
                return state
            end

            --  2022-10-17 通过ReportGameDataManager的SetJoinFailedParam方法上报
            function reportGameJoinCallFailed1(errorcode, roomDesc)
                local tb = {}
                if type(standReportGameJoinParam) == "table" then
                    tb = table.clone(standReportGameJoinParam)
                end
                local cid = "0"
                if roomDesc then
                    if roomDesc.fromowid and roomDesc.fromowid > 0 then
                        cid = tostring(roomDesc.fromowid)
                    elseif roomDesc.owid and roomDesc.owid > 0 then
                        cid = tostring(roomDesc.owid)
                    elseif roomDesc.wid and roomDesc.wid > 0 then
                        cid = tostring(roomDesc.wid)
                    elseif roomDesc.map_type then
                        cid = roomDesc.map_type
                    end
                end
                tb.cid = cid
                tb.standby1 = errorcode
                GetInst("ReportGameDataManager"):SetJoinFailedParam(cid,roomDesc,tb)
            end

            -- 2022-10-17 csroomdesc判断是否是table
            RentPermitCtrl.EnterInviteRoom = function(self,room_uin,room_id,password,version,rtb)
                if room_id == nil or room_id == -1 then
                    return false
                end

                if room_id == -2 then
                    local idpw = safe_string2table(password)
                    if not idpw then
                        ShowGameTips(GetS(26014))
                    else
                        rtb.standby1 = 15
                        rtb.standby2 = idpw.rid
                        rtb.standby3 = 1
                        local csroomdesc = GetInst("RoomService"):ReqQueryQuickupCSRoom(idpw.rid, {rentDebug = idpw.rtdbg})
                        if csroomdesc then
                            if "table" == type(csroomdesc) and next(csroomdesc) then
                                csroomdesc.tryPwd = idpw.pw
                                csroomdesc.lcl_outTime = os.time() + 1
                                GetInst("RoomService"):EnterRoomByDesc(0, false, csroomdesc, {spData = {rtb=rtb, act_key = idpw.actk, rentDebug = idpw.rtdbg}})
                            else
                                ShowGameTips(GetS(csroomdesc), 3)
                            end
                        else
                            ShowGameTips(GetS(26014))
                        end
                        -- local ret, tips = GetInst("RoomService"):ReqJoinDesQuickupCSRoom(idpw.rid, {rtb=rtb, act_key = idpw.actk})
                        -- if not ret then
                        --  ShowGameTips(tips or GetS(26014))
                        -- end
                    end
                    return true
                end

                EnterShareCloudRoom(room_uin,room_id,password,version)
                return true
            end

            -- 2022-10-17 补充埋点逻辑
            if FriendTraceMgr then
                -- 2022-10-17 补充埋点参数
                FriendTraceMgr.ReqTrace = function(self,desUin, rptInfo)
                    if not (desUin) then
                        return
                    end

                    rptInfo = rptInfo or {}

                    local fridData = GetFriendDataByUin(desUin, true, true) or {}
                    local ingameExdata = fridData.ingame_exdata
                    if not (ingameExdata) then
                        return
                    end

                    local roomID = ingameExdata.roomID

                    local roomType = GetInst("RoomService"):GetRoomTypeByID(roomID)

                    -- 进入家园处理
                    local homeWorldId = gFunc_GetHomeGardenWorldIDByUin(desUin)
                    if homeWorldId == roomID then
                        -- 家园邀请
                        if rptInfo.bolReport then
                            GetInst("ReportGameDataManager"):SetBefJoinFailedParamStandby1(GetInst("ReportGameDataManager"):GetGameJoinBeforeStageDefine().goFriendHomeLandFail)
                        end
                        EnterFriendHomeMap(desUin)
                        return
                    end
                    if rptInfo.bolReport then
                        GetInst("ReportGameDataManager"):SetBefJoinFailedParamStandby1(GetInst("ReportGameDataManager"):GetGameJoinBeforeStageDefine().dealRoomInfoFail)
                        GetInst("ReportGameDataManager"):SetBefJoinFailedParamStandby4(roomType)
                        GetInst("ReportGameDataManager"):SetJoinFailedParamStandby4(roomType)
                    end
                    if roomType == AllRoomManager.RoomType.Normal then
                        self:__TraceNormal(desUin, ingameExdata, rptInfo)
                        return
                    elseif roomType == AllRoomManager.RoomType.CloudServer then
                        if rptInfo.bolReport then
                            GetInst("ReportGameDataManager"):SetBefJoinFailedParamStandby3(roomID)
                            GetInst("ReportGameDataManager"):SetJoinFailedParamStandby3(roomID)
                        end
                        local roomUin, rid = getRoomUinAndRoomID(roomID)
                        if roomUin and rid then
                            local roomlist, loginSuc, returnCode =
                            GetInst("RoomService"):ReqRoomListByUinSync(roomUin, rid, true, {connect_mode = "any"})
                            roomlist = roomlist or {}
                            if not loginSuc then
                                ShowGameTips(GetS(146), 3)
                                if rptInfo.bolReport then
                                    ReportBeforeJoinFailedCall(GetS(146))
                                end
                                return
                            end
                            local roomDesc = roomlist[1]
                            if roomDesc then
                                GetInst("ReportGameDataManager"):SetBefJoinFailedParamByRoomNums(roomDesc.player_max,roomDesc.player_count)
                                GetInst("ReportGameDataManager"):SetJoinFailedParamByRoomNums(roomDesc.player_max,roomDesc.player_count)
                                local check = self:__BeforeEnterRoom(roomDesc, roomType,rptInfo.bolReport)
                                if check then
                                    GetInst("RoomService"):EnterRoomByDesc(0, false, roomDesc)
                                end
                                return
                            else
                                if rptInfo.bolReport then
                                    if returnCode ~= nil then
                                        ReportBeforeJoinFailedCall("get CloudServer room info failed,result:"..returnCode)
                                    else
                                        ReportBeforeJoinFailedCall("get CloudServer room info failed")
                                    end
                                end
                            end
                        end
                    elseif roomType == AllRoomManager.RoomType.QuickupCloudServer then
                        if rptInfo.bolReport then
                            GetInst("ReportGameDataManager"):SetBefJoinFailedParamStandby3(roomID)
                            GetInst("ReportGameDataManager"):SetJoinFailedParamStandby3(roomID)
                        end
                        local csroomdesc = GetInst("RoomService"):ReqQueryQuickupCSRoom(roomID)
                        if csroomdesc  then
                            if "table" == type(csroomdesc) and  next(csroomdesc) then
                                GetInst("ReportGameDataManager"):SetBefJoinFailedParamByRoomNums(csroomdesc.room_cap,csroomdesc.player_num)
                                GetInst("ReportGameDataManager"):SetJoinFailedParamByRoomNums(csroomdesc.room_cap,csroomdesc.player_num)
                                csroomdesc.lcl_outTime = os.time() + 1
                                local check = self:__BeforeEnterRoom(csroomdesc, roomType,rptInfo.bolReport)
                                if check then
                                    GetInst("RoomService"):EnterRoomByDesc(index, false, csroomdesc)
                                end
                                return
                            else
                                ReportBeforeJoinFailedCall(GetS(csroomdesc))
                                ShowGameTips(GetS(csroomdesc), 3)
                                return
                            end
                        else
                            if rptInfo.bolReport then
                                if csroomdesc == nil then
                                    ReportBeforeJoinFailedCall("get QuickupCloudServer room info failed")
                                else
                                    ReportBeforeJoinFailedCall(GetS(csroomdesc))
                                end
                            end
                            if csroomdesc ~= nil then
                                ShowGameTips(GetS(csroomdesc), 3)
                                return
                            end
                        end
                    end
                    ShowGameTips(GetS(9319), 3) --你的好友正在单机挖穿地球
                end

                -- 2022-10-17  补充埋点参数
                FriendTraceMgr.__DoEnterRoom = function(self,roomID, rptInfo)
                    local roomlist, loginSuc, returnCode =
                    GetInst("RoomService"):ReqRoomListByUinSync(tonumber(roomID), -1, true, {connect_mode = "any"})
                    roomlist = roomlist or {}
                    if not loginSuc then
                        ShowGameTips(GetS(146), 3)
                    end
                    local roomDesc = roomlist[1]
                    if roomDesc then
                        GetInst("ReportGameDataManager"):SetBefJoinFailedParamByRoomNums(roomDesc.maxplayers,roomDesc.nplayers)
                        GetInst("ReportGameDataManager"):SetJoinFailedParamByRoomNums(roomDesc.maxplayers,roomDesc.nplayers)
                        if rptInfo then
                            InsertStandReportGameJoinParamArg(rptInfo)
                            GetInst("ReportGameDataManager"):NewGameJoinParam(rptInfo.sceneid,rptInfo.cardid,rptInfo.compid)
                            if rptInfo.bolReport then
                                local rpt = AllRoomManager:CalculateRoomDescReportTb(roomDesc) or {}
                                if rpt and rpt.standby2 then
                                    GetInst("ReportGameDataManager"):SetBefJoinFailedParamStandby3(rpt.standby2)
                                    GetInst("ReportGameDataManager"):SetJoinFailedParamStandby3(rpt.standby2)
                                else
                                    GetInst("ReportGameDataManager"):SetBefJoinFailedParamStandby3(roomID)
                                    GetInst("ReportGameDataManager"):SetJoinFailedParamStandby3(roomID)
                                end
                            end
                        end
                        local check = self:__BeforeEnterRoom(roomDesc, AllRoomManager.RoomType.Normal,rptInfo.bolReport)
                        if check then
                            GetInst("RoomService"):EnterRoomByDesc(0, false, roomDesc)
                        end
                    else
                        ShowGameTips(GetS(26008), 3)
                        if rptInfo.bolReport then
                            GetInst("ReportGameDataManager"):SetBefJoinFailedParamStandby3(roomID)
                            GetInst("ReportGameDataManager"):SetJoinFailedParamStandby3(roomID)
                            if returnCode ~= nil then
                                ReportBeforeJoinFailedCall("enter normal online room:"..returnCode)
                            else
                                ReportBeforeJoinFailedCall("enter normal online room:"..GetS(26008))
                            end
                        end
                    end
                end

                -- 2022-10-17 csroomdesc判断是否是table
                FriendTraceMgr.__GetRoomDescByID = function(self,roomID)
                    local roomType = GetInst("RoomService"):GetRoomTypeByID(roomID)
                    local roomDesc = nil

                    if roomType == AllRoomManager.RoomType.Normal then
                        local roomlist = GetInst("RoomService"):ReqRoomListByUinSync(tonumber(roomID), -1, true, {connect_mode = "any"}) or {}
                        roomDesc = roomlist[1]
                    elseif roomType == AllRoomManager.RoomType.CloudServer then
                        local roomUin, rid = getRoomUinAndRoomID(roomID)
                        if roomUin and rid then
                            local roomlist = GetInst("RoomService"):ReqRoomListByUinSync(roomUin, rid, true, {connect_mode = "any"}) or {}
                            roomDesc = roomlist[1]
                        end
                    elseif roomType == AllRoomManager.RoomType.QuickupCloudServer then
                        roomDesc = GetInst("RoomService"):ReqQueryQuickupCSRoom(roomID)
                        if roomDesc and "table" == type(roomDesc) and next(roomDesc) then
                            roomDesc.lcl_outTime = os.time() + 4
                        end
                    end

                    return roomDesc
                end

                -- 2022-10-17 加入房间之前过滤判断不能进房情况
                FriendTraceMgr.__BeforeEnterRoom = function(self,roomDesc, roomType,bolReport)
                    local filterCondition = {}
                    filterCondition.ver = true
                    filterCondition.freePlayer = true
                    filterCondition.password = true
                    filterCondition.locked = true
                    filterCondition.connect_mode = false
                    filterCondition.public_type = false
                    local check, failedCode =  AllRoomManager:CheckRoomDescCondition(roomDesc, roomType, filterCondition)
                    if not check then
                        local tips
                        if failedCode == 20 then
                            tips = GetS(572)
                        elseif failedCode == 10 then
                            tips = GetS(566)
                        elseif failedCode == 11 then
                            tips = GetS(567)
                        elseif failedCode == 14 then
                            tips = GetS(8033)
                        end
                        ShowGameTips(tips, 3)
                        if bolReport then
                            ReportBeforeJoinFailedCall(tips)
                        end
                    end
                    return check
                end
            end

            -- 2022-10-17 SetJoinFailedParamByFriendUin 设置好友uin
            function MyFriendEntryTemplateTrackBtn_OnClick()
                if _G.using_friend_tracking then
                    return
                end
                _G.using_friend_tracking = true
                GetInst("ReportGameDataManager"):ReSetBefJoinFailedParam(true)
                local loopTag = "TemplateTrackBtn_OnClick "

                local parentFrame = this:GetParentFrame()
                local fridData, _ = FriendMgr:GetDataWithID(FriendMgr.DlgType_MyFriends, FriendMgr:GetItemStringID(parentFrame))

                --上报
                local friendUin = fridData and fridData.uin or nil
                statisticsGameEventNew(6002, friendUin or 0);

                ReportTraceidMgr:setTraceid("friend#follow")
                local bolSingleButton = 0
                if fridData.ingame_exdata and not fridData.ingame_exdata.canFriendTrace and fridData.ingame_exdata.canConfirmTrace then
                    bolSingleButton = 1
                end
                GetInst("ReportGameDataManager"):SetBefJoinFailedParamStandby5(friendUin)
                GetInst("ReportGameDataManager"):SetJoinFailedParamByFriendUin(friendUin)
                if ClientCurGame:isInGame() then    --已经在存档内了
                    ShowGameTips(GetS(1204), 3);
                    reportData = {
                        standby1 = 2,  -- 失败
                        standby2 = ErrorCode.FAILED,
                        standby3 = friendUin,
                        standby4 = FriendMgr:BolInMapPlay()
                    }
                    if bolSingleButton == 1 then
                        FriendMgr:ReportFriendStandData("FRIEND_FRIEND_CONTENT", "FollowRequestButton", "click", reportData)
                    else
                        FriendMgr:ReportFriendStandData("FRIEND_FRIEND_CONTENT", "Card", "click", reportData)
                    end
                    _G.using_friend_tracking = nil
                    return;
                end

                if fridData then
                    if bolSingleButton == 1 then
                        InsertStandReportGameJoinParamArg({sceneid="31",cardid='FRIEND_FRIEND_CONTENT',compid="FollowRequestButton",standby3 = friendUin,trace_id = "friend#follow"})
                        GetInst("ReportGameDataManager"):NewGameJoinParam("31","FRIEND_FRIEND_CONTENT","FollowRequestButton","friend#follow")
                    else
                        InsertStandReportGameJoinParamArg({sceneid="31",cardid='FRIEND_FRIEND_CONTENT',compid="Card",standby3 = friendUin,trace_id = "friend#follow"})
                        GetInst("ReportGameDataManager"):NewGameJoinParam("31","FRIEND_FRIEND_CONTENT","Card","friend#follow")
                    end
                    local content = string.format(GetS(1112924), ReplaceFilterString(fridData.name), fridData.ingame_exdata and fridData.ingame_exdata.roomname or "")
                    local cb = function ()
                        print("OK:");
                        local userdata = {btnUI = this:GetName()};
                        IsTrackBtnClick = true;
                        local code = FriendChat_ReqFriendRoomByUin(fridData.uin, userdata, true,true);
                        local reportData = {}
                        if code and code == ErrorCode.OK  then
                            reportData.standby1 = 1
                        else
                            reportData.standby1 = 2
                        end

                        reportData.standby2 = code or ErrorCode.FAILED
                        reportData.standby3 = friendUin
                        reportData.standby4 = FriendMgr:BolInMapPlay()
                        if bolSingleButton == 1 then
                            FriendMgr:ReportFriendStandData("FRIEND_FRIEND_CONTENT", "FollowRequestButton", "click", reportData)
                        else
                            FriendMgr:ReportFriendStandData("FRIEND_FRIEND_CONTENT", "Card", "click", reportData)
                        end
                    end

                    local cbCancel = function ()
                        GetInst("ReportGameDataManager"):SetBefJoinFailedParamStandby1(GetInst("ReportGameDataManager"):GetGameJoinBeforeStageDefine().popupCancel)
                        ReportBeforeJoinFailedCall()
                    end

                    if FriendChat_NewTraceLogic_0817() then
                        cb()
                    else
                        FriendMgr:CustomMessageBox(content, GetS(3018), GetS(1203), cbCancel, cb)
                    end
                end
                _G.using_friend_tracking = nil
            end

            --  2022-10-17 关闭好友界面using_friend_tracking置空
            function FriendFrameCloseBtn_OnClick()
                _G.using_friend_tracking = nil
                FriendMgr:ReportFriendStandData("FRIEND_TOP", "Close", "click")
                getglobal("FriendFrame"):Hide();
            end


            -- 2022-10-17 获得准确的code信息
            local RoomService = ClassList["RoomService"] or {};
            RoomService.ReqRoomListByUinSync = function(self,uin, rtype, showLoadLoop, spData)
                local roomList = {}
                local errorTip = nil
                rtype = rtype or 0
                spData = spData or {}
                local loginSuc = false
                local returnCode

                if showLoadLoop == nil then showLoadLoop = true end
                local loopTag = "file:RoomService - func:ReqRoomListByUinSync " .. gen_gid()
                if showLoadLoop then ShowLoadLoopFrame(true, loopTag) end
                repeat
                    --登录房间服务器
                    local genkey, gid = GetInst("UIEvtHook"):GenKeyWithPrefix(self.EVT_GEN_PREFIX_SYNC_THREAD_NOTIFY)
                    self:InsertSyncWaitingStatus(true, genkey)
                    if not AccountManager:loginRoomServer(false, 0, genkey) then
                        break
                    end
                    loginSuc = true

                    if self:FindSyncWaitingStatus(genkey) then
                        local code, _ret = threadpool:wait(gid, 2);
                        if code ~= ErrorCode.OK or _ret ~= genkey then
                            break
                        end
                    end

                    local filterConnectMode = spData.connect_mode or 0
                    --请求普通房间数据
                    if rtype <= 0 then
                        genkey, gid = GetInst("UIEvtHook"):GenKeyWithPrefix(self.EVT_GEN_PREFIX_SYNC_THREAD_NOTIFY)
                        self:InsertSyncWaitingStatus(true, genkey)
                        if AccountManager:requestRoomListByUin(uin, nil, genkey) then
                            if self:FindSyncWaitingStatus(genkey) then
                                local code, _ret, result = threadpool:wait(gid, spData.outtime or 5);
                                if code == ErrorCode.OK and _ret == genkey then
                                    returnCode = result
                                    local num = AccountManager:getNumRoom()
                                    for i = 1, num do
                                        local roomDesc = AccountManager:getIthRoom(i-1)
                                        if roomDesc and (filterConnectMode == "any" or roomDesc.connect_mode == filterConnectMode) then
                                            table.insert(roomList, AllRoomManager:TransNormalRoomToLuaTb(roomDesc))
                                        end
                                    end
                                end
                            end
                        end
                    end

                    if rtype >= 0 then
                        --请求云服房间数据
                        uin = getLongUin(uin);  --海外加10亿
                        if ns_version and ns_version.proxy_url then
                            local url = ns_version.proxy_url .. '/miniw/rent_server?act=getUinRoomList&search=1&op_uin='..uin.."&" .. http_getS1Map();
                            local ret = self:SyncRpc(url, spData.outtime or nil, false)
                            if ret and ret.ret == 0 and ret.data then
                                if ret.code then
                                    returnCode = ret.code
                                end
                                for _, data in ipairs(ret.data) do
                                    if rtype == 0 or uin .. "_" .. rtype == data._k_ then
                                        table.insert(roomList, data)
                                    end
                                end
                            end
                        end
                    end
                until true

                if showLoadLoop then HideLoadLoopFrameByTag(loopTag) end

                return roomList, loginSuc, returnCode
            end

            RoomService.ReqQuickUpPlayerRoomInfo = function(self,uin, spData)
                spData = spData or {}

                if not uin then
                    return nil
                end

                local url = self:GetQuickupRentApiBaseUrl("api/v1/player/queryPlayerRoomInfo")
                spData.outtime = spData.outtime or 15

                local postStr = "desUin=" ..  uin

                local retStr = self:SyncRpcPost(url, postStr, spData.outtime, spData.showLoadLoop, spData.loadLoopType or 2)
                print("ReqQuickUpPlayerRoomInfo retStr " .. tostring(retStr))
                repeat
                    if not retStr then
                        break
                    end

                    local ok, temp = pcall(JSON.decode, JSON, retStr);
                    if not (ok and temp.code == 0 and type(temp) == 'table' and type(temp.data) == 'table') then
                        break
                    end

                    local roomDesc = self:ReqQueryQuickupCSRoom(temp.data.roomId, spData)
                    if not roomDesc or "table" ~= type(csroomdesc)  then
                        break
                    end

                    if "table" == type(temp.data.Extra) and next(temp.data.Extra) then
                        roomDesc.Extra = temp.data.Extra
                    end

                    return roomDesc
                until true

                return nil
            end

            RoomService.SyncQueryRoomDescByRoomID = function(self,roomID)
                if not roomID then
                    return nil, GetS(9679)
                end

                local roomType = GetInst("RoomService"):GetRoomTypeByID(roomID)
                local roomDesc = nil
                local errorTips = GetS(9679)
                if roomType == AllRoomManager.RoomType.Normal then
                    local roomlist, loginSuc = GetInst("RoomService"):ReqRoomListByUinSync(tonumber(roomID), -1, true, {connect_mode = "any"})
                    roomlist = roomlist or {}
                    if not loginSuc then
                        errorTips = GetS(146)
                    else
                        roomDesc = roomlist[1];
                    end
                elseif roomType == AllRoomManager.RoomType.CloudServer then
                    local roomUin, rid = getRoomUinAndRoomID(tostring(roomID))
                    if roomUin and rid then
                        local roomlist, loginSuc = GetInst("RoomService"):ReqRoomListByUinSync(roomUin, rid, true, {connect_mode = "any"})
                        roomlist = roomlist or {}
                        if not loginSuc then
                            errorTips = GetS(146)
                        else
                            roomDesc = roomlist[1];
                        end
                    end
                elseif roomType == AllRoomManager.RoomType.QuickupCloudServer then
                    local csroomdesc = GetInst("RoomService"):ReqQueryQuickupCSRoom(roomID)
                    if csroomdesc and "table" == type(csroomdesc) and next(csroomdesc)  then
                        csroomdesc.lcl_outTime = os.time() + 1
                        roomDesc = csroomdesc
                    end
                end

                return roomDesc, errorTips
            end

        end
    },
    {
        ver_list = "1.20.0",
        install = function()
            --  2022-10-17 csroomdesc判断是否是table
            local MapRoomCtrl = ClassList["MapRoomCtrl"] or {};
            MapRoomCtrl.ItemEnterRoomBtnClicked = function(self)
                local teamupSer = GetInst("TeamupService")
                if teamupSer and teamupSer:IsInTeam(AccountManager:getUin()) then
                    ShowGameTips(GetS(26045))
                    return
                end
                if self:IsClickSleep("ItemEnterRoomBtnClicked") then
                    ShowGameTips(GetS(31028))
                    return
                end
                self:TickClickInterval("ItemEnterRoomBtnClicked")

                local index = this:GetClientUserData(0)
                local cacheInfo = self.model:GetRoomCacheByIndex(index)
                if not cacheInfo then return end

                local AppendReportInfo = self.model:GetIncomingParam().AppendReportInfo
                local alg_inter = AppendReportInfo and AppendReportInfo.alg_inter or "";

                if cacheInfo.type == AllRoomManager.RoomType.QuickupCloudServer then
                    local rpt = cacheInfo.reportv or {}
                    self:StandReport(self.define.ReportMain,"ROOM_LIST",rpt.oID,"click", rpt)
                    local joinInsertTb = {
                        sceneid = self.define.ReportMain,
                        cardid = "ROOM_LIST",
                        compid = rpt.oID,
                        trace_id = self:GetAppendTraceID(),
                        alg_inter = alg_inter,
                        requestid = self:GetRequestID(),
                        slot = AppendReportInfo and AppendReportInfo.slot or nil,
                    }
                    for key, value in pairs(rpt) do
                        joinInsertTb[key] = value
                    end
                    InsertStandReportGameJoinParamArg(joinInsertTb)
                    GetInst("ReportGameDataManager"):NewGameJoinParam(self.define.ReportMain,"ROOM_LIST",rpt.oID,self:GetAppendTraceID(),alg_inter,self:GetRequestID())
                    if AppendReportInfo and AppendReportInfo.slot then
                        GetInst("ReportGameDataManager"):SetJoinSlot(AppendReportInfo.slot)
                    end
                    local mapInfo = self.model:GetIncomingParam().mapInfo
                    if not cacheInfo.roomDesc then
                        local spData = {
                            forceQuickUpCSRoom=true,
                            scene = self.define.ReportMain, --场景id 大厅18 地图详情48 地图房间列表48/1004 活动50 联机失败后兜底51
                            appid = 1000, --业务id  迷你世界1000
                        }
                        local ret, tips = GetInst("RoomService"):ReqJoinQuickupCSRoomByMap(mapInfo.owid, spData)
                        if not ret then
                            ShowGameTips(tips or GetS(35888))
                        end
                    else
                        local csroomdesc = GetInst("RoomService"):ReqQueryQuickupCSRoom(cacheInfo.roomDesc.roomid)
                        if csroomdesc then
                            if "table" == type(csroomdesc) and next(csroomdesc) then
                                csroomdesc.lcl_outTime = os.time() + 1
                                GetInst("RoomService"):EnterRoomByDesc(index, false, csroomdesc)
                            else
                                ShowGameTips(GetS(csroomdesc), 3)
                            end
                        else
                            ShowGameTips(GetS(35888))
                        end
                        -- local ret, tips = GetInst("RoomService"):ReqJoinDesQuickupCSRoom(cacheInfo.roomDesc.roomid)
                        -- if not ret then
                        --  ShowGameTips(tips or GetS(35888))
                        -- end
                    end
                else
                    if cacheInfo.roomDesc then
                        local rpt = cacheInfo.reportv or {}
                        self:StandReport(self.define.ReportMain,"ROOM_LIST","JoinButton","click", rpt)
                        InsertStandReportGameJoinParamArg(rpt)
                        InsertStandReportGameJoinParamArg({
                            sceneid = self.define.ReportMain,
                            cardid = "ROOM_LIST",
                            compid = "JoinButton",
                            trace_id = self:GetAppendTraceID(),
                            alg_inter = alg_inter,
                            requestid = self:GetRequestID(),
                            slot = AppendReportInfo and AppendReportInfo.slot or nil,
                        })
                        GetInst("ReportGameDataManager"):NewGameJoinParam(self.define.ReportMain,"ROOM_LIST","JoinButton",self:GetAppendTraceID(),alg_inter,self:GetRequestID())
                        if AppendReportInfo and AppendReportInfo.slot then
                            GetInst("ReportGameDataManager"):SetJoinSlot(AppendReportInfo.slot)
                        end
                        GetInst("RoomService"):EnterRoomByDesc(index, false, cacheInfo.roomDesc)
                    end
                end
            end
        end
    },
    {
        -- by huangxin：修改自定义头像作者的地图打开新版本的地图详情显示不全问题
        ver_list =  "1.19.0 1.19.1 1.19.5 1.20.0",
        install = function()
            local ArchiveInfoDetailView = ClassList["ArchiveInfoDetailView"] or {}
            ArchiveInfoDetailView.SetMapAuthor = function(self,archiveWorldDesc)
                local name = ReplaceFilterString(archiveWorldDesc.realNickName or "")
                name = GetInst('GameHallToolInterface'):CutStringByWord(name, 14)
                G_VipNamePreFixEntrency(self.widgets.authorName, archiveWorldDesc.realowneruin, name, self.widgets.authorName:getColor())
                if t_exhibition:CheckOtherProfileBlackStat(archiveWorldDesc.realowneruin) then
                    self.widgets.headIcon:setURL('ui/snap_jubao.png')
                else
                    if AccountManager:getUin() == archiveWorldDesc.realowneruin then
                        HeadCtrl:CurrentIconHead(self.widgets.headIcon);
                        self.widgets.headFrame:setURL(HeadFrameCtrl:getTexPath(archiveWorldDesc.ownerIconFrame))
                    else
                        if archiveWorldDesc.realAVT ~= nil and archiveWorldDesc.realAVT ~= "" then
                            local avt = JSON:decode(archiveWorldDesc.realAVT)
                            HeadCtrl:SetPlayerHeadTex(self.widgets.headIcon, 3, avt)
                        else
                            t_exhibition:GetPlayerProfileByUin(archiveWorldDesc.realowneruin, function(ret)
                                if ret and ret.ret then
                                    if ret.ret == 1 then return end
                                    -- if ret.ret == 404 then end -- 新用户

                                    t_exhibition.setRetToPoolByUin(ret, archiveWorldDesc.realowneruin)
                                    local profile = ret.profile
                                    if profile and profile.RoleInfo then
                                        local playerInfo = {
                                            NickName = profile.RoleInfo and profile.RoleInfo.NickName or '',
                                            SkinID = profile.RoleInfo and profile.RoleInfo.SkinID or 0,
                                            Model = profile.RoleInfo and profile.RoleInfo.Model or 0,
                                        }
                                        if playerInfo.Model <= 0 then playerInfo.Model = 2 end
                                        HeadCtrl:SetPlayerHeadIcoByUin(self.widgets.headIcon, archiveWorldDesc.realowneruin, playerInfo.Model, playerInfo.SkinID);
                                    end
                                end
                            end, nil)
                        end
                        self.widgets.headFrame:setURL(HeadFrameCtrl:getTexPath(archiveWorldDesc.ownerIconFrame))
                    end
                end
                local rolemodel = archiveWorldDesc.realModel;
                rolemodel = (rolemodel < 0) and (rolemodel + 256) or rolemodel--C++层有int转char的溢出问题，不好改C++，暂时就这样+256处理了
                if rolemodel then
                    MapRewardClass:SetHeadIcon("ui/roleicons/"..rolemodel..".png");
                end

                -- 作品数
                self.widgets.authorMapNums:setText(string.format("%s:%s", GetS(25224), ''))
                GetMapAuthorProducts(archiveWorldDesc.realowneruin, function(msg)
                    local ret = msg and msg.ret or -1
                    if ret == 0 then
                        self.widgets.authorMapNums:setText(string.format("%s:%s", GetS(25224),#msg.list))
                    elseif ret > 0 then
                        -- 1 or 2 参数错误
                    end
                end)

            end


        end
    },
    {
        -- hanhuihua修复 1邀请信息弹框层级在是否进入房间弹框上方，导致无法点击 2 接受房间邀请，提示云服已关闭，到其他房间继续探索
        ver_list = "1.20.0",
        install = function()
            local common_inviteCtrl = ClassList["common_inviteCtrl"] or {};
            common_inviteCtrl.DoRoomInvite = function(self,msg)
                threadpool:work(function ()
                    if ClientCurGame:isInGame() then
                        GetInst("MiniUIManager"):CloseUI("common_inviteAutoGen")
                        local content = ""
                        if IsInHomeLandMap() then
                            content = GetS(9200224)
                        else
                            content = GetS(190008)
                        end
                        MessageBox(5, content, function (btn)
                            if btn == "left" then
                                EnterMainMenuInfo.RoomInvite = {}
                                EnterMainMenuInfo.RoomInvite.msg = msg
                                EnterMainMenuInfo.RoomInvite.func = function ()
                                    self:DoNextInfo(msg)
                                end
                                HideUI2GoMainMenu()
                                ClientMgr:gotoGame("MainMenuStage")
                                return true
                            end
                        end)
                    else
                        CommonInviteFrame_RoomInvite(msg)
                        self:DoNextInfo(msg)
                    end
                end)
            end
            common_inviteCtrl.DoHomelandInvite = function(self,msg)
                threadpool:work(function ()
                    local data = msg.data
                    if data then
                        local worldID   = data.WorldID or 1
                        local pw        = data.Password
                        local uin       = data.RoomUin
                        local homeWorldId = gFunc_GetHomeGardenWorldIDByUin(uin)
                        if homeWorldId == worldID then
                            if ClientCurGame:isInGame() then
                                GetInst("MiniUIManager"):CloseUI("common_inviteAutoGen")
                                local content = ""
                                if IsInHomeLandMap() then
                                    content = GetS(9200225)
                                else
                                    content = GetS(9200226)
                                end
                                MessageBox(5, content, function (btn)
                                    if btn == "left" then
                                        EnterMainMenuInfo.HomelandInvite = {}
                                        EnterMainMenuInfo.HomelandInvite.uin = uin
                                        EnterMainMenuInfo.HomelandInvite.pw = pw
                                        EnterMainMenuInfo.HomelandInvite.func = function ()
                                            self:DoNextInfo(msg)
                                        end
                                        HideUI2GoMainMenu()
                                        ClientMgr:gotoGame("MainMenuStage")
                                        return true
                                    end
                                end)
                            else
                                EnterFriendHomeMap(uin, pw)
                                self:DoNextInfo(msg)
                            end
                        end
                    end
                end)
            end
        end
    },
    {
        ver_list = "1.19.0 1.19.1 1.19.5 1.20.0 1.20.3 1.20.5 1.20.6",
        install = function()
            --by rice
            --  2022-10-20 细化returncode的错误原因
            local RoomService = ClassList["RoomService"] or {};

            RoomService.OnEvent = function(self)
                local ge = GameEventQue:getCurEvent()
                local evt = arg1

                if evt == "GIE_UPDATE_ROOM" then
                    if not GetInst("UIEvtHook"):EventHook(evt, ge, self.EVT_GEN_PREFIX_SYNC_THREAD_NOTIFY) then
                        local _, gid = GetInst("UIEvtHook"):ParsePrefixGenKey(ge.genid)
                        self:InsertSyncWaitingStatus(false, ge.genid)
                        local result0 = ge.body.room.result;
                        local failreason = ge.body.room.failreason;
                        threadpool:notify(gid, ErrorCode.OK, ge.genid, result0, failreason);
                    end
                elseif evt == "GIE_RSCONNECT_RESULT" then
                    local result = ge.body.roomseverdata.result;
                    if not GetInst("UIEvtHook"):EventHook(evt, ge, self.EVT_GEN_PREFIX_LOGIN) then
                        self:RespLoginRoomServer(result, ge.genid)

                    elseif not GetInst("UIEvtHook"):EventHook(evt, ge, self.EVT_GEN_PREFIX_JOIN) then
                        local detailreason = ge.body.rentroomdata.detailreason
                        self:LinkNormalRoomResult(result, detailreason, ge.genid)

                    elseif not GetInst("UIEvtHook"):EventHook(evt, ge, self.EVT_GEN_PREFIX_SYNC_THREAD_NOTIFY) then
                        local detailreason = ge.body.rentroomdata.detailreason
                        local _, gid = GetInst("UIEvtHook"):ParsePrefixGenKey(ge.genid)
                        self:InsertSyncWaitingStatus(false, ge.genid)
                        threadpool:notify(gid, ErrorCode.OK, ge.genid, result, detailreason);

                    elseif not GetInst("UIEvtHook"):EventHook(evt, ge, 'LobbyFrameRoomBtn_OnClick_keepRoomFrameData') then
                        self:HandleCommonGieRSConnectEvt(true)
                    elseif not GetInst("UIEvtHook"):EventHook(evt, ge, self.EVT_GEN_PREFIX_JUMP_ROOM_WITH_PARAM) then
                        local _, gid = GetInst("UIEvtHook"):ParsePrefixGenKey(ge.genid)
                        self:HandleCommonGieRSConnectEvt(false, GetInst("GameHallCacheManager"):GetData(self.EVT_GEN_PREFIX_JUMP_ROOM_WITH_PARAM, gid))
                    elseif not GetInst("UIEvtHook"):EventHook(evt, ge) then --以前的lobbyframe里面的全局不带genkey的响应
                        self:HandleCommonGieRSConnectEvt()
                    end
                elseif evt == "GIE_RSCONNECT_RENT_RESULT" then
                    local result = ge.body.rentroomdata.result
                    local detailreason = ge.body.rentroomdata.detailreason
                    if not GetInst("UIEvtHook"):EventHook(evt, ge, self.EVT_GEN_PREFIX_JOIN) then
                        self:LinkCloudRoomResult(result, detailreason, ge.genid)
                    elseif not GetInst("UIEvtHook"):EventHook(evt, ge, self.EVT_GEN_PREFIX_SYNC_THREAD_NOTIFY) then
                        local _, gid = GetInst("UIEvtHook"):ParsePrefixGenKey(ge.genid)
                        self:InsertSyncWaitingStatus(false, ge.genid)
                        threadpool:notify(gid, ErrorCode.OK, ge.genid, result, detailreason);
                    end
                end
            end

            RoomService.ReqRoomListByUinSync = function(self,uin, rtype, showLoadLoop, spData)
                local roomList = {}
                local errorTip = nil
                rtype = rtype or 0
                spData = spData or {}
                local loginSuc = false
                local returnCode

                if showLoadLoop == nil then showLoadLoop = true end
                local loopTag = "file:RoomService - func:ReqRoomListByUinSync " .. gen_gid()
                if showLoadLoop then ShowLoadLoopFrame(true, loopTag) end
                repeat
                    --登录房间服务器
                    local genkey, gid = GetInst("UIEvtHook"):GenKeyWithPrefix(self.EVT_GEN_PREFIX_SYNC_THREAD_NOTIFY)
                    self:InsertSyncWaitingStatus(true, genkey)
                    if not AccountManager:loginRoomServer(false, 0, genkey) then
                        returnCode = GetS(146)
                        break
                    end
                    loginSuc = true

                    if self:FindSyncWaitingStatus(genkey) then
                        local code, _ret = threadpool:wait(gid, 2);
                        if code ~= ErrorCode.OK or _ret ~= genkey then
                            returnCode = "request room info failed,rtype:"..rtype
                            break
                        end
                    end

                    local filterConnectMode = spData.connect_mode or 0
                    --请求普通房间数据
                    if rtype <= 0 then
                        genkey, gid = GetInst("UIEvtHook"):GenKeyWithPrefix(self.EVT_GEN_PREFIX_SYNC_THREAD_NOTIFY)
                        self:InsertSyncWaitingStatus(true, genkey)
                        if AccountManager:requestRoomListByUin(uin, nil, genkey) then
                            if self:FindSyncWaitingStatus(genkey) then
                                local code, _ret, result,failreason = threadpool:wait(gid, spData.outtime or 5);
                                if code == ErrorCode.OK and _ret == genkey then
                                    returnCode = failreason
                                    local num = AccountManager:getNumRoom()
                                    for i = 1, num do
                                        local roomDesc = AccountManager:getIthRoom(i-1)
                                        if roomDesc and (filterConnectMode == "any" or roomDesc.connect_mode == filterConnectMode) then
                                            table.insert(roomList, AllRoomManager:TransNormalRoomToLuaTb(roomDesc))
                                        end
                                    end
                                end
                            end
                        end
                    end

                    if rtype >= 0 then
                        --请求云服房间数据
                        uin = getLongUin(uin);  --海外加10亿
                        if ns_version and ns_version.proxy_url then
                            local url = ns_version.proxy_url .. '/miniw/rent_server?act=getUinRoomList&search=1&op_uin='..uin.."&" .. http_getS1Map();
                            local ret = self:SyncRpc(url, spData.outtime or nil, false)
                            if ret and ret.ret == 0 and ret.data then
                                if ret.code then
                                    returnCode = ret.code
                                end
                                for _, data in ipairs(ret.data) do
                                    if rtype == 0 or uin .. "_" .. rtype == data._k_ then
                                        table.insert(roomList, data)
                                    end
                                end
                            end
                        end
                    end
                until true

                if showLoadLoop then HideLoadLoopFrameByTag(loopTag) end

                return roomList, loginSuc, returnCode
            end

        end
    },
    {
        -- fix by chenwei 修复地图详情评论导致崩溃的问题
        ver_list = "1.20.0 1.20.3 1.20.10",
        install = function()
            local CommentSystemInterface = ClassList["CommentSystemInterface"] or {};
            --不显示回复
            function CommentSystemInterface:HideReponse()
                local reponseText = self.curInput:getChildByPath("n20.m2_textName");
                text = GetS(1001011);

                if not tolua.isnull(reponseText) then
                    reponseText:setText(text);
                end

                local inputCom = self.curInput:getChild("n20");
                if not tolua.isnull(inputCom) then
                    inputCom:setVisible(true);
                end

                self.inputParam.name = "";
                self.inputParam.text = "";
                self.inputParam.uin = 0;
                self.inputParam.isSecond = true;
            end

            function CommentSystemInterface:initCommentInput(node, addCommentCallBack, textChangeCallBack)
                local inputCon = node:getController("inputTips");
                local input = node:getChildByPath("n20.m2_inputtext");
                local submitBt = node:getChildByPath("n20.m2_submit");
                local cancel = node:getChildByPath("n20.m2_closeinput");
                local textName = node:getChildByPath("n20.m2_textName");
                local textCtrl = node:getChild("n20"):getController("m1_type");
                local inputCom = node:getChild("n20");
                local choiceTglBtn = node:getChildByPath("n20.n5");
                --local display = node:getChild("inputDisplay");
                --local resetBt = node:getChildByPath("reponse.cancelReply");
                GetInst("MiniUIEventDispatcher"):addEventListener(input, UIEventType_GainFocus, function(obj, context)
                    inputCon:setSelectedIndex(CommentSystemInterface_TipsMode.edit);
                    self.shouldReport = true;
                end)
                GetInst("MiniUIEventDispatcher"):addEventListener(input, UIEventType_LostFocus, function(obj, context)
                    local input = self.curInput:getChildByPath("n20.m2_inputtext");
                    local text = input:getText();
                    local mode = node:getCustomData();
                    if text ~= "" then
                        self:LostFocuscallback(text);
                        -- else
                        --     inputCon:setSelectedIndex(0);
                    else
                        self:ResetInput();
                    end
                end)

                GetInst("MiniUIEventDispatcher"):addEventListener(submitBt, UIEventType_Click, function(obj, context)
                    if Check_Safety_Platform_Switch("map_comment") then
                        return
                    end

                    local input = self.curInput:getChildByPath("n20.m2_inputtext");
                    local text = string_trim(input:getText());
                    local mode = self:GetCurMode();
                    -- local dataTable, displayText = self:ParseInformText(text, needText);
                    local needChecktext = ""
                    if string.find(text,"@") ~= nil then
                        local  dataTable, displayText = self:ParseInformText2(text, true);
                        needChecktext = displayText
                    else
                        needChecktext = text
                    end
                    if DefMgr:checkFilterString(needChecktext) then
                        ShowGameTipsWithoutFilter(GetS(9200100), 3)
                        self:ClearInput()
                        return
                    end

                    if addCommentCallBack then

                        local callback = function (result, isreSet)
                            if isreSet then

                            else
                                if not tolua.isnull(self.curInput) then
                                    self:HideReponse();
                                    self:SubmitResetInput();
                                end
                                if not tolua.isnull(context) then
                                    --context:stopPropagation();
                                end
                            end
                        end

                        if mode == CommentSystemInterface_InputMode.first then
                            local choiceSelected =  choiceTglBtn:isSelected()
                            local needPushConnoisseur = choiceSelected  -- 是否需推荐给鉴赏家
                            local isTheAuthor = false
                            if choiceSelected then
                                if ArchiveWorldDesc then
                                    if  AccountManager:getUin() == ArchiveWorldDesc.realowneruin then
                                        needPushConnoisseur = false
                                        isTheAuthor = true
                                    end
                                end
                            end
                            local standby = isTheAuthor and 2 or 1
                            standReportEvent(self:GetSceneid(),"MINI_MAP_NEW_Publish", "Publish", "click", {cid=tostring(CommentSystemInterfacePageReport.worldid), standby1=tostring(standby)})
                            addCommentCallBack(text, mode,needPushConnoisseur,callback);
                        else
                            addCommentCallBack(text, mode,nil,callback);
                        end
                    else
                        self:HideReponse();
                        self:SubmitResetInput();
                        context:stopPropagation();
                    end

                end)
                GetInst("MiniUIEventDispatcher"):addEventListener(cancelReply, UIEventType_Click, function(obj, context)
                    self:HideReponse();
                    self:ResetInput();
                end)

                GetInst("MiniUIEventDispatcher"):addEventListener(input, UIEventType_TextChange, function(obj, context)
                    self:InputOnTextChange(obj, context)
                end)

                GetInst("MiniUIEventDispatcher"):addEventListener(node, UIEventType_Click, function(obj, context)
                    --if self:GetCurMode() == CommentSystemInterface_InputMode.first then
                    self:InputHandleClick(node);
                    -- else

                    -- end
                end)

                GetInst("MiniUIEventDispatcher"):addEventListener(display, UIEventType_Click, function(obj, context)
                    inputCon:setSelectedIndex(CommentSystemInterface_TipsMode.edit);
                    local input = self.curInput:getChildByPath("n20.m2_inputtext");
                    input:setFocus(true);
                end)

                GetInst("MiniUIEventDispatcher"):addEventListener(cancel, UIEventType_Click, function(obj, context)
                    standReportEvent(self:GetSceneid(), "MINI_MAP_NEW_Publish", "Closed", "click", {cid=tostring(CommentSystemInterfacePageReport.worldid)})
                    local mode = self:GetCurMode();
                    if mode == CommentSystemInterface_InputMode.secondPage or mode == CommentSystemInterface_InputMode.secondPageReply then
                        self:ShowOrHideInput(true, CommentSystemInterface_InputMode.secondPage);
                    else
                        self:ShowOrHideInput(true, CommentSystemInterface_InputMode.first);
                    end
                    inputCom:setVisible(false)
                    self:ClearInput();
                    context:stopPropagation();
                end)

                GetInst("MiniUIEventDispatcher"):addEventListener(choiceTglBtn, UIEventType_Click, function(obj, context)
                    local choiceSelected =  choiceTglBtn:isSelected()
                    if choiceSelected then
                        if  AccountManager:getUin() == ArchiveWorldDesc.realowneruin then
                            -- 置顶按钮：OnTop click
                            standReportEvent(self:GetSceneid(), "MINI_MAP_NEW_Publish", "OnTop", "click", {cid=tostring(CommentSystemInterfacePageReport.worldid)})
                        else
                            -- 鉴赏家按钮：Introduce click
                            standReportEvent(self:GetSceneid(), "MINI_MAP_NEW_Publish", "Introduce", "click", {cid=tostring(CommentSystemInterfacePageReport.worldid)})
                        end
                    end
                end
                )
            end
        end

    },
    {
        ver_list = "1.20.0 1.20.3 1.20.5 1.20.6",
        install = function()
            --by rice
            -- 2022-10-25 同步主机房间相关信息
            if _G.friendservice then
                friendservice.is_in_game = function()
                    --{{{
                    if ClientCurGame and AccountManager then
                        local ret = ClientCurGame:isInGame() and not IsLanRoom;
                        if ret and ClientMgr then
                            if AccountManager:getMultiPlayer() > 0 then
                                if ROOM_SERVER_RENT == ClientMgr:getRoomHostType() then
                                    if RentPermitCtrl:IsQuickUpRentDebugRoom() then
                                        return false
                                    end
                                    if getglobal("NRSConnectLost"):IsShown() or getglobal("RSConnectLostFrame"):IsShown() then
                                        return false
                                    else
                                        local extraData = RoomInteractiveData.RoomInfoMgr:GetShareCurRoomParam()
                                        if MiniUI_GameSettlement.IsShown() then
                                            extraData.bolSettlement = true
                                        else
                                            extraData.bolSettlement = false
                                        end
                                        extraData.roomHostClientVer = math.floor(ClientMgr:clientVersion()/256)
                                        if ClientCurGame:getGameStage() < CGAME_STAGE_RUN then
                                            extraData.bolJoinWhenPlaying = true
                                        else
                                            if ClientCurGame:getRuleOptionVal(GMRULE_ALLOW_MIDWAYJOIN) == 0 then --中途不允许加入房间
                                                extraData.bolJoinWhenPlaying = false
                                            else
                                                extraData.bolJoinWhenPlaying = true
                                            end
                                        end
                                        return ret, RentPermitCtrl:GetRentRoomID(), extraData
                                    end
                                else
                                    local roomID = ClientCurGame:getHostUin()
                                    local extraData = RoomInteractiveData.RoomInfoMgr:GetShareCurRoomParam()
                                    if IsInHomeLandMap and IsInHomeLandMap() then
                                        -- 家园处理
                                        roomID = gFunc_GetHomeGardenWorldIDByUin(roomID)
                                        if extraData and extraData.roomID then
                                            extraData.roomID = roomID
                                        end
                                    end
                                    if getglobal("NRSConnectLost"):IsShown() or getglobal("RSConnectLostFrame"):IsShown() then
                                        return false
                                    else
                                        if MiniUI_GameSettlement.IsShown() then
                                            extraData.bolSettlement = true
                                        else
                                            extraData.bolSettlement = false
                                        end
                                        extraData.roomHostClientVer = math.floor(ClientMgr:clientVersion()/256)
                                        if ClientCurGame:getGameStage() < CGAME_STAGE_RUN then
                                            extraData.bolJoinWhenPlaying = true
                                        else
                                            if ClientCurGame:getRuleOptionVal(GMRULE_ALLOW_MIDWAYJOIN) == 0 then --中途不允许加入房间
                                                extraData.bolJoinWhenPlaying = false
                                            else
                                                extraData.bolJoinWhenPlaying = true
                                            end
                                        end
                                        return ret, tostring(roomID), extraData
                                    end
                                end
                            else
                                -- 自建地图单人
                                return ret, tostring(ClientCurGame:getHostUin()), {canFriendTrace=false}
                            end
                        else
                            return ret
                        end
                    else
                        return false;
                    end
                    --}}}
                end
            end

            -- 2022-10-25 刷新追随按钮样式补充（满足一定的条件时，按钮变灰）
            if FriendTraceMgr then
                FriendTraceMgr.RefreshTrackBtn = function(self,trackBtn, fridUin, ingameExdata)
                    if not trackBtn then
                        return false
                    end

                    local bgkAllow = getglobal(trackBtn:GetName() .. "BkgAllow")
                    local bgkApply = getglobal(trackBtn:GetName() .. "BkgApply")
                    local bgkProcessing = getglobal(trackBtn:GetName() .. "BkgProcessing")
                    local bgkReject = getglobal(trackBtn:GetName() .. "BkgReject")

                    trackBtn:Hide()
                    bgkAllow:Hide()
                    bgkApply:Hide()
                    bgkProcessing:Hide()
                    bgkReject:Hide()
                    trackBtn:Enable(false)
                    trackBtn:SetGray(false)

                    if not ingameExdata then
                        return false
                    end

                    if ingameExdata.canFriendTrace then
                        trackBtn:Show()
                        bgkAllow:Show()
                        if ingameExdata.isP2pSingleRoom then
                            self:RptTraceBtnStatus(fridUin, ingameExdata.hostGameTk, self.define.traceConfirmStep.Allow)
                        end
                        local myVer = math.floor(ClientMgr:clientVersion()/256)
                        if ClientCurGame:isInGame() or myVer ~=  ingameExdata.roomHostClientVer or ingameExdata.bolSettlement or ingameExdata.curPlayerNum == ingameExdata.maxPlayerNum or ingameExdata.bolJoinWhenPlaying == false  then
                            trackBtn:SetGray(true)
                        end
                        return true
                    end

                    if ingameExdata.canConfirmTrace then
                        trackBtn:Show()

                        local confirmStep = self:__TraceConfirmStep(fridUin, ingameExdata.hostGameTk)
                        if confirmStep == self.define.traceConfirmStep.Allow then
                            trackBtn:Show()
                            bgkAllow:Show()
                        elseif confirmStep == self.define.traceConfirmStep.Reject then
                            trackBtn:Show()
                            bgkReject:Show()
                            trackBtn:SetGray(true)
                            trackBtn:Disable(false)
                        elseif confirmStep == self.define.traceConfirmStep.Req then
                            trackBtn:Show()
                            bgkProcessing:Show()
                            trackBtn:SetGray(true)
                            trackBtn:Disable(false)
                        else
                            trackBtn:Show()
                            bgkApply:Show()
                        end
                        if ingameExdata.isP2pSingleRoom then
                            self:RptTraceBtnStatus(fridUin, ingameExdata.hostGameTk, confirmStep)
                        end
                        return true
                    end

                    return false
                end
            end

            --  2022-10-25
            local FriendMgr = ClassList["FriendMgr"] or {};

            --关闭好友界面 或者选择其他tab 重置Add_Trace_Btn_Report_Tbl
            FriendMgr.ResetAddTraceBtnReportTbl = function(self)
                if not self.Add_Trace_Btn_Report_Tbl  then
                    self.Add_Trace_Btn_Report_Tbl = {}
                end
                self.Add_Trace_Btn_Report_Tbl = {} ----好友追随按钮的显示状态（没改变就不用更新view上报）
            end

            -- 好友item更新(添加追随按钮状态更新)
            FriendMgr.UpdateFriendItem = function(self,cell, fridData)
                local fridUi = cell
                self:UpdateFriendCommonItem(fridUi, fridData)

                local BasicInfo = self:GetChildByIns(fridUi, "BasicInfo")
                local ChatBtn = self:GetChildByIns(fridUi, "ChatBtn")
                local TrackBtn = self:GetChildByIns(fridUi, "TrackBtn")
                local WateringBtn = self:GetChildByIns(fridUi, "WateringBtn")
                local DeleteBtn = self:GetChildByIns(fridUi, "DeleteBtn")
                local HomeLandBtn = self:GetChildByIns(fridUi, "HomeLandBtn")
                local Apply = self:GetChildByIns(fridUi, "Apply")
                local TraceStatus1 = self:GetChildByIns(BasicInfo, "TraceStatus1")
                local TraceStatus2 = self:GetChildByIns(BasicInfo, "TraceStatus2")

                BasicInfo:Hide()
                ChatBtn:Hide()
                TrackBtn:Hide()
                WateringBtn:Hide()
                DeleteBtn:Hide()
                HomeLandBtn:Hide()
                Apply:Hide()
                TraceStatus1:Hide()
                TraceStatus2:Hide()

                self:GetChildByName(BasicInfo:GetName() .. "GroupEntryText"):Hide()
                self:GetChildByName(BasicInfo:GetName() .. "Name"):Show()
                self:GetChildByName(BasicInfo:GetName() .. "Uin"):Hide()
                self:GetChildByName(BasicInfo:GetName() .. "Status"):Show()
                self:GetChildByName(BasicInfo:GetName() .. "Status"):SetPoint("bottomleft", fridUi:GetName(), "bottomleft", 109, -20)
                WateringBtn:SetPoint("right", fridUi:GetName(), "left", -170, 0)
                TrackBtn:SetPoint("left", fridUi:GetName(), "left", 395, 0)

                if fridData and fridData.apply_num then
                    self:UpdateApplyItem(FriendMgr.DlgType_MyFriends, Apply, fridData)
                    Apply:Show()

                    self:ReportFriendStandData("FRIEND_FRIEND_CONTENT", "FriendApply", "view")
                    self:ReportFriendStandData("FRIEND_FRIEND_CONTENT", "Ignore", "view")
                    return
                end

                BasicInfo:Show()
                local tartgetUin = fridData.uin
                fridUi:SetClientString(tostring(tartgetUin))

                self:GetChildByName(BasicInfo:GetName() .. "GenderIcon"):SetGray(true)
                self:GetChildByName(BasicInfo:GetName() .. "HeadIcon"):SetGray(true)
                self:GetChildByName(BasicInfo:GetName() .. "HeadFrameNormal"):SetGray(true)
                self:GetChildByName(BasicInfo:GetName() .. "HeadFramePushedBG"):SetGray(true)
                self:GetChildByName(BasicInfo:GetName() .. "HeadBkg"):SetGray(true)
                self:GetChildByName(BasicInfo:GetName() .. "Status"):SetTextColor(135, 132, 122)
                self:GetChildByName(BasicInfo:GetName() .. "Uin"):SetTextColor(135, 132, 122)
                self:GetChildByName(BasicInfo:GetName() .. "Bkg"):SetTextureTemplate("TemplateBigBkg12")
                self:GetChildByName(BasicInfo:GetName() .. "BkgMask"):Hide()

                if not fridData or fridData.needpull == 1 --[[--没有详细信息]] then
                    UpdateFriendEntry(fridUi, nil)
                else
                    ChatBtn:Show()

                    local unReadChat = friendservice.myfriendsUnreadUinSet[tartgetUin]

                    UpdateFriendEntry(fridUi, fridData)

                    if (not fridData.is_online) and tartgetUin ~= GetMiniCaptainUin() then  --offline
                    else
                        self:GetChildByName(BasicInfo:GetName() .. "GenderIcon"):SetGray(false)
                        self:GetChildByName(BasicInfo:GetName() .. "HeadIcon"):SetGray(false)
                        self:GetChildByName(BasicInfo:GetName() .. "HeadFrameNormal"):SetGray(false)
                        self:GetChildByName(BasicInfo:GetName() .. "HeadFramePushedBG"):SetGray(false)
                        self:GetChildByName(BasicInfo:GetName() .. "HeadBkg"):SetGray(false)
                        self:GetChildByName(BasicInfo:GetName() .. "Status"):SetTextColor(18, 162, 76)
                        self:GetChildByName(BasicInfo:GetName() .. "Uin"):SetTextColor(73, 70, 63)
                        self:GetChildByName(BasicInfo:GetName() .. "Bkg"):SetTextureTemplate("TemplateBigBkg6")
                        self:GetChildByName(BasicInfo:GetName() .. "BkgMask"):Show()
                    end

                    --屏蔽图标
                    local ignoreIcon = self:GetChildByName(ChatBtn:GetName() .. "IgnoreIcon")
                    ignoreIcon:Hide()
                    if tartgetUin ~= GetMiniCaptainUin() and FriendFrame_GetIgnoreState(tartgetUin) then
                        ignoreIcon:Show()
                    end

                    local showChatBtn = true
                    local showStatus = true
                    local homeLandStatus = true
                    local waterStatus = false
                    local genderIconStatus = true
                    local trackBtnStatus = false
                    local bInGaming = fridData.is_ingame or false
                    local bOnline = fridData.is_online or false
                    local ingame_exdata = fridData.ingame_exdata

                    if tartgetUin == GetMiniCaptainUin() then  --迷你队长
                        -- genderIconStatus = false
                        -- showStatus = false
                        bOnline = true
                        homeLandStatus = false
                        waterStatus = false
                        trackBtnStatus = false
                    else
                        if AccountManager:can_water(tartgetUin) or AccountManager:can_bug(tartgetUin) then
                            local waterNum = AccountManager:getWater(tartgetUin)
                            local wormsNum = AccountManager:getWorms(tartgetUin)
                            if waterNum > 0 or wormsNum > 0 then
                                waterStatus = true
                            end
                        end

                        -- 兼容不在线，没有处理在游戏内状态
                        if not bOnline then
                            bInGaming = false
                        end

                        if bInGaming then
                            trackBtnStatus = true
                        end
                    end

                    if trackBtnStatus then
                        TraceStatus1:Show()
                        TraceStatus2:Show()
                        TraceStatus1:SetTextColor(101,116,118)
                        TraceStatus2:SetTextColor(101,116,118)

                        if FriendTraceMgr:GetInst():RefreshTrackBtn(TrackBtn, fridData.uin, fridData.ingame_exdata) then
                            local reportData = {
                                standby1 = fridData.uin,
                                standby2 = self:BolInMapPlay()
                            }

                            -- 多人游戏
                            if ingame_exdata.roomlabel then
                                local btnTraceState;
                                TraceStatus1:SetPoint("topleft", BasicInfo:GetName(), "topleft", 460, 28)
                                TraceStatus2:SetPoint("bottomleft", BasicInfo:GetName(), "bottomleft", 460, -28)
                                local bolHideTraceStatus1 = true
                                if ClientCurGame:isInGame() then
                                    TraceStatus1:SetText("房间暂时无法进入")
                                    btnTraceState = 8
                                else
                                    local myVer = math.floor(ClientMgr:clientVersion()/256)
                                    if myVer ~=  ingame_exdata.roomHostClientVer then
                                        TraceStatus1:SetText("双方游戏版本不匹配")
                                        btnTraceState = 3
                                    elseif ingame_exdata.bolJoinWhenPlaying == false then
                                        TraceStatus1:SetText("房间暂时无法进入")
                                        btnTraceState = 4
                                    elseif ingame_exdata.bolSettlement then
                                        TraceStatus1:SetText("房间暂时无法进入")
                                        btnTraceState = 5
                                    elseif ingame_exdata.curPlayerNum == ingame_exdata.maxPlayerNum  then
                                        TraceStatus1:SetText("房间暂时无法进入")
                                        btnTraceState = 6
                                    else
                                        bolHideTraceStatus1 = false
                                        local gameLabel = tonumber(ingame_exdata.roomlabel) or 0
                                        if gameLabel == 0 then
                                            gameLabel = GetLabel2Owtype(ingame_exdata.roomtype or 0)
                                        end
                                        SetRoomTag(nil, TraceStatus1, gameLabel)
                                        local tempText = TraceStatus1:GetText()
                                        tempText = string.format(GetS(1112920), tempText)
                                        TraceStatus1:SetText(tempText)
                                        btnTraceState = 1
                                    end
                                end

                                local roomInfo = ""
                                local curPlayerNum = ingame_exdata.curPlayerNum or 1
                                local maxPlayerNum = ingame_exdata.maxPlayerNum or 6
                                if ingame_exdata.roomname then
                                    roomInfo = ingame_exdata.roomname.." ("..curPlayerNum.."/"..maxPlayerNum..")"
                                end
                                TraceStatus2:SetText(roomInfo)
                                if bolHideTraceStatus1 == true  then
                                    TraceStatus1:SetTextColor(61,69,70)
                                    TraceStatus1:SetPoint("topleft", BasicInfo:GetName(), "topleft", 460, 45)
                                    TraceStatus2:Hide()
                                    reportData.button_state = 1 --置灰
                                else
                                    reportData.button_state = 0 --可点击
                                end
                            else
                                -- 兼容低版本玩家的状态
                                TraceStatus1:SetText(GetS(1112919))
                                TraceStatus1:SetPoint("left", BasicInfo:GetName(), "left", 460, 0)
                                TraceStatus2:Hide()
                                btnTraceState = 2
                            end
                            local bolReportTraceBtnView = false
                            if not self.Add_Trace_Btn_Report_Tbl  then
                                self.Add_Trace_Btn_Report_Tbl = {}
                            end
                            if self.Add_Trace_Btn_Report_Tbl  then
                                if self.Add_Trace_Btn_Report_Tbl[fridData.uin] then
                                    if self.Add_Trace_Btn_Report_Tbl[fridData.uin].state ~= btnTraceState then
                                        bolReportTraceBtnView = true
                                        self.Add_Trace_Btn_Report_Tbl[fridData.uin].state = btnTraceState
                                    end
                                else
                                    self.Add_Trace_Btn_Report_Tbl[fridData.uin] = {}
                                    self.Add_Trace_Btn_Report_Tbl[fridData.uin].state = btnTraceState
                                    bolReportTraceBtnView = true
                                end
                            end
                            if bolReportTraceBtnView == true then
                                self:ReportFriendStandData("FRIEND_FRIEND_CONTENT", "Card", "view", reportData)
                            end
                        else
                            if not self.Add_Trace_Btn_Report_Tbl  then
                                self.Add_Trace_Btn_Report_Tbl = {}
                            end
                            self.Add_Trace_Btn_Report_Tbl[fridData.uin] = {}
                            self.Add_Trace_Btn_Report_Tbl[fridData.uin].state = 7
                            -- 单人游戏
                            TraceStatus1:SetText(GetS(1112918))
                            TraceStatus1:SetPoint("left", BasicInfo:GetName(), "left", 460, 0)
                            TraceStatus2:Hide()
                        end
                    else
                        -- 离线
                    end

                    if showStatus then
                        self:GetChildByName(BasicInfo:GetName() .. "Status"):Show()
                        if not bOnline then
                            local offlineStr = self:GetOfflineLoginTimeStr(fridData.lastLoginTime)
                            getglobal(BasicInfo:GetName() .. "Status"):SetText(offlineStr)
                        else
                            getglobal(BasicInfo:GetName() .. "Status"):SetText(GetS(4715))
                        end
                    else
                        self:GetChildByName(BasicInfo:GetName() .. "Status"):Hide()
                    end

                    if genderIconStatus then
                        self:GetChildByName(BasicInfo:GetName() .. "GenderIcon"):Show()
                    else
                        self:GetChildByName(BasicInfo:GetName() .. "GenderIcon"):Hide()
                    end

                    --增加性别开关
                    if not if_show_gender() then
                        self:GetChildByName(BasicInfo:GetName() .. "GenderIcon"):Hide()
                    end

                    if self:GetChildByName(BasicInfo:GetName().."RedTag"):IsShown() then
                        self:GetChildByName(BasicInfo:GetName().."RedTag"):Hide()
                    end

                    if showChatBtn then
                        ChatBtn:Show()
                        if unReadChat then
                            self:GetChildByName(ChatBtn:GetName() .. "RedTag"):Show()
                        else
                            self:GetChildByName(ChatBtn:GetName() .. "RedTag"):Hide()
                        end
                    else
                        ChatBtn:Hide()
                    end

                    if homeLandStatus then
                        HomeLandBtn:Show()
                    else
                        HomeLandBtn:Hide()
                    end

                    if waterStatus then
                        WateringBtn:Show()
                    else
                        WateringBtn:Hide()
                    end

                    self:GetChildByName(BasicInfo:GetName() .. "Checked"):Hide()
                end
            end

            --  2022-10-25 关闭好友界面 重置Add_Trace_Btn_Report_Tbl
            function FriendFrameCloseBtn_OnClick()
                _G.using_friend_tracking = nil
                -- GetInst("ReportGameDataManager"):ReSetStandEnterRoomSceneID()
                FriendMgr:ResetAddTraceBtnReportTbl()
                FriendMgr:ReportFriendStandData("FRIEND_TOP", "Close", "click")
                getglobal("FriendFrame"):Hide();
            end

            --  2022-10-25  好友界面tab切换 重置Add_Trace_Btn_Report_Tbl
            function FriendTabBtnTemplate_OnClick()
                local index = this:GetClientID();
                FriendMgr:ResetAddTraceBtnReportTbl()
                FriendSwitchTabs(index);
            end

            --2022-10-25  好友列表打断追踪好友玩游戏流程,并上报埋点
            function FriendChat_InterruptTrackFriend(stringID, friendUin, bolSingleButton)
                ShowGameTips(stringID,3)
                local reportData = {}
                reportData.standby3 = friendUin
                reportData.standby4 = FriendMgr:BolInMapPlay()
                reportData.button_state = 1 --置灰
                if bolSingleButton == 1 then
                    FriendMgr:ReportFriendStandData("FRIEND_FRIEND_CONTENT", "FollowRequestButton", "click", reportData)
                else
                    FriendMgr:ReportFriendStandData("FRIEND_FRIEND_CONTENT", "Card", "click", reportData)
                end
                _G.using_friend_tracking = nil
            end

            --2022-10-25  好友追随按钮点击方法更新
            function MyFriendEntryTemplateTrackBtn_OnClick()
                if _G.using_friend_tracking then
                    return
                end
                _G.using_friend_tracking = true
                GetInst("ReportGameDataManager"):ReSetBefJoinFailedParam(true)
                local loopTag = "TemplateTrackBtn_OnClick "

                local parentFrame = this:GetParentFrame()
                local fridData, _ = FriendMgr:GetDataWithID(FriendMgr.DlgType_MyFriends, FriendMgr:GetItemStringID(parentFrame))

                --上报
                local friendUin = fridData and fridData.uin or nil
                statisticsGameEventNew(6002, friendUin or 0);

                ReportTraceidMgr:setTraceid("friend#follow")
                local bolSingleButton = 0
                if fridData.ingame_exdata and not fridData.ingame_exdata.canFriendTrace and fridData.ingame_exdata.canConfirmTrace then
                    bolSingleButton = 1
                end
                GetInst("ReportGameDataManager"):SetBefJoinFailedParamStandby5(friendUin)
                GetInst("ReportGameDataManager"):SetJoinFailedParamByFriendUin(friendUin)
                if ClientCurGame:isInGame() then    --已经在存档内了
                    reportData = {
                        standby3 = friendUin,
                        standby4 = FriendMgr:BolInMapPlay()
                    }
                    if bolSingleButton == 1 then
                        FriendMgr:ReportFriendStandData("FRIEND_FRIEND_CONTENT", "FollowRequestButton", "click", reportData)
                    else
                        FriendMgr:ReportFriendStandData("FRIEND_FRIEND_CONTENT", "Card", "click", reportData)
                    end
                    FriendChat_InterruptTrackFriend("您正在游戏中，需退出当前游戏才可进入其他房间",friendUin,bolSingleButton)
                    _G.using_friend_tracking = nil
                    return;
                end

                if fridData then
                    if fridData.ingame_exdata then
                        local myVer = math.floor(ClientMgr:clientVersion()/256)
                        if myVer ~= fridData.ingame_exdata.roomHostClientVer then
                            FriendChat_InterruptTrackFriend("版本不匹配，请双方更新游戏至最新版本～",friendUin,bolSingleButton)
                            return
                        elseif fridData.ingame_exdata.bolJoinWhenPlaying == false then
                            FriendChat_InterruptTrackFriend("游戏已经开始，暂时无法进入",friendUin,bolSingleButton)
                            return
                        elseif fridData.ingame_exdata.bolSettlement then
                            FriendChat_InterruptTrackFriend("ta正在结算中，暂时无法进入",friendUin,bolSingleButton)
                            return
                        elseif fridData.ingame_exdata.curPlayerNum == fridData.ingame_exdata.maxPlayerNum then
                            FriendChat_InterruptTrackFriend("ta的房间人数已满，暂时无法进入",friendUin,bolSingleButton)
                            return
                        end
                    end

                    if bolSingleButton == 1 then
                        -- GetInst("ReportGameDataManager"):SetStandEnterRoomSceneID("31".."_"..'FRIEND_FRIEND_CONTENT'.."_".."FollowRequestButton")
                        InsertStandReportGameJoinParamArg({sceneid="31",cardid='FRIEND_FRIEND_CONTENT',compid="FollowRequestButton",standby3 = friendUin,trace_id = "friend#follow"})
                        GetInst("ReportGameDataManager"):NewGameJoinParam("31","FRIEND_FRIEND_CONTENT","FollowRequestButton","friend#follow")
                    else
                        -- GetInst("ReportGameDataManager"):SetStandEnterRoomSceneID("31".."_"..'FRIEND_FRIEND_CONTENT'.."_".."Card")
                        InsertStandReportGameJoinParamArg({sceneid="31",cardid='FRIEND_FRIEND_CONTENT',compid="Card",standby3 = friendUin,trace_id = "friend#follow"})
                        GetInst("ReportGameDataManager"):NewGameJoinParam("31","FRIEND_FRIEND_CONTENT","Card","friend#follow")
                    end
                    local content = string.format(GetS(1112924), ReplaceFilterString(fridData.name), fridData.ingame_exdata and fridData.ingame_exdata.roomname or "")
                    local cb = function ()
                        print("OK:");
                        local userdata = {btnUI = this:GetName()};
                        IsTrackBtnClick = true;
                        FriendChat_ReqFriendRoomByUin(fridData.uin, userdata, true,true);
                        local reportData = {}
                        reportData.standby3 = friendUin
                        reportData.standby4 = FriendMgr:BolInMapPlay()
                        reportData.button_state = 0 --可点击
                        if bolSingleButton == 1 then
                            FriendMgr:ReportFriendStandData("FRIEND_FRIEND_CONTENT", "FollowRequestButton", "click", reportData)
                        else
                            FriendMgr:ReportFriendStandData("FRIEND_FRIEND_CONTENT", "Card", "click", reportData)
                        end
                    end

                    local cbCancel = function ()
                        GetInst("ReportGameDataManager"):SetBefJoinFailedParamStandby1(GetInst("ReportGameDataManager"):GetGameJoinBeforeStageDefine().popupCancel)
                        ReportBeforeJoinFailedCall()
                    end

                    if FriendChat_NewTraceLogic_0817() then
                        cb()
                    else
                        FriendMgr:CustomMessageBox(content, GetS(3018), GetS(1203), cbCancel, cb)
                    end
                end
                _G.using_friend_tracking = nil
            end

        end
    },
    {
        -- by yaoxinqun 2022-10-26  代付请求回滚s7加密
        ver_list = "1.20.0 1.20.3",
        install = function()
            function MakePayUrl(money, funcCallback)
                -- 拼接[Desc1]链接
                local function CreateFriendPay(_path)
                    local _server = CSMgr:getFriendPayServer()

                    local builder = {
                        url = _server .. _path,
                        authparams = nil,

                        addparam = function(self, name, value, url_escape)
                            if value == nil then
                                return self
                            end

                            value = url_escape and gFunc_urlEscape(value) or value
                            local param = tostring(name) .. '=' .. value

                            --
                            if self.authparams then
                                self.authparams = self.authparams .. '&' .. param
                            else
                                self.authparams = param
                            end

                            return self
                        end,

                        finish = function(self)
                            if self.authparams then
                                self.url = self.url .. '?' .. self.authparams
                            end
                            return self.url
                        end,
                    };

                    return builder;
                end

                -- 生成请求链接
                local function MakeReqPayUrl(money)
                    local nickname = AccountManager:getNickName();
                    local avatarUrl = HeadCtrl.headUrl
                    local uin = AccountManager:getUin() or get_default_uin()
                    local s2_, s2t_, pure_s2t_ = get_login_sign()
                    local ostime = os.time()
                    local md5 = gFunc_getmd5(ostime .. s2_ .. uin)
                    local headidx = GetHeadIconIndex()

                    local url = CreateFriendPay("api/getUrlAdder")
                            :addparam("money_amount",money)
                            :addparam("nickname",nickname,true)
                            :addparam("avatarUrl",avatarUrl)
                            :addparam("uin",uin)
                            :addparam("s2t",pure_s2t_)
                            :addparam("auth",md5)
                            :addparam("time",ostime)
                            :addparam("headIndex",headidx and tostring(headidx))
                            :finish()

                    print('[MakePayUrl_1] money=' .. tostring(money) .. ', url=' .. tostring(url))
                    return url
                end
                local requrl = MakeReqPayUrl(money)
                local func = funcCallback or function() end

                -- 检测链接返回值，并且执行到回调函数，如果失败，回调参数为空
                local function RespFriendPayUrl(retstr)
                    local ret, data = pcall(JSON.decode, JSON, retstr)
                    if not ret or type(data) ~= 'table' then
                        --error
                        print('[MakePayUrl_error] retstr=' .. tostring(retstr) .. ', error=' .. tostring(data))
                        func()
                        return
                    end

                    -- 成功
                    if data.msg == 'Success' then
                        local url = data.data and data.data.url
                        print('[MakePayUrl_2] url=' .. tostring(url))
                        func(url)
                        return
                    end

                    -- 错误提示
                    if data.msg == 'Overspending_error' or data.msg == 'Overnumber_error'  then
                        ShowGameTips(GetS(9904))
                    elseif type(data.msg) == 'string' then
                        -- 其他错误
                        ShowGameTips('Error Code:' .. tostring(data.msg))
                    end

                    print('[MakePayUrl_error] errorcode=' .. tostring(data.msg))
                    func()
                end

                ns_http.func.rpc_string_raw(requrl, RespFriendPayUrl)
            end
        end
    },
    {
        -- by chenwei 2022-10-26 内容过滤配置传输方式调整
        ver_list = "all",
        install = function()
            function WWW_file_server_filter_callback(ret)
                if ns_server_filter.isFilterLoaded then
                    return
                end

                --print( "call WWW_file_server_filter_callback", ret);
                if  type(ret) == 'table' and ret._sec_ then
                    --解开base加密
                    local ret64_ = string.gsub(ret._sec_, "_", "=")
                    local sec_str_ = ns_std_base64.decodeBase64(ret64_, ns_http_sec.g_myb64chars);
                    if sec_str_ and string.sub( sec_str_, #sec_str_, #sec_str_ ) == '\0' then
                        sec_str_ = string.sub( sec_str_, 1, #sec_str_ - 1 )
                    end
                    ret = safe_string2table(sec_str_)
                end

                ns_server_filter = ret
                ns_server_filter.isFilterLoaded = true

                --print("WWW_file_server_filter_callback ns_server_filter", ns_server_filter or "nil")
                FilterMgr.Init()
            end
        end
    },

    {
        --by huangxin
        --清理迷你队长缓存消息
        ver_list = "all",
        install = function()
            friendservice.load = function()
                local data = container:load_from_file("friend_"..AccountManager:getUin());
                if data then
                    friendservice.myfrienduins = data.myfrienduins or {};
                    friendservice.myfriends = data.myfriends or {};
                    friendservice.blacklist = data.blacklist or {};
                    friendservice.myfriendsLastReadTimes = data.myfriendsLastReadTimes;
                    friendservice.chatMessages = data.chatMessages or {};
                    friendservice.myfriendsUnreadUinSet = data.myfriendsUnreadUinSet or {}; --未读好友消息
                    friendservice.groupUnreadIdSet = data.groupUnreadIdSet or {};           --未读群组消息
                    friendservice.askingAddFriendUsers = data.askingAddFriendUsers or {};
                    friendservice.followingPlayers = data.followingPlayers or {};
                    friendservice.fanPlayers = data.fanPlayers or {};  -- 我的粉丝
                    friendservice.haveReadChatTips = data.haveReadChatTips;
                    if data.qq_authorize then
                        friendservice.qq_authorize = data.qq_authorize;
                        friendservice.unreadQQAuthorize = data.unreadQQAuthorize
                    end
                    FixChatMessage();
                    CheckCltVerKeyMyfriends();
                    friendservice.clearPlayerMsg(1662134400,1000)
                    return true;
                else
                    return false;
                end
            end
            friendservice.clearPlayerMsg = function (time,id)
                local chatmss =  friendservice.chatMessages
                local filtersms = {};
                local PlayerMsg = chatmss[id]
                if PlayerMsg and #PlayerMsg > 0 then
                    local  num = #PlayerMsg
                    for i = num, 1,-1 do
                        if PlayerMsg[i].time > time then
                            table.insert(filtersms, PlayerMsg[i])
                        else
                            break;
                        end
                    end
                    local change =false;
                    if #filtersms == 0 then
                        friendservice.chatMessages[id] = nil
                        change = true
                    else
                        friendservice.chatMessages[id] = filtersms
                        if #filtersms < #PlayerMsg then
                            change = true
                        end
                    end
                    if change then
                        friendservice.save();
                    end
                end
            end
            old_ReqChatMessages = ReqChatMessages
            ReqChatMessages = function(uin)
                old_ReqChatMessages(uin)
                friendservice.clearPlayerMsg(1662134400,1000)
            end
        end
    },

    {
        -- by wudeshen 2022-10-27 修复任务频繁上报
        ver_list = "1.20.0 1.20.3 1.20.5",
        install = function()
            local UserTaskInterface = ClassList["UserTaskInterface"] or {};
            UserTaskInterface.UserTaskEventReport = function(self, EventType,value, type)
                if not self.define.EventType[EventType] or not value then
                    print(string.format("Param Error!!! ."), debug.traceback())
                    return
                else
                    local param={}
                    param.event=self.define.EventType[EventType]
                    param.value=value
                    if param.event == 64 and param.value == 3 then
                        GetInst('UserTaskDataManager'):ReqNewComeBackEvent(param)
                        return
                    end
                    GetInst('UserTaskDataManager'):ReqMissionEvent(param)
                    GetInst('UserTaskDataManager'):ReqNewComeBackEvent(param)
                    if param.event ~= 2 then
                        GetInst('UserTaskDataManager'):ReqNationalMissionEvent(param)
                    end
                    GetInst("countryTreasureDataMgr"):ReposrtTask(nil, param)
                    --音乐节 联机房间任务上报
                    GetInst("MiNiMusicFestivalDataMgr"):ReportOtherTask(param)
                    --新手任务二期
                    GetInst('UserTaskDataManager'):ReqNewNoviceTaskEvent(param)
                    GetInst('developerDataMgr'):ReqMissionEvent(param)

                    GetInst("TangDynastyDataManager"):ReportOtherTask(self.define.EventType[EventType], value, type)
                end
            end
        end
    },
    {
        -- by rice 2022-11-01
        ver_list = "1.20.0 1.20.3 1.20.5 1.20.6",
        install = function()
            -- by rice 2022-10-31 好友跟随按钮增加埋点内容
            function MyFriendEntryTemplateTrackBtn_OnClick()
                if _G.using_friend_tracking then
                    return
                end
                _G.using_friend_tracking = true
                GetInst("ReportGameDataManager"):ReSetBefJoinFailedParam(true)
                local loopTag = "TemplateTrackBtn_OnClick "

                local parentFrame = this:GetParentFrame()
                local fridData, _ = FriendMgr:GetDataWithID(FriendMgr.DlgType_MyFriends, FriendMgr:GetItemStringID(parentFrame))

                --上报
                local friendUin = fridData and fridData.uin or nil
                statisticsGameEventNew(6002, friendUin or 0);

                ReportTraceidMgr:setTraceid("friend#follow")
                local bolSingleButton = 0
                if fridData.ingame_exdata and not fridData.ingame_exdata.canFriendTrace and fridData.ingame_exdata.canConfirmTrace then
                    bolSingleButton = 1
                end
                local curPlayerNum = 0
                local maxPlayerNum = 999
                if fridData.ingame_exdata then
                    if fridData.ingame_exdata.curPlayerNum then
                        curPlayerNum = fridData.ingame_exdata.curPlayerNum
                    end
                    if fridData.ingame_exdata.maxPlayerNum then
                        maxPlayerNum = fridData.ingame_exdata.maxPlayerNum
                    end
                end
                local standby5 = maxPlayerNum.."_"..curPlayerNum
                GetInst("ReportGameDataManager"):SetBefJoinFailedParamStandby5(friendUin)
                GetInst("ReportGameDataManager"):SetJoinFailedParamByFriendUin(friendUin)
                if ClientCurGame:isInGame() then    --已经在存档内了
                    reportData = {
                        standby3 = friendUin,
                        standby4 = FriendMgr:BolInMapPlay(),
                        standby5 = standby5
                    }
                    if bolSingleButton == 1 then
                        FriendMgr:ReportFriendStandData("FRIEND_FRIEND_CONTENT", "FollowRequestButton", "click", reportData)
                    else
                        FriendMgr:ReportFriendStandData("FRIEND_FRIEND_CONTENT", "Card", "click", reportData)
                    end
                    FriendChat_InterruptTrackFriend(GetS(111358),friendUin,bolSingleButton,standby5)
                    _G.using_friend_tracking = nil
                    return;
                end

                if fridData then
                    if fridData.ingame_exdata then
                        local myVer = math.floor(ClientMgr:clientVersion()/256)
                        if myVer ~= fridData.ingame_exdata.roomHostClientVer then
                            FriendChat_InterruptTrackFriend(GetS(111356),friendUin,bolSingleButton,standby5)
                            return
                        elseif fridData.ingame_exdata.bolJoinWhenPlaying == false then
                            FriendChat_InterruptTrackFriend(GetS(111355),friendUin,bolSingleButton,standby5)
                            return
                        elseif fridData.ingame_exdata.bolSettlement then
                            FriendChat_InterruptTrackFriend(GetS(111354),friendUin,bolSingleButton,standby5)
                            return
                        elseif fridData.ingame_exdata.curPlayerNum == fridData.ingame_exdata.maxPlayerNum then
                            FriendChat_InterruptTrackFriend(GetS(111353),friendUin,bolSingleButton,standby5)
                            return
                        end
                    end

                    if bolSingleButton == 1 then
                        InsertStandReportGameJoinParamArg({sceneid="31",cardid='FRIEND_FRIEND_CONTENT',compid="FollowRequestButton",standby3 = friendUin,trace_id = "friend#follow"})
                        GetInst("ReportGameDataManager"):NewGameJoinParam("31","FRIEND_FRIEND_CONTENT","FollowRequestButton","friend#follow")
                    else
                        InsertStandReportGameJoinParamArg({sceneid="31",cardid='FRIEND_FRIEND_CONTENT',compid="Card",standby3 = friendUin,trace_id = "friend#follow"})
                        GetInst("ReportGameDataManager"):NewGameJoinParam("31","FRIEND_FRIEND_CONTENT","Card","friend#follow")
                    end
                    local content = string.format(GetS(1112924), ReplaceFilterString(fridData.name), fridData.ingame_exdata and fridData.ingame_exdata.roomname or "")
                    local cb = function ()
                        print("OK:");
                        local userdata = {btnUI = this:GetName()};
                        IsTrackBtnClick = true;
                        FriendChat_ReqFriendRoomByUin(fridData.uin, userdata, true,true);
                        local reportData = {}
                        reportData.standby3 = friendUin
                        reportData.standby4 = FriendMgr:BolInMapPlay()
                        reportData.button_state = 0 --可点击
                        reportData.standby5 = standby5
                        if bolSingleButton == 1 then
                            FriendMgr:ReportFriendStandData("FRIEND_FRIEND_CONTENT", "FollowRequestButton", "click", reportData)
                        else
                            FriendMgr:ReportFriendStandData("FRIEND_FRIEND_CONTENT", "Card", "click", reportData)
                        end
                    end

                    local cbCancel = function ()
                        GetInst("ReportGameDataManager"):SetBefJoinFailedParamStandby1(GetInst("ReportGameDataManager"):GetGameJoinBeforeStageDefine().popupCancel)
                        ReportBeforeJoinFailedCall()
                    end

                    if FriendChat_NewTraceLogic_0817() then
                        cb()
                    else
                        FriendMgr:CustomMessageBox(content, GetS(3018), GetS(1203), cbCancel, cb)
                    end
                end
                _G.using_friend_tracking = nil
            end

            -- by rice 2022-10-31  好友列表打断追踪好友玩游戏流程,并上报埋点 增加埋点内容
            function FriendChat_InterruptTrackFriend(stringID, friendUin, bolSingleButton,standby5)
                ShowGameTips(stringID,3)
                local reportData = {}
                reportData.standby3 = friendUin
                reportData.standby4 = FriendMgr:BolInMapPlay()
                reportData.button_state = 1 --置灰
                reportData.standby5 = standby5
                if bolSingleButton == 1 then
                    FriendMgr:ReportFriendStandData("FRIEND_FRIEND_CONTENT", "FollowRequestButton", "click", reportData)
                else
                    FriendMgr:ReportFriendStandData("FRIEND_FRIEND_CONTENT", "Card", "click", reportData)
                end
                _G.using_friend_tracking = nil
            end

        end
    },
    {
        -- by rice 2022-11-03
        ver_list = "1.20.0 1.20.2 1.20.3 1.20.4 1.20.5 1.20.6",
        install = function()
            -- by rice 2022-11-2 新game事件埋点bug修复
            function FriendChatFrame_OnEvent()
                if GetInst("UIEvtHook"):EventHook(arg1, GameEventQue:getCurEvent()) then
                    return
                end
                if getglobal("FriendFrame"):IsShown() then
                    Log("FriendChatFrame_OnEvent:");

                    if arg1 == "GIE_RSCONNECT_RESULT" then
                        --连接房间
                        local ge = GameEventQue:getCurEvent();
                        local result = ge.body.roomseverdata.result;
                        print("GIE_RSCONNECT_RESULT:",result);
                        if result == 9 then
                            --连接成功, 进入房间
                            ReportTraceidMgr:setTraceid("friend")
                            if not AccountManager:requestJoinWorld() then
                                ShowGameTips(GetS(146), 3);
                                return;
                            end

                            --进入房间数据上报
                            local roomDesc = AccountManager:getIthRoom(0);
                            local gamelabel = (roomDesc and roomDesc.gamelabel) or 0
                            local statisticsParam = GetRoomParamByRoomDesc(roomDesc)
                            StatisticsTools:joinRoom(false, gamelabel, SAID_JoinRoomEx, statisticsParam.roomID, statisticsParam.roomType, statisticsParam.roomOwnner);

                            if roomDesc then
                                if Room_Data.cur_password ~= "" then
                                    Room_Data.password_record[roomDesc.owneruin] =Room_Data.cur_password;
                                    Room_Data.cur_password = "";
                                end
                                RoomInteractiveData.curMapwid = 0
                                RoomInteractiveData.connect_mode = nil
                                RoomInteractiveData.curRoomName = roomDesc.roomname;
                                local createType = AllRoomManager:GetRoomLabel(roomDesc.gamelabel,roomDesc.worldtype)
                                RoomInteractiveData.cur_gameLabel = createType;
                            end

                            local bolReportJoinEvent = true
                            if tonumber(GetInst("ReportGameDataManager"):GetGameJoinParam().sceneid) == 2801 and GetInst("ReportGameDataManager"):GetGameJoinParam().cardid == "INVITE_POP_UP"
                                    and GetInst("ReportGameDataManager"):GetGameJoinParam().compid == "Accept" then
                                bolReportJoinEvent = false --在好友界面接受弹窗邀请进游戏，这里不需要上报join事件，在autojump_func.lua的OnRespLoginRoomServer方法里会上报
                            end
                            if bolReportJoinEvent then
                                reportGameJoinCall(1,roomDesc)
                                ReportGameJoinLoadCall(1,roomDesc)
                            end
                            if roomDesc and roomDesc.map_type then
                                local cid = tostring(roomDesc.map_type)
                                newlobby_SaveMapHistory(cid)
                            end

                            UIFrameMgr:hideAllFrame();
                            ShowLoadingFrame();
                        elseif result == 10 then
                            --房间已满
                            ShowLoadLoopFrame(false)
                            ShowGameTips(GetS(566), 3);
                        elseif result == 11 then
                            --密码错误
                            ShowLoadLoopFrame(false)
                            ShowGameTips(GetS(567), 3);
                            getglobal("LinkRoomPassWordFrame"):Show();
                        elseif result == 12 then
                            ShowLoadLoopFrame(false)
                            ShowGameTips(GetS(568), 3);
                        elseif result == 13 then
                            ShowLoadLoopFrame(false)
                            local detailreason = ge.body.roomseverdata.detailreason;
                            if detailreason == -3 then
                                ShowGameTips(GetS(282), 3);
                            else
                                ShowGameTips(GetS(4034, detailreason), 3);
                            end
                        elseif result == 14 then
                            ShowLoadLoopFrame(false)
                            ShowGameTips(GetS(8033), 3);
                        elseif result == 15 then
                            ShowLoadLoopFrame(false)
                            ShowGameTips(GetS(573), 3);
                        elseif result == 16 then
                            ShowLoadLoopFrame(false)
                            ShowGameTips(GetS(573), 3);
                        elseif result == 17 then
                            ShowLoadLoopFrame(false)
                            ShowGameTips(GetS(3630), 3);
                        elseif result == 18 then
                            ShowLoadLoopFrame(false)
                            ShowGameTips(GetS(10549), 3); --敏感词
                        end
                    elseif arg1 == "GIE_UPDATE_ROOM" then
                        if not IsTrackBtnClick then return end
                        --刷新房间列表:按uin搜索房间回调
                        Log("GIE_UPDATE_ROOM:");
                        local ge = GameEventQue:getCurEvent();
                        local result = ge.body.room.result;

                        if result == 1 then
                            --获取好友房间详情成功
                            FriendChat_OnRespFriendRoom();
                        end
                        IsTrackBtnClick = false
                    end
                end
            end

            --   by rice 2022-11-2 好友列表去家园加新game事件埋点
            local FriendMgr = ClassList["FriendMgr"] or {};
            FriendMgr.MyFriendEntryTemplateHomeLandBtn_OnClick = function(self)
                local uin = self:GetItemStringID(this:GetParentFrame())
                self:GoHomeLand(uin)
                local mapOwn = GetInst("ReportGameDataManager"):GetGameMapOwnDefine().otherMap
                local gameNetType = GetInst("ReportGameDataManager"):GetGameNetTypeDefine().singleMode;
                local gameMapMode = GetInst("ReportGameDataManager"):GetDefineGameModeType().homeland;
                local standby1 = mapOwn..gameNetType..gameMapMode
                standReportGameOpenParam = {
                    cid         = tostring(uin),
                    standby1    = tostring(standby1),
                    sceneid     = "31",
                    cardid        = "FRIEND_FRIEND_CONTENT",
                    compid        = 'MiniHome',
                }
                GetInst("ReportGameDataManager"):NewGameLoadParam("31","FRIEND_FRIEND_CONTENT","MiniHome")
                GetInst("ReportGameDataManager"):SetGameMapMode(GetInst("ReportGameDataManager"):GetDefineGameModeType().homeland)
                self:ReportFriendStandData("FRIEND_FRIEND_CONTENT", "MiniHome", "click")
            end

        end
    },
    {
        ver_list = "1.19.0 1.19.1 1.19.5 1.20.0 1.20.2 1.20.4 1.20.5 1.20.6",
        install = function()
            -- by xiaoqiang 2022-11-2 设置密码的房间点击跟随提示密码错误
            if FriendTraceMgr and FriendTraceMgr.__BeforeEnterRoom then
                FriendTraceMgr.__BeforeEnterRoom = function(self, roomDesc, roomType,bolReport)
                    local filterCondition = {}
                    filterCondition.ver = true
                    filterCondition.freePlayer = true
                    filterCondition.password = true ----预先判定条件，有密码应该允许通过
                    filterCondition.locked = true
                    filterCondition.connect_mode = false
                    filterCondition.public_type = false
                    local check, failedCode =  AllRoomManager:CheckRoomDescCondition(roomDesc, roomType, filterCondition)
                    if not check then
                        local tips
                        if failedCode == 20 then
                            tips = GetS(572)
                        elseif failedCode == 10 then
                            tips = GetS(566)
                        elseif failedCode == 11 then
                            tips = GetS(567)
                            check = true
                        elseif failedCode == 14 then
                            tips = GetS(8033)
                        end

                        if not check then
                            ShowGameTips(tips, 3)
                        end

                        if bolReport then
                            ReportBeforeJoinFailedCall(tips)
                        end
                    end
                    return check
                end
            end
        end,
    },
    {
        ver_list = "1.20.0 1.20.3 1.20.5 1.20.6",
        install = function()
            --by rice
            -- 2022-11-15 退出游戏时及时刷新msgBoxExitGame的值
            local ExitGameMenuCtrl = ClassList["ExitGameMenuCtrl"] or {};
            ExitGameMenuCtrl.ExitbtnClick = function(self, obj, context)
                threadpool:work(
                    function ()
                        self:Report("Exit","click")
                        GetInst("BattleEndFriendListGData"):CacheGamePlayMates()
                        
                        local isInTeam = false
                        if ClientCurGame and  ClientCurGame:isInGame() then
                            local teamupSer = GetInst("TeamupService")
                            if teamupSer and teamupSer:IsInTeam(AccountManager:getUin()) then
                                isInTeam = true
                            end
                        end
                    
                        local worldDesc = AccountManager:getCurWorldDesc();
                        local ownMap = 0
                        if worldDesc and worldDesc.realowneruin == AccountManager:getUin() then
                            ownMap = 1;
                        end
                        local cid = 0;
                        if worldDesc then
                            if worldDesc.fromowid and worldDesc.fromowid > 0 then
                                cid = tostring(worldDesc.fromowid)
                            elseif worldDesc.owid and worldDesc.owid > 0 then
                                cid = tostring(worldDesc.owid)
                            elseif worldDesc.wid and worldDesc.wid > 0 then
                                cid = tostring(worldDesc.wid)
                            elseif worldDesc.map_type then
                                cid = worldDesc.map_type
                            end
                        end
                    
                        if isEducationalVersion then
                            if not ClientMgr:isPC() then
                                if MCodeMgr then
                                    local tParam = {0, "go_home"}
                                    MCodeMgr:miniCodeCallBack(-1001, JSON:encode(tParam));
                                    self:CloseClick()
                                end
                                return;
                            end
                        end
                        local firstMapId = getkv("firstMapId","statisticsDataFile")
                        if CurWorld and CurWorld:getOWID() == NewbieWorldId then    --从新手地图返回
                            GuideSkipConfirm();
                            --埋点，返回存档界面 设备码,返回存档来源,是否首次进入教学地地图,用户类型,语言  
                            statisticsGameEventNew(963,ClientMgr:getDeviceID(),2,(IsFirstEnterNoviceGuide and not enterGuideAgain) and 1 or 2,
                            ClientMgr.isFirstEnterGame and (ClientMgr:isFirstEnterGame() and 1 or 2),tostring(get_game_lang()))
                            StatisticsTools:send(true, true)
                            IsSkipFromGuideOrFirstMap = true
                        else
                            if firstMapId and firstMapId == CurWorld:getOWID() then
                                if not getkv("alreadyUp963","statisticsDataFile") then
                                    --埋点，返回存档界面 设备码,返回存档来源,是否首次进入教学地地图,用户类型,语言  
                                    statisticsGameEventNew(963,ClientMgr:getDeviceID(),1,(IsFirstEnterNoviceGuide and not enterGuideAgain) and 1 or 2,
                                    ClientMgr.isFirstEnterGame and (ClientMgr:isFirstEnterGame() and 1 or 2),tostring(get_game_lang()))
                                    StatisticsTools:send(true, true)
                                    setkv( "alreadyUp963", true, "statisticsDataFile")--只上报一次
                                end
                                IsSkipFromGuideOrFirstMap = true
                            else
                                IsSkipFromGuideOrFirstMap = false
                            end
                            g_IsFirstOpenDeveloperStore = true;
                            g_IsFirstOpenDeveloperstash = true;
                            if RecordPkgMgr:isRecordPlaying() then
                                GoToMainMenu();
                                self:CloseClick()
                                return;
                            end
                            print("MainMenuBtn_OnClick", IsRoomOwner())
                            if IsRoomOwner() then   --主机
                                -- 离开游戏二次确认框：关闭房间将踢出所有玩家
                                self:CloseClick()
                                if isInTeam then
                                    MessageBox(31, GetS(26074));
                                    getglobal("MessageBoxFrame"):SetClientString( "主机关闭房间Right" );
                                else
                                    MessageBox(31, GetS(220));
                                    getglobal("MessageBoxFrame"):SetClientString( "主机关闭房间Right" );
                                end
                                -- 主机关闭房间：退出地图时上报 by fym
                                self:ExistGameReport("view")
                    
                            else
                                    if not isInTeam then
                                        friendservice.msgBoxExitGame = 1
                                        self:ExistGameReport("click")
                                        GoToMainMenu();
                                    else
                                        MessageBox(31, GetS(26075) ,function(btn)
                                            if btn == 'right' then
                                                friendservice.msgBoxExitGame = 1
                                                GoToMainMenu()
                                            end
                                        end)
                                    end
                                    local guideStep = GetGuideStep()
                                    if guideStep and guideStep == 3 then 
                                        --新手引导流程优化，第一张玩家创建的地图，返回时直接返回到主页面
                                        EnterMainMenuInfo.DelNoviceMap = true
                                        EnterMainMenuInfo.EnterMainMenuBy = 'NewbieWorld'
                                        SetGuideStep(3)
                                    end 
                            end
                        end
                        self:CloseClick()
                    end
                )
            end

             -- 2022-11-15  根据msgBoxExitGame的值及时刷新是否在游戏中
            if _G.friendservice then
                friendservice.msgBoxExitGame = 0
                friendservice.is_in_game = function()
                    --{{{
                    if ClientCurGame and AccountManager then
                        local ret = ClientCurGame:isInGame() and not IsLanRoom;
                        if ret and ClientMgr then
                            if AccountManager:getMultiPlayer() > 0 then
                                if ROOM_SERVER_RENT == ClientMgr:getRoomHostType() then
                                    if RentPermitCtrl:IsQuickUpRentDebugRoom() then
                                        return false
                                    end
                                    if getglobal("NRSConnectLost"):IsShown() or getglobal("RSConnectLostFrame"):IsShown() then
                                        return false
                                    end
                                    if friendservice.msgBoxExitGame == 1 then
                                        return false
                                    end
                                    local extraData = RoomInteractiveData.RoomInfoMgr:GetShareCurRoomParam()
                                    if MiniUI_GameSettlement.IsShown() then
                                        extraData.bolSettlement = true
                                    else
                                        extraData.bolSettlement = false
                                    end
                                    extraData.roomHostClientVer = math.floor(ClientMgr:clientVersion()/256)
                                    if ClientCurGame:getGameStage() < CGAME_STAGE_RUN then
                                        extraData.bolJoinWhenPlaying = true
                                    else
                                        if ClientCurGame:getRuleOptionVal(GMRULE_ALLOW_MIDWAYJOIN) == 0 then --中途不允许加入房间
                                            extraData.bolJoinWhenPlaying = false
                                        else
                                            extraData.bolJoinWhenPlaying = true
                                        end
                                    end
                                    return ret, RentPermitCtrl:GetRentRoomID(), extraData
                                else
                                    local roomID = ClientCurGame:getHostUin()
                                    local extraData = RoomInteractiveData.RoomInfoMgr:GetShareCurRoomParam()
                                    if IsInHomeLandMap and IsInHomeLandMap() then
                                        -- 家园处理
                                        roomID = gFunc_GetHomeGardenWorldIDByUin(roomID)
                                        if extraData and extraData.roomID then
                                            extraData.roomID = roomID
                                        end
                                    end
                                    if getglobal("NRSConnectLost"):IsShown() or getglobal("RSConnectLostFrame"):IsShown() then
                                        return false
                                    end
                                    if friendservice.msgBoxExitGame == 1 then
                                        return false
                                    end
                                    if MiniUI_GameSettlement.IsShown() then
                                        extraData.bolSettlement = true
                                    else
                                        extraData.bolSettlement = false
                                    end
                                    extraData.roomHostClientVer = math.floor(ClientMgr:clientVersion()/256)
                                    if ClientCurGame:getGameStage() < CGAME_STAGE_RUN then
                                        extraData.bolJoinWhenPlaying = true
                                    else
                                        if ClientCurGame:getRuleOptionVal(GMRULE_ALLOW_MIDWAYJOIN) == 0 then --中途不允许加入房间
                                            extraData.bolJoinWhenPlaying = false
                                        else
                                            extraData.bolJoinWhenPlaying = true
                                        end
                                    end
                                    return ret, tostring(roomID), extraData
                                end
                            else
                                -- 自建地图单人
                                return ret, tostring(ClientCurGame:getHostUin()), {canFriendTrace=false}
                            end
                        else
                            return ret
                        end
                    else
                        return false;
                    end
                    --}}}
                end
            end

            --2022-11-15 切换账号msgBoxExitGame值置0
            function FriendServiceRefreshOnSwitchAccount()
                --{{{
                if not friendservice.enabled then
                    return;
                end
            
                print("FriendServiceRefreshOnSwitchAccount uin="..AccountManager:getUin());
            
                -- QuitChat();
                FriendMgr:SetListViewReset(FriendMgr.DlgType_MyFriends, true)
                FriendMgr:SetMyFriendsCurTab(FriendMgr.MyFriends_Local_Full)
                
                friendservice.myfrienduins = {};
                friendservice.myfriends = {};
                friendservice.myfriendsLastReadTimes = {};
                friendservice.myfriendsUnreadUinSet = {};
                friendservice.groupUnreadIdSet = {};
                friendservice.myfriendsPulled = false;
                friendservice.chatMessages = {};
                friendservice.blacklist={};
                friendservice.askingAddFriendUsers = {};
                friendservice.askingAddFriendUnreadUinSet = {};
                friendservice.followinguins = {};
                friendservice.followingPlayers = {};
                friendservice.fansuins = {};
                friendservice.fansPlayers = {};
                friendservice.last_is_in_game = false;
                friendservice.last_is_in_game_token = gFunc_getmd5(table_tostring({}));
                friendservice.myqrcode_generated = false;
                friendservice.lastReportLocationTime = 0;
                friendservice.phoneContactsPulling = false;
                friendservice.phoneContactsPulled = false;
                friendservice.phoneContactsAll = {};
                friendservice.phonePlayers = {};
                friendservice.phonePlayersPulling = false;
                friendservice.haveReadChatTips = false;
            
                friendservice.nearbyFriends = {};
                friendservice.nearbyFriendsPages = 0;
                friendservice.pullingNearbyPlayers = false;
                friendservice.addFriendUin = 0;
                friendservice.popMsg = {};
                friendservice.showAskAddFriend = false;
                friendservice.qq_authorize = {};
                friendservice.unreadQQAuthorize = false;
                friendservice.playerdataCache = {}
                friendservice.flagIds = {}
                friendservice.clientType = FriendMgr.Add_Apply_Friends   -- 申请列表tab栏   0:好友  1 群组
                friendservice.msgBoxExitGame = 0
            
                friendservice.load();
            
                FriendSwitchTabs(1);
            
                RefreshMyLocation(true, true);
                ReqMyFriendList();
            
                ReloadRecentPlaymate()
            
                UpdateMyFriendList();
                UpdateChatMessages(true);
                  --UpdatePhonePlayers();
                UpdateNearbyFriendList(0);
                UpdateFollowingPlayers();
                FriendMgr:UpdateAddingFriendListView()
                -- 加载群组相关信息
                InitGroupChatService()
                --}}}
            
                friendservice.friendBubbleFirstTimeReqUnReadMsg = false --第一次请求好友信息
                --好友气泡 切换账号 就先干掉
                if friendservice.friendBubbleHandle then
                    threadpool:kick(friendservice.friendBubbleHandle)
                    friendservice.friendBubbleHandle = nil
                end
                --重置好友气泡数据
                friendservice.friendBubbleInfo = {0, 0, 0} --气泡相关信息 1 有好友正在玩游戏 2 有%s条新消息 3 有%s条新申请 存总数量
                friendservice.friendBubbleDisplayFlag = {false, false, false} --可不可以显示 对应friendBubbleInfo
            
                CheckFriendBubbleNotify()
                CheckAndInitFriendBubbleService()
            end

            --2022-11-15 弹框messagebox点击确认退出游戏时及时刷新msgBoxExitGame的值
            local OLD_MessageBoxFrameRightBtn_OnClick = MessageBoxFrameRightBtn_OnClick
            function MessageBoxFrameRightBtn_OnClick()
                local MessageBoxFrame = getglobal("MessageBoxFrame")
                local MessageBox_Callback = getFunctionVpValue(OLD_MessageBoxFrameRightBtn_OnClick, "MessageBox_Callback")
                local MessageBox_CallbackData = getFunctionVpValue(OLD_MessageBoxFrameRightBtn_OnClick, "MessageBox_CallbackData")
                if MessageBox_Callback ~= nil and MessageBoxFrame:GetClientString() == "" then
                    MessageBoxFrame:Hide();
                    local callback, callback_data = MessageBox_Callback, MessageBox_CallbackData;
                    MessageBox_Callback, MessageBox_CallbackData = nil, nil;
                    if callback then
                        callback('right', callback_data);
                    end
                elseif MessageBoxFrame:GetClientString() == "充值成功网络原因失败" then
                    getglobal("ShopRechargeHelpFrame"):Show();
                elseif MessageBoxFrame:GetClientString() == "充值服务器收不到回调" then
                    getglobal("ShopRechargeHelpFrame"):Show();
                else    
                    MessageBoxFrame:Hide();
                end
                if MessageBoxFrame:GetClientString() == "删除地图" then
                elseif MessageBoxFrame:GetClientString() == "进入教学" then
                    getglobal("GuideTipsFrame"):Hide();
                    EnterLobby();
                    -- statisticsGameEvent(901, "%s", "SkipNoviceMap","save",true,"%s",os.date("%Y%m%d%H%M%S",os.time()));
                    GuideLobby = 4;
                elseif MessageBoxFrame:GetClientString() == "主机断连" then
                    --MiniBase主机断连切换到APP
                    SandboxLua.eventDispatcher:Emit(nil, "MiniBase_LeaveGame",  SandboxContext():SetData_Number("code", 0))
                    HideAllFrame(nil, false);
                    ClientMgr:gotoGame("MainMenuStage");
                elseif MessageBoxFrame:GetClientString() == "主机关闭房间" then
                    friendservice.msgBoxExitGame = 1
                elseif MessageBoxFrame:GetClientString() == "主机退出游戏" then
                elseif MessageBoxFrame:GetClientString() == "没绑定帐号充值" then 
                elseif MessageBoxFrame:GetClientString() == "充值客户端收不到回调" then
                    AccountManager:getAccountData():notifyServerClearCharge();
                    getglobal("ShopRechargeHelpFrame"):Show();
                elseif MessageBoxFrame:GetClientString() == "离开地图时评分" then
                    -- 离开地图时评分: 点击"直接关闭"按钮时上报  by fym
                    ExistGameReport("click")
                    GoToMainMenu();
                elseif MessageBoxFrame:GetClientString() == "新手引导退出" then
                    if CurWorld and CurWorld:getOWID() == NewbieWorldId2 then
                        standReportEvent("3801", "NEWPLAYER_MAP_SKIP", "Quite", "click")
                    else
                        standReportEvent("38", "NEWPLAYER_TEACHINGMAP_EXIT", "exit", "click", {
                            standby1 = GetGuideComponent(),
                        });
                    end
                    
                    -- 标识已经完成了走过了新手教学
                    if NewbieGuideManager and NewbieGuideManager:IsSwitch() then
                        NewbieGuideManager:SetGuideFinishFlag(NewbieGuideManager.GUIDE_FLAG_GO_ALONE, true)
                        NewbieGuideManager:SetGuideFlagByPos(NewbieGuideManager.GUIDE_FLAG_GO_ALONE)
                    end
                    
                    if isEducationalVersion then  --教育版退出新手引导
                        GuideSkip_Edu(0);
                    else
                        GuideSkip();
                        GuideLobby = 3;
                    end
                    SetGuideStep(3)
            
                elseif MessageBoxFrame:GetClientString() == "立即认证" then
                    MessageBoxFrame:Hide(); 
                elseif MessageBoxFrame:GetClientString() == "仓库已满" then
                    if getglobal('ActivityMainFrame'):IsShown() then
                        if ActivityMainCtrl then
                            ActivityMainCtrl:AntiActive()
                        end
                    end
                    if getglobal('MailFrame'):IsShown() then
                        getglobal('MailFrame'):Hide();
                    end
                    if getglobal('ShopGiftLotteryGiftFrame'):IsShown() then
                        GetInst("UIManager"):GetCtrl("ShopGift"):OnShopGiftBuyGiftFrameCloseBtnClicked()
                    end
                    AccelKey_StoreInventory();  --打开仓库界面
                elseif MessageBoxFrame:GetClientString() == "保存密码到本地" then
                    SavePassword2File();  -- 老版设置密码界面保存密码到本地
                    GetInst("UIManager"):GetCtrl("ActivateAccount"):SavePassword2File() -- 新版设置密码界面保存密码到本地
                elseif MessageBoxFrame:GetClientString() =="Avatar保存" then
                    AvatarStoreSaveFrameRightBtn_OnClick();
                    MessageBoxFrame:Hide();
                elseif MessageBoxFrame:GetClientString() =="支持一下" then
                    -- 打赏作者功能（支持一下）: 点击"直接关闭"按钮时上报  by fym
                    ExistGameReport("click")
                    GoToMainMenu();
                    SetExitReason(10)
                    GetInst("ReportGameDataManager"):SetExitReaseon(10)
                elseif MessageBoxFrame:GetClientString() == "离开结算界面时评分" then
                    BattleFrameBackMenu_OnClick();
            
                elseif MessageBoxFrame:GetClientString() == "CloudServerReset" then
                    -- 云服重置
                    GetInst("UIManager"):GetCtrl("CloudServerLobby"):CloudServerResetConfirm()
                    MessageBoxFrame:Hide();     
                elseif MessageBoxFrame:GetClientString() == "主机关闭房间Right" then
                    -- 主机关闭房间：退出地图时上报 by fym
                    friendservice.msgBoxExitGame = 1
                    ExistGameReport("click")
                    threadpool:work(function ()
                        AccountManager:sendToClientKickInfo(2);
                        threadpool:wait(0.5)
                        GoToMainMenu()
                    end)
                end
            end

            -- 2022-11-15 补充查询房间信息returnCode信息
            local RoomService = ClassList["RoomService"] or {};
            RoomService.ReqRoomListByUinSync = function(self,uin, rtype, showLoadLoop, spData)    
                local roomList = {}
                local errorTip = nil
                rtype = rtype or 0
                spData = spData or {}
                local loginSuc = false
                local returnCode
                
                if showLoadLoop == nil then showLoadLoop = true end
                local loopTag = "file:RoomService - func:ReqRoomListByUinSync " .. gen_gid()
                if showLoadLoop then ShowLoadLoopFrame(true, loopTag) end
                repeat
                    --登录房间服务器
                    local genkey, gid = GetInst("UIEvtHook"):GenKeyWithPrefix(self.EVT_GEN_PREFIX_SYNC_THREAD_NOTIFY)
                    self:InsertSyncWaitingStatus(true, genkey)
                    if not AccountManager:loginRoomServer(false, 0, genkey) then
                        returnCode = GetS(146)
                        break
                    end
                    loginSuc = true
                    
                    if self:FindSyncWaitingStatus(genkey) then
                        local code, _ret = threadpool:wait(gid, 2);
                        if code ~= ErrorCode.OK then
                            returnCode = "request room info failed,rtype:"..rtype.." code:"..code
                            break
                        end
                        if  _ret ~= genkey then
                            returnCode = "request room info failed,rtype:"..rtype.." _ret:".._ret.." genkey:"..genkey
                            break
                        end
                    end
            
                    local filterConnectMode = spData.connect_mode or 0
                    --请求普通房间数据
                    if rtype <= 0 then
                        genkey, gid = GetInst("UIEvtHook"):GenKeyWithPrefix(self.EVT_GEN_PREFIX_SYNC_THREAD_NOTIFY)
                        self:InsertSyncWaitingStatus(true, genkey)
                        if AccountManager:requestRoomListByUin(uin, nil, genkey) then
                            if self:FindSyncWaitingStatus(genkey) then
                                local code, _ret, result,failreason = threadpool:wait(gid, spData.outtime or 5);
                                if code == ErrorCode.OK and _ret == genkey then
                                    returnCode = failreason
                                    local num = AccountManager:getNumRoom()
                                    for i = 1, num do
                                        local roomDesc = AccountManager:getIthRoom(i-1)
                                        if roomDesc and (filterConnectMode == "any" or roomDesc.connect_mode == filterConnectMode) then
                                            table.insert(roomList, AllRoomManager:TransNormalRoomToLuaTb(roomDesc))
                                        end
                                    end
                                    if returnCode == nil and #roomList == 0 then
                                        returnCode = "get roomInfo failed getNumRoom:"..num
                                    end
                                end
                                if code ~= ErrorCode.OK then
                                    returnCode = "wait overtime 1 code:"..code
                                    break
                                end
                                if _ret ~= genkey  then
                                     returnCode = "wait overtime 2 _ret:".._ret.." genkey:"..genkey
                                     break
                                end
                            end
                        else
                            returnCode = GetS(146).."2"
                        end
                    end
            
                    if rtype >= 0 then
                        --请求云服房间数据
                        uin = getLongUin(uin);  --海外加10亿
                        if ns_version and ns_version.proxy_url then
                            local url = ns_version.proxy_url .. '/miniw/rent_server?act=getUinRoomList&search=1&op_uin='..uin.."&" .. http_getS1Map();
                            local ret = self:SyncRpc(url, spData.outtime or nil, false)
                            if ret then
                                if  ret.ret == 0 then
                                    if  ret.data then
                                        for _, data in ipairs(ret.data) do
                                            if rtype == 0 or uin .. "_" .. rtype == data._k_ then
                                                table.insert(roomList, data)
                                            end
                                        end
                                        if  #roomList == 0 then
                                            if ret.code then
                                                returnCode = ret.code
                                            else
                                                returnCode = "the length of ret.data:"..#ret.data
                                            end
                                        end
                                    else
                                        if ret.code then
                                            returnCode = ret.code
                                        else
                                            returnCode = "get empty ret.data"
                                        end
                                    end
                                else
                                    returnCode = "get empty ret.ret"
                                end
                            else
                                returnCode = "get empty ret overtime"
                            end
                        end    
                    end
                until true 
                
                if showLoadLoop then HideLoadLoopFrameByTag(loopTag) end
            
                return roomList, loginSuc, returnCode
            end

            --2022-11-15 开始游戏msgBoxExitGame值置0
            function ReportGameLoadNativeCall(cid)
                friendservice.msgBoxExitGame = 0
                GetInst("ReportGameDataManager"):SetGameLoadType(GetInst("ReportGameDataManager"):GetGameLoadTypeDefine().gameCreate)
                GetInst("ReportGameDataManager"):SetStartLoadTime(os.time())
                GetInst("ReportGameDataManager"):SetCId(cid)
                --standby1
                -- " 启动类型 格式：A#B#C#D
                -- A位 区分生产内容还是消费内容 1：开发模式 2：非开发模式 
                -- B位 区分创建还是加入 1:创建 2:加入 
                -- C位 区分联机类型 1:本地单机 2:联机 3:好友联机 4：单人游戏
                -- D位   区分房间类型 个位 1:官方云服（迷你队长）；2：手机服务器；3：PC服 务器 4： 普通云服 5：私有云服（租赁服+私有服）"
                local develop =  GetInst("ReportGameDataManager"):GetCurWorldRptDev(cid)  --A位  区分生产内容还是消费内容 1：开发模式 2：非开发模式 
                local createOrJoin = 1 --B位 区分创建还是加入 1:创建 2:加入 
                local netType = GetInst("ReportGameDataManager"):GetGameNetType() --C位 区分联机类型 1:本地单机 2:联机 3:好友联机 4：单人游戏 99:异常
                if netType == nil then
                    if AccountManager:getMultiPlayer() == 0 then
                        netType = "1"
                    else
                        if IsArchiveMapCollaborationMode() then
                            netType = "3"
                        else
                            netType = "2"
                        end
                    end
                end

                local roomType = 0 --D位   区分房间类型 个位 1:官方云服（迷你队长）；2：手机服务器；3：PC服务器 4： 普通云服 5：私有云服（租赁服+私有服）"
                if GetInst("mainDataMgr"):AB_singleP2P() and GetInst("RoomService"):CheckMapSupportQuickupRent(cid) then
                    roomType = 5
                else
                    if ClientMgr:isMobile() then
                        roomType = 2
                    end
                    if ClientMgr:isPC() then
                        roomType = 3
                    end
                end

                local standby1 = develop.."#"..createOrJoin.."#"..netType.."#"..roomType
                GetInst("ReportGameDataManager"):SetGameLoadParamStandby1(standby1)
            
                --standby2
                --  " 地图类型  格式：A#B#C
                -- A位 区分地图的模式 ：地图类型: 0:冒险模式（经典） 1：创造模式（编辑）2：冒险模式（极限）3:创造模式（转模拟冒险） 4.开发者模式（编辑）5.开发者模式（玩法）6:冒险模式（高级） 
                -- B位 区分地图的状态 ：地图状态：1-未上传 2-公开 3-私有
                -- C位 区分地图所属作者：1：自己地图 2：别人地图"
                local mapMode = GetInst("ReportGameDataManager"):GetGameMapMode() -- A位 区分地图的模式 ：地图类型: 0:冒险模式（经典） 1：创造模式（编辑）2：冒险模式（极限）3:创造模式（转模拟冒险） 4.开发者模式（编辑）5.开发者模式（玩法）6:冒险模式（高级） 
                if mapMode == nil then
                    mapMode = GetInst("ReportGameDataManager"):GetGameMode().mapMode 
                end
                if mapMode == "null" and cid then
                    local worldDesc = AccountManager:findWorldDesc(tonumber(cid))
                    if  worldDesc then
                        mapMode =  worldDesc.worldtype
                    end
                end

                local mapState =  GetInst("ReportGameDataManager"):GetMapState(cid) -- B位 区分地图的状态 ：地图状态：1-未上传 2-公开 3-私有

                local mapOwn = GetInst("ReportGameDataManager"):GetGameMapOwn() -- C位 区分地图所属作者：1：自己地图 2：别人地图"
                if mapOwn == nil then
                    mapOwn = GetInst("ReportGameDataManager"):GetGameOwn().mapOwn
                end
                
                local standby2 = mapMode.."#"..mapState.."#"..mapOwn
                GetInst("ReportGameDataManager"):SetGameLoadParamStandby2(standby2)

                --standby3
                --rommid

                local tb = {}
                standReportGameParam = GetInst("ReportGameDataManager"):GetGameLoadParam() or {}
                if type(standReportGameParam) == "table" then
                    tb = standReportGameParam
                    if tb.sceneid == nil then
                        tb.sceneid = ""
                    end
                    if tb.cardid == nil then
                        tb.cardid = ""
                    end
                    if tb.compid == nil then
                        tb.compid = ""
                    end
                else
                    standReportGameParam = {}
                end
                tb.cid = cid
                if GetInst("ReportGameDataManager"):GetJoinSlot() ~= nil then
                    tb.slot = GetInst("ReportGameDataManager"):GetJoinSlot() 
                end
            

                standReportEvent(tb.sceneid,tb.cardid,tb.compid,"game_start",tb)

                -- standReportGameParam = nil
            end
            
            --2022-11-15 加入游戏msgBoxExitGame值置0
            function ReportGameJoinLoadCall(index, roomDesc, appendTb)
                friendservice.msgBoxExitGame = 0
                GetInst("ReportGameDataManager"):SetGameLoadType(GetInst("ReportGameDataManager"):GetGameLoadTypeDefine().gameJoin)
                GetInst("ReportGameDataManager"):SetStartLoadTime(os.time())
                local cid
                local roomType = 0 --D位   区分房间类型 个位 1:官方云服（迷你队长）；2：手机服务器；3：PC服务器 4： 普通云服 5：私有云服（租赁服+私有服）"
                local roomID
            
                if GetInst("ReportGameDataManager"):GetRoomType() ~= nil then
                    roomType = GetInst("ReportGameDataManager"):GetRoomType()
                end
                if GetInst("ReportGameDataManager"):GetCId() ~= nil then
                    cid = GetInst("ReportGameDataManager"):GetCId()
                end
                if GetInst("ReportGameDataManager"):GetGameJoinParamStandby3() ~= nil then
                    roomID = GetInst("ReportGameDataManager"):GetGameJoinParamStandby3()
                end
                local isP2pSingleRoom = false
                if roomDesc then
                    roomType = AllRoomManager:GetJoinRoomType(roomDesc) 
                    local rpt = AllRoomManager:CalculateRoomDescReportTb(roomDesc) or {}
                    if roomID == nil then
                        roomID = rpt.standby2
                        GetInst("ReportGameDataManager"):SetGameJoinParamStandby3(roomID)
                    end
                    if cid == nil then
                        cid = tostring(rpt.cid  or "0")
                    end
                    isP2pSingleRoom = RoomInteractiveData.RoomInfoMgr:parseRoomDescToShare(roomDesc).isP2pSingleRoom
                end
            
                if GetInst("ReportGameDataManager"):GetCId() == nil then
                    GetInst("ReportGameDataManager"):SetCId(cid)
                end
            
                --standby1
                -- " 启动类型 格式：A#B#C#D
                -- A位 区分生产内容还是消费内容 1：开发模式 2：非开发模式 
                -- B位 区分创建还是加入 1:创建 2:加入 
                -- C位 区分联机类型 1:本地单机 2:联机 3:好友联机 4：单人游戏
                -- D位   区分房间类型 个位 1:官方云服（迷你队长）；2：手机服务器；3：PC服 务器 4： 普通云服 5：私有云服（租赁服+私有服）"
                local develop =  GetInst("ReportGameDataManager"):GetCurWorldRptDev(cid)  --A位  区分生产内容还是消费内容 1：开发模式 2：非开发模式 
                local createOrJoin = GetInst("ReportGameDataManager"):GetGameLoadTypeDefine().gameJoin --B位 区分创建还是加入 1:创建 2:加入 
                local netType = GetInst("ReportGameDataManager"):GetGameNetType() --C位 区分联机类型 1:单机模式 2:联机模式 3： 好友联机（国内8月版本下掉）4：离线模式（联机时网络差自动转离线单机） 99:异常
                if isP2pSingleRoom then
                    netType = GetInst("ReportGameDataManager"):GetGameNetTypeDefine().singlePlayMode
                else
                    if netType == nil then
                        if AccountManager:getMultiPlayer() == 0 then
                            netType = GetInst("ReportGameDataManager"):GetGameNetTypeDefine().singleMode
                        else
                            if IsArchiveMapCollaborationMode() then
                                netType = GetInst("ReportGameDataManager"):GetGameNetTypeDefine().friendOnlineMode
                            else
                                netType = GetInst("ReportGameDataManager"):GetGameNetTypeDefine().onlineMode
                            end
                        end
                    end
                end
            
                local standby1 = develop.."#"..createOrJoin.."#"..netType.."#"..roomType
                GetInst("ReportGameDataManager"):SetGameJoinParamStandby1(standby1)
             
                --standby2
              
                --  " 地图类型  格式：A#B#C
                -- A位 区分地图的模式 ：地图类型: 0:冒险模式（经典） 1：创造模式（编辑）2：冒险模式（极限）3:创造模式（转模拟冒险） 4.开发者模式（编辑）5.开发者模式（玩法）6:冒险模式（高级） 
                -- B位 区分地图的状态 ：地图状态：1-未上传 2-公开 3-私有
                -- C位 区分地图所属作者：1：自己地图 2：别人地图"
            
                local mapMode = "null" -- A位 区分地图的模式 ：地图类型: 0:冒险模式（经典） 1：创造模式（编辑）2：冒险模式（极限）3:创造模式（转模拟冒险） 4.开发者模式（编辑）5.开发者模式（玩法）6:冒险模式（高级） 
                local mapState =  2 -- B位 区分地图的状态 ：地图状态：1-未上传 2-公开 3-私有
                local mapOwn  -- C位 区分地图所属作者：1：自己地图 2：别人地图"
                local ownUin  = OWorldUtils:getUinFromOWID(cid or "0")
                if ownUin == AccountManager:getUin() then
                    mapOwn = GetInst("ReportGameDataManager"):GetGameMapOwnDefine().myMap
                else
                    mapOwn = GetInst("ReportGameDataManager"):GetGameMapOwnDefine().otherMap
                end
                threadpool:work(function ()
                    ReqMapInfo({cid},function (maps)
                        if maps and #maps > 0 then
                            local map = maps[1];
                            mapMode = map.worldtype -- A位 区分地图的模式 ：地图类型: 0:冒险模式（经典） 1：创造模式（编辑）2：冒险模式（极限）3:创造模式（转模拟冒险） 4.开发者模式（编辑）5.开发者模式（玩法）6:冒险模式（高级） 
                            local standby2 = mapMode.."#"..mapState.."#"..mapOwn
                            GetInst("ReportGameDataManager"):SetGameJoinParamStandby2(standby2)
                            --standby3
                            if GetInst("ReportGameDataManager"):GetGameJoinParamStandby3() == nil then
                                GetInst("ReportGameDataManager"):SetGameJoinParamStandby3(roomID)
                            end
                            local tb = {} 
                            standReportJoinParam = GetInst("ReportGameDataManager"):GetGameJoinParam() or {}
                            if type(standReportJoinParam) == "table" then
                                tb = standReportJoinParam
                            else
                                standReportJoinParam = {}
                            end
                            tb.cid = cid
            
                            if "table" ~= type(appendTb) then
                                appendTb = {}
                            end
                            for key, value in pairs(appendTb) do
                                if key ~= "standby3" then
                                    tb[key] = value
                                end
                            end
            
                            if GetInst("ReportGameDataManager"):GetJoinSlot() ~= nil then
                                tb.slot = GetInst("ReportGameDataManager"):GetJoinSlot() 
                            end
                            standReportEvent(GetInst("ReportGameDataManager"):GetGameJoinParam().sceneid,GetInst("ReportGameDataManager"):GetGameJoinParam().cardid,
                                            GetInst("ReportGameDataManager"):GetGameJoinParam().compid,"game_start",tb)
            
                        else
                            if roomDesc and roomDesc.worldtype then
                                mapMode = roomDesc.worldtype
                            end            
                            local standby2 = mapMode.."#"..mapState.."#"..mapOwn
                            GetInst("ReportGameDataManager"):SetGameJoinParamStandby2(standby2)
                            --standby3
                            if GetInst("ReportGameDataManager"):GetGameJoinParamStandby3() == nil then
                                GetInst("ReportGameDataManager"):SetGameJoinParamStandby3(roomID)
                            end
                            local tb = {} 
                            standReportJoinParam = GetInst("ReportGameDataManager"):GetGameJoinParam() or {}
                            if type(standReportJoinParam) == "table" then
                                tb = standReportJoinParam
                            else
                                standReportJoinParam = {}
                            end
                            tb.cid = cid
                        
                            if "table" ~= type(appendTb) then
                                appendTb = {}
                            end
                            for key, value in pairs(appendTb) do
                                if key ~= "standby3" then
                                    tb[key] = value
                                end
                            end
                            if GetInst("ReportGameDataManager"):GetJoinSlot() ~= nil then
                                tb.slot = GetInst("ReportGameDataManager"):GetJoinSlot() 
                            end
                            standReportEvent(GetInst("ReportGameDataManager"):GetGameJoinParam().sceneid,GetInst("ReportGameDataManager"):GetGameJoinParam().cardid,
                                            GetInst("ReportGameDataManager"):GetGameJoinParam().compid,"game_start",tb)
                        end
                    end)
                end)
            end

        end
    },
    {
		-- by liwentao
		-- 2022.11.17
		ver_list = "1.20.0 1.20.2 1.20.4 1.20.5 1.20.6 1.20.10",
		install = function()
			SyncArchiveGradeFrameRewardBtnClicked = ArchiveGradeFrameRewardBtnClicked
			function ArchiveGradeFrameRewardBtnClicked()
				threadpool:work(function() SyncArchiveGradeFrameRewardBtnClicked() end)
			end

			MapRewardClass = MapRewardClass or {}
			MapRewardClass.RewardMap = function(self)
				local code, result = MapRewardClass:RequestRewardMaps();
				print("MapRewardClass:RewardMap", result);
				if result then
					if result.ret == 0 then
						ShowGameTips(GetS(21790), 3);

						MapRewardClass:UpWidIntoCache(1);

						getglobal("ArchiveGradeFrameRewardBtn"):Hide();
						getglobal("ArchiveGradeFrameRewardedTex"):Show();
						getglobal("ArchiveGradeFrameRewardedTxt"):Show();
						
						local itemInfo = MapRewardClass:GetRewardItemInfo();
						local score = self:GetMapTotlaScore();
						print("MapRewardClass:RewardMap2",score, itemInfo.BlockValue)
						if itemInfo.BlockValue then
							score = score + itemInfo.BlockValue;
							self:SetMapTotlaScore(score);
						end

						MapRewardClass:SetMapTotlaScore(score);
						getglobal("ArchiveGradeFrameRewardedNumNum"):SetText(score);
						OpenMapRewardMessageBox();
						if itemInfo.PresentList and string.len(itemInfo.PresentList) > 0 then
							local presentId = itemInfo.PresentList;
							local presentNum = itemInfo.PresentNumList;
							local itemInfo = {};
							itemInfo[1] = {};
							itemInfo[1]["id"] = tonumber(presentId);
							itemInfo[1]["num"] = tonumber(presentNum);
							SetGameRewardFrameInfo(GetS(21789), itemInfo, GetS(21811));
						end 

						GetInst("UIManager"):GetCtrl("MapReward"):RewardSelectFrameCloseBtnClicked();
						-- NewBattlePassEventOnTrigger("deliverchunk"); --悦享卡投块任务类型上报 不存在deliverchunk上报类型
						NewBattlePassEventOnTrigger("deliverhunk");
						
						--刷新一下 地图详情上的投块
						local archiveInfoDetailCtrl = GetInst("MiniUIManager"):GetCtrl("ArchiveInfoDetail")
						if archiveInfoDetailCtrl then
							archiveInfoDetailCtrl:RefreshRewardInfo()
						end
					else
						if result.ret == 5 then
							ShowGameTips(GetS(21830));
						else
							ShowGameTips(GetS(4729) .. result.ret);
						end
					end
				else
					ShowGameTips(GetS(4729) .. result.ret);
				end
			end
		end
	},
	{
		-- by rice
		ver_list = "1.20.10",
		install = function()
			--   2022-11-22 判定当前房间的人数大于等于房间最大人数
			local FriendMgr = ClassList["FriendMgr"] or {};
			FriendMgr.CheckBtnTraceStateCondition = function(self,ingameExdata)
				local defStateType = self.define.defineBtnTraceStateType
				
				if ClientCurGame:isInGame() then
					return self.define.defineBtnTraceStateType.inGame, GetS(111360), GetS(111358)
				end
				if "table" ~= type(ingameExdata) then
					--容错，万一传了错误参数，当单人游戏处理
					return self.define.defineBtnTraceStateType.single, GetS(1112918), GetS(1112918)
				end
			
				local myVer = math.floor(ClientMgr:clientVersion()/256)
				local diffResult = FriendMgr:DiffTwoVersionFunc(myVer,ingameExdata.roomHostClientVer)
				if diffResult ~= 0 then
					return self.define.defineBtnTraceStateType.diffVersion, GetS(111359), GetS(diffResult)
				end	
			
				if ingameExdata.bolJoinWhenPlaying == false then
					return self.define.defineBtnTraceStateType.fobridenJoinInPlaying, GetS(111360), GetS(111355)
			
				elseif ingameExdata.bolSettlement then
					return self.define.defineBtnTraceStateType.forbidenInSettle, GetS(111360), GetS(111354)
			
				elseif ingameExdata.curPlayerNum >= ingameExdata.maxPlayerNum  then
					return self.define.defineBtnTraceStateType.forbidenFullRoom, GetS(111360), GetS(111353)
			
				else
					--代表check通过，不提供contentTxt(建议常驻显示文本), tipsTxt（建议toast文本）
					return self.define.defineBtnTraceStateType.normal, "", ""
				end
			end

			--   2022-11-22 版本比较优化代码
			FriendMgr.DiffTwoVersionFunc = function(self,myVer,diffVer)
				if myVer == nil then
					return 0
				end
				if diffVer == nil then
					return 0
				end
				if myVer == diffVer then
					return 0; --版本相同
				elseif myVer < diffVer then
					return 111210 --您的游戏版本过低，请更新游戏~
				else
					return 111356 --对方游戏版本过低，请提醒对方更新游戏~
				end
			end
			
			--   2022-11-22 判定当前房间的人数大于等于房间最大人数
			if FriendTraceMgr and FriendTraceMgr.RefreshTrackBtn then
				FriendTraceMgr.RefreshTrackBtn = function(self,trackBtn, fridUin, ingameExdata)
					if not trackBtn then
						return false
					end
				
					local bgkAllow = getglobal(trackBtn:GetName() .. "BkgAllow")
					local bgkApply = getglobal(trackBtn:GetName() .. "BkgApply")
					local bgkProcessing = getglobal(trackBtn:GetName() .. "BkgProcessing")
					local bgkReject = getglobal(trackBtn:GetName() .. "BkgReject")
				
					trackBtn:Hide()
					bgkAllow:Show()
					bgkApply:Hide()
					bgkProcessing:Hide()
					bgkReject:Hide()
					trackBtn:Enable(false)
					trackBtn:SetGray(false)
				
					if not ingameExdata then
						local fridData = GetFriendDataByUin(fridUin)
						if fridData and fridData.is_online and fridData.is_ingame then
							ingameExdata = fridData.ingame_exdata
						else
							trackBtn:SetGray(true)
							trackBtn:Disable(false)
							return false
						end
					end    
				
					if not ingameExdata then
						return false
					end
				
					if ingameExdata.canFriendTrace then
						trackBtn:Show()
						bgkAllow:Show()
						if ingameExdata.isP2pSingleRoom then
							self:RptTraceBtnStatus(fridUin, ingameExdata.hostGameTk, self.define.traceConfirmStep.Allow)
						end
						local myVer = math.floor(ClientMgr:clientVersion()/256)
						if ClientCurGame:isInGame() or myVer ~=  ingameExdata.roomHostClientVer or ingameExdata.bolSettlement or ingameExdata.curPlayerNum >= ingameExdata.maxPlayerNum or ingameExdata.bolJoinWhenPlaying == false  then
							trackBtn:SetGray(true)
						end
						return true
					end
				
					if ingameExdata.canConfirmTrace then
						trackBtn:Show()
						bgkAllow:Hide()
				
						local confirmStep = self:__TraceConfirmStep(fridUin, ingameExdata.hostGameTk)
						if confirmStep == self.define.traceConfirmStep.Allow then
							trackBtn:Show()
							bgkAllow:Show()
						elseif confirmStep == self.define.traceConfirmStep.Reject then
							trackBtn:Show()
							bgkReject:Show()
							trackBtn:SetGray(true)
							trackBtn:Disable(false)
						elseif confirmStep == self.define.traceConfirmStep.Req then
							trackBtn:Show()
							bgkProcessing:Show()
							trackBtn:SetGray(true)
							trackBtn:Disable(false)
						else
							trackBtn:Show()
							bgkApply:Show()
						end
						if ingameExdata.isP2pSingleRoom then
							self:RptTraceBtnStatus(fridUin, ingameExdata.hostGameTk, confirmStep)
						end
						return true
					end
				
					return false
				end
			end
		end
	},
    {
        -- by rice
       ver_list = "1.20.10",
       install = function ()
             --   2022-11-23 优化线程未启动的bug
            if FriendTraceMgr and FriendTraceMgr.__TraceNormal then
                FriendTraceMgr.__TraceNormal = function(self,desUin, ingameExdata, rptInfo)
                    local roomID = ingameExdata.roomID
                    if ingameExdata.canFriendTrace then
                        if ingameExdata.isP2pSingleRoom and rptInfo then
                            rptInfo.compid = "Card"
                            local reportData = {}
                            reportData.standby1 = self:__TransStepToStdby1(self.define.traceConfirmStep.Allow)
                            reportData.standby2 = desUin
                            reportData.standby3 = FriendMgr:BolInMapPlay()
                            InsertStandReportGameJoinParamArg({sceneid=rptInfo.sceneid,cardid=rptInfo.cardid,compid=rptInfo.compid})
                            GetInst("ReportGameDataManager"):NewGameJoinParam(rptInfo.sceneid,rptInfo.cardid,rptInfo.compid)
                        end
                        if threadpool.running then
                            self:__DoEnterRoom(roomID, rptInfo)
                        else 
                            threadpool:work(function()
                                self:__DoEnterRoom(roomID, rptInfo)
                            end)
                        end
                    elseif ingameExdata.canConfirmTrace then
                        local confirmStep = self:__TraceConfirmStep(desUin, ingameExdata.hostGameTk)
                        if ingameExdata.isP2pSingleRoom and rptInfo then
                            local reportData = {}
                            reportData.standby1 = self:__TransStepToStdby1(confirmStep)
                            reportData.standby2 = desUin
                            reportData.standby3 = FriendMgr:BolInMapPlay()
                            InsertStandReportGameJoinParamArg({sceneid=rptInfo.sceneid,cardid=rptInfo.cardid,compid=rptInfo.compid})
                            GetInst("ReportGameDataManager"):NewGameJoinParam(rptInfo.sceneid,rptInfo.cardid,rptInfo.compid)
                        end
                        if confirmStep == self.define.traceConfirmStep.Allow then
                            if threadpool.running then
                                self:__DoEnterRoom(roomID, rptInfo)
                            else 
                                threadpool:work(function()
                                    self:__DoEnterRoom(roomID, rptInfo)
                                end)
                            end
                        elseif confirmStep == self.define.traceConfirmStep.Reject then
                            ShowGameTips(GetS(28833))
                            if rptInfo.bolReport then
                                ReportBeforeJoinFailedCall(GetS(28833))
                            end
                        elseif confirmStep == self.define.traceConfirmStep.Req then
                            ShowGameTips(GetS(28832))
                            if rptInfo.bolReport then
                                ReportBeforeJoinFailedCall(GetS(28832))
                            end
                        else
                            self:__ReqTraceConfirm(desUin, ingameExdata.hostGameTk)
                            ShowGameTips(GetS(28835))
                            if rptInfo.bolReport then
                                ReportBeforeJoinFailedCall(GetS(28835))
                            end
                        end
                    else
                        ShowGameTips(GetS(28834))
                        if rptInfo.bolReport then
                            ReportBeforeJoinFailedCall(GetS(28834))
                        end
                    end
                end             
            end
    
             -- 2022-11-23 补充一键加入云服埋点信息
             local RoomService = ClassList["RoomService"] or {};
             RoomService.ReqQueryQuickupCSRoom = function(self,roomid, spData)
               local returnRet = {
                   roomDesc = nil,
                   tipsStrId = nil,
               }
               if not roomid then
                   returnRet.tipsStrId = "roomid is null"
                   return returnRet
               end
               
               spData = spData or {}
               local failedCode = RoomService.failed_code.ROOM_NOT_EXISTS
               local baseUrl = self:GetQuickupRentBaseUrl(spData.rentDebug)
               spData.outtime = spData.outtime or 6
           
               local url = baseUrl .. "v2/room/query"
               local append = {
                   roomid = roomid,
                   game_session_id = 'nil',
           
                   scene = spData.scene or enum_scene.Activity, --场景id 大厅18 地图详情48 地图房间列表48/1004 活动50 联机失败后兜底51
                   appid = spData.appid or enum_appid.Mini, --业务id  迷你世界1000 
               }
               local postStr = self:GetAppendQuickupPostData(append)
           
               local retStr = self:SyncRpcPost(url, postStr, spData.outtime, spData.showLoadLoop, 2)
           
               print("ReqQueryQuickupCSRoom retStr " .. tostring(retStr))
               
               repeat
                   if not retStr then
                       returnRet.tipsStrId = "retStr is null"
                       break
                   end
                   
                   local ok, ret = pcall(JSON.decode, JSON, retStr);
                   if not (ok and type(ret) == 'table') then
                       failedCode = RoomService.failed_code.ROOM_NOT_EXISTS
                       returnRet.tipsStrId = self:GetErrorCodeTip(failedCode)
                       break
                   end
               
                   if ret.code ~= 0 then
                       -- failedCode = ret.code*1000 + RoomService.failed_code.ROOM_NOT_EXISTS
                       local code = tonumber(ret.code)
                       local codeStringID = 35888
                       if self.define.errorCode[code] then
                           codeStringID = self.define.errorCode[code]
                       end
                       returnRet.tipsStrId = codeStringID
                       break
                   end
               
                   local _, port = pcall(tonumber, ret.port)
                   if not (port and port > 0) then
                       failedCode = RoomService.failed_code.NO_PORT
                       returnRet.tipsStrId = "lack port"
                       break
                   end
                   ret.port = port
           
                   --test
                   -- ret.passwd_md5 =  gFunc_getmd5("1234" .. ret.roomid)
                   --endtest
                   returnRet.roomDesc = ret
               until true
           
               return returnRet
             end
    
           -- 2022-11-23 失败错误码补充result信息
           RoomService.ReqRoomListByUinSync = function(self,uin, rtype, showLoadLoop, spData)    
                local roomList = {}
                local errorTip = nil
                rtype = rtype or 0
                spData = spData or {}
                local loginSuc = false
                local returnCode
                local ignoreTimeout = 0
                if spData.ignoreTimeout then
                    ignoreTimeout = spData.ignoreTimeout
                end
                
                if showLoadLoop == nil then showLoadLoop = true end
                local loopTag = "file:RoomService - func:ReqRoomListByUinSync " .. gen_gid()
                if showLoadLoop then ShowLoadLoopFrame(true, loopTag) end
                repeat
                    --登录房间服务器
                    local genkey, gid = GetInst("UIEvtHook"):GenKeyWithPrefix(self.EVT_GEN_PREFIX_SYNC_THREAD_NOTIFY)
                    self:InsertSyncWaitingStatus(true, genkey)
                    if not AccountManager:loginRoomServer(false, 0, genkey) then
                        returnCode = GetS(146)
                        break
                    end
                    loginSuc = true
                    
                    if self:FindSyncWaitingStatus(genkey) then
                        local code, _ret = threadpool:wait(gid, 2);
                        if code ~= ErrorCode.OK then
                            returnCode = "request room info failed,rtype:"..rtype.." code:"..code
                            break
                        end
                        if  _ret ~= genkey then
                            returnCode = "request room info failed,rtype:"..rtype.." _ret:".._ret.." genkey:"..genkey
                            break
                        end
                    end
            
                    local filterConnectMode = spData.connect_mode or 0
                    --请求普通房间数据
                    if rtype <= 0 then
                        genkey, gid = GetInst("UIEvtHook"):GenKeyWithPrefix(self.EVT_GEN_PREFIX_SYNC_THREAD_NOTIFY)
                        self:InsertSyncWaitingStatus(true, genkey)
                        if AccountManager:requestRoomListByUin(uin, nil, genkey,ignoreTimeout) then
                            if self:FindSyncWaitingStatus(genkey) then
                                local code, _ret, result,failreason = threadpool:wait(gid, spData.outtime or 5);
                                if code == ErrorCode.OK and _ret == genkey then
                                    returnCode = "result："..result.." failreason:"..failreason
                                    local num = AccountManager:getNumRoom()
                                    for i = 1, num do
                                        local roomDesc = AccountManager:getIthRoom(i-1)
                                        if roomDesc and (filterConnectMode == "any" or roomDesc.connect_mode == filterConnectMode) then
                                            table.insert(roomList, AllRoomManager:TransNormalRoomToLuaTb(roomDesc))
                                        end
                                    end
                                    if returnCode == nil and #roomList == 0 then
                                        returnCode = "get roomInfo failed getNumRoom:"..num
                                    end
                                end
                                if code ~= ErrorCode.OK then
                                    returnCode = "wait overtime 1 code:"..code
                                    break
                                end
                                if _ret ~= genkey  then
                                     returnCode = "wait overtime 2 _ret:".._ret.." genkey:"..genkey
                                     break
                                end
                            end
                        else
                            returnCode = GetS(146).."2"
                        end
                    end
            
                    if rtype >= 0 then
                        --请求云服房间数据
                        uin = getLongUin(uin);  --海外加10亿
                        if ns_version and ns_version.proxy_url then
                            local url = ns_version.proxy_url .. '/miniw/rent_server?act=getUinRoomList&search=1&op_uin='..uin.."&" .. http_getS1Map();
                            local ret = self:SyncRpc(url, spData.outtime or nil, false)
                            if ret == nil then
                                returnCode = "get empty ret overtime"
                                break
                            end
                            if  ret.ret == nil then
                                if  ret.code then
                                    returnCode = "get empty ret.ret,ret.code:"..ret.code
                                else
                                    returnCode = "get empty ret.ret"
                                end
                                break
                            end
                            if ret.ret == 0  then
                                if ret.data == nil then
                                    if  ret.code then
                                        returnCode = "get empty ret.data,ret.code:"..ret.code
                                    else
                                        returnCode = "get empty ret.data"
                                    end
                                    break
                                else
                                    for _, data in ipairs(ret.data) do
                                        if rtype == 0 or uin .. "_" .. rtype == data._k_ then
                                            table.insert(roomList, data)
                                        end
                                    end
                                    if  #roomList == 0 and ret.code then
                                        returnCode = "the length of ret.data:"..#ret.data.." ret.code:"..ret.code
                                    else
                                        returnCode = "the length of ret.data:"..#ret.data
                                    end
                                    break
                                end
                            else
                                if  ret.code then
                                    returnCode = "get wrong ret.ret:"..ret.ret.." ret.code:"..ret.code
                                else
                                    returnCode = "get wrong ret.ret:"..ret.ret
                                end
                                break
                            end
                        end    
                    end
                until true 
                
                if showLoadLoop then HideLoadLoopFrameByTag(loopTag) end
            
                return roomList, loginSuc, returnCode
            end
            
    
           
       end
    },
    
    {
        -- by rice
        ver_list = "1.20.10",
        install = function()
            --   2022-11-23 优化老版本没有判定参数的情况
            if FriendTraceMgr and FriendTraceMgr.RefreshTrackBtn then
                FriendTraceMgr.RefreshTrackBtn = function(self,trackBtn, fridUin, ingameExdata)
                    if not trackBtn then
                        return false
                    end
                
                    local bgkAllow = getglobal(trackBtn:GetName() .. "BkgAllow")
                    local bgkApply = getglobal(trackBtn:GetName() .. "BkgApply")
                    local bgkProcessing = getglobal(trackBtn:GetName() .. "BkgProcessing")
                    local bgkReject = getglobal(trackBtn:GetName() .. "BkgReject")
                
                    trackBtn:Hide()
                    bgkAllow:Show()
                    bgkApply:Hide()
                    bgkProcessing:Hide()
                    bgkReject:Hide()
                    trackBtn:Enable(false)
                    trackBtn:SetGray(false)
                
                    if not ingameExdata then
                        local fridData = GetFriendDataByUin(fridUin)
                        if fridData and fridData.is_online and fridData.is_ingame then
                            ingameExdata = fridData.ingame_exdata
                        else
                            trackBtn:SetGray(true)
                            trackBtn:Disable(false)
                            return false
                        end
                    end    
                
                    if not ingameExdata then
                        return false
                    end
                
                    if ingameExdata.canFriendTrace then
                        trackBtn:Show()
                        bgkAllow:Show()
                        if ingameExdata.isP2pSingleRoom then
                            self:RptTraceBtnStatus(fridUin, ingameExdata.hostGameTk, self.define.traceConfirmStep.Allow)
                        end
                        local bolGray = false
                        local myVer = math.floor(ClientMgr:clientVersion()/256)
                        if ingameExdata.roomHostClientVer == nil then
                            bolGray = true
                        else
                            if myVer ~=  ingameExdata.roomHostClientVer then
                                bolGray = true
                            end
                        end
                        if ingameExdata.bolSettlement ~= nil and ingameExdata.bolSettlement then
                            bolGray = true
                        end
                        if ingameExdata.bolJoinWhenPlaying ~= nil and  ingameExdata.bolJoinWhenPlaying == false then
                            bolGray = true
                        end
                        if ClientCurGame:isInGame() or ingameExdata.curPlayerNum >= ingameExdata.maxPlayerNum then
                            bolGray = true
                        end
                        trackBtn:SetGray(bolGray)
                        return true
                    end
                
                    if ingameExdata.canConfirmTrace then
                        trackBtn:Show()
                        bgkAllow:Hide()
                
                        local confirmStep = self:__TraceConfirmStep(fridUin, ingameExdata.hostGameTk)
                        if confirmStep == self.define.traceConfirmStep.Allow then
                            trackBtn:Show()
                            bgkAllow:Show()
                        elseif confirmStep == self.define.traceConfirmStep.Reject then
                            trackBtn:Show()
                            bgkReject:Show()
                            trackBtn:SetGray(true)
                            trackBtn:Disable(false)
                        elseif confirmStep == self.define.traceConfirmStep.Req then
                            trackBtn:Show()
                            bgkProcessing:Show()
                            trackBtn:SetGray(true)
                            trackBtn:Disable(false)
                        else
                            trackBtn:Show()
                            bgkApply:Show()
                        end
                        if ingameExdata.isP2pSingleRoom then
                            self:RptTraceBtnStatus(fridUin, ingameExdata.hostGameTk, confirmStep)
                        end
                        return true
                    end
                
                    return false
                end                
            end
    
            --2022-11-24 修复邀请好友流程被打断的bug
            if FriendTraceMgr and FriendTraceMgr.GetNameByUin then
                FriendTraceMgr.GetNameByUin = function (self,uin, callfun)
                    local callBack = function (ret)
                        local name = ""
                        if ret.ret == 1 then
                        else -- ret.ret == 404 新用户
                            t_exhibition.setRetToPoolByUin(ret, uin);
                            local profile = ret.profile;
                            if profile then 
                                if  profile.RoleInfo then
                                    name =  profile.RoleInfo.NickName or ""
                                end
                            end
                        end
                        callfun(name)
                    end
                    t_exhibition:GetPlayerProfileByUin(uin, callBack, nil)
                end
            end
    
            -- 2022-11-24  this:GetClientString()信息处理版本号判断为1.20.0
            function ChatMsgInviteJoinRoomJoinBtn_OnClick(parm)
                local uin 		
                local roomVer 
                local room_id 	
                local pw 	
                local guestInCollaborationMode 
                local msgTime 
                local worldID 
                local playerNum = 0
                local playerMaxNum = 0
                local bolSettlement = 0
                local bolJoinWhenPlaying = 1
                if parm and parm.inMap then
                    uin = parm.uin
                    roomVer = parm.roomVer 
                    room_id = parm.room_id
                    pw = parm.pw
                    guestInCollaborationMode = parm.guestInCollaborationMode 
                    msgTime = parm.msgTime or 0
                    worldID = parm.worldID or 1
                else
                    uin = this:GetClientUserData(0)
                    roomVer = this:GetClientUserData(1)
                    room_id = this:GetClientUserData(2)
                    guestInCollaborationMode = this:GetClientUserData(3)
                    msgTime = this:GetClientUserData(4) or 0
                    worldID = this:GetClientUserDataLL(0) or 1
                    if roomVer >= (1*65536+20*256+0) then
                        local clientTbl = JSON:encode(this:GetClientString())
                        if  type(clientTbl) == 'table' then
                            pw = clientTbl.pw
                            playerNum = clientTbl.playerNum
                            playerMaxNum = clientTbl.playerMaxNum
                            bolSettlement = clientTbl.bolSettlement
                            bolJoinWhenPlaying = clientTbl.bolJoinWhenPlaying
                        end
                    else
                        pw = this:GetClientString()
                    end
                end
                -- print("kekeke ChatMsgInviteJoinRoomJoinBtn_OnClick", uin, pw, roomVer, guestInCollaborationMode, worldID)
                local myVer = math.floor(ClientMgr:clientVersion()/256)
                local roomVer = math.floor(roomVer/256)
            
                -- 好友聊天详情页 房间邀请信息卡进入房间
                local eventTb = {
                    standby1 = tostring(CurrentTabIndex or 1), 	     -- 好友/群组
                    standby2 = tostring((uin == AccountManager:getUin()) and "1" or "2")     -- 1发送/2接收
                }
            
                FriendMgr:ReportFriendStandData("FRIEND_CHAT_CONTENT", "ChatMessage", "click", eventTb)
            
                local diffResult = FriendMgr:DiffTwoVersionFunc(myVer,roomVer)
                if diffResult ~= 0 then
                    ShowGameTips(GetS(diffResult), 3);
                    return
                end	
            
                if ClientCurGame:isInGame() then	--已经在存档内了
                    ShowGameTips(GetS(111358), 3) 
                    return;
                end
            
                if bolSettlement == 1 then --对局已结束
                    ShowGameTips(GetS(111354), 3) 
                    return;
                end
                if playerMaxNum > 0 and playerNum == playerMaxNum then --房间人数已满
                    ShowGameTips(GetS(111353), 3) 
                    return;
                end
                if bolJoinWhenPlaying == 0 then --房间不允许中途加入
                    ShowGameTips(GetS(111355), 3) 
                    return;
                end
            
            
            
                ----新增审核账号禁止联机功能，但审核开发者广告的仍可联机
                local checker_uin = AccountManager:getUin()
                if IsUserOuterChecker(checker_uin) and not DeveloperAdCheckerUser(checker_uin) then
                    ShowGameTips(GetS(100300), 3)
                    return
                end
            
                local rtb = {
                    sceneid="31",
                    cardid="FRIEND_CHAT_CONTENT",
                    compid="ChatMessage",
                    cid = worldID,
                }
            
                local homeWorldId = gFunc_GetHomeGardenWorldIDByUin(uin)
                if homeWorldId ~= worldID then
                    SetFriendChatFrameEnterGameBackInfo()
                end
            
                --租赁服邀请玩家逻辑
                if RentPermitCtrl:EnterInviteRoom(uin,room_id,pw,roomVer,rtb) then
                    return 
                end
            
                if guestInCollaborationMode == 1 then
                    local curTime = AccountManager:getSvrTime()
                    if curTime - msgTime > 60 then
                        ShowGameTips(GetS(28814), 3)
                        return
                    end
            
                    local addTime = GetAddFriendTime(uin)
                    if not IsMyFriend(uin) or not addTime then
                        MessageBox(4, GetS(25822))
                        return
                    end
            
                    local day = 7  --加好友时间默认最低限制为7天
                    if ns_version and ns_version.mapRoomInviteFriend and ns_version.mapRoomInviteFriend.day then
                        day = ns_version.mapRoomInviteFriend.day
                    end
                    
                    local timeDay= math.floor((curTime - addTime)/ (24*3600))
                    if timeDay < 1 then
                        timeDay = 1
                    end
            
                    if timeDay < day then
                        local msg = GetS(25827, day, timeDay)
                        MessageBox(4, msg)
                        return
                    end
                end
            
                -- ShowLoadLoopFrame3(true,"auto")
                ShowLoadLoopFrame3(true, "file:friend -- func:ChatMsgInviteJoinRoomJoinBtn_OnClick")
                ShowGameTips(GetS(1205), 3)
            
                local homeWorldId = gFunc_GetHomeGardenWorldIDByUin(uin)
                if homeWorldId == worldID then
                    EnterFriendHomeMap(uin, pw)
                else
                    t_autojump_service.play_together.anchorUin = uin
                    t_autojump_service.play_together.password = pw
                    t_autojump_service.play_together.type = "inviteroom"
                    t_autojump_service.play_together.worldId = worldID
                    t_autojump_service.play_together.GuestInCollaborationModeArr[worldID] = (guestInCollaborationMode == 1)
                    t_autojump_service.play_together.LoginRoomServer()
                end
            end
        end
    },
    {
		--by huangrulin
		--hrl20221123 家园好友家园列表 昵称不显示
		ver_list = "1.20.10",
		install = function()            
			UpdateFriendChest = function()
				local getglobal = getglobal;
				local num = 0;

				--可以在当前页显示的好友列表
				local t_ShowFriendList = friendservice.myfriends
				if friendservice.enabled then
					table.sort(friendservice.myfriends, MyFriendListSorter);
					EnsureHasMiniCaption();
					--手Q渠道
					if isShouQPlatform() then
						t_ShowFriendList = GetFriendList()
					end
					num = #t_ShowFriendList - 1;  --排除迷你队长
				else
					num = BuddyManager:getBuddyNum();
				end

				local plane = getglobal("FriendChestBoxPlane");
				if num <= 7 then
					plane:SetHeight(795);
				else
					plane:SetHeight(89 * num);
				end
				if num > 0 then
					getglobal("HomeChestFrameFriendListTips"):Hide();
				else
					getglobal("HomeChestFrameFriendListTips"):Show();
				end

				local index = 0;
				for i=1, 120 do
					local friendChest = getglobal("FriendChestBox"..i);
					if i <= num then
						local buddyDetail = nil;
						if not friendservice.enabled then
							buddyDetail = BuddyManager:getBuddyDetail(i-1);
						else
							buddyDetail = t_ShowFriendList[i + 1];  --第一个好友是迷你队长
						end
						if buddyDetail and buddyDetail.uin ~= 1000 then
							index = index + 1;
							friendChest:Show();

							local waterIcon 	= getglobal("FriendChestBox"..i.."WaterIcon");
							local head			= getglobal("FriendChestBox"..i.."Head");
							local name			= getglobal("FriendChestBox"..i.."Name");
							local uin 			= getglobal("FriendChestBox"..i.."Uin");
							local headFrame 	= getglobal("FriendChestBox"..i.."HeadFrame");

							local waterNum = AccountManager:getWater(buddyDetail.uin);
							local wormsNum = AccountManager:getWorms(buddyDetail.uin);

							waterIcon:Hide();
							if AccountManager:can_water(buddyDetail.uin) or AccountManager:can_bug(buddyDetail.uin) then
								if waterNum > 0 or wormsNum > 0 then
									waterIcon:Show();
								end
							end

							uin:SetText( getShortUin(buddyDetail.uin) );

							friendChest:SetClientID(buddyDetail.uin);

							if not friendservice.enabled then
								headFrame:Hide();

								local nickname = ReplaceFilterString(buddyDetail.nickname)
								nickname = GetNewFriendNote(buddyDetail.uin,nickname)
								name:SetText(nickname);

								local headIndex = buddyDetail.model;
								local skinModel = buddyDetail.skinid;
								if skinModel > 0 then
									local skinDef = RoleSkinCsv:get(skinModel);
									if skinDef ~= nil then
										headIndex = skinDef.Head;
									end
								end

								if t_exhibition:CheckProfileBlackStat(buddyDetail.uin) then 
									head:SetTextureCentrally("ui/snap_jubao.png");
								else
									head:SetTextureOriginally("ui/roleicons/"..headIndex..".png");
								end

								local vipinfo = buddyDetail.vipinfo;
								local uiVipIcon1 = getglobal("FriendChestBox"..i.."VipIcon1");
								local uiVipIcon2 = getglobal("FriendChestBox"..i.."VipIcon2");
								local vipDisp = UpdateVipIcons(vipinfo, uiVipIcon1, uiVipIcon2);
								name:SetPoint("topleft", "FriendChestBox"..i, "topleft", 73+vipDisp.nextUiOffsetX, 20);
							else
								headFrame:Show();
								local nickname = ReplaceFilterString(buddyDetail.name)
								nickname = GetNewFriendNote(buddyDetail.uin,nickname)
								name:SetText(nickname);
								--头像
								if buddyDetail.headurl and buddyDetail.headurl ~= "" then
									HeadCtrl:SetPlayerHead(head:GetName(),1,buddyDetail.headurl);
								else
									HeadCtrl:SetPlayerHeadByUin(head:GetName(),buddyDetail.uin,buddyDetail.headmodel,buddyDetail.headskin,buddyDetail.HasAvatar);
								end
								--头像框
								HeadFrameCtrl:SetPlayerheadFrameName( headFrame:GetName(),buddyDetail.headframe);
							end
						end
					else
						friendChest:Hide();
					end
				end
			end
		end
	},
    { 
        ver_list = "1.20.10", 
        install = function() 
            local ArchiveInfoDetailCtrl = ClassList["ArchiveInfoDetailCtrl"] or {}; 
            function ArchiveInfoDetailCtrl:DetailViewInteractRm2_downloadBtnClick(obj, context)
                local extend = {ctype = 1, standby1 = 1}
                
                local curArchiveMap = self.model:GetCurArchiveMap()
                local archiveWorldDesc = self.model:GetArchiveWorldDesc()
                local fromowid = archiveWorldDesc.fromowid	
                local isUpdate = self.model:CheckMapIsUpdate(fromowid, curArchiveMap.share_version)
                if isUpdate then
                    extend.standby1 = 2
                end	
                
                print("downloadBtnClick" .. extend.standby1)
                self:reportEvent('MINI_MAP_DETAIL_1', 'DownLoadButton', 'click', extend)
                
                self.model:SetDownAutoJumpCreate(false)
            
                self:DownloadMap(nil, true, 'DownLoadButton')
            end 
        end, 
    },
	{ 
		ver_list = "1.20.10 1.20.12 1.20.13", 
		install = function() 
		   -- by rice 打开地图事件c++调用lua
			-- 打开地图事件c++调用lua
			function reportGameOpenNativeCall(cid, addExit, game_session_id)
				local tb = {}
				standReportGameOpenParam = standReportGameOpenParam or {}
				if type(standReportGameOpenParam) == "table" then
					tb = standReportGameOpenParam
				else
					standReportGameOpenParam = {}
				end
				tb.cid = cid
				tb.standby3 = G_GetCurWorldRptDev(cid)
			
				local tmp = G_GetGameStandReportDataA() or {}
				if not tb.standby1 then
					tb.standby1 = tmp.standby1
				end
			
				if addExit then
					standReportEvent(standReportGameOpenParam.sceneid or "",standReportGameOpenParam.cardid or "",standReportGameOpenParam.compid or "", "game_exit", tb)
				end
			
				if "string" == type(game_session_id) and #game_session_id > 0 then
					tb.lua_game_session_id = game_session_id
				end
				DealGameopenReport(cid,tb)
			
				standReportEvent(standReportGameOpenParam.sceneid or "",standReportGameOpenParam.cardid or "",standReportGameOpenParam.compid or "","game_open",tb)
				if not standReportGameOpenParam.sceneid then
					if GetInst("ReportGameDataManager") then
					GetInst("ReportGameDataManager"):ResetGameLoadParam()
					GetInst("ReportGameDataManager"):ResetGameJoinParam()
					end
				end
				if ReportGameLoadNativeCall then
					ReportGameLoadNativeCall(cid,true)        
				end
				standReportGameOpenParam = nil
				standReportGameExitParam = {cid = cid}
			
				if newlobby_SaveMapHistory then
					newlobby_SaveMapHistory(cid)        
				end
			
				beginGameOpenInCallback = true
				--用户任务系统上报
				threadpool:work(function ()
					threadpool:wait(5);
					-- GetInst('UserTaskInterface'):UserTaskEventReport("MapEnter",1) -- 移动到SurviveGame_Enter
					-- GetInst('UserTaskInterface'):PlayerEnterGame() -- 移动到SurviveGame_Enter
			
				end)
			
				playerEnterRoomRecordFps()
			end

			-- 加入地图事件
			function reportGameJoinCall(index,roomDesc, appendTb)
				local tb = {}
				if type(standReportGameJoinParam) == "table" then
					tb = standReportGameJoinParam
				end
				if "table" ~= type(appendTb) then
					appendTb = {}
				end
				standReportGameJoinParam = {}
			
				local standby1 = nil
				if roomDesc then
					local rpt = AllRoomManager:CalculateRoomDescReportTb(roomDesc) or {}
					tb.standby1 = rpt.standby1 or tb.standby1
					tb.standby2 = rpt.standby2 or tb.standby2
					tb.standby3 = rpt.standby3 or tb.standby3
					tb.cid = tostring(rpt.cid or tb.cid or "0")
				else
					tb.cid = tostring(tb.cid or "0")
				end
			
				for key, value in pairs(appendTb) do
					tb[key] = value
				end
				DealGamejoin(roomDesc,tb)
				-- tb.standby2 = standby2
				if index == 1 then 
					standReportEvent(tb.sceneid or "",tb.cardid or "",tb.compid or "","game_join_1",tb)
				elseif index == 2 then
					standReportEvent(tb.sceneid or "",tb.cardid or "",tb.compid or "","game_join_2",tb)
				end
				ReportGameJoinLoadCall(index,roomDesc,appendTb)
				-- standReportGameJoinParam = {}
				standReportGameExitParam = {cid = tb.cid}
				beginGameJoinInCallback = true  --加入云服会触发首页埋点上报，加入此变量标识
				--用户任务系统上报
				threadpool:work(function ()
					threadpool:wait(5);
					-- GetInst('UserTaskInterface'):UserTaskEventReport("MapEnter",1) -- 移动到SurviveGame_Enter
					GetInst('UserTaskInterface'):UserTaskEventReport("OnlineMapCount",1)
					-- GetInst('UserTaskInterface'):PlayerEnterGame() -- 移动到SurviveGame_Enter
			
					local num = ClientCurGame and ClientCurGame.getNumPlayerBriefInfo and ClientCurGame:getNumPlayerBriefInfo() or 0;
					for i=1, num do
						local briefInfo = ClientCurGame:getPlayerBriefInfo(i-1);
						if not briefInfo and IsMyFriend( briefInfo.uin) then
							GetInst('UserTaskInterface'):UserTaskEventReport("OnlineMapWithFriend",1)
							break;
						end
					end
			
					local task = GetInst("UserTaskDataManager"):GetInCompleteNationalMission(25)
					local worldDesc = AccountManager:getCurWorldDesc();
					if worldDesc and task and task.specify_map == worldDesc.fromowid then
						local param={}
						param.event=25
						GetInst('UserTaskDataManager'):ReqNationalMissionEvent(param)
					end
				end)
				playerEnterRoomRecordFps()
			end
		end, 
	},
	{ 
	-- chenwei 修复消息中心部分邮件有效期显示错误问题
		ver_list = "1.21.0", 
		install = function() 
			CreateNewMailDataOld = CreateNewMailData
			
			function CreateNewMailData(src)
				local mail = CreateNewMailDataOld(src)
				if mail then
					mail.end_time = src.expiretime or src.extra.end_time or 0 
				end
				
				return mail
			end
		end
	},
	{
		-- 20221216 rice 修复面对面组队崩溃的问题 热更版本 1.21.0
		ver_list = "1.21.0",
		install = function()
			local FaceGameKeyboardCtrl = ClassList["FaceGameKeyboardCtrl"]
			FaceGameKeyboardCtrl.Btn_closeClick = function(self)
				standReportEvent("1007", "FACE_TO_FACE_TEAM", "Close", "click")
				GetInst("MiniUIManager"):CloseUI("FaceGameKeyboardAutoGen")
			end

			FaceGameKeyboardCtrl.HandleCode = function(self, num)
				local loc = GetInst("NearbyFriendInterface"):GetCurrentLoc() -- 获取经纬度
				local param = {}
				param.teamcode = num
				param.lat = loc.latitude
				param.lng = loc.longitude
				GetInst("TeamupPreSetService"):ReqTeamCodeSync(param, function()
					if not GetInst("MiniUIManager"):IsShown("FaceGameKeyboard") then
						return
					end
					GetInst("MiniUIManager"):CloseUI("FaceGameKeyboardAutoGen")
				end)
			end
			

			local CreateTeamUiCtrl = ClassList["CreateTeamUiCtrl"]
			CreateTeamUiCtrl.CUi_backBtnClick = function(self, obj, context)
				standReportEvent("1008", "TEAM_SETTINGS", "Close", "click")
				GetInst("MiniUIManager"):CloseUI("CreateTeamUiAutoGen")
			end
			
			function CloseTeamupCreatePanel()
				GetInst("MiniUIManager"):CloseUI("CreateTeamUiAutoGen")
			end
		end
	},
	{
		-- 20221227 rice 创作中心创作服务打不开的bug 热更版本 1.21.10
		ver_list = "1.21.0 1.21.2 1.22.0",
		install = function()
			function ReqGetMailList(mailType) -- 废弃的接口，只是暂时保留防止，以后由消息中心统一拉取
				GetInst('MessageCenterDataMgr'):RequestChannelHistoryMsgIDList((GetSelectMailType()), getServerTime())
			end
		end
	},
	{
        -- by luochenglin
        -- 20230104  修复追光计划主题版本控制失效的问题
        ver_list = "1.20.0 1.20.2 1.20.4 1.20.5 1.20.6 1.20.10 1.20.12 1.20.13 1.21.0 1.22.0 1.22.1 1.22.2",
        install = function()
            if ClassList["SkinCollectManager"] then
                ClassList["SkinCollectManager"].initConfig = function(self, call_back)
                    if self.avtCollectCfg then
                        call_back()
                        return
                    end
                    local configShop = GetInst("VisualCfgMgr"):GetCfg("shop")
                    if not configShop then
                        GetInst("VisualCfgMgr"):ReqCfg("shop",function(code, shopCfg)
                            if code == ErrorCode.OK then
                                self.avtCollectCfg = copy_table(shopCfg.shop.avatar_collection)
                                if self.avtCollectCfg then
                                    for i = #self.avtCollectCfg.topic,1,-1 do
                                        if self.avtCollectCfg.topic[i].switch ~= 1 then
                                            table.remove(self.avtCollectCfg.topic,i)
                                        else
                                            local min_ver = self.avtCollectCfg.topic[i].min_ver
                                            if min_ver then
                                                if ClientMgr:clientVersion() < ClientMgr:clientVersionFromStr(min_ver) then
                                                    table.remove(self.avtCollectCfg.topic,i)
                                                end
                                            end
                                            
                                        end
                                    end
                                    call_back()
                                end
                            end
                        end)
                    else
                         self.avtCollectCfg = copy_table(configShop.shop.avatar_collection)
                        if self.avtCollectCfg then
                            for i = #self.avtCollectCfg.topic,1,-1 do
                                if self.avtCollectCfg.topic[i].switch ~= 1 then
                                    table.remove(self.avtCollectCfg.topic,i)
                                else
                                    local min_ver = self.avtCollectCfg.topic[i].min_ver
                                    if min_ver then
                                        if ClientMgr:clientVersion() < ClientMgr:clientVersionFromStr(min_ver) then
                                            table.remove(self.avtCollectCfg.topic,i)
                                        end
                                    end
                                end 
                            end
                            call_back()
                        end
                    end
                end
            end

            if ClassList["SkinCollect_MainCtrl"] then
                ClassList["SkinCollect_MainCtrl"].setConfigView = function(self)
                    if self.avtCollectCfg then
                        if self.serverMsg then
                            self:sortListItem()
                        end
                        return
                    end
                    local configShop = GetInst("VisualCfgMgr"):GetCfg("shop")
                    if not configShop then
                        GetInst("VisualCfgMgr"):ReqCfg("shop",function(code, shopCfg)
                            if code == ErrorCode.OK then
                                self.avtCollectCfg = copy_table(shopCfg.shop.avatar_collection)
                                if self.avtCollectCfg then
                                    for i = #self.avtCollectCfg.topic,1,-1 do
                                        if self.avtCollectCfg.topic[i].switch ~= 1 then
                                            table.remove(self.avtCollectCfg.topic,i)
                                        else
                                            local min_ver = self.avtCollectCfg.topic[i].min_ver
                                            if min_ver then
                                                if ClientMgr:clientVersion() < ClientMgr:clientVersionFromStr(min_ver) then
                                                    table.remove(self.avtCollectCfg.topic,i)
                                                end
                                            end
                                        end 
                                    end
                                    if self.serverMsg then
                                        self:sortListItem()
                                    end
                                end
                            end
                        end)
                    else
                         self.avtCollectCfg = copy_table(configShop.shop.avatar_collection)
                        if self.avtCollectCfg then
                            for i = #self.avtCollectCfg.topic,1,-1 do
                                if self.avtCollectCfg.topic[i].switch ~= 1 then
                                    table.remove(self.avtCollectCfg.topic,i)
                                else
                                    local min_ver = self.avtCollectCfg.topic[i].min_ver
                                    if min_ver then
                                        if ClientMgr:clientVersion() < ClientMgr:clientVersionFromStr(min_ver) then
                                            table.remove(self.avtCollectCfg.topic,i)
                                        end
                                    end
                                end 
                            end
                            if self.serverMsg then
                                self:sortListItem()
                            end
                        end
                    end
                end
            end

            if ClassList["SkinCollect_Popup_FragmentCtrl"] then
                ClassList["SkinCollect_Popup_FragmentCtrl"].initConfig = function(self, call_back)
                    local configShop = GetInst("VisualCfgMgr"):GetCfg("shop")
                    if not configShop then
                        GetInst("VisualCfgMgr"):ReqCfg("shop",function(code, shopCfg)
                            if code == ErrorCode.OK then
                                self.avtCollectCfg = copy_table(shopCfg.shop.avatar_collection)
                                if self.avtCollectCfg then
                                    for i = #self.avtCollectCfg.topic,1,-1 do
                                        if self.avtCollectCfg.topic[i].switch ~= 1 then
                                            table.remove(self.avtCollectCfg.topic,i)
                                        else
                                            local min_ver = self.avtCollectCfg.topic[i].min_ver
                                            if min_ver then
                                                if ClientMgr:clientVersion() < ClientMgr:clientVersionFromStr(min_ver) then
                                                    table.remove(self.avtCollectCfg.topic,i)
                                                end
                                            end
                                        end
                                    end
                                    call_back()
                                end
                            end
                        end)
                    else
                         self.avtCollectCfg = copy_table(configShop.shop.avatar_collection)
                        if self.avtCollectCfg then
                            for i = #self.avtCollectCfg.topic,1,-1 do
                                if self.avtCollectCfg.topic[i].switch ~= 1 then
                                    table.remove(self.avtCollectCfg.topic,i)
                                else
                                    local min_ver = self.avtCollectCfg.topic[i].min_ver
                                    if min_ver then
                                        if ClientMgr:clientVersion() < ClientMgr:clientVersionFromStr(min_ver) then
                                            table.remove(self.avtCollectCfg.topic,i)
                                        end
                                    end
                                end 
                            end
                            call_back()
                        end
                    end
                end
            end

            if ClassList["SkinCollect_Popup_NewSkinCtrl"] then
                ClassList["SkinCollect_Popup_NewSkinCtrl"].initConfig = function(self, call_back)
                    local configShop = GetInst("VisualCfgMgr"):GetCfg("shop")
                    if not configShop then
                        GetInst("VisualCfgMgr"):ReqCfg("shop",function(code, shopCfg)
                            if code == ErrorCode.OK then
                                self.avtCollectCfg = copy_table(shopCfg.shop.avatar_collection)
                                if self.avtCollectCfg then
                                    for i = #self.avtCollectCfg.topic,1,-1 do
                                        if self.avtCollectCfg.topic[i].switch ~= 1 then
                                            table.remove(self.avtCollectCfg.topic,i)
                                        else
                                            local min_ver = self.avtCollectCfg.topic[i].min_ver
                                            if min_ver then
                                                if ClientMgr:clientVersion() < ClientMgr:clientVersionFromStr(min_ver) then
                                                    table.remove(self.avtCollectCfg.topic,i)
                                                end
                                            end
                                        end
                                    end
                                    call_back()
                                end
                            end
                        end)
                    else
                         self.avtCollectCfg = copy_table(configShop.shop.avatar_collection)
                         if self.avtCollectCfg then
                            for i = #self.avtCollectCfg.topic,1,-1 do
                                if self.avtCollectCfg.topic[i].switch ~= 1 then
                                    table.remove(self.avtCollectCfg.topic,i)
                                else
                                    local min_ver = self.avtCollectCfg.topic[i].min_ver
                                    if min_ver then
                                        if ClientMgr:clientVersion() < ClientMgr:clientVersionFromStr(min_ver) then
                                            table.remove(self.avtCollectCfg.topic,i)
                                        end
                                    end
                                end 
                            end
                            call_back()
                         end
                    end
                end
            end
            
            if ClassList["SkinCollect_TopicCtrl"] then
                ClassList["SkinCollect_TopicCtrl"].AvatarCollectQueryDataCallback = function(self, data)
                    local function random_table(t, num)
                        for i,v in pairs(t) do
                            local r = math.random(#t)
                            local temp = t[i]
                            t[i] = t[r] 
                            t[r] = temp
                        end
                        num = num or #t
                        for i = #t,num+1, -1 do
                            t[i] = nil
                        end
                        return t
                    end
                    
                    local function isActivesFilter(serverMsg,themes,curThemeNum,query_uin)
                        local isActives = {}
                        local noActives = {}
                        for i,_ in pairs(themes.handmade) do	
                            local handmadeIdx = GetInst("SkinCollectManager"):GetSortHandmadeIdx(curThemeNum,i,query_uin)
                            local handmade = themes.handmade[handmadeIdx]
                            if serverMsg
                            and serverMsg.data 
                            and serverMsg.data[curThemeNum] 
                            and serverMsg.data[curThemeNum][handmadeIdx] 
                            and serverMsg.data[curThemeNum][handmadeIdx].is_active then
                                table.insert(isActives,i)
                            else
                                table.insert(noActives,i)
                            end
                        end
                        return isActives,noActives
                    end
                    
                    if not GetInst("MiniUIManager"):IsShown("SkinCollect_Topic") then return end

                    threadpool:work(function ()
                        GetInst("SkinCollectManager"):QueryAvatarCollectRank({rank_id = self.rank_id},self:handler(self,self.QueryAvatarCollectRankCallback))
                    end)
                
                    self:RefreshThemeView(self.curThemeNum)
                    local shopCfg = GetInst("VisualCfgMgr"):GetCfg("shop")
                    local curThemeIndex = 0
                    self.avtCollectCfg = copy_table(shopCfg.shop.avatar_collection)
                    if self.avtCollectCfg then
                        for i = #self.avtCollectCfg.topic,1,-1 do
                            if self.avtCollectCfg.topic[i].switch ~= 1 then
                                table.remove(self.avtCollectCfg.topic,i)
                            else
                                local min_ver = self.avtCollectCfg.topic[i].min_ver
                                if min_ver and ClientMgr:clientVersion() < ClientMgr:clientVersionFromStr(min_ver) then
                                    table.remove(self.avtCollectCfg.topic,i)
                                end
                            end
                        end
                        table.sort(self.avtCollectCfg.topic, function (topicA, topicB)
                            return topicA.sort < topicB.sort
                        end)
                        for i = 1,#self.avtCollectCfg.topic do
                            if self.curThemeNum == self.avtCollectCfg.topic[i].themeNum then
                                curThemeIndex = i
                            end
                        end
                    end
                
                    self.view.widgets.rightlist:setNumItems(#self.avtCollectCfg.topic)
                    self.view:RefreshTopicListSelect(curThemeIndex)
                
                    self:LittleTheatre()
                    self:PlayCurThemeFullAni()
                
                    local serverMsg = GetInst("SkinCollectManager"):GetServerData(self.query_uin)
                    local themes = GetInst("SkinCollectManager"):GetTopicByThemeNum(self.curThemeNum)
                    local isActives = {}
                    local noActives = {}
                    if themes then
                        threadpool:work(function()
                            -- -- 1.可以打开（一次）
                            -- -- 2.不能打开（隔t秒，随机晃）
                            -- -- 3.点击打开，移动到中间，加特效，晃动，叠加蒙版
                            threadWorkID = threadpool:tid()
                            local cfg = GetInst("VisualCfgMgr"):GetCfg("shop")
                            local t = cfg.shop.avatar_collection.number_per_time
                            while true do 
                                if GetInst("MiniUIManager"):GetCtrl("SkinCollect_Topic") and threadWorkID == threadpool:tid() then
                                    local themes = GetInst("SkinCollectManager"):GetTopicByThemeNum(self.curThemeNum)
                                    isActives,noActives = isActivesFilter(serverMsg,themes,self.curThemeNum,self.query_uin)
                                    boxIndexs = random_table(noActives,1)
                                    self:boxShaking(self.curThemeNum,boxIndexs[1])
                                    threadpool:wait(t)
                                else
                                    break
                                end
                            end
                        end)
                    end
                end
                ClassList["SkinCollect_TopicCtrl"].ReqAvatarActiveHandmadeCallback = function(self, data, param)
                    if not GetInst("MiniUIManager"):IsShown("SkinCollect_Topic") then return end
                    GetInst("MiniUIManager"):OpenUI("SkinCollect_Popup_Handmade", "miniui/miniworld/SkinCollect_Popup", "SkinCollect_Popup_HandmadeAutoGen",param)
                    self:RefreshThemeView(self.curThemeNum)
                    local shopCfg = GetInst("VisualCfgMgr"):GetCfg("shop")
                    self.avtCollectCfg = copy_table(shopCfg.shop.avatar_collection)
                    table.sort(self.avtCollectCfg.topic, function (topicA, topicB)
                        return topicA.sort < topicB.sort
                    end)
                    if self.avtCollectCfg then
                        for i = #self.avtCollectCfg.topic,1,-1 do
                            if self.avtCollectCfg.topic[i].switch ~= 1 then
                                table.remove(self.avtCollectCfg.topic,i)
                            else
                                local min_ver = self.avtCollectCfg.topic[i].min_ver
                                if min_ver and ClientMgr:clientVersion() < ClientMgr:clientVersionFromStr(min_ver) then
                                    table.remove(self.avtCollectCfg.topic,i)
                                end
                            end
                        end
                    end
                
                    self.view.widgets.rightlist:setNumItems(#self.avtCollectCfg.topic)                
                end
            end
        end
    },
	{
		-- 20221230 rice 兼容低版本上传地图报错的bug提示 热更版本 
		ver_list = "1.18.0 1.18.1 1.18.5 1.19.0 1.19.1 1.19.5 1.20.0 1.20.2 1.20.4 1.20.5 1.20.6 1.20.10 1.20.12 1.20.13 1.21.0 1.21.2 1.22.0 1.22.2",
		install = function()
			local CreationCenterWorksCtrl = ClassList["CreationCenterWorksCtrl"] or {}
			CreationCenterWorksCtrl.AddEvent = function(self)
				-- 地图管理页签切换事件
				for mapIdx, tabBtn in ipairs(self.view.tabBtns) do
					GetInst("MiniUIEventDispatcher"):addEventListener(
						tabBtn,
						UIEventType_Click,
						function(obj, context)
							self.view.widgets.mapList:setNumItems(0)
							self:ShowMapPage(mapIdx, nil, true)

							if if_show_uploadmap_new() then
								self:sortMenuNewChanged(true)
							else
								self:SortMenuChanged(true)
							end
						end
					)
				end

				-- 地图变动事件
				GetInst("MiniUIEventDispatcher"):addGameEventListener(
					self.view.root,
					"GE_WORLDLIST_CHANGE",
					function(comp, idx, obj)
						self:RefreshCurMapList()
						
						--刷新主界面的最新地图和地图相关评论
						threadpool:work(function()
							local mCtrl = GetInst("MiniUIManager"):GetCtrl("CreationCenterMain")
							if mCtrl and mCtrl.view then 
								local homeCtrl = mCtrl.view:GetPageCodeCtrl(TabIndexEnum.CREATIVE_SERVICES)
								if homeCtrl and homeCtrl.InitNewWorksInfo then 
									homeCtrl:InitNewWorksInfo()
									homeCtrl:InitNewCommentsInfo()
								end
							end
						end)
					end
				)
			end

			local CreationCenterInterface = ClassList["CreationCenterInterface"] or {}
			CreationCenterInterface.RefreshWorksInfo = function(self)
				threadpool:work(function()
					local mCtrl = GetInst("MiniUIManager"):GetCtrl("CreationCenterMain")
					if mCtrl and mCtrl.view then 
						local worksCtrl = mCtrl.view:GetPageCodeCtrl(TabIndexEnum.CREATIVE_MANAGE)
						if worksCtrl and worksCtrl.RefreshCurMapList then 
							worksCtrl:RefreshCurMapList()
						end
					end
				end)
			end
		end
	},
	{
		-- 20230110 rice 创作中心入口根据渠道配置显示
		ver_list = "1.23.0 1.23.1 1.23.2 1.23.5",
		install = function()
			function CheckBottomDeveloperCenterShow()
				-- --是否显示创作中心按钮
				local b_show = check_apiid_ver_conditions(ns_version.devcenter_btn);
				if b_show then
					getglobal("MiniLobbyFrameBottomDeveloperCenter"):Show();
				else
					getglobal("MiniLobbyFrameBottomDeveloperCenter"):Hide();
				end
			end
		end
	},
	{
		-- 20230110 chenwei 修复迷你工坊报错和页面不显示的问题
		ver_list = "1.22.0 1.22.1 1.22.2 1.23.0",
		install = function()
			local MiniworksGotoLabel_old = MiniworksGotoLabel
			function MiniworksGotoLabel(label)
				local CurLabel = getFunctionVpValue(MiniworksGotoLabel_old, "CurLabel")
				local m_ExposureParam = getFunctionVpValue(MiniworksGotoLabel_old, "m_ExposureParam")
				if label ~= CurLabel then
					setFunctionVpValue(MiniworksGotoLabel_old, "CurLabel", label)
					--设置当前选中的按钮索引

					UpdateLabelState();
					ShowCurWorksFrame(true);

					if m_ExposureParam then
						m_ExposureParam:Init();
					end
				end
			end

			local MiniWorksFrame_OnLoad_Old = MiniWorksFrame_OnLoad
			function MiniWorksFrame_OnLoad()
				local MiniWorks_CurrentSwitchBtnNew = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}
				setFunctionVpValue(MiniWorksFrame_OnLoad_Old, "MiniWorks_CurrentSwitchBtn", MiniWorks_CurrentSwitchBtnNew)

				MiniWorksFrame_OnLoad_Old()
			end
		end
	},

	{
		-- 20230110 吴德燊 修复赠送礼物输入小数问题
		ver_list = "1.21.0 1.22.1 1.22.2 1.23.0 1.23.1 1.23.2 1.23.5",
		install = function()
			local mgr = ClassList["MallGiveDataMgr"]
			if not mgr then
				print(" MallGiveDataMgr hotfix failed")
			end
			local oldReqSendItemGift = mgr.ReqSendItemGift
			mgr.ReqSendItemGift = function (self, itemid, num, tipsId, friendUin, senderName)
				num = math.floor(num)
				if num <= 0 then
					return
				end
				return oldReqSendItemGift(self,itemid, num, tipsId, friendUin, senderName )
			end
		end
	},
	{
		-- 20230110 吴德燊 修复送礼物广告
		ver_list = "1.23.0 1.23.1 1.23.2 1.23.5",
		install = function()

			local ctrl = ClassList["comp_giftCtrl"] or {}
			ctrl.N17Click = function (self)
				if not self.curSelectIndex then
					return
				end
			
				local incommingData = self.model:GetIncomingParam()
				local inst = GetInst("FriendGiftDataMgr")
				local config = incommingData.giftList
				local configData = config[self.curSelectIndex + 1]
				if not configData then
					return
				end
				local friendGiftData = inst.data
			
				local data = self.model:GetIncomingParam()
				local payType = {
					item = 1,
					free = 2,
					ad = 3,
				}
				local function sendgift(payType, addTac)
					inst:SendFriendGift(data.uin, configData.id, configData.num, payType, data.from, addTac)
				end
			
				local adCanShow = false
				GetInst("AdService"):IsAdCanShow(38, function (result)
					if result then
						adCanShow = true
					end
				end)
				local configMaxNum = tonumber(inst.config.day_intimacies_limit)
				local _, partnerData  = inst:GetTacitnum(data.uin)
				local friData = GetFriendDataByUin(data.uin)
				local function confirm(node, addTac)
					GetInst("MINIUIMessageBox"):HideMessageBox()
					if configData.if_free == 1 and friendGiftData.day_free == 0 then
						threadpool:work(function ()
							sendgift(payType.free, addTac)
						end)
					elseif configData.if_advert == 1 and friendGiftData.day_advert == 0 and not ClientMgr:isPC() and adCanShow then
						local posid = 38
						OnReqWatchAdFriendSendGift(posid, {
							position_id = posid,
							paytype = payType.ad,
							id =  configData.id, 
							num = configData.num,
							uin = data.uin,
							from = data.from,
							addTac = addTac,
						})
					else
						if configData.cost_id == 10002 then
							local hasNum = AccountManager:getAccountData():getAccountItemNum(configData.id)
							if hasNum <= 0 then
								inst:OpenBuyItemUI(configData.id, configData.cost_num, configData.cost_id)
								return
							end
						else
							local hasNum = AccountManager:getAccountData():getAccountItemNum(configData.id)
							if hasNum <= 0 then
								inst:OpenBuyItemUI(configData.id, configData.cost_num, configData.cost_id)
								return
							end
						end
						threadpool:work(function ()
							sendgift(payType.item, addTac)
						end)
					end
				end
				local cancelBtnCb = function ()
					GetInst("MINIUIMessageBox"):HideMessageBox()
				end
				
				if partnerData.giftdaytacittotal >= configMaxNum then
					GetInst("MINIUIMessageBox"):ShowMessageBox(2, GetS(70982), GetS(70969, friData.name), {GetS(70970)}, self, {confirm, cancelBtnCb})
				else
					confirm(nil, true)
				end
			
				if AccountManager:getUin() == data.uin then
					standReportEvent("2209", "GIVE_GIFT", "Send", "click", {standby1 = data.uin, standb2 = configData.id, standby3 = -1})
				else
					standReportEvent("2209", "GIVE_GIFT", "Send", "click", {standby1 = data.uin, standb2 = configData.id, standby3 =  inst:GetTacitnum(data.uin)})
				end
			end
	
			local mgr = GetInst("FriendGiftDataMgr")
			if not mgr then
				mgr = ClassList["FriendGiftDataMgr"] or {}
			end
			mgr.ShowGiftAnimation = function (self, itemid, from)
				GetInst("MiniUIManager"):AddPackage(self.packages)
				GetInst("MiniUIManager"):OpenUI("comp_gift_animation", "miniui/miniworld/friendgift", "comp_gift_animationAutoGen", {
					itemid = itemid
				})
			
				threadpool:work(function ()
					self:ReqSelfData()
					if self.data then
						standReportEvent("2209", "SHOW_GIFT", "ShowGift", "view", {standby1 = self.data.charm_value, standby2 = from})
					end
					threadpool:wait(2.8)
					GetInst("MiniUIManager"):CloseUI("comp_gift_animationAutoGen")
			
				end)
			end
			local mgr2 = ClassList["RecommendOnlineFriendDataMgr"] or {}
			mgr2.CanPopUi = function (self)
				if not self:GetSwitch() then
					return false
				end
			
				if ClientCurGame and ClientCurGame:isInGame() then
					return false
				end
			
				if not getglobal("MiniLobbyFrame"):IsShown() then
					return false
				end
			
			
				local dayPop = self:GetDayPopTimes()
				if not IsSameDay(dayPop.lastTime, getServerTime()) then
					dayPop.popTimes = 0
					self:SaveDayPopTimes()
				end
			
				local dayLimit = self.conf.daypoptimes or 1
				if dayPop.popTimes >= dayLimit then
					return false
				end
			
				local norecommend = getkv("lasttime_norecommend_onlinefriend") or -1
				if norecommend ~= -1 then
					if getServerTime() - norecommend < 5 * 86400 then
						return false
					end
				end
				return true
			end

		end-- end hotfix
	},
	{
		-- hotfix by wuyuwang：app推送通过开关屏蔽服务端逻辑
	    ver_list = "1.23.0 1.23.2 1.23.5",
	    install = function()
			function GameSetFrameOtherAppPush_Show()
				if not ClientMgr:isMobile() then
					GameSetFrameOtherAppPush_HideAll()
					
					return 
				end	
				
				-- 权限检测
				local hasPerMission = false
				if ClientMgr:isAndroid() then
					if MINIW__CheckHasPermission and MINIW__CheckHasPermission(7) then
						hasPerMission = true
					end
				elseif ClientMgr:isApple() then
					if SdkManager.CheckHasPermission and SdkManager:CheckHasPermission(DevicePermission_Notification) then
						hasPerMission = true
					end
				end
				
				local param = {}
				
				local setText = getglobal("GameSetFrameOtherAppPushSetText")
				if not hasPerMission then 
					GameSetFrameOtherAppPush_SetCheckGray(true)
					
					setText:SetText("未开启")
					setText:SetTextColor(200, 0, 0)
					getglobal("GameSetFrameOtherAppPushSetBtn"):Show()
					
					standReportEvent("2901", "SETTING_OTHERS", "Gosetting", "view")
					param.standby1 = 0
				else 
					GameSetFrameOtherAppPush_SetCheckGray(false)
					
					setText:SetText("已开启")
					setText:SetTextColor(0, 200, 0)
					getglobal("GameSetFrameOtherAppPushSetBtn"):Hide()
					
					param.standby1 = 1
				end 
				
				local setFunc = function ()
					-- 首次显示
					if not getkv("AppPushNoticeFirstSet") then
						GameSetFrameOtherAppPush_GetCfgBySvr(function (svrData)
							print("---wzlog---AppPush_Init:", svrData)
							
							if svrData and svrData.ret == 0 then 
								if svrData.data == nil or next(svrData.data) == nil then 
									GameSetFrameOtherAppPush_SetCfgBySvr(true, nil, function (sdata)
										setparam = sdata.data or {}
										
										GameSetFrameOtherAppPush_SetCheckBySvr(setparam)
										setkv("AppPushNoticeFirstSet", true)
									end)
								else 
									setparam = svrData.data or {}
									GameSetFrameOtherAppPush_SetCheckBySvr(setparam)
								end 
							end 
						end)
						
						return 
					end 
					
					-- 拉取服务端配置
					if setparam then 
						GameSetFrameOtherAppPush_SetCheckBySvr(setparam)
					else 
						GameSetFrameOtherAppPush_GetCfgBySvr(function (svrData)
							if svrData and svrData.ret == 0 and svrData.data then 
								setparam = svrData.data or {}
								
								GameSetFrameOtherAppPush_SetCheckBySvr(setparam)
								
								if setparam then 
									param.standby2 = ""
									for i = 1, 4 do 
										local index = switchType[i]
										if not setparam[index] or setparam[index] == 0 then 
											param.standby2 = param.standby2 .. 0
										else 
											param.standby2 = param.standby2 .. 1
										end 
									end 
									
									standReportEvent("2901", "SETTING_OTHERS", "Apppush", "view", param)
								end 
							end 
						end)
					end 
				end
				
				-- 拉取可视化配置
				local cfg = GetInst("VisualCfgMgr"):GetCfg("AppPushNoticeSetCfg")
				if cfg then 
					GameSetFrameOtherAppPush_SetByCfg(cfg)
					
					if cfg and cfg.main_cfg and cfg.main_cfg.isOpen and check_apiid_ver_conditions(cfg.main_cfg) then 
						setFunc()
					end
				else 
					GetInst("VisualCfgMgr"):ReqCfg("AppPushNoticeSetCfg", function (code, ret)
						if code == 0 then
							GameSetFrameOtherAppPush_SetByCfg(ret)		
							
							if ret and ret.main_cfg and ret.main_cfg.isOpen and check_apiid_ver_conditions(ret.main_cfg) then 
								setFunc()
							end
						end
					end)
				end  
			end
	    end
	},
	{ 
		-- hotfix by wuyuwang：凹凸世界回主页点击事件失效
	    ver_list = "1.23.0 1.23.1 1.23.2", 
	    install = function() 
	        local main_AOTUCtrl = ClassList["main_AOTUCtrl"] or {}
	        main_AOTUCtrl.Start = function(self)
				self.super:Start()
				self.view:InitView()
				
				self.view:SetRoleSkin()
				
				self:InitUIComponent()
				self:AddEventClick()
				
				standReportEvent("9825", "MINI_AOTUWORLD_HOMEPAGE", "-", "view")
	        end

			-- hotfix by wuyuwang：抽奖提示违规修改1
			local main_rivalryCtrl = ClassList["main_rivalryCtrl"] or {}
			main_rivalryCtrl.RefreshLotteryUI = function(self, isInit)
				self.model:ReqLotteryInfo(
					function (data)
						if tolua.isnull(self.view.root) then 
							return 
						end
						
						if not data then 
							return 
						end 
						
						self.level = data.level
						self.lotteryTimes = data.times
						
						if not self.isOpenLottery or (self.lotteryTimes and self.lotteryTimes <= 0) then 
							self.view.widgets.btn_draw:setTouchable(false)
							self.view.widgets.btn_draw:getController("c1"):setSelectedIndex(1)
						end 
						
						local miniProb = self:MiniCoinProbability(data.score)
						local nextRaceTime = nil 
						if self.dualMeetTimes[1] then 
							nextRaceTime = self.dualMeetTimes[1]
						end 
						
						if self.dualMeetTimes[4] then 
							nextRaceTime = self.dualMeetTimes[4]
						end 
						self.view:InitLotteryInfo(data.score, data.times, miniProb, nextRaceTime, self.dualMeetState)
						
						if isInit and data then 
							standReportEvent("9825", "MINI_AUTOWORLD_FINAL", "Lottery", "view", {standby1=data.score, standby2=data.times})
						end 
					end
				)
	        end 	
			
			-- hotfix by wuyuwang：抽奖提示违规修改2
	        main_rivalryCtrl.Btn_drawClick = function(self)			
				if self.isLottering then 
					return 
				end 
				
				if not self.view.drawCtrls then 
					return 	
				end 
				
				self.isLottering = true
				
				local lotteryPos = nil
				local lotteryReward = nil
				
				local curIdx = 0
				local time = 0.1
				local total = 28
				local cnt = 0
				local lotteryFun = function ()
					cnt = cnt + 1
					curIdx = curIdx + 1		
					if curIdx > 8 then 
						curIdx = 1
					end 
					
					if curIdx == 1 then 
						self.view.drawCtrls[8]:setSelectedIndex(0)
					else
						self.view.drawCtrls[curIdx-1]:setSelectedIndex(0)
					end 
					
					self.view.drawCtrls[curIdx]:setSelectedIndex(1)
					
					-- 抽奖结束
					if lotteryPos and cnt > total - 8 and curIdx == lotteryPos then 
						self.view.drawCtrls[curIdx]:setSelectedIndex(2)
						self.isLottering = false
						GetInst("AotuActInterface"):OpenTipseUI(2, {reward = lotteryReward})
						self:RefreshLotteryUI()
						
						if self.sKey then 
							GetInst("MiniUIScheduler"):unreg(self.sKey)
						end 
						
						standReportEvent("9825", "MINI_AUTOWORLD_FINAL", "LotteryButton", "click", {standby1=1})
					end 
				end
				
				ShowLoadLoopFrame2(true, "--ReqGetLottery 111--")
				GetInst("AotuActService"):ReqGetLottery(
					function (data)
						ShowLoadLoopFrame2(false, "--ReqGetLottery 222--")
						
						if tolua.isnull(self.view.root) then 
							return 
						end
						
						if data then 
							lotteryPos = data.pos
							lotteryReward = data.items[1]
							
							self.sKey = GetInst("MiniUIScheduler"):regPrivate(self.view.root, lotteryFun, time, total)
						else 
							standReportEvent("9825", "MINI_AUTOWORLD_FINAL", "LotteryButton", "click", {standby1=0})
						end 
					end
				)
	        end 		
	    end, 
	},
	{ 
		 -- 修复送礼物邮件移到系统消息显示问题
		ver_list = "1.23.0 1.23.1 1.23.2 1.23.5", 
		install = function() 
			local inst = ClassList["CompSysMsgDetailView"] or {}
			local old = inst.SetDetailView
			function inst.SetDetailView(self, channel, data)
				old(self, channel, data)
				if tonumber(data.extra.type) == g_enum_comm.email_comm_type.sendFriendGift then
					local jsonData = JSON:decode(data.extra.ctx)
					if jsonData and jsonData.id and jsonData.num and jsonData.role_name then
						local itemDef = ItemDefCsv:get(jsonData.id);
			
						local config = GetInst("FriendGiftDataMgr"):GetItemConfig(jsonData.id)
						local strContent = GetS(70973, jsonData.role_name, jsonData.num, itemDef and itemDef.Name or "", config and config.charm_value, config.intimacies)
						content = GenerateUBBStr_old(strContent)
						self.widgets.contentText:setText(content)
					end
				end
			end

			local function CheckSendGiftBtn()
				local tabIndex = FriendMgr:GetChatFrameCurTab()
				if tabIndex == FriendMgr.ChatFrame_Tab_Group then
					getglobal('FriendChatFrameMainBottomSendGiftBtn'):Hide()
				elseif FriendMgr.ChatFrame_Tab_Friend == tabIndex then
					getglobal('FriendChatFrameMainBottomSendGiftBtn'):Show()
				end
			end
			local old1 = FriendChat_FriendTabBtnTemplate_OnClick
			FriendChat_FriendTabBtnTemplate_OnClick = function (id, forceRefresh, notReportReadMsgTime)
				old1(id, forceRefresh, notReportReadMsgTime)
				CheckSendGiftBtn()
			end
		
			local old2 = FriendChatFrame_OnShow
			FriendChatFrame_OnShow = function ()
				old2()
				CheckSendGiftBtn()
			end
		end 
	},
}

