{
	--用于观看广告的解锁迷你图鉴
	--unlock_item={
		--version_min = '1.11.0',
		--apiids='999,1,28',
		--id = {
		--物品ID
		--[970]={
			--num = 200,--解锁一个要的迷你点数量
		--},
		--},
	--},
	--家园系统客户端配置表1
	manor_client =
	{	
		manor_ver = 
		{
			--apiids = '1,45,345,999',
			--apiids_no = '999',
			version_min = "0.52.0",
		},
	},
	--家园系统服务器配置表
	manor_server = 
	{
		manor_ver = 
		{
			--apiids = '1,999,345,45',
			--apiids_no = '101,110',
			version_min = "0.52.0",
		},
        -- 每日任务出现需满足的最低版本号
        daily_task_min_version = '1.2.5',
		--白名单
		--ip_access =  "127.0.0.1",
		--流浪商人
		stray=
		{
			{
				itemid=20029,
				itemname='琉璃酱-碎片',
				itemnum=3, --物品数量
				costtype=4, --2迷你币，4迷你豆
				costnum=180, --价格
				costnum_discount=160, --折扣后的价格
			},
			{
				itemid=20060,
				itemname='乔治-碎片',
				itemnum=3, --物品数量
				costtype=4, --2迷你币，4迷你豆
				costnum=180, --价格
				costnum_discount=160, --折扣后的价格
			},
			{
				itemid=20061,
				itemname='安妮-碎片',
				itemnum=3, --物品数量
				costtype=4, --2迷你币，4迷你豆
				costnum=180, --价格
				costnum_discount=160, --折扣后的价格
			},
			{
				itemid=10043,
				itemname='特长碎片',
				itemnum=3, --物品数量
				costtype=4, --2迷你币，4迷你豆
				costnum=65, --价格
				costnum_discount=60, --折扣后的价格
			},
			{
				itemid=20059,
				itemname='熔岩星能幕布-碎片',
				itemnum=1, --物品数量
				costtype=4, --2迷你币，4迷你豆
				costnum=45, --价格
				costnum_discount=40, --折扣后的价格
			},
			{
				itemid=20018,
				itemname='紫色玻璃灯-碎片',
				itemnum=1, --物品数量
				costtype=4, --2迷你币，4迷你豆
				costnum=90, --价格
				costnum_discount=80, --折扣后的价格
			},
			{
				itemid=20006,
				itemname='落叶松木门-碎片',
				itemnum=1, --物品数量
				costtype=4, --2迷你币，4迷你豆
				costnum=90, --价格
				costnum_discount=80, --折扣后的价格
			},
			{
				itemid=20051, 
				itemname='松木沙发-碎片',
				itemnum=1, --物品数量
				costtype=4, --2迷你币，4迷你豆
				costnum=45, --价格
				costnum_discount=40, --折扣后的价格
			},
			{
				itemid=20131,
				itemname='荧光弹弓-碎片',
				itemnum=1, --物品数量
				costtype=4, --2迷你币，4迷你豆
				costnum=90, --价格
				costnum_discount=80, --折扣后的价格
			},
			{
				itemid=20294,
				itemname='中式椅子-碎片',
				itemnum=1, --物品数量
				costtype=4, --2迷你币，4迷你豆
				costnum=45, --价格
				costnum_discount=40, --折扣后的价格
			},
			{
				itemid=20295,
				itemname='中式桌子-碎片',
				itemnum=1, --物品数量
				costtype=4, --2迷你币，4迷你豆
				costnum=45, --价格
				costnum_discount=40, --折扣后的价格
			},
			{
				itemid=20296,
				itemname='中式木椅-碎片',
				itemnum=1, --物品数量
				costtype=4, --2迷你币，4迷你豆
				costnum=45, --价格
				costnum_discount=40, --折扣后的价格
			},
			{
				itemid=20297,
				itemname='中式火炉-碎片',
				itemnum=1, --物品数量
				costtype=4, --2迷你币，4迷你豆
				costnum=45, --价格
				costnum_discount=40, --折扣后的价格
			},
			{
				itemid=20298,
				itemname='中式柜子-碎片',
				itemnum=1, --物品数量
				costtype=4, --2迷你币，4迷你豆
				costnum=45, --价格
				costnum_discount=40, --折扣后的价格
			},
			{
				itemid=10011,
				itemname='果实券',
				itemnum=1, --物品数量
				costtype=4, --2迷你币，4迷你豆
				costnum=288, --价格
				costnum_discount=260, --折扣后的价格
			},
			{
				itemid=21546,
				itemname='美味热狗（7天）',
				itemnum=1, --物品数量
				costtype=4, --2迷你币，4迷你豆
				costnum=180, --价格
				costnum_discount=140, --折扣后的价格
			},
			{
				itemid=21416,
				itemname='菜菜春卷（7天）',
				itemnum=1, --物品数量
				costtype=4, --2迷你币，4迷你豆
				costnum=180, --价格
				costnum_discount=140, --折扣后的价格
			},
			{
				itemid=21092,
				itemname='提灯小幽灵（7天）',
				itemnum=1, --物品数量
				costtype=4, --2迷你币，4迷你豆
				costnum=180, --价格
				costnum_discount=140, --折扣后的价格
			},
			{
				itemid=20705,
				itemname='大白鲨衣服（7天）',
				itemnum=1, --物品数量
				costtype=4, --2迷你币，4迷你豆
				costnum=180, --价格
				costnum_discount=140, --折扣后的价格
			},
			{
				itemid=21341,
				itemname='萌萌小死神（7天）',
				itemnum=1, --物品数量
				costtype=4, --2迷你币，4迷你豆
				costnum=180, --价格
				costnum_discount=140, --折扣后的价格
			},
		},
		--家园新人礼物	
		gift =
		{
			{id =68561, num = 1},
			{id =64010, num = 30},
			{id =64022, num = 30},
			{id =64035, num = 30},
			{id =75018, num = 5},
			{id =75017, num = 10},
			{id =75016, num = 10},
			{id =75015, num = 10},
			{id =75014, num = 10},
			{id =75013, num = 10},
			{id =421, num = 14},
			{id =1571, num = 53},
			{id =207, num = 29},
			{id =1570, num = 43},
			{id =649, num = 41},
			{id =1551, num = 1},
			{id =1572, num = 4},
			{id =1556, num = 3},
			{id =1552, num = 1},
			{id =1550, num = 1},
			{id =1554, num = 2},
			{id =1564, num = 1},
			{id =1565, num = 3},
			{id =1566, num = 2},
			{id =1563, num = 2},
			{id =650, num = 4},
			{id =513, num = 71},
			{id =675, num = 21},
			{id =533, num = 50},
			{id =667, num = 270},
			{id =1559, num = 1},


		}	
	}
	
}
