-- OpenCardModel.lua-- created by liuguowang on 2014-4-10-- 招财进宝信息模型 动态数据-- super_class.OpenCardModel()OpenCardModel = {}local _grid = {} --格子有没有翻开的数组local _lave_times = 0local _free_times = 0local _num_fixed = 0local _score_layer = 0local _score = 0local _state_get = 0 local _num_gift = 0 local _get_award_num = 0 -- lave_times, free_times, num_fixed, score_layer, score, state_get, num_gift-- added by aXIng on 2013-5-25function OpenCardModel:fini( )	_grid = {}	_lave_times = 0	_free_times = 0	_score = 0	_get_award_num = 0 end--卡片个数function OpenCardModel:get_card_size()	-- return #_grid	return 8end--卡片信息function OpenCardModel:set_card_info(grid)	_grid = gridend--卡片信息function OpenCardModel:get_card_info(  )	return _gridendfunction OpenCardModel:set_one_card_info(i,id,num )	_grid[i].pos = i	_grid[i].id = id	_grid[i].num = numend--判断现在是翻了多少张function OpenCardModel:get_open_count( )	local count = 0 	for i=1,#_grid do		if _grid[i].id ~= -1 then			count = count + 1		end	end	return countendfunction OpenCardModel:set_other_data(lave_times, free_times, num_fixed, score_layer, score, state_get, num_gift)	if lave_times ~= nil then		_lave_times = lave_times	end	if free_times ~= nil then		_free_times = free_times	end	if num_fixed ~= nil then		_num_fixed = num_fixed	end	if score_layer ~= nil then		_score_layer = score_layer	end	if score ~= nil then		_score = score	end	if state_get ~= nil then		_state_get = state_get	end	if num_gift ~= nil then		_num_gift = num_gift	end	print("-------_num_gift:", num_gift)endfunction OpenCardModel:get_other_data()	return _lave_times, _free_times, _num_fixed, _score_layer, _score, _state_get, _num_gift endfunction OpenCardModel:req_open_card(num,pos)	local table_pos = {}	if num == 1 then		table_pos[1] = pos		OpenCardCC:req_open_card(num,table_pos)	elseif num == 0 then -- 0代表一键翻牌		local count = 0		for i=1,#_grid do			if _grid[i].id == -1 then				count = count + 1				table_pos[count] = i			end		end		OpenCardCC:req_open_card(count,table_pos)	endend--获取意见翻剩下牌需要多少元宝function OpenCardModel:get_yijian_yuanbao(  )	-- local lave_times ,free_times ,score,get_award_num  = OpenCardModel:get_other_data()	-- local open_count = OpenCardModel:get_open_count()	local need_money = 0	local num_wall = OpenCardModel:get_card_size()	for i= _num_fixed +1 + _free_times ,num_wall do		need_money = need_money + _open_card_slot_id.fan_yuanbao[i]	end	return need_moneyend-- 获取换下一堵需要的元宝function OpenCardModel:get_nextwall_yuanbao()	return _open_card_slot_id.next_yuanbaoendfunction OpenCardModel:get_fixed_one_yuanbao( )	local num_wall = OpenCardModel:get_card_size()	if _num_fixed == num_wall then		return 0	end	return _open_card_slot_id.fan_yuanbao[_num_fixed+1]end-- 获取免费次数function OpenCardModel:get_num_freefixed( )	return _free_timesend-- 获取已修复次数function OpenCardModel:get_num_fixed( )	return _num_fixedend--所有都已经打开function OpenCardModel:get_is_all_open(  )	local flag = true	for i=1,#_grid do		if _grid[i].id == -1 then 			flag = false 		end	end	return flagend