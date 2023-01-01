extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var hp_value setget set_hp


func set_hp(value):
	hp_value = value
	$Tween.interpolate_property($HP,"value",$HP.value,value,0.25)
	$Tween.start()
