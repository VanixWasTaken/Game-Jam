extends Node2D

var rng = RandomNumberGenerator.new()
var enemies = preload("res://Scenes and Scripts/enemy.tscn")
@export var enemy_spawn_chance = 20 # Number between 0 and 100


func _ready():
	spawn_enemy1()
	spawn_enemy2()
	spawn_enemy3()
	spawn_enemy4()
	spawn_enemy5()




func spawn_enemy1():
	var my_random_number = rng.randi_range(0, 100)
	var enemy = enemies.instantiate()

	if my_random_number <= enemy_spawn_chance:
		$EnemySpawns/EnemySpawn1.add_child(enemy)
	
	var my_random_number2 = rng.randi_range(1, 4)
	if my_random_number2 == 1:
		enemy.rotate(1.5707963267949)
	if my_random_number2 == 2:
		enemy.rotate(1.5707963267949 * 2)
	if my_random_number2 == 3:
		enemy.rotate(1.5707963267949 * 3)
	

func spawn_enemy2():
	var my_random_number = rng.randi_range(0, 100)
	var enemy = enemies.instantiate()
	
	if my_random_number <= enemy_spawn_chance:
		$EnemySpawns/EnemySpawn2.add_child(enemy)

	var my_random_number2 = rng.randi_range(1, 4)
	if my_random_number2 == 1:
		enemy.rotate(1.5707963267949)
	if my_random_number2 == 2:
		enemy.rotate(1.5707963267949 * 2)
	if my_random_number2 == 3:
		enemy.rotate(1.5707963267949 * 3)

func spawn_enemy3():
	var my_random_number = rng.randi_range(0, 100)
	var enemy = enemies.instantiate()
	
	if my_random_number <= enemy_spawn_chance:
		$EnemySpawns/EnemySpawn3.add_child(enemy)

func spawn_enemy4():
	var my_random_number = rng.randi_range(0, 100)
	var enemy = enemies.instantiate()
	
	if my_random_number <= enemy_spawn_chance:
		$EnemySpawns/EnemySpawn4.add_child(enemy)

	var my_random_number2 = rng.randi_range(1, 4)
	if my_random_number2 == 1:
		enemy.rotate(1.5707963267949)
	if my_random_number2 == 2:
		enemy.rotate(1.5707963267949 * 2)
	if my_random_number2 == 3:
		enemy.rotate(1.5707963267949 * 3)

func spawn_enemy5():
	var my_random_number = rng.randi_range(0, 100)
	var enemy = enemies.instantiate()
	
	if my_random_number <= enemy_spawn_chance:
		$EnemySpawns/EnemySpawn5.add_child(enemy)

	var my_random_number2 = rng.randi_range(1, 4)
	if my_random_number2 == 1:
		enemy.rotate(1.5707963267949)
	if my_random_number2 == 2:
		enemy.rotate(1.5707963267949 * 2)
	if my_random_number2 == 3:
		enemy.rotate(1.5707963267949 * 3)
		
