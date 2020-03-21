bind(player_death, null, null, @e) { 
	# Custom color death messages
	modify_event('death_message',broadcast('§a[§2RIP§a]§7 ' . @e['death_message']));
	
	# Display Player Death Coords
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
	die(colorize('&a[&2RIP&a] &7You died at: &bx:'.@x.', y: '.@y.', z:'.@z.' &7in '.@pWorldName));
}
