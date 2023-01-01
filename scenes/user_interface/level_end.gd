extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$FinalScore.text = "Счёт: "+str($"/root/Global".final_score)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Proceed_pressed():
	get_tree().change_scene($"/root/Global".next_level)
