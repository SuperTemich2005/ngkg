extends TileMap
signal timer_out

var enemies_killed = 0
var next_level = "res://scenes/levels/cutscene4.tscn"
var timer = 75

func _ready():
	yield(get_parent(),"ready")
	get_parent().get_node("Heroes").current_character.get_node("CharacterCamera/Control/Objective").text = "Цель: Продержитесь 1.25 минуты"
	var rngesus = RandomNumberGenerator.new()
	rngesus.seed = OS.get_unix_time()
	var bgm = rngesus.randi_range(1,2)
	$BGM.set_stream(load("res://sounds/combat"+str(bgm)+"_mute.ogg"))
	$BGM.volume_db = 0
	$BGM.play()
	$BGM2.set_stream(load("res://sounds/combat"+str(bgm)+"_final.ogg"))
	$BGM2.volume_db = -80
	$BGM2.play()
	intensify()


func intensify(): # Intensify BGM
	$VolumeMixer.interpolate_property($BGM,"volume_db",0,-80,1)
	$VolumeMixer.interpolate_property($BGM2,"volume_db",-80,0,1)
	$VolumeMixer.start()


func enemy_slain(): # Mission events coordinator.
	enemies_killed += 1


func _on_Second_timeout():
	timer -= 1
	if is_instance_valid(get_parent().get_node("Heroes").current_character.get_node("CharacterCamera/Control/Timer")):
		get_parent().get_node("Heroes").current_character.get_node("CharacterCamera/Control/Timer").text = "Время: "+str(ceil(timer/60))+":"+(str(100+timer%60)).right(1)
	if timer <= 0:
		$Second.stop()
		get_parent()._on_Fin_body_entered(get_parent().get_node("Heroes").current_character)
