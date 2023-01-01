extends TileMap
signal timer_out

var enemies_killed = 0
var next_level = "res://scenes/levels/cutscene_laststory_ending.tscn"
var damage_received = 0

func _ready():
	yield(get_parent(),"ready")
	if TranslationServer.get_locale() == "ru":
		get_parent().get_node("Heroes").current_character.get_node("CharacterCamera/Control/Objective").text = "Цель: Одолейте ОЛЬГНАСИЛЬНУ"
	else:
		get_parent().get_node("Heroes").current_character.get_node("CharacterCamera/Control/Objective").text = "Objective: Defeat OLGNASILNA"
	get_parent().get_node("Heroes").current_character.get_node("CharacterCamera/Control/CharacterProfiles/Boss").show()
	get_parent().get_node("Heroes").current_character.get_node("CharacterCamera/Control/CharacterProfiles/Boss/HP/TextValue").text = str(get_parent().get_node("Enemies/Node2D").hp)+"/"+str(get_parent().get_node("Enemies/Node2D").max_hp)
	get_parent().get_node("Heroes").current_character.get_node("CharacterCamera/Control/CharacterProfiles/Boss/HP").max_value = (get_parent().get_node("Enemies/Node2D").max_hp)
	get_parent().get_node("Heroes").current_character.get_node("CharacterCamera/Control/CharacterProfiles/Boss/HP").value = (get_parent().get_node("Enemies/Node2D").hp)
	get_parent().get_node("Heroes").current_character.get_node("CharacterCamera/Control/CharacterProfiles/Boss/CharacterName").text = get_parent().get_node("Enemies/Node2D").showname


func enemy_slain(): # Mission events coordinator.
	enemies_killed += 1


func _on_Boss_damaged():
	get_parent().get_node("Heroes").current_character.get_node("CharacterCamera/Control/CharacterProfiles/Boss/HP/TextValue").text = str(get_parent().get_node("Enemies/Node2D").hp)+"/"+str(get_parent().get_node("Enemies/Node2D").max_hp)
	get_parent().get_node("Heroes").current_character.get_node("CharacterCamera/Control/CharacterProfiles/Boss").set_hp(get_parent().get_node("Enemies/Node2D").hp)
	damage_received += 1
	if damage_received >= 10:
		damage_received = 0
		if get_parent().get_node("Heroes").current_character == get_parent().get_node("Heroes/MainCharacter"):
			$BGM4.play()
		else:
			$BGM5.play()
		swap()


func _on_Node2D_died():
	get_parent()._on_Fin_body_entered(get_parent().get_node("Heroes").current_character)


func swap():
	var camera = get_parent().get_node("Heroes").current_character.get_node("CharacterCamera")
	get_parent().get_node("Heroes").current_character.active = false
	get_parent().get_node("Heroes").current_character.disconnect("got_damage",get_parent().get_node("Heroes"),"_on_MainCharacter_got_damage")
	#get_parent().get_node("Heroes").current_character.disconnect("died",get_parent().get_node("Heroes"),"_on_MainCharacter_died")
	if get_parent().get_node("Heroes").current_character == get_parent().get_node("Heroes/MainCharacter"):
		get_parent().get_node("Heroes").current_character = get_parent().get_node("Heroes/SecondCharacter")
		print("Switching to SecondCharacter ",get_parent().get_node("Heroes/SecondCharacter").showname)
	else:
		get_parent().get_node("Heroes").current_character = get_parent().get_node("Heroes/MainCharacter")
		print("Switching to MainCharacter ",get_parent().get_node("Heroes/MainCharacter").showname)
	print("Playing as: ",get_parent().get_node("Heroes").current_character," ",get_parent().get_node("Heroes").current_character.showname)
	camera.get_parent().remove_child(camera)
	get_parent().get_node("Heroes").current_character.connect("got_damage",get_parent().get_node("Heroes"),"_on_MainCharacter_got_damage")
	#get_parent().get_node("Heroes").current_character.connect("died",get_parent().get_node("Heroes"),"_on_MainCharacter_died")
	print("HUD object: ",get_parent().get_node("Heroes").HUD)
	get_parent().get_node("Heroes").current_character.add_child(camera)
	get_parent().get_node("Heroes").HUD = camera.get_node("Control")
	get_parent().get_node("Heroes").update()
	get_parent().get_node("Heroes").current_character.active = true
