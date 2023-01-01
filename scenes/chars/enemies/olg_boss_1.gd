extends KinematicBody2D
signal died
signal got_damage

var max_hp = 50
var hp = max_hp setget change_hp, get_hp
var showname = "Ольгнасильна"
var orig_speed = 0
var speed = orig_speed
var target
var damage = 0
var aggro_distance = 0

var rngesus = RandomNumberGenerator.new()
func _ready():
	$Control/ProgressBar.max_value = 10000
	$Control/ProgressBar.value = 10000
	$Control/Label.text = showname


func _physics_process(delta): # cya later, fps.
	var velocity : Vector2
	if position.distance_to(get_parent().get_parent().get_node("Heroes").current_character.position) < aggro_distance:
		$NavigationAgent2D.set_target_location(get_parent().get_parent().get_node("Heroes").current_character.position)
		velocity = speed*position.direction_to($NavigationAgent2D.get_next_location())
		move_and_slide(velocity)


func change_hp(value):
	hp = value
	$Control.hp_value = hp
	emit_signal("got_damage")
	if hp <= 0:
		emit_signal("died")
		queue_free()


func get_hp():
	return hp


func _on_Attacker_body_entered(body):
	pass


func _on_AttackCooldown_timeout():
	pass


func _on_Attacker_body_exited(body):
	pass

func _on_Skill_timeout():
	pass


func _on_SkillReset_timeout():
	pass
