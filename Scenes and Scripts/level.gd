extends Node2D

var cross_tiles1 = preload("res://Scenes and Scripts/Tiles/tile_1.tscn")
var cross_tiles2 = preload("res://Scenes and Scripts/Tiles/tile_2.tscn")
var cross_tiles3 = preload("res://Scenes and Scripts/Tiles/tile_3.tscn")
var last_tile_position = Vector2(0, 0)
var tile_round = 0


func _process(delta):
	randomize()
	var cross_tiles = [cross_tiles1, cross_tiles2, cross_tiles3]
	var help = cross_tiles[randi()% cross_tiles.size()]
	var cross_tile = help.instantiate()
	add_child(cross_tile)
	
	
	cross_tile.position = last_tile_position
	
	if tile_round == 5:
		last_tile_position.y -= 1080
		tile_round += 1
	
	if tile_round == 4:
		last_tile_position.y -= 1080
		tile_round += 1
	
	if tile_round == 3:
		last_tile_position.x -= 1920
		tile_round += 1
	
	if tile_round == 2:
		last_tile_position.x -= 1920
		tile_round += 1
	
	if tile_round == 1:
		last_tile_position.y += 1080
		tile_round += 1
	
	if tile_round == 0:
		last_tile_position.x += 1920
		tile_round += 1
		
	
