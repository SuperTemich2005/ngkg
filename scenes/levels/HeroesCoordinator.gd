extends Node2D
class_name HeroesCoordinator
signal main_character_died

onready var current_character = $MainCharacter
onready var HUD = $MainCharacter/CharacterCamera/Control
onready var score = 0

func _on_MainCharacter_got_damage():
	HUD.get_node("CharacterProfiles/Character1/HP/TextValue").text = str(current_character.hp)+"/"+str(current_character.max_hp)
	HUD.get_node("CharacterProfiles/Character1").hp_value = current_character.hp
	print("got_damage")
	if current_character.hp <= 0:
		get_parent().get_node("Enemies").queue_free()


func _ready():
	if "active" in current_character:
		current_character.active = true
	update()


func update():
	print(current_character," ",current_character.showname)
	HUD.get_node("CharacterProfiles/Character1/CharacterName").text = current_character.showname
	HUD.get_node("CharacterProfiles/Character1/HP").max_value = current_character.max_hp
	_on_MainCharacter_got_damage()


func enemy_slain():
	print("ded")
	score += 100
	HUD.get_node("Score/Score").text = "Очки: "+str(score)


func check_enemies():
	print("Checking enemies")
	for i in get_parent().get_node("Enemies").get_children():
		print("Checked ",i)
		i.connect("died",self,"enemy_slain")
		i.connect("died",get_parent().get_node("TileMap"),"enemy_slain")


func _on_MainCharacter_died():
	$"/root/Global".final_score = score
	$"/root/Global".current_level = filename
	emit_signal("main_character_died")
