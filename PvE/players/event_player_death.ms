bind(player_death, null, null, @e) { 
	# Custom color death messages in chat
	modify_event('death_message',broadcast('§a[§2RIP§a]§7 ' . @e['death_message']));
	
	
	# Display Player Death Coords (to user and in console)
	@pWorld = pinfo(player(),7);
	if (@pWorld == 'world_nether') {
		@pWorldName = "the Nether"
	} else if (@pWorld = 'world') { 
		@pWorldName = "the Overworld"
	} else if (@pWorld = 'world_the_end') {
		@pWorldName = "the End"
	} else {
		@pWorldName = "somewhere uncharted!"
	}
	
	@pCoords = pinfo(player(),1);
	@x = floor(@pCoords[0]);
	@y = floor(@pCoords[1]);
	@z = floor(@pCoords[2]);
	
	modify_event('death_message', console('[Player Death] '.player().' @ x:'.@x.', y: '.@y.', z:'.@z.' in '.@pWorldName));
	die(colorize('&a[&2RIP&a] &7You died at: &bx:'.@x.', y: '.@y.', z:'.@z.' &7in '.@pWorldName));
	
}
