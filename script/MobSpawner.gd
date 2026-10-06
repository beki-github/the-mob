extends Node
@export var mob_scene:PackedScene


func _on_mob_timer_timeout() -> void:
	var mob = mob_scene.instantiate()
	
	var spawn_point = get_node("SpawnPath/SpawnLocation")
	
	spawn_point.progress_ratio =randf()
	
	var player_position = $player.position
	mob.initialize(spawn_point.position,player_position)
	
	add_child(mob)
