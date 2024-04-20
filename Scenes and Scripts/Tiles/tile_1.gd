extends Node2D

var rng = RandomNumberGenerator.new()
var enemies = preload("res://Scenes and Scripts/enemy.tscn")

func _ready():
	spawn_enemy1()
	spawn_enemy2()
	spawn_enemy3()
	spawn_enemy4()
	spawn_enemy5()




func spawn_enemy1():
	var my_random_number = rng.randi_range(0, 100)
	var enemy = enemies.instantiate()
	
	if my_random_number <= 20:
		$EnemySpawns/EnemySpawn1.add_child(enemy)

func spawn_enemy2():
	var my_random_number = rng.randi_range(0, 100)
	var enemy = enemies.instantiate()
	
	if my_random_number <= 20:
		$EnemySpawns/EnemySpawn2.add_child(enemy)

func spawn_enemy3():
	var my_random_number = rng.randi_range(0, 100)
	var enemy = enemies.instantiate()
	
	if my_random_number <= 20:
		$EnemySpawns/EnemySpawn3.add_child(enemy)

func spawn_enemy4():
	var my_random_number = rng.randi_range(0, 100)
	var enemy = enemies.instantiate()
	
	if my_random_number <= 20:
		$EnemySpawns/EnemySpawn4.add_child(enemy)

func spawn_enemy5():
	var my_random_number = rng.randi_range(0, 100)
	var enemy = enemies.instantiate()
	
	if my_random_number <= 20:
		$EnemySpawns/EnemySpawn5.add_child(enemy)
