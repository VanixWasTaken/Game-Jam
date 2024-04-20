extends Node2D

var tiles1 = preload("res://Scenes and Scripts/Tiles/tile_1.tscn")
var tiles2 = preload("res://Scenes and Scripts/Tiles/tile_2.tscn")
var tiles3 = preload("res://Scenes and Scripts/Tiles/tile_3.tscn")
var last_tile_position = Vector2(0, 0)
var should_spawn_tiles = true

func _process(delta):
	if should_spawn_tiles:
		randomize()
		var tiles = [tiles1, tiles2, tiles3]
		var help = tiles[randi()% tiles.size()]
		var tile = help.instantiate()
		add_child(tile)
		tile.position = last_tile_position
		last_tile_position += Vector2(1920, 0)
	
		if last_tile_position.x >= 19200:
			last_tile_position.x = 0
			last_tile_position += Vector2(0, 1080)
		
		if last_tile_position.y == 10800:
			should_spawn_tiles = false






