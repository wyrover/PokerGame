-- 非直线副本时,副本的路径表
-- [key] key:副本的场景id
-- 右方的路径表在每个有怪的地方至少一个,这样可以保证点挂机后不漏怪
fbxl_config = {
    -- [场景id]={{格子坐标}}
	-- [81] = {{11,8},{36,8},{24,14},{10,19},{36,18}}, --fuben 1  天机奇缘
	-- [82] = {{11,8},{36,8},{24,14},{10,19},{36,18}}, --fuben 2  神驹猎狩
	-- [83] = {{11,9},{36,8},{24,17},{9,23},{38,23}}, --fuben 3  云台将录
	-- [84] = {{32,27},{51,16},{49,33},{6,18},{36,4}}, --fuben 4  守卫昆阳
	-- [85] = {{11,9},{36,8},{24,17},{9,23},{38,23}}, --fuben 5  铜钱副本
	-- [86] = {{24, 15},{38,15},{24, 15},{38,15},{24, 15},{38,15},{24, 15},{38,15},{24, 15},{38,15},{24, 15},{38,15},{24, 15},{38,15},{24, 15},{38,15}}, --fuben 6  武力试炼
 --    -- [87] = {{42,7},{15,7},{30,18},{21,26},{48,22}}, --fuben 7  演武场
	-- [87] = {{23,18},{38,18},{23,18},{38,18},{23,18},{38,18},{23,18},{38,18},{23,18},{38,18},}, --fuben 7  演武场
	-- [88] = {{53,31},{87,33},{68,37},{54,44},{84,47},{21,5},{9,11},{23,20},{37,16},{21,12},{15,44},{11,34},{2,39},{26,45},{10,52},{64,2},{74,9},{84,2},{95,9},{123,17},{124,7},{135,23},{111,23},{122,47},{113,42},{114,53},{133,41},{137,51},{22,70},{1,80},{30,60},{39,73},{11,68},{72,74},{59,70},{75,65},{71,82},{91,76},{125,77},{114,69},{113,82},{138,68},{138,80}}, --fuben 8  箴机奇图
	-- --[89] = {{11,8},{36,8},{24,14},{10,19},{36,18}}, --fuben 9  天梯赛
 --    [89] = {{24,14},{47,14},{33,14},{33,23},{38,5}}, --fuben 9  天梯赛
    --[89] = {{11,14},{55,14}}, --fuben 9  天梯赛
[14] = {{12,12},{23,12},{37,8},{48,14},{24,18},{38,18},{8,20},{13,26},{20,30},{32,30},{40,27},{47,29},{47,21}}, --fuben   世界boss40
[16] = {{12,12},{23,12},{37,8},{48,14},{24,18},{38,18},{8,20},{13,26},{20,30},{32,30},{40,27},{47,29},{47,21}}, --fuben   世界boss60
[81] = {{28,22},{39,23},{32,27},{25,36},{43,31},{56,31},{48,40},{59,40},{68,41},{41,29}}, --fuben 1  天机奇缘
[82] = {{31,52},{7,58},{9,66},{19,60},{32,59},{43,60},{13,72},{25,71},{32,78},{44,74}}, --fuben 2  神驹猎狩
[83] = {{10,18},{20,19},{30,19},{12,25},{22,24},{31,25},{32,32}}, --fuben 3  云台将录
[84] = {{18,20},{7,24},{15,26},{9,36},{23,39},{27,31},{43,28},{39,40},{50,48},{37,51}}, --fuben 4  守卫昆阳
[85] = {{12,12},{23,12},{37,8},{48,14},{24,18},{38,18},{8,20},{13,26},{20,30},{32,30},{40,27},{47,29},{47,21}}, --fuben 5  无尽秘藏
[86] = {{34,16},{17,8},{34,8},{51,6},{18,16},{33,14},{50,15},{17,23},{33,23},{49,22},{10,28}}, --fuben 6  武力试炼
[87] = {{35,14},}, --fuben 7  演武场
[88] = {{10,13},{29,12},{65,9},{83,8},{109,12},{134,15},{22,34},{18,49},{63,33},{62,47},{88,35},{89,46},{118,45},{137,48},{62,71},{79,69},{115,73},{131,79},{23,71},{33,82}}, --fuben 8  箴机奇图
[89] = {{11,6},{47,4},{9,22},{23,17},{39,12},{21,26},{36,22},{49,30}}, --fuben 9  天梯赛
[90] = {{11,6},{47,4},{9,22},{23,17},{39,12},{21,26},{36,22},{49,30}}, --fuben 10  战队赛
[91] = {{13,28},{36,17},{75,14},{38,46},{56,32},{82,23},{51,63},{97,63},{115,40},{84,45}}, --fuben 11  阵营战
[92] = {{12,12},{23,12},{37,8},{48,14},{24,18},{38,18},{8,20},{13,26},{20,30},{32,30},{40,27},{47,29},{47,21}}, --fuben 12  世族boss
[93] = {{11,28},{47,21},{87,24},{19,48},{59,50},{108,50},{17,76},{62,74},{101,75},{38,93},{75,93}}, --fuben 13  逐鹿中原
[94] = {{60,8},{41,16},{14,33},{16,52},{39,62},{60,62},{80,60},{101,51},{105,33},{88,19},{59,31}}, --fuben 14  大乱斗
[95] = {{17,8},{34,8},{51,6},{18,16},{33,14},{50,15},{17,23},{33,23},{49,22},{10,28}}, --fuben 15  剑试云台
[96] = {{12,12},{23,12},{37,8},{48,14},{24,18},{38,18},{8,20},{13,26},{20,30},{32,30},{40,27},{47,29},{47,21}}, --fuben 16  龙脉珍宝



	--金窟宝穴
	-- [81] = {{12,12},{23,18},{32,14},{37,9},{40,6}},--fuben1-昆仑恶兽
    -- [82] = {{}},
    -- [83] = {{},{},{},{},{}},
    -- [84] = {{},{},{},{},{}},
    -- [85] = {{},{},{},{},{}},
    -- [86] = {{},{},{},{},{}},
    -- [87] = {{},{},{},{},{}},
    -- [88] = {{},{},{},{},{}},
    -- [89] = {{},{},{},{},{}},
    -- [] = {{},{},{},{},{}},
    -- [] = {{},{},{},{},{}},
    -- [] = {{},{},{},{},{}},
    -- [] = {{},{},{},{},{}},

}