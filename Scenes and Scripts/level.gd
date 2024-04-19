extends Node2D
#
#var borders = Rect2(1, 1, 13, 7)
#var ground_layer = 0
#
#@onready var tilemap = $TileMap
#
#func _ready():
	#generate_level()
#
#func generate_level():
	#var walker = Walker.new(Vector2(7, 4), borders)
	#var map = walker.walk(500)
	#walker.queue_free()
	#for tile_pos in map:
		#tilemap.set_cell(ground_layer, tile_pos, ground_layer, Vector2i(0, 3))
		## Assuming used_cells is the same as map
		#tilemap.update_bitmask_region(tile_pos, tile_pos + Vector2(1, 1))
