extends Control


var hp_value = 0 setget set_hp


func set_hp(value):
	hp_value = value
	$Tween.interpolate_property($ProgressBar,"value",$ProgressBar.value,value,0.25)
	$Tween.start()
