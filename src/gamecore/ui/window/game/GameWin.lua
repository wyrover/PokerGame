--MainWin.lua
GameWin = simple_class(GUIWindow)

function GameWin:update(param_1,param_2,param_3,param_4)
	if param_1 == "add_player" then
		self:update_data()
		self:add_player(param_2)
	elseif param_1 == "remove_player" then
		self:update_data()
		self:remove_player(param_2)
	elseif param_1 == "update_poker" then
		self:update_data()
		self:update_poker()
	end
end

function GameWin:__init()
	print("MainWin:__init()")
	self:update_data()
	self:create_makers()
	self:create_player_array()
end

function GameWin:init(is_fini)
	self.define_makers = 2
	self.player_array = {}--GameModel:get_cur_player_array()
	self.panel_player_array = {}
	if is_fini then

	end
end

function GameWin:update_data()
	self.player_array = GameModel:get_cur_player_array()
end

function GameWin:init_widget()
	
end

function GameWin:create_makers()

	local array = {}
    array.id = 1000+self.define_makers
    array.sex = math.random(0,1)
    array.name = "庄家"
    array.yuanbao = math.random(0,10000)
    array.money = math.random(1000,99999999)
    array.cur_money = math.random(1,9999999)
    array.head_type = math.random(1,10)
    array.mantra = ""
    array.index = have_pos[2]

	self:create_player(array)
end

function GameWin:create_player_array()
	-- local partner = self.core
	for _ , player_info in pairs(self.player_array) do
		self:create_player(player_info)
	end
end

function GameWin:create_player(player_info)
	local layout = {
		img_n = "ui/common/gold_home_avatar.png",
		pos = GameConfig.POS[player_info.index],
		size = {-1,-1},
	}

	local panel_player = GUIPanel:create_by_layout(layout)
	self:addChild(panel_player)

	--名字
	local label_name = GUIText:create(player_info.name)
	panel_player:addChild(label_name)
	label_name:setPosition(0,73)
	
	--货币
	local label_money = GUIText:create(player_info.money)
	panel_player:addChild(label_money)
	label_money:setPosition(0,-22)

	self.panel_player_array[player_info.index] = panel_player
	-- return panel_player

end

function GameWin:add_player(index)
	local player_info = self:get_player_info_by_index()
	self:create_player(player_info)
end

function GameWin:get_player_info_by_index(index)
	for _ , player in pairs(self.player_array) do
		if player_info.index == index then
			return player_info
		end
	end
end

function GameWin:remove_player(index)
	self.panel_player_array[index]:removeFromParent(true)
	self.panel_player_array[index] = nil
end

function GameWin:update_poker(to_index)
end

function GameWin:make_deal_action(to_index)
	local form_index = self.define_makers
	local form_pos = self.panel_player_array[form_index].layout.pos
	local to_pos = self:panel_player_array[to_index].layout.pos
	
	-- local layout = 
	local img_poker = GUIImg:create_by_layout()
	-- transition.moveTo()

end

function GameWin:registered_envetn_func()

end