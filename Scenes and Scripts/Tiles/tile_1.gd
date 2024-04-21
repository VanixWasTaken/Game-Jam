extends Node2D

var rng = RandomNumberGenerator.new()
var enemies = preload("res://Scenes and Scripts/enemy.tscn")
var lights = preload("res://Scenes and Scripts/Light/LightRessource.tscn")
@export var enemy_spawn_chance = 20 # Number between 0 and 100
@export var light_spawn_chance = 3 # Bumber between 0 and 100

func _ready():
	spawn_enemy1()
	spawn_enemy2()
	spawn_enemy3()
	spawn_enemy4()
	spawn_enemy5()

	spawn_light1()
	spawn_light2()
	spawn_light3()
	spawn_light4()
	spawn_light5()
	spawn_light6()
	spawn_light7()
	spawn_light8()
	spawn_light9()
	spawn_light10()
	spawn_light11()
	spawn_light12()
	spawn_light13()
	spawn_light14()
	spawn_light15()
	spawn_light16()
	spawn_light17()
	spawn_light18()
	spawn_light19()
	spawn_light20()
	spawn_light21()
	spawn_light22()
	spawn_light23()
	spawn_light24()
	spawn_light25()
	spawn_light26()
	spawn_light27()
	spawn_light28()
	spawn_light29()
	spawn_light30()
	spawn_light31()
	spawn_light32()
	spawn_light33()
	spawn_light34()
	spawn_light35()
	spawn_light36()
	spawn_light37()
	spawn_light38()
	spawn_light39()
	spawn_light40()
	spawn_light41()
	spawn_light42()
	spawn_light43()
	spawn_light44()
	spawn_light45()
	spawn_light46()
	spawn_light47()
	spawn_light48()
	spawn_light49()
	spawn_light50()
	spawn_light51()
	spawn_light52()
	spawn_light53()
	spawn_light54()
	spawn_light55()
	spawn_light56()
	spawn_light57()
	spawn_light58()
	spawn_light59()
	spawn_light60()
	spawn_light61()


func spawn_enemy1():
	var my_random_number = rng.randi_range(0, 100)
	var enemy = enemies.instantiate()

	if my_random_number <= enemy_spawn_chance:
		$EnemySpawns/EnemySpawn1.add_child(enemy)
	
	enemy.random_direction_spawn()


func spawn_enemy2():
	var my_random_number = rng.randi_range(0, 100)
	var enemy = enemies.instantiate()
	
	if my_random_number <= enemy_spawn_chance:
		$EnemySpawns/EnemySpawn2.add_child(enemy)

	enemy.random_direction_spawn()

func spawn_enemy3():
	var my_random_number = rng.randi_range(0, 100)
	var enemy = enemies.instantiate()
	
	if my_random_number <= enemy_spawn_chance:
		$EnemySpawns/EnemySpawn3.add_child(enemy)
	
	enemy.random_direction_spawn()

func spawn_enemy4():
	var my_random_number = rng.randi_range(0, 100)
	var enemy = enemies.instantiate()
	
	if my_random_number <= enemy_spawn_chance:
		$EnemySpawns/EnemySpawn4.add_child(enemy)

	enemy.random_direction_spawn()

func spawn_enemy5():
	var my_random_number = rng.randi_range(0, 100)
	var enemy = enemies.instantiate()
	
	if my_random_number <= enemy_spawn_chance:
		$EnemySpawns/EnemySpawn5.add_child(enemy)

	enemy.random_direction_spawn()

func spawn_light1():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn1.add_child(light)

func spawn_light2():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn2.add_child(light)

func spawn_light3():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn3.add_child(light)

func spawn_light4():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn4.add_child(light)

func spawn_light5():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn5.add_child(light)

func spawn_light6():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn6.add_child(light)

func spawn_light7():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn7.add_child(light)

func spawn_light8():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn8.add_child(light)

func spawn_light9():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn9.add_child(light)

func spawn_light10():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn10.add_child(light)

func spawn_light11():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn11.add_child(light)

func spawn_light12():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn12.add_child(light)

func spawn_light13():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn13.add_child(light)

func spawn_light14():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn14.add_child(light)

func spawn_light15():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn15.add_child(light)

func spawn_light16():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn16.add_child(light)

func spawn_light17():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn17.add_child(light)

func spawn_light18():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn18.add_child(light)

func spawn_light19():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn19.add_child(light)

func spawn_light20():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn20.add_child(light)

func spawn_light21():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn21.add_child(light)

func spawn_light22():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn22.add_child(light)

func spawn_light23():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn23.add_child(light)

func spawn_light24():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn24.add_child(light)

func spawn_light25():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn25.add_child(light)

func spawn_light26():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn26.add_child(light)

func spawn_light27():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn27.add_child(light)

func spawn_light28():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn28.add_child(light)

func spawn_light29():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn29.add_child(light)

func spawn_light30():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn30.add_child(light)

func spawn_light31():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn31.add_child(light)

func spawn_light32():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn32.add_child(light)

func spawn_light33():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn33.add_child(light)

func spawn_light34():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn34.add_child(light)

func spawn_light35():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn35.add_child(light)

func spawn_light36():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn36.add_child(light)

func spawn_light37():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn37.add_child(light)

func spawn_light38():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn38.add_child(light)

func spawn_light39():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn39.add_child(light)

func spawn_light40():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn40.add_child(light)

func spawn_light41():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn41.add_child(light)

func spawn_light42():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn42.add_child(light)

func spawn_light43():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn43.add_child(light)

func spawn_light44():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn44.add_child(light)

func spawn_light45():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn45.add_child(light)

func spawn_light46():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn46.add_child(light)

func spawn_light47():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn47.add_child(light)

func spawn_light48():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn48.add_child(light)

func spawn_light49():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn49.add_child(light)

func spawn_light50():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn50.add_child(light)

func spawn_light51():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn51.add_child(light)

func spawn_light52():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn52.add_child(light)

func spawn_light53():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn53.add_child(light)

func spawn_light54():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn54.add_child(light)

func spawn_light55():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn55.add_child(light)

func spawn_light56():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn56.add_child(light)

func spawn_light57():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn57.add_child(light)

func spawn_light58():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn58.add_child(light)

func spawn_light59():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn59.add_child(light)

func spawn_light60():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn60.add_child(light)

func spawn_light61():
	var my_random_number = rng.randi_range(0, 100)
	var light = lights.instantiate()

	if my_random_number <= light_spawn_chance:
		$LightSpawns/LightSpawn61.add_child(light)


