    {	
	  version_min = '0.48.10',
	  Gashapon = 1,
	  Start_time='2022-06-10 10:00:01',
      End_time='2023-06-17 09:59:59',
	  RedDay=0,
		--花费
		cost = 
		{	
			--单抽
			{id = 1,name = "抽1次",num = 1,itemid = 10010},
			--五连抽
			{id = 2,name = "抽5次",num = 5,itemid = 10010},
		},
		--概率公示
		probability = 
		{
			langs = {0},  	
			itemList = 
			{
				{
				    value = 1.5,
				    title_0 = "永久装扮（全能玩\n家劳尔、喵小糖、\n华乐）",					
				},
				{
				    value = 22.5,
					title_0 = "体验装扮3天（全能\n玩家劳尔、喵小糖、\n华乐）",				
				},
				{
				    value = 76,
					title_0 = "装扮碎片（1个、\n2个、3个）",										
				},
			},
		},
		--奖励预览
		--tagColorId1黄2紫3蓝4绿     tagTitleId1：永久，2：3天，3：7天，4：时间限定，5：1(只数字），6：2(只数字），7：3(只数字）。 level=1代表不会重复抽取到，且在商店轮播展示。
		itemList = 
		{	
			{itemId = 20444,skinid=67,probability = 0.004,num = 1,tagTitleId = 4,tagColorId = 1,level = 1},--劳尔
			{itemId = 20425,skinid=48,probability = 0.008,num = 1,tagTitleId = 1,tagColorId = 2,level = 1},--华乐
			{itemId = 20419,skinid=42,probability = 0.008,num = 1,tagTitleId = 1,tagColorId = 2,level = 1},--喵小糖
			{itemId = 24806,probability = 0.24,num = 1,tagTitleId = 5,tagColorId = 3,level = 2},--装扮碎片1
			{itemId = 24806,probability = 0.32,num = 2,tagTitleId = 6,tagColorId = 3,level = 2},--装扮碎片2
			{itemId = 24806,probability = 0.2,num = 3,tagTitleId = 7,tagColorId = 3,level = 2},--装扮碎片3
			{itemId = 20541,probability = 0.055,num = 3,tagTitleId = 2,tagColorId = 4,level = 3},--劳尔3天
			{itemId = 20522,probability = 0.077,num = 3,tagTitleId = 2,tagColorId = 4,level = 3},--华乐3天
			{itemId = 20516,probability = 0.088,num = 3,tagTitleId = 2,tagColorId = 4,level = 3},--喵小糖3天
		},
		--是否中奖公示。1为展示，0为不展示
		isPublic = 1,
		-- 兑换配置
		fragment_exchange = 
		{
			{itemId = 20444,skinid = 67,forever=1,cost = 50,fragmentid=24806,count=1},--劳尔		
			{itemId = 20425,skinid = 48,forever=1,cost = 47,fragmentid=24806,count=1},--华乐
			{itemId = 20419,skinid = 42,forever=1,cost = 47,fragmentid=24806,count=1},--喵小糖
			{itemId = 20433,skinid = 56,forever=1,cost = 50,fragmentid=24806,count=1},--劳尔		
			{itemId = 20432,skinid = 55,forever=1,cost = 37,fragmentid=24806,count=1},--华乐
			{itemId = 20446,skinid = 69,forever=1,cost = 27,fragmentid=24806,count=1},--喵小糖
        },
	}