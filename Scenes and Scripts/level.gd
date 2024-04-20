extends Node2D

var tiles1 = preload("res://Scenes and Scripts/Tiles/tile_1.tscn")
var tiles2 = preload("res://Scenes and Scripts/Tiles/tile_2.tscn")
var last_tile_position = Vector2(0, 0)


func _process(delta):
	randomize()
	var tiles = [tiles1, tiles2]
	var help = tiles[randi()% tiles.size()]
	var tile = help.instantiate()
	add_child(tile)
	tile.position = last_tile_position
	last_tile_position += Vector2(1920, 0)
	
	
	
	if last_tile_position.x >= 57600:
		last_tile_position.x = 0
		last_tile_position += Vector2(0, 1080)

	
