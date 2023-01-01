extends TileMap
signal timer_out

var enemies_killed = 0
var next_level = "res://scenes/levels/cutscene_egorichfinale.tscn"


func _ready():
	yield(get_parent(),"ready")
	get_parent().get_node("Heroes").current_character.get_node("CharacterCamera/Control/Objective").text = "Цель: Одолейте Тёмыча"
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


func _on_Node2D_died():
	get_parent()._on_Fin_body_entered(get_parent().get_node("Heroes").current_character)
