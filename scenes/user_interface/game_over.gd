extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Score.text = "\n\nСчёт: "+str($"/root/Global".final_score)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Restart_pressed():
	get_tree().change_scene($"/root/Global".current_level)


func _on_Exit_pressed():
	get_tree().change_scene("res://scenes/user_interface/disclaimer.tscn")
