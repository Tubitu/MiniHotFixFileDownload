{

--高级创造地图模板配置1
createWorldTemplete = 
{
		{
            index = 1, --随机地形
            mapId = 0,   
            imgUrl = "RandomTerrain.png",
            modeType = 2,
            setName = 300371,
            --desc = 300372,
            worldTerrain = 1,
        	},
        {
            index = 2, --纯白画布
            mapId = 1,
            imgUrl = "WhiteBaseplate.png",
            modeType = 2,
            setName = 300373,
            --desc = 300374,
            worldTerrain = 2,
            flatTerrainType = 1,
        	},			
        {
            index = 3,
            mapId = 1, --平坦草地
            imgUrl = "Grass.png",
            modeType = 2,
            setName = 300377,
            --desc = 300378,
            worldTerrain = 2,
            flatTerrainType = 3,
        	},
        {
            index = 4, --浮空小岛
            mapId = 1,  
            imgUrl = "EmptyIsland.png",
            modeType = 2,
            setName = 300379,
            --desc = 300380,
            worldTerrain = 2,
            flatTerrainType = 4,
        	},
        {
            index = 104, --网红躲猫猫
            modeType = 3,
			mapId = 87127706573322,
        	},	
        {
            index = 105, --村庄
            modeType = 2,
			mapId = 87071871998474,
        	},	
        {
            index = 106, --郊区
            modeType = 2,
			mapId = 87080461933066,
        	},	
        {
            index = 107, --城市
            modeType = 2,
			mapId = 87084756900362,
        	},	
        {
            index = 108, --海上度假村
            modeType = 2,
			mapId = 87063282063882,
        	},	
        {
            index = 109, --火山
            modeType = 2,
			mapId = 87067577031178,
        	},	
        {
            index = 110, --浮空岛屿
            modeType = 2,
			mapId = 82849919146506,
        	},	
        {
            index = 111, --兔年新春
            modeType = 2,
			mapId = 79177722108426,
        	},	
        {
            index = 112, --凹凸竞技场
            modeType = 3,
			mapId = 82811264440842,
        	},
        {
            index = 113, --狼来了小红帽快跑
            modeType = 3,
			mapId = 86822763895306,
        	},
        {
            index = 114, --宫格解密
            modeType = 3,
			mapId = 61942018349578,
        	},	
        {
            index = 115, --射击场
            modeType = 2,
			mapId = 86818468928010,
        	},	
        {
            index = 116, --彩虹跑酷
            modeType = 2,
			mapId = 86728274614794,
        	},		
        {
            index = 117, --蛙蛙温泉旅店
            modeType = 2,
			mapId = 86741159516682,
        	},
        {
            index = 117, --赛车场
            modeType = 2,
			mapId = 86809878993418,
        	},
        {
            index = 118, --桃花林
            modeType = 2,
			mapId = 86762634353162,
        	},
        {
            index = 119, --游乐园
            modeType = 2,
			mapId = 86814173960714,
        	},
        {
            index = 120, --章鱼的料理屋
            modeType = 2,
			mapId = 86792699124234,
        	},						
        {
            index = 121, --彩虹跑酷
            modeType = 2,
			mapId = 86728274614794,
        	},
        {
            index = 122, --粉色空岛
            modeType = 2,
			mapId = 86732569582090,
        	},
        {
            index = 123, --机械工厂
            modeType = 2,
			mapId = 86736864549386,
        	},	
        {
            index = 124, --雪原
            modeType = 2,
			mapId = 18906446043658,
        	},
		{
            index = 125, --林地地形
            --desc = "林地模板",
            modeType = 2,
            imgUrl = "Forestland.png",
            setName = "林地地形",
            mapId = 20285130545674,
         	},
        {
            index = 126, --沙漠
            modeType = 2,
			mapId = 86693914876426,
        	},
        {
        	index = 127, --海岛地形
            --desc = "海岛模板",
            modeType = 2,
            imgUrl = "SeaIsland.png",
            setName = "海岛地形",
            mapId = 34961033796106,
        	},
        {
            index = 128, --糖果派对
            --desc = "糖果派对",
            modeType = 3,
            imgUrl = "Candy.png",
            setName = "糖果派对",
            mapId = 20980915247626,
        	},
 		{
            index = 129, --守护菜园
            --desc = "守护菜园",
            modeType = 3,
            imgUrl = "DefendGraden.png",
            setName = "守护菜园",
            mapId = 20989505182218,
            },
         {
            index = 130, --神树跑酷
            --desc = "神树跑酷",
            modeType = 3,
            imgUrl = "Tree.png",
            setName = "神树跑酷",
            mapId = 20993800149514,
            },
         {
            index = 131, --躲避冲撞
            --desc = "躲避冲撞",
            modeType = 3,
            imgUrl = "Miss.png",
            setName = "躲避冲撞",
            mapId = 3521873189386,
            },

        {
            index = 149, --水域
            mapId = 1, 
            imgUrl = "Sea.png",
            modeType = 2,
            setName = 300375,
            --desc = 300376,
            worldTerrain = 2,
            flatTerrainType = 2,
        	},
        {
            index = 150, --空岛森林
            mapId = 1, 
            imgUrl = "EmptyIslandForest.png",
            modeType = 2,
            setName = 300381,
            --desc = 300382,
            worldTerrain = 3,
        	},
		{
            index = 151, --萌眼星（未上）
            modeType = 2,
			mapId = 86723979647498,
        	},

},

--游戏玩法设置
GameSetting = nil,

--积木块搜索设置
VisualCodeSearchConfig= {
title = "搜索建议",
key={
[1]= "得分",
[2]= "位置",
[3]= "玩家",
[4]= "生物类型",
[5]= "外观",
[6]= "区域",
},
},

--教学教程开关
TeachingCourseSwitch = 1,
--教学教程配置
TeachingCourseConfig = {
[1] = {
[10] = {
[10001] = {
open = 0,
content = "使用新工具创造一个【萤火虫之夜】吧~",
version = "",
maxShowCount = 5,
showTime = 5,
course = {
{
tips = "1.点击左上角【高级模式】", 
url = "http://ws-mdownload.mini1.cn/party/20221126164741.png" 
},
{
tips = "2.点击[color=#4ebe7b]【玩法-触发器】[/color]，进入触发器编辑页面", 
url = "http://ws-mdownload.mini1.cn/party/20221126164503.png" 
},
{
tips = "在【事件】积木找到“当游戏创建”，按住积木拖出到画布", 
url = "http://ws-mdownload.mini1.cn/party/20221126164726.png" 
},
{
tips = "按图片拖出积木“设置时间”", 
url = "http://ws-mdownload.mini1.cn/party/20221126164812.png" 
},
{
tips = "按图片拖出积木“重复执行”", 
url = "http://ws-mdownload.mini1.cn/party/20221126164802.png" 
},
{
tips = "按图片拖出积木“创建生物”", 
url = "http://ws-mdownload.mini1.cn/party/20221126164830.png" 
},
{
tips = "按图片拖出积木“等待时间”", 
url = "http://ws-mdownload.mini1.cn/party/20221126164900.png" 
},
{
tips = "按图片修改位置参数为“出生点”", 
url = "http://ws-mdownload.mini1.cn/party/20221126164910.png" 
},
{
tips = "按图片修改参数为“萤火虫”", 
url = "http://ws-mdownload.mini1.cn/party/20221126164917.png" 
},
{
tips = "按图片修改参数为“0.2”", 
url = "http://ws-mdownload.mini1.cn/party/20221126164930.png" 
},
{
tips = "以上是完整积木，检查一下是否一致吧", 
url = "http://ws-mdownload.mini1.cn/party/20221126164936.png" 
},
{
tips = "点击左下角运行，就可以查看积木效果了", 
url = "http://ws-mdownload.mini1.cn/party/20221126164944.png" 
},

}
},
},
},
[3] = {
[32] = {
[32001] = {
open = 0,
content = "点击【积木盒子-变量】",
version = "",
maxShowCount = 5,
showTime = 5,
course = {

}
},[32002] = {
open = 1,
content = "自制积木可以让你的代码更加简洁，查看说明->",
version = "1.23.0",
maxShowCount = 5,
showTime = 5,
course = {
{
tips = "自制积木可以让你的代码更加简洁、清晰", 
url = "http://ws-mdownload.mini1.cn/party/20221126180333.mp4" 
},

}
},
},
},
[2] = {
[24] = {
[24001] = {
open = 0,
content = "全新触发器可以更高效编写逻辑，查看说明-->",
version = "",
maxShowCount = 5,
showTime = 5,
course = {
{
tips = "全新触发器可以更高效的编写逻辑", 
url = "http://ws-mdownload.mini1.cn/party/20221126180329.mp4" 
},

}
},
},[25] = {
[1000] = {
open = 0,
content = "点击“草块”",
version = "",
maxShowCount = 5,
showTime = 5,
course = {

}
},
},[20] = {
[20001] = {
open = 1,
content = "【搭建模式】可以快速生成地形，查看说明-->",
version = "1.23.0",
maxShowCount = 5,
showTime = 5,
course = {
{
tips = "【搭建模式】基础操作说明", 
url = "http://ws-mdownload.mini1.cn/party/20221212170656.mp4" 
},

}
},
},[21] = {
[21101] = {
open = 1,
content = "【选择模式】能够快速调整地图中方块、角色的属性",
version = "1.23.0",
maxShowCount = 5,
showTime = 5,
course = {
{
tips = "试试看调整一下方块的位置", 
url = "http://ws-mdownload.mini1.cn/party/20221212170708.mp4" 
},

}
},[21001] = {
open = 0,
content = "点击【搭建】，点击【搭建】，点击【搭建】，点击【搭建】点击【搭建】点击【搭建】点击【搭建】点击【搭建】点击【搭建】，点击【搭建】，点击【搭建】点击【搭建】",
version = "",
maxShowCount = 5,
showTime = 5,
course = {

}
},[21002] = {
open = 0,
content = "点击【搭建-搭建】",
version = "",
maxShowCount = 5,
showTime = 5,
course = {

}
},[21003] = {
open = 1,
content = "【笔刷】可以在地图上画出你想要的形状，查看说明-->",
version = "1.23.0",
maxShowCount = 5,
showTime = 5,
course = {
{
tips = "笔刷模式适合染色、绘画", 
url = "http://ws-mdownload.mini1.cn/party/20221212170627.mp4" 
},

}
},[21004] = {
open = 1,
content = "【框选模式】可以大批量操作区域的复制、移动",
version = "1.23.0",
maxShowCount = 5,
showTime = 5,
course = {
{
tips = "试试用框选复制一个房子吧~", 
url = "http://ws-mdownload.mini1.cn/party/20221212170649.mp4" 
},

}
},[21301] = {
open = 0,
content = "点击【更多】",
version = "",
maxShowCount = 5,
showTime = 5,
course = {
{
tips = "点击视频可以全屏查看", 
url = "https://ws-mdownload.mini1.cn/party/20221115181357.mp4" 
},

}
},[21201] = {
open = 1,
content = "【玩法设置】可以快速调整地图玩法",
version = "1.23.0",
maxShowCount = 5,
showTime = 5,
course = {
{
tips = "试试调整一下时间~", 
url = "http://ws-mdownload.mini1.cn/party/20221212170701.mp4" 
},

}
},
},[22] = {
[22009] = {
open = 0,
content = "点击【玩法-数据】",
version = "",
maxShowCount = 5,
showTime = 5,
course = {

}
},[22008] = {
open = 0,
content = "点击【玩法-界面】",
version = "",
maxShowCount = 5,
showTime = 5,
course = {

}
},[22001] = {
open = 0,
content = "点击【搭建-搭建-方块】",
version = "",
maxShowCount = 5,
showTime = 5,
course = {

}
},[22003] = {
open = 0,
content = "点击【搭建-搭建-玩法】",
version = "",
maxShowCount = 5,
showTime = 5,
course = {

}
},[22002] = {
open = 0,
content = "点击【搭建-搭建-生物】",
version = "",
maxShowCount = 5,
showTime = 5,
course = {

}
},[22005] = {
open = 0,
content = "点击【玩法-世界】",
version = "",
maxShowCount = 5,
showTime = 5,
course = {

}
},[22004] = {
open = 0,
content = "点击【搭建-搭建-自定义】",
version = "",
maxShowCount = 5,
showTime = 5,
course = {

}
},[22007] = {
open = 0,
content = "点击【玩法-规则】",
version = "",
maxShowCount = 5,
showTime = 5,
course = {

}
},[22006] = {
open = 0,
content = "点击【玩法-玩家】",
version = "",
maxShowCount = 5,
showTime = 5,
course = {

}
},
},[23] = {
[23002] = {
open = 0,
content = "点击【搭建-搭建-方块-自定义】",
version = "",
maxShowCount = 5,
showTime = 5,
course = {

}
},[23001] = {
open = 0,
content = "点击【搭建-搭建-方块-功能】",
version = "",
maxShowCount = 5,
showTime = 5,
course = {

}
},
},
},

},

--结束位置
}