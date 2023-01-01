extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var paused = false


func _on_Fin_body_entered(body):
	if body == $Heroes.current_character:
		print("Fin")
		$Fin.queue_free()
		$Heroes/MainCharacter/CharacterCamera/FadeOut/Tween.interpolate_property($Heroes/MainCharacter/CharacterCamera/FadeOut,"color",Color(1,1,1,0),Color(1,1,1,1),2)
		$Heroes/MainCharacter/CharacterCamera/FadeOut/Tween.interpolate_property($Heroes/MainCharacter/CharacterCamera/Control,"modulate",Color(1,1,1,1),Color(1,1,1,0),2)
		$Heroes/MainCharacter/CharacterCamera/FadeOut/Tween.start()


func _on_Tween_tween_all_completed():
	$"/root/Global".final_score = $Heroes.score
	$"/root/Global".next_level = $TileMap.next_level
	get_tree().change_scene("res://scenes/user_interface/level_end.tscn")


func _on_Heroes_main_character_died():
	$"/root/Global".current_level = filename
	get_tree().change_scene("res://scenes/user_interface/game_over.tscn")
