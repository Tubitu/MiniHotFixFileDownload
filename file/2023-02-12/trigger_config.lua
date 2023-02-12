{

    developermgr = {

        service = 'services.developermgr',
        open_version = 9472,
        order = 2,
        methods = {
        },
    },
    game = {
        service = 'services.game',
        methods = {
            getDefString = {
				isOpen = true,
            },
            setScriptVar = {
                isOpen = true,
            },
            getScriptVar = {
                isOpen = true,
            },
            sendScriptVars2Client = {
                isOpen = true,
            },
            addRenderGlobalEffect = {
                isOpen = true,
            },
            removeRenderGlobalEffect = {
                isOpen = true,
            },
            setRenderGlobalEffectPos = {
                isOpen = true,
            },
            setRenderGlobalEffectScale = {
                isOpen = true,
            },
            getName = {
                isOpen = true,
            },
            getLoadStep = {
                isOpen = true,
            },
            doGameEnd = {
                isOpen = true,
            },
            getVersionForEducation = {
                isOpen = false,                   
            },
            msgBox = {
                isOpen = true,
            },
	    dispatchEvent = {
                isOpen = true,
            },
        },
        --}}}
    },
    gamerule = {
        --{{{ 
        service = 'services.gamerule', --文件名
        open_version = 9472,
        methods = {
            getGameRuleValue = {
                isOpen = true,
            },
            setGameRuleValue = {
                isOpen = true,
            },
            setCurTime = {
                isOpen = true,
            },
            getCurTime = {
                isOpen = true,
            },
            setTimLocked = {
                isOpen = true,
            },
            getTimLocked = {
                isOpen = true,
            },
            setWeather = {
                isOpen = true,
            },
            getWeather = {
                isOpen = true,
            },
            setMaxPlayers = {
                isOpen = true,
            },
            getMaxPlayers = {
                isOpen = true,
            },
            setBlockDestroy = {
                isOpen = true,
            },
            getBlockDestroy = {
                isOpen = true,
            },
            setBlockPlace = {
                isOpen = true,
            },
            getBlockPlace = {
                isOpen = true,
            },
            setBlockUse = {
                isOpen = true,
            },
            getBlockUse = {
                isOpen = true,
            },
            setGravityFactor = {
                isOpen = true,
            },
            getGravityFactor = {
                isOpen = true,
            },
            setCamera = {
                isOpen = true,
            },
            getCamera = {
                isOpen = true,
            },
            setStartMode = {
                isOpen = true,
            },
            getStartMode = {
                isOpen = true,
            },
            setStartPlayers = {
                isOpen = true,
            },
            getStartPlayers = {
                isOpen = true,
            },
            setTeamNum = {
                isOpen = true,
            },
            getTeamNum = {
                isOpen = true,
            },
            setAttackPlayerMode = {
                isOpen = true,
            },
            getAttackPlayerMode = {
                isOpen = true,
            },
            setEndTime = {
                isOpen = true,
            },
            getEndTime = {
                isOpen = true,
            },
            setEndScore = {
                isOpen = true,
            },
            getEndScore = {
                isOpen = true,
            },
            setScoreKillPlayer = {
                isOpen = true,
            },
            getScoreKillPlayer = {
                isOpen = true,
            },
            setScoreKillMob = {
                isOpen = true,
            },
            getScoreKillMob = {
                isOpen = true,
            },
            setScoreCollectStar = {
                isOpen = true,
            },
            getScoreCollectStar = {
                isOpen = true,
            },
            setReviveMode = {
                isOpen = true,
            },
            getReviveMode = {
                isOpen = true,
            },
            setReviveInvulnerable = {
                isOpen = true,
            },
            getReviveInvulnerable = {
                isOpen = true,
            },
            setDisplayName = {
                isOpen = true,
            },
            getDisplayName = {
                isOpen = true,
            },
            setWinLoseEndTime = {
                isOpen = true,
            },
            getWinLoseEndTime = {
                isOpen = true,
            },
            setSaveMode = {
                isOpen = true,
            },
            getSaveMode = {
                isOpen = true,
            },
            setKillNotify = {
                isOpen = true,
            },
            getKillNotify = {
                isOpen = true,
            },
            setBgMusicMode = {
                isOpen = true,
            },
            getBgMusicMode = {
                isOpen = true,
            },
            setMobGen = {
                isOpen = true,
            },
            getMobGen = {
                isOpen = true,
            },
            setSpawnPtMode = {
                isOpen = true,
            },
            getSpawnPtMode = {
                isOpen = true,
            },
            setMinimapTeams = {
                isOpen = true,
            },
            getMinimapTeams = {
                isOpen = true,
            },
            setPlayerDieDrops = {
                isOpen = true,
            },
            getPlayerDieDrops = {
                isOpen = true,
            },
            setDisplayScore = {
                isOpen = true,
            },
            getDisplayScore = {
                isOpen = true,
            },
            setLifeNum = {
                isOpen = true,
            },
            getLifeNum = {
                isOpen = true,
            },
            setShowSight = {
                isOpen = true,
            },
            getShowSight = {
                isOpen = true,
            },
            setScoreColorChange = {
                isOpen = true,
            },
            getScoreColorChange = {
                isOpen = true,
            },
            setGPoisonSwitch = {
                isOpen = true,
            },
            getGPoisonSwitch = {
                isOpen = true,
            },
            setGPoisonSafeD0 = {
                isOpen = true,
            },
            getGPoisonSafeD0 = {
                isOpen = true,
            },
            setGPoisonSafeT0 = {
                isOpen = true,
            },
            getGPoisonSafeT0 = {
                isOpen = true,
            },
            setAllowMidwayJoin = {
                isOpen = true,
            },
            getAllowMidwayJoin = {
                isOpen = true,
            },
            setLifeNumTeamShare = {
                isOpen = true,
            },
            getLifeNumTeamShare = {
                isOpen = true,
            },
            setViewMode = {
                isOpen = true,
            },
            getViewMode = {
                isOpen = true,
            },
            setViewType = {
                isOpen = true,
            },
            getViewType = {
                isOpen = true,
            },
            setCountDown = {
                isOpen = true,
            },
            getCountDown = {
                isOpen = true,
            },
            setScoreResetRound = {
                isOpen = true,
            },
            getScoreResetRound = {
                isOpen = true,
            },
            setResetScore = {
                isOpen = true,
            },
            getResetScore = {
                isOpen = true,
            },
          
        },
        --}}}
    },

    world = {
        --{{{ 地图/存档接口
        service = 'services.world', --文件名
        open_version = 9472,
        methods = {
            isDaytime = {
                isOpen = true,
            },
            getHours = {
                isOpen = true,
            },
            setHours = {
                isOpen = true,
            },
            isCustomGame = {
                isOpen = true,
            },
            isCreativeMode = {
                isOpen = true,
            },
            isGodMode = {
                isOpen = true,
            },
            isExtremityMode = {
                isOpen = true,
            },
            isFreeMode = {
                isOpen = true,
            },
            isSurviveMode = {
                isOpen = true,
            },
            isCreateRunMode = {
                isOpen = true,
            },
            isGameMakerMode = {
                isOpen = true,
            },
            isGameMakerRunMode = {
                isOpen = true,
            },
            getCameraEditState = {
                isOpen = true,
            },
            setCameraEditState = {
                isOpen = true,
            },
            getCustomCameraConfig = {
                isOpen = true,
            },
            getRangeXZ = {
                isOpen = true,
            },
            getRayLength = {
                isOpen = true,
            },
            getRayBlock = {
                isOpen = true,
            },
            getPlayerTotal = {
                isOpen = true,
            },
            getAllPlayers = {
                isOpen = true,
            },
            randomOnePlayer = {
                isOpen = true,
            },
            despawnActor = {
                isOpen = true,
            },
            spawnMob = {
                isOpen = true,
            },
            spawnItem = {
                isOpen = true,
            },
            despawnItemByBox = {
                isOpen = true,
            },
            getActorsByBox = {
                isOpen = true,
            },
            setCameraFov = {
                isOpen = true,
            },
            setCameraRotate = {
                isOpen = true,
            },
            spawnProjectile = {
                isOpen = true,
            },
            calcDistance = {
                isOpen = true,
            },
            playParticleEffect = {
                isOpen = true,
            },
            stopParticleEffectOnPos = {
                isOpen = true,
            },
            setParticleEffectScale = {
                isOpen = true,
            },
            randomParticleEffectID = {
                isOpen = true,
            },
            playSoundEffectOnPos = {
                isOpen = true,
            },
            stopSoundEffectOnPos = {
                isOpen = true,
            },
            getLightByPos = {
                isOpen = true,
            },
            setBlockLightEx = {
                isOpen = true,
            },
			randomSoundID = {
                isOpen = true,
            },
            randomWeatherID = {
                isOpen = true,
            },
			getBuildingblockSetTxt = {
                isOpen = true,
            },
        },
        --}}}
    },

    actor = {
        --{{{ 
        service = 'services.actor', --文件名
        open_version = 9472,
        methods = {
            isPlayer = {
                isOpen = true,
            },
            isMob = {
                isOpen = true,
            },
            getObjType = {
                isOpen = true,
            },
            getPosition = {
                isOpen = true,
            }, 
            setPosition = {
                isOpen = true,
            },
            jumpOnce = {
                isOpen = true,
            },
            killSelf = {
                 isOpen = true,
            }, 
            getFlying = {
                 isOpen = true,
            }, 
            getCurPlaceDir = {
                 isOpen = true,
            }, 
            tryMoveToActor = {
                 isOpen = true,
            }, 
            tryMoveToPos = {
                isOpen = true,
            }, 
            addBuff = {
                isOpen = true,
            }, 
            hasBuff = {
                isOpen = true,
            }, 
            removeBuff = {
                isOpen = true,
            }, 
            clearAllBuff = {
                isOpen = true,
            }, 
            clearAllBadBuff = {
                isOpen = true,
            }, 
            getBuffList = {
                isOpen = true,
            },
            getBuffLeftTick = {
                isOpen = true,
            },
            addHP = {
                isOpen = true,
            },
            getHP = {
                isOpen = true,
            }, 
            getMaxHP = {
                isOpen = true,
            }, 
            addOxygen = {
                isOpen = true,
            }, 
            getOxygen = {
                isOpen = true,
            },
            addEnchant = {
                isOpen = true,
            },
            removeEnchant = {
                isOpen = true,
            },
            findNearestBlock = {
                isOpen = true,
            },
            setFaceYaw = {
                isOpen = true,
            },
            getFaceYaw = {
                isOpen = true,
            },
            turnFaceYaw = {
                isOpen = true,
            },
            setFacePitch = {
                isOpen = true,
            },
            getFacePitch = {
                isOpen = true,
            },
            turnFacePitch = {
                isOpen = true,
            },
            playBodyEffect = {
                isOpen = true,
            },
            stopBodyEffect = {
                isOpen = true,
            },
            playBodyEffectByFile = {
                isOpen = true,
            },
            stopBodyEffectByFile = {
                isOpen = true,
            },
            playBodyEffectById = {
                isOpen = true,
            },
            stopBodyEffectById = {
                isOpen = true,
            },
            setBodyEffectScale = {
                isOpen = true,
            },
            playSoundEffectById = {
                isOpen = true,
            },
            stopSoundEffectById = {
                isOpen = true,
            },
            playSound = {
                isOpen = true,
            },
            playSoundSpecial = {
                isOpen = true,
            },
            addModAttrib = {
                isOpen = true,
            },
            getModAttrib = {
                isOpen = true,
            },
            clearActorWithId = {
                isOpen = true,
            },
            setTeam = {
                isOpen = true,
            },
            getTeam = {
                isOpen = true,
            },
            setAttackType = {
                isOpen = true,
            },
            setImmuneType = {
                isOpen = true,
            },
            mountActor = {
                isOpen = true,
            },
            setActionAttrState = {
                isOpen = true,
            },
            getActionAttrState = {
                isOpen = true,
            },
            tryNavigationToPos = {
                isOpen = true,
            },
            getItemId = {
                isOpen = true,
            },
            getDropItemNum = {
                isOpen = true,
            },
            randomActorID = {
                isOpen = true,
            },
            getRidingActorObjId = {
                isOpen = true,
            },
            appendSpeed = {
                isOpen = true,
            },
            getFaceDirection = {
                isOpen = true,
            },
            calcDirectionByDirection = {
                isOpen = true,
            },
            calcDirectionByAngle = {
                isOpen = true,
            },
            calcDirectionByYawDirection = {
                isOpen = true,
            },
            calcDirectionByYawAngle = {
                isOpen = true,
            },
            getEyeHeight = {
                isOpen = true,
            },
            getEyePosition = {
                isOpen = true,
            },
            getBodySize = {
                isOpen = true,
            },
            playAct = {
                isOpen = true,
            },

            shownickname = {
                isOpen = true,
            },

            setnickname = {
                isOpen = true,
            },
            getActorFacade  = {
                isOpen = true,
            },
            changeCustomModel  = {
                isOpen = true,
            },
            recoverinitialModel  = {
                isOpen = true,
            },
			
	    randomFacadeID = {
                isOpen = true,
            },
            playerHurt = {
                isOpen = true,
            },
            actorHurt = {
                isOpen = true,
            },
        },	
        --}}}
    },
    player = {
        --{{{ 
        service = 'services.player', --文件名
        open_version = 9472,
        methods = {
            getHostUin = {
                isOpen = true,
            },
            getGameResults = {
                isOpen = true,
            },
            setGameResults  = {
                isOpen = true,
            },
            getGameScore  = {
                isOpen = true,
            },
            setGameScore  = {
                isOpen = true,
            },
            getGameRanking  = {
                isOpen = true,
            },
            setGameRanking = {
                isOpen = true,
            },
            walkForward = {
                isOpen = true,
            },
            walkStrafing = {
                isOpen = true,
            },
            walkUp = {
                isOpen = true,
            },
            walkRight = {
                isOpen = true,
            },
            walkAlongY = {
                isOpen = true,
            },                
            gainItems = {
                isOpen = true,
            },
            teleportHome = {
                isOpen = true,
            },
            getCurToolID  = {
                isOpen = true,
            },
            getNickname  = {
                isOpen = true,
            },
            removeBackpackItem  = {
                isOpen = true,
            },
            getDieTimes  = {
                isOpen = true,
            },
            getLeftLifeNum  = {
                isOpen = true,
            },
            setTeam  = {
                isOpen = true,
            },
            getTeam  = {
                isOpen = true,
            },
            isMainPlayer = {
                isOpen = true,
            },
            getMainPlayerUin = {
                isOpen = true,
            },
            getFoodLevel = {
                isOpen = true,
            }, 
            setFoodLevel = {
                isOpen = true,
            },
            getCurShotcut = {
                isOpen = true,
            },
            onCurToolUsed = {
                isOpen = true,
            },
            setMainPlayerUin = {
                isOpen = true,
            },  
            setRoleInfoForEducationMap = {
                isOpen = true,
            },
            setSkillCD = {
                isOpen = true,
            },
            reviveToPos = {
                isOpen = true,
            },
            setRevivePoint = {
                isOpen = true,
            },
            mountActor = {
                isOpen = true,
            },
            playAct = {
                isOpen = true,
            },
            notifyGameInfo2Self = {
                isOpen = true,
            },
            useItem = {
                isOpen = true,
            },
            rotateCamera = {
                isOpen = true,
            },
            changeViewMode = {
                isOpen = true,
            },
            setActionAttrState = {
                isOpen = true,
            },
            checkActionAttrState = {
                isOpen = true,
            },
            isEquipByResID = {
                isOpen = true,
            },
            getAtt = {
                isOpen = true,
            },
            setAtt = {
                isOpen = true,
            },
            setPosition = {
                isOpen = true,
            },
            getAimPos = {
                isOpen = true,
            },
            setItemAttAction = {
                isOpen = true,
            },
            playMusic = {
                isOpen = true,
            },
            stopMusic = {
                isOpen = true,
            },
            setGameWin = {
                isOpen = true,
            },
            playAdvertising = {
                isOpen = true,
            },
            playAdvertisingTask = {
                isOpen = true,
            },
            appendSpeed = {
                isOpen = true,
            },
            openDevStore = {
                isOpen = true,
            },
            getPropsType = {
                isOpen = true,
            },
            actCreateEquip = {
                isOpen = true,
            },
            actDestructEquip = {
                isOpen = true,
            },
            actEquipUpByResID = {
                isOpen = true,
            },
            actEquipOffByEquipID = {
                isOpen = true,
            },
            setCheckBoxScale = {
                isOpen = true,
            },
            openBoxByPos = {
                isOpen = true,
            },

            forceOpenBoxUI = {
                isOpen = true,
            },
            openDevGoodsBuyDialog = {
                isOpen = true,
            },
            
            openUIView = {
                isOpen = true,
            },

            hideUIView = {
                isOpen = true,
            },
			
	    changPlayerMoveType = {
                isOpen = true,
            },

            shakeCamera = {
                isOpen = true,
            },

            stopShakeCamera = {
                isOpen = true,
            },
			playQQMusic = {
				isOpen = true,
            },
            operateQQMusic = {
				isOpen = true,
            },

            OpenAppraiseView = {
                isOpen = true,
            },
            OpenCollectionView = {
                isOpen = true,
            },
	    
			IsMiniVip = {
                isOpen = true,
            },
            openDevStoreNew = {
                isOpen = true,
            },
			StandReportEvent = {
                isOpen = true,
            },
        },
        --}}}
    },
    mob = {
        --{{{
        service = 'services.mob', -- 文件名
        open_version = 9472,
        methods = {
            isAdult = {
                isOpen = true,
            },
            setOxygenNeed = {
                isOpen = true,
            },
            getTamedOwnerID = {
                isOpen = true,
            },
            setPanic = {
                isOpen = true,
            },
            setAIActive = {
                isOpen = true,
            },
            getActorID = {
                isOpen = true,
            },
            getActorName = {
                isOpen = true,
            },
            getAtt = {
                isOpen = true,
            },
            setAtt = {
                isOpen = true,
            },
        },
        --}}}
    },
    block = {
        --{{{ 
        service = 'services.block', --文件名
        open_version = 9472,
        methods = {
            isSolidBlock = {
                isOpen = true,
            },
            isLiquidBlock = {
                isOpen = true,
            },
            isAirBlock = {
                isOpen = true,
            },
            getBlockID = {
                isOpen = true,
            },
            setBlockAll = {
                isOpen = true,
            },
            destroyBlock = {
                isOpen = true,
            },
            placeBlock = {
                isOpen = true,
            },
            --替换方块
            replaceBlock = {
                isOpen = true,
            },
            setBlockData = {
                isOpen = true,
            },
            getBlockData = {
                isOpen = true,
            },
            setBlockSettingAttState = {
                isOpen = true,
            },
            getBlockSettingAttState = {
                isOpen = true,
            },
            getBlockSwitchStatus = {
                isOpen = true,
            },
            setBlockSwitchStatus = {
                isOpen = true,
            },
            convertBlockDirToData = {
                isOpen = true,
            },
            getBlockDataByDir = {
                isOpen = true,
            },
            getBlockPowerStatus = {
                isOpen = true,
            },
	    randomBlockID = {
                isOpen = true,
            },
        },
        --}}}
    },
    item = {
        --{{{
        service = 'services.item',
        open_version = 9472,
        methods = {
            getItemName = {
                isOpen = true,
            },
	    
	    randomItemID = {
                isOpen = true,
            },

            randomProjectileID = {
                isOpen = true,
            },
        },
        --}}}
    },
    team = {
        --{{{
        service = 'services.team',
        open_version = 9472,
        methods = {
            getNumTeam = {
                isOpen = true,
            },
            getTeamPlayerNum = {
                isOpen = true,
            },
            getTeamPlayers = {
                isOpen = true,
            },
            randomTeamPlayer = {
                isOpen = true,
            },
            setTeamScore = {
                isOpen = true,
            },
            getTeamScore = {
                isOpen = true,
            },
            addTeamScore = {
                isOpen = true,
            },
            setTeamResults = {
                isOpen = true,
            },
            getTeamResults = {
                isOpen = true,
            },
            setTeamPlayersResults= {
                isOpen = true,
            },
            setTeamDieTimes  = {
                isOpen = true,
            },
            getTeamDieTimes  = {
                isOpen = true,
            },
            addTeamDieTimes  = {
                isOpen = true,
            },
            changePlayerTeam = {
                isOpen = true,
            },
            getTeamCreatures = {
                isOpen = true,
            },
        },
        --}}}
    },
    chat = {
        service = 'services.chat',
        open_version = 9472,
        methods = {
            sendChat = {
                isOpen = true,
            },
        },
    },
    ui = {
        --{{{
        service = 'services.ui',
       
        methods = {
            list = {
				isOpen = true,
            },
            show = {
				isOpen = true,
            },
            hide = {
                isOpen = true,
            },
            load = {
                isOpen = true,
            },
            xmllist = {
                isOpen = true,
            },
            makedummy = {
                isOpen = true,
            },
            setGBattleUI = {
                isOpen = true,
            },
            world2RadarPos = {
                isOpen = true,
            },
            world2RadarDist = {
                isOpen = true,
            },
            setMinimapRenderMode = {
                isOpen = true,
            },
            setShapeLine = {
                isOpen = true,
            },
            setShapeCircle = {
                isOpen = true,
            },
            ShowScreenEffect = {
                isOpen = true,
            },
            Print2Wnd = {
                isOpen = true,
            },
            Print2WndWithTag = {
                isOpen = true,
            },
            InitPrintData = {
                isOpen = true,
            },
        },
        --}}}
    },
    mapmark = {
        service = 'services.mapmark',
        open_version = 9472,
        methods = {
            newShape = {
                isOpen = true,
            },
            deleteShape = {
                isOpen = true,
            },
            setShapeColor = {
                isOpen = true,
            },
            showShape = {
                isOpen = true,
            },
            updateLine = {
                isOpen = true,
            },
            updateRectangle = {
                isOpen = true,
            },
            updateCircle = {
                isOpen = true,
            },
        },
    },
    gameeventque = {
        service = 'services.gameeventque',
        open_version = 9472,
        methods = {
            postGasTimer = {
                isOpen = true,
            },
            postCurPlayerNum = {
                isOpen = true,
            },
        },
    },
    worldcontainer = {
        service = 'services.worldcontainer',
        open_version = 9472,
        methods = {
            addFurnace = {
                isOpen = true,
            },
            removeFurnace = {
                isOpen = true,
            },
            checkFurnace = {
                isOpen = true,
            },
            getFurnaceHeatPercent = {
                isOpen = true,
            },
            getFurnaceMeltPercent = {
                isOpen = true,
            },

            addStorageBox = {
                isOpen = true,
            },
            removeStorageBox = {
                isOpen = true,
            },
            checkStorage = {
                isOpen = true,
            },
            checkStorageEmptyGrid = {
                isOpen = true,
            },
            setStorageItem = {
                isOpen = true,
            },
            getStorageItem = {
                isOpen = true,
            },
            addStorageItem = {
                isOpen = true,
            },
            removeStorageItemByID = {
                isOpen = true,
            },
            removeStorageItemByIndex = {
                isOpen = true,
            },
            clearStorageBox = {
                isOpen = true,
            },
            addItemToContainer = {
                isOpen = true,
            },
            removeContainerItemByID = {
                isOpen = true,
            },
            clearContainer = {
                isOpen = true,
            },
        },
    },
    backpack = {
        service = 'services.backpack',
        open_version = 9472,
        methods = {
            getBackpackBarIDRange = {
                isOpen = true,
            },
            getBackpackBarSize = {
                isOpen = true,
            },
            setGridItem = {
                isOpen = true,
            },
            removeGridItem = {
                isOpen = true,
            },
            removeGridItemByItemID = {
                isOpen = true,
            },
            clearPack = {
                isOpen = true,
            },
            clearAllPack = {
                isOpen = true,
            },
            moveGridItem = {
                isOpen = true,
            },
            swapGridItem = {
                isOpen = true,
            },
            enoughSpaceForItem = {
                isOpen = true,
            },
            calcSpaceNumForItem = {
                isOpen = true,
            },
            getBackpackBarValidList = {
                isOpen = true,
            },
            getBackpackBarItemList = {
                isOpen = true,
            },
            hasItemByBackpackBar = {
                isOpen = true,
            },
            getItemNumByBackpackBar = {
                isOpen = true,
            },
            getGridItemID = {
                isOpen = true,
            },
            getGridItemName = {
                isOpen = true,
            },
            getGridStack = {
                isOpen = true,
            },
            getGridDurability = {
                isOpen = true,
            },
            getGridEnchantList = {
                isOpen = true,
            },
            getGridToolType = {
                isOpen = true,
            },
            addItem = {
                isOpen = true,
            },
            discardItem = {
                isOpen = true,
            },
            getGridNum = {
                isOpen = true,
            },
            actEquipUpByResID = {
                isOpen = true,
            },
            actEquipOffByEquipID = {
                isOpen = true,
            },
            actCreateEquip = {
                isOpen = true,
            },
            actDestructEquip = {
                isOpen = true,
            },
        },
    },
    spawnport = {
        service = 'services.spawnport',
        open_version = 9472,
        methods = {
            getSpawnPoint = {
                isOpen = true,
            },
            setSpawnPoint = {
                isOpen = true,
            },
            getChunkValidSpawnPos = {
                isOpen = true,
            },
        },
    },
    area = {
        --{{{ 
        service = 'services.area', --文件名
        open_version = 9472,
        methods = {
            createAreaRect = {
                isOpen = true,
            },
            createAreaRectByRange = {
                isOpen = true,
            },
            destroyArea = {
                isOpen = true,
            },
            createAreaRectForTemp = {
                isOpen = true,
            },
            getAreaByPos = {
                isOpen = true,
            },
            offsetArea = {
                isOpen = true,
            },
            expandArea = {
                isOpen = true,
            },
            getAreaCenter = {
                isOpen = true,
            },
            getAreaRectLength = {
                isOpen = true,
            },
            getAreaRectRange = {
                isOpen = true,
            },
            getRandomPos = {
                isOpen = true,
            },
            objInArea = {
                isOpen = true,
            },
            blockInArea = {
                isOpen = true,
            },
            posInArea = {
                isOpen = true,
            },
            getAreaPlayers = {
                isOpen = true,
            },
            getAreaCreatures = {
                isOpen = true,
            },
            fillBlock = {
                isOpen = true,
            },
            clearAllBlock = {
                isOpen = true,
            },
            cloneArea = {
                isOpen = true,
            },
            getPosOffset = {
                isOpen = true,
            },
            replaceAreaBlock = {
                isOpen = true,
            },
            blockInAreaRange = {
                isOpen = true,
            },
            getAllObjsInAreaRange = {
                isOpen = true,
            },
            getAllObjsInAreaRangByTypes = {
                isOpen = true,
            },
            fillBlockAreaRange = {
                isOpen = true,
            },
            clearAllBlockAreaRange = {
                isOpen = true,
            },
            cloneAreaRange = {
                isOpen = true,
            },
            replaceAreaRangeBlock = {
                isOpen = true,
            },
        },
    },
    objlib = {
        service = 'services.objectlib',
        open_version = 9472,
        methods = {
            getAreaData = {
                isOpen = true,
            },
            getPositionData = {
                isOpen = true,
            },
            getLivingData = {
                isOpen = true,
            },
        },
    },
    account = {
        service = 'services.account',
        open_version = 9472,
        methods = {
            isAccountLogin = {
                isOpen = true,
            },
            isAccountBind = {
                isOpen = true,
            },
            getAccountUin = {
                isOpen = true,
            },
            bindAccountPasswordQuestion = {
                isOpen = true,
            },
            loginAccountByUin = {
                isOpen = true,
            },
            loginAccount = {
                isOpen = true,
            },
        },
    },
    debug = {
        service = 'services.debug',
        open_version = 9728,--9984,
        methods = {
            commitLog = {
                isOpen = true,
            },
        },
    },
    varlib2 = {
        service = 'services.variablelib2',
        open_version = 11008,
        methods = {
            getLibVar = {
                isOpen = true,
            },
            setLibVar = {
                isOpen = true,
            },
            findLibvaridByName = {
                isOpen = true,
            },
	    
	    replaceAllLibvarCreatures = {
                isOpen = true,
            },
        },
    },
    playergroup2 = {
        service = 'services.playergroup2',
        open_version = 11013,
        methods = {
            createGroup = {
                isOpen = true,
            },
            destroyGroup = {
                isOpen = true,
            },
            createGroupForTemp = {
                isOpen = true,
            },
            addObjToGroup = {
                isOpen = true,
            },
            removeObjFromGroup = {
                isOpen = true,
            },
            clearObjGroup = {
                isOpen = true,
            },
            getObjNum = {
                isOpen = true,
            },
            getObjIdx = {
                isOpen = true,
            },
            getObjByIdx = {
                isOpen = true,
            },
            setObjByIdx = {
                isOpen = true,
            },
            isObjInGroup = {
                isOpen = true,
            },
            getAllObjs = {
                isOpen = true,
            },
            randomObj = {
                isOpen = true,
            },
        },
    },
    creaturegroup2 = {
        service = 'services.creaturegroup2',
        open_version = 11013,
        methods = {
            createGroup = {
                isOpen = true,
            },
            destroyGroup = {
                isOpen = true,
            },
            createGroupForTemp = {
                isOpen = true,
            },
            addObjToGroup = {
                isOpen = true,
            },
            removeObjFromGroup = {
                isOpen = true,
            },
            clearObjGroup = {
                isOpen = true,
            },
            getObjNum = {
                isOpen = true,
            },
            getObjIdx = {
                isOpen = true,
            },
            getObjByIdx = {
                isOpen = true,
            },
            setObjByIdx = {
                isOpen = true,
            },
            isObjInGroup = {
                isOpen = true,
            },
            getAllObjs = {
                isOpen = true,
            },
            randomObj = {
                isOpen = true,
            },
        },
    },
    minitimer2 = {
        service = 'services.minitimer2',
        open_version = 11013,
        methods = {
            isExist = {
                isOpen = true,
            },
            createTimer = {
                isOpen = true,
            },
            deleteTimer = {
                isOpen = true,
            },
            startBackwardTimer = {
                isOpen = true,
            },
            startForwardTimer = {
                isOpen = true,
            },
            pauseTimer = {
                isOpen = true,
            },
            resumeTimer = {
                isOpen = true,
            },
            stopTimer = {
                isOpen = true,
            },
            changeTimerTime = {
                isOpen = true,
            },
            getTimerTime = {
                isOpen = true,
            },
            showTimerTips = {
                isOpen = true,
            },
        },
    },
    buff = {
        service = 'services.buff',
        open_version = 11264,
        methods = {
            isCustomBuff = {
                isOpen = true,
            },
            addBuff = {
                isOpen = true,
            },
            removeBuff = {
                isOpen = true,
            },
            clearAllBuff = {
                isOpen = true,
            },
            clearAllBadBuff = {
                isOpen = true,
            },
            hasBuff = {
                isOpen = true,
            },
            getBuffList = {
                isOpen = true,
            },
            getBuffNumByBuffid = {
                isOpen = true,
            },
            getBuffIndex = {
                isOpen = true,
            },
            getBuffLeftTick = {
                isOpen = true,
            },
            getBuffName = {
                isOpen = true,
            },
        },
    },
    graphics = {
        service = 'services.graphics',
        open_version = 13056,
        methods = {
            makeGraphicsText = {
                isOpen = true,
            }, 

            makeflotageText = {
                isOpen = true,
            }, 

            makeGraphicsProgress = {
                isOpen = true,
            }, 

            makeGraphicsArrowToPos = {
                isOpen = true,
            }, 
            makeGraphicsLineToPos = {
                isOpen = true,
            },
            makeGraphicsSurfaceToPos = {
                isOpen = true,
            },
            makeGraphicsArrowToActor = {

                isOpen = true,
            },
            makeGraphicsLineToActor = {
                isOpen = true,
            },
            makeGraphicsSurfaceToActor = {
                isOpen = true,
            },

            createGraphicsTxtByPos = {
                isOpen = true,
            },
            createGraphicsTxtByActor = {
                isOpen = true,
            },
            createflotageTextByPos = {
                isOpen = true,
            },
            createflotageTextByActor = {
                isOpen = true,
            },
            createGraphicsProgressByPos = {
                isOpen = true,
            },
            createGraphicsProgressByActor = {
                isOpen = true,
            },
            createGraphicsArrowByActorToPos = {
                isOpen = true,
            },
            createGraphicsArrowByActorToActor = {
                isOpen = true,
            },
            createGraphicsArrowByPosToPos = {
                isOpen = true,
            },
            createGraphicsArrowByPosToActor = {
                isOpen = true,
            },

            createGraphicsLineByActorToPos = {
                isOpen = true,
            },
            createGraphicsLineByActorToActor = {
                isOpen = true,
            },
            createGraphicsLineByPosToPos = {
                isOpen = true,
            },
            createGraphicsLineByPosToActor = {
                isOpen = true,
            },
            
            createGraphicsSurfaceByActorToPos = {
                isOpen = true,
            },
            createGraphicsSurfaceByActorToActor = {
                isOpen = true,
            },
            createGraphicsSurfaceByPosToPos = {
                isOpen = true,
            },
            createGraphicsSurfaceByPosToActor = {
                isOpen = true,
            },

            removeGraphicsByPos = {
                isOpen = true,
            },
            removeGraphicsByObjID = {
                isOpen = true,
            },
            updateGraphicsTextById = {
                isOpen = true,
            },
            updateGraphicsProgressById = {
                isOpen = true,
            },
            snycGraphicsInfo2Client = {
                isOpen = true,
            },
	    replaceAllGraphics = {
                isOpen = true,
            },
        },
    },

    listenParam = {
        service = 'services.listenParam',
        open_version = 13056,
        methods = {
            AddGraphicsListenParam = {
                isOpen = true,
            },
        },
    },
    
    valuegroup = {
        service = 'services.valuegroup',
        open_version = 13583,
        methods = {
            insertInGroup = {
                isOpen = true,
            },

            removeValueByIndex = {
                isOpen = true,
            },

            removeValueByValue = {
                isOpen = true,
            },

            clearGroup = {
                isOpen = true,
            },

            getGrouplength = {
                isOpen = true,
            },
            
            getGroupValueByNo = {
                isOpen = true,
            },
            
            setGroupValueByNo = {
                isOpen = true,
            },

            getAllGroupItem = {
                isOpen = true,
            },

            insertInGroupByName = {
                isOpen = true,
            },

            removeValueIndexByName = {
                isOpen = true,
            },

            removeValueByName = {
                isOpen = true,
            },

            clearGroupByName = {
                isOpen = true,
            },

            getGrouplengthByName = {
                isOpen = true,
            },
            
            getValueNoByName = {
                isOpen = true,
            },
            
            setValueNoByName = {
                isOpen = true,
            },

            getGroupRandomValue = {
                isOpen = true,
            },

            insertAnyValue = {
                isOpen = true,
            },
            
            deleteValueByNo = {
                isOpen = true,
            },
            
            deleteValue = {
                isOpen = true,
            },

            clearNoValue = {
                isOpen = true,
            },

            addGroup = {
                isOpen = true,
            },

            removeGroup = {
                isOpen = true,
            },

            deleteGroup = {
                isOpen = true,
            },
            insertGroup = {
                isOpen = true,
            },

            replaceValue = {
                isOpen = true,
            },

            sortGroup = {
                isOpen = true,
            },

            hasValue = {
                isOpen = true,
            },

            hasValueByNo = {
                isOpen = true,
            },

            getCountByValue = {
                isOpen = true,
            },

            getNoByValue = {
                isOpen = true,
            },

            getSpcialValue = {
                isOpen = true,
            },


            getRandomValueByName = {
                isOpen = true,
            },

            insertValueByName = {
                isOpen = true,
            },
            
            deleteNoByName = {
                isOpen = true,
            },
            
            deleteValueByName = {
                isOpen = true,
            },

            clearNoValueByName = {
                isOpen = true,
            },

            addGroupByName = {
                isOpen = true,
            },

            removeGroupByName = {
                isOpen = true,
            },

            deleteGroupByName = {
                isOpen = true,
            },
            insertGroupByName = {

                isOpen = true,
            },

            replaceValueByName = {
                isOpen = true,
            },

            sortGroupByName = {
                isOpen = true,
            },

            hasValueByName = {
                isOpen = true,
            },

            hasNoByName = {
                isOpen = true,
            },

            getValueCountByName = {
                isOpen = true,
            },

            getGroupNoByValue = {
                isOpen = true,
            },

            getSpcialValueByName = {
                isOpen = true,
            },
	    getRunLibType = {
                isOpen = true,
            },
            
        },
    },


    Coustomui = {
        service = 'services.coustomUI',
        open_version = 13056,
        methods = {
            showUI = {
                isOpen = true,
            },
            hideUI = {
                isOpen = true,
            },
            setText = {
                isOpen = true,
            },
            setTexture = {
                isOpen = true,
            },
            setSize = {
                isOpen = true,
            },
            setFontSize = {
                isOpen = true,
            },
            setColor = {
                isOpen = true,
            },
            showElement = {
                isOpen = true,
            },
            hideElement = {
                isOpen = true,
            },
            rotateElement = {
                isOpen = true,
            },
        },
    },
	
    Customui = {
        service = 'services.customui',
        open_version = 13056,
        methods = {
            showUI = {
                isOpen = true,
            },
            hideUI = {
                isOpen = true,
            },
            setText = {
                isOpen = true,
            },
            setTexture = {
                isOpen = true,
            },
            setSize = {
                isOpen = true,
            },
            setFontSize = {
                isOpen = true,
            },
            setColor = {
                isOpen = true,
            },
            showElement = {
                isOpen = true,
            },
            hideElement = {
                isOpen = true,
            },
            rotateElement = {
                isOpen = true,
            },
			setAlpha = {
                isOpen = true,
            },
            setState = {
                isOpen = true,
            },
            setPosition = {
                isOpen = true,
            },
			
			getItemIcon = {
                isOpen = true,
            },

            getMonsterObjIcon = {
                isOpen = true,
            },

            getMonsterIcon = {
                isOpen = true,
            },

            getStatusIcon = {
                isOpen = true,
            },

            
            getBlockIcon = {
                isOpen = true,
            },

            getRoleIcon = {
                isOpen = true,
            },

            getShuctIcon = {
                isOpen = true,
            },
        },
    },
    
        DisPlayBoard = {
        service = 'services.displayboard',
        open_version = 13056,
        methods = {
            showBoard = {

                isOpen = true,
            },
            hideBoard = {

                isOpen = true,
            },
            setBoardPicture = {

                isOpen = true,
            },
            setBoardVideoUrl = {

                isOpen = true,
            },
            setBoardCustomUI = {

                isOpen = true,
            },
	    setNetViedo = {
                isOpen = true,
            },
            setViedoPlayMode = {
                isOpen = true,
            },
        },
    },
	
    CloudSever = {
        service = 'services.CloudSever',
        open_version = 13056,
        methods = {
            setDataListValue = {
                isOpen = true,
            },
            removeDataListValue = {
                isOpen = true,
            },
            getValueForTrigger = {
                isOpen = true,
            },
            getIndexValueForTrigger = {
                isOpen = true,
            },
            getValueCallback = {
                isOpen = true,
            },
            ClearList = {
                isOpen = true,
            },
            getIndexForTrigger = {
                isOpen = true,
            },
            getKeyForTrigger = {
                isOpen = true,
            },
            getIndexValueCallback = {
                isOpen = true,
            },
            automaticByKey = {
                isOpen = true,
            },
            removeOrderDataByKey = {
                isOpen = true,
            },
            ClearOrderData = {
                isOpen = true,
            },
            setDataListBykey = {
                isOpen = true,
            },
            getlistCache = {
                isOpen = true,
            },
	    getOrderDataIndexArea = {
                isOpen = true,
            },
            getOrderDataValueArea = {
                isOpen = true,
            },
			UpdateAsync = {
                isOpen = true,
            },
        },
    },

	minicode = {
    service = 'services.minicode',
    open_version = 13056,
		methods = {
			moveAlongX = {
				isOpen = true,
			},
			moveAlongY = {
				isOpen = true,
			},
			moveAlongZ = {
				isOpen = true,
			},
			checkPosition = {
				isOpen = true,
			},   
			checkPositionRange = {
				isOpen = true,
			},   
			checkBlock = {
				isOpen = true,
			},   
			setMouseFilter = {
				isOpen = true,
			},   
			setTime = {
				isOpen = true,
			},   
			setView = {
				isOpen = true,
			},                   
			setWeather = {
				isOpen = true,
			},
			getSimilarity = {
				isOpen = true,
			},
			allowFlying = {
				isOpen = true,
			},
			setVisible_backpack = {
				isOpen = true,
			},   
			setVisible_noticeboard = {
				isOpen = true,
			},
			getView = {
				isOpen = true,
			},  
			doAction = {
				isOpen = true,
			},  
			jimuLuaReflectToJs = {
				isOpen = true,
			},
			setJimuRunning = {
				isOpen = true,
			},
			checkNextMoveAvailableForLua = {
				isOpen = true,
			},
			miniCodeCallBack = {
				isOpen = true,
			},
			setTimerId = {
				isOpen = true,
			},
			showBattleEndFrame = {
				isOpen = true,
			},
			interfaceInteraction = {
				isOpen = true,
			}, 
			showRedArrowForGuide = {
				isOpen = true,
			},
			setPlayerBackpackPriority = {
				isOpen = true,
			},       
			setMainPlayUI = {
				isOpen = true,
			},     
			hideUISwitch = {
				isOpen = true,
			}, 
			showUISwitch = {
				isOpen = true,
			},
			setUISwitchStatus = {
				isOpen = true,
			},                                             
			setViewDistance = {
				isOpen = true,
			},         
			setPlayerAttr = {
				isOpen = true,
			},
			sendTipsToRN = {
				isOpen = true,
			},
			closeTipsToRN = {
				isOpen = true,
			},
			miniCodeCallBack = {
				isOpen = true,
			},
			sendGameWinToRN = {
				isOpen = true,
			},
			miniCodeRandom = {
				isOpen = true,
			},
			setPosition = {
				isOpen = true,
			},
			setGlobalMusicVolume = {
				isOpen = true,
			},
			setGlobalSoundVolume = {
				isOpen = true,
			},
			checkBlockRegion = {
				isOpen = true,
			},
			showGestureGuide = {
				isOpen = true,
			},
			addBoundingBox = {
	                	isOpen = true,
	            	},
	            	limit_player_edit_area = {
	                	isOpen = true,
	            	},
	            	compareCourseAnswer = {
	                	isOpen = true,            
	            	},
	            	getSimilarityUgcVC = {
	                	isOpen = true,
	            	},
	            	getAreaBlockNumInfo = {
	                	isOpen = true,
	            	},
	            	setCourseTargetsVisible = {
	                	isOpen = true,            
	            	},
	            	courseHandleJudgment = {
	                	isOpen = true,            
	            	},
	            	isInCourse = {
	                	isOpen = true,            
	            },
		},
	},

    _ScriptFenv_G_ = {
        --lua系统函数
        ["assert"] = true,
        ["error"] = true,
        ["ipairs"] = true,
        ["next"] = true,
        ["pairs"] = true,
        ["pcall"] = true,
        ["rawequal"] = true,
        ["rawget"] = true,
        ["select"] = true,
        ["setmetatable"] = true,
        ["getmetatable"] = true,
        ["tonumber"] = true,
        ["tostring"] = true,
        ["type"] = true,
        ["_VERSION"] = true,
        ["xpcall"] = true,
        ["coroutine"] = true,
        ["string"] = true,
        ["table"] = true,
        ["math"] = true,
        ["debug"] = true,
        ["unpack"] = true,
        ["print"] = true,

        --threadpool.lua
        ["threadpool"] = true,
        ["delegate"] = true,
        ["gen_gid"] = true,
        ["_adjust_now_"] = true,
        
        --游戏内（原开发者虚拟机提供的）
        ["GameVM"] = true,
        ["LoadLuaScript"] = true,
        ["DoLuaScriptFunction"] = true,
        ["_trigger_insid_"] = true,
        ["_event_name_id_"] = true,
        ["CurEventParam"] = true,
        ["copy_table"] = true,
        ["StringSplit"] =  true,
        ["JSON"] =  true,
        ["TransfomPluginOrigin2Current"] = true,
        ["TransfomStatusCurrent2Origin"] = true,
        ["wrapper"] = true,
        ["ErrorCode"] = true,
        ["SSMgrResource"] = true,
        ['json2table'] = true,
		["getServerTime"] = true,

        --worldenum.lua
        ["WorldType"] = true,
        ["TerrainType"] = true,
        ["CameraEditState"] = true,
        ["GAMEMAKER_RULE"] = true,
        ["MAPMARK_TYPE"] = true,
        ["EQUIP_SLOT_TYPE"] = true,
        ["MODATTRIB_TYPE"] = true,
        ["TEAM_RESULTS"] = true,
        ["GSOUND_TYPE"] = true,
        ["ACTORBODY_EFFECT"] = true,
        ["GameActorType"] = true,
        ["OBJ_TYPE"] = true,
        ["GameActorTypeToObjType"] = true,
        ["BACKPACK_TYPE"] = true,
        ["FACE_DIRECTION"] = true,
        ["BACKPACK_START_INDEX"] = true,
        ["SHORTCUT_START_INDEX"] = true,
        ["SHORTCUTEX_START_INDEX"] = true,
        ["STORAGE_START_INDEX"] = true,
        ["EQUIP_START_INDEX"] = true,
        ["CREATUREATTR"] = true,
        ["CREATUREMOTION"] = true,
        ["PLAYERATTR"] = true,
        ["PLAYERMOTION"] = true,
        ["TEAMATTR"] = true,
        ["HURTTYPE"] = true,
        ["BLOCKID"] = true,
        ["BLOCKATTR"] = true,
        ["BLOCKSTATUS"] = true,
        ["WEATHERSTATUS"] = true,
        ["VIEWPORTTYPE"] = true,
        ["RESLIBTYPE"] = true,
        ["KEYSTYPE"] = true,
        ["VARTYPE"] = true,
        ["WOKESTAGE"] = true,
        ["GRAPHICS"] = true,
        ["FURNACEID"] = true,
        ["STORAGEID"] = true,
        ["SORT"] = true,
        ["MOVETYPE"] = true,
        ["QQMUSICOP"] = true,
        ['VIEDOPLAYMODE'] = true,
		['EVENTDATE'] = true,
		['AreaSimilarity'] = true,
        ['MinicodeCourseVisible'] = true,
        ['MinicodeCourseJudgment'] = true,
    },
}