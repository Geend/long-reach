script.on_init(function ()
	apply_long_reach_settings()	
end)

script.on_configuration_changed(function (data)
	apply_long_reach_settings()		
end)

script.on_event(defines.events.on_runtime_mod_setting_changed,function ()
	apply_long_reach_settings()
end)


function apply_long_reach_settings()
	local settings = settings.global
	local default_action_distance = 6
	
	
	game.forces["player"].character_build_distance_bonus = settings["long-reach-build-distance"]["value"] - default_action_distance
	game.forces["player"].character_reach_distance_bonus = settings["long-reach-reach-distance"]["value"] - default_action_distance
	
end

