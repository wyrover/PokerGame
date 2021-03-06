RoomListCC = {}

function RoomListCC:init()
	PacketDispatcher:register_protocol_callback(PROTOCOL_ID.S_1_1,bind(self.recv_enter_game_result,self))
	PacketDispatcher:register_protocol_callback(PROTOCOL_ID.S_1_2,bind(self.recv_add_player,self))
	PacketDispatcher:register_protocol_callback(PROTOCOL_ID.S_1_3,bind(self.delete_player,self))
end

function RoomListCC:req_enter_game(flag)
	PacketDispatcher:send_protocol(PROTOCOL_ID.C_1_1,flag)
end

function RoomListCC:recv_enter_game_result(player_array)
	GameModel:set_cur_player_array(player_array)
end

function RoomListCC:delete_player(index)
	GameModel:delete_player(index)
end

function RoomListCC:recv_add_player(player_info)
	GameModel:add_player(player_info)
end

function RoomListCC:add_player(player_info)
	GameModel:add_player(player_info)
end

RoomListCC:init()