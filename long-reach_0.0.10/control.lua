script.on_init(function ()
	sync_for_connected_players()	
end)

script.on_configuration_changed(function ()
	sync_for_connected_players()		
end)

script.on_event(defines.events.on_runtime_mod_setting_changed,function ()
	sync_for_connected_players()
end)


function sync_for_connected_players()
	for index,player in pairs(game.connected_players) do 
		log(index)
		sync_long_reach_settings(index)	
	end
end

function sync_long_reach_settings(player_index)
	local settings = settings.global
	local default_action_distance = 6
	
	
	game.players[player_index].character_build_distance_bonus = settings["long-reach-build-distance"]["value"] - default_action_distance
	game.players[player_index].character_reach_distance_bonus = settings["long-reach-reach-distance"]["value"] - default_action_distance
	
end

