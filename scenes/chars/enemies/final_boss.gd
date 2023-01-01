extends KinematicBody2D
signal died
signal got_damage
signal striked

var max_hp = 950
var hp = max_hp setget change_hp, get_hp
var showname = tr("CHAR_FINALBOSS")
var orig_speed = 600
var speed = orig_speed
var target
var orig_damage = 15
var damage = orig_damage
var aggro_distance = 110000

var rngesus = RandomNumberGenerator.new()
func _ready():
	rngesus.seed = OS.get_unix_time()
	$Control/ProgressBar.max_value = hp
	$Control/ProgressBar.value = hp
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
	print("any body")
	print(body," ",body.get_parent())
	if body.get_parent() in get_parent().get_parent().get_node("Heroes").get_children():
		target = body.get_parent()
		print("Current target: ",target)
		$AttackCooldown.start()


func _on_AttackCooldown_timeout():
	print("Attacking ",target)
	if not target.jumping:
		target.hp -= damage
		get_parent().get_parent().get_node("TileMap/BGM3").volume_db = 0
		get_parent().get_parent().get_node("TileMap/BGM3").set_stream(load("res://sounds/sith_slam.ogg"))
		get_parent().get_parent().get_node("TileMap/BGM3").play()
		emit_signal("striked")
	else:
		print("Missed")


func _on_Attacker_body_exited(body):
	$AttackCooldown.stop()
	print("Target fled")


func _on_Skill_timeout():
	var skill = rngesus.randi_range(0,4)
	$Voice.play()
	match skill:
		0:
			$SkillReset.start(3)
			get_parent().get_parent().get_node("Heroes").current_character.speed = 0
			get_parent().get_parent().get_node("Heroes").current_character.modulate = Color.aqua
		1:
			$SkillReset.start(1)
			speed *= 4
		2:
			$SkillReset.start(1)
			speed *= 4
			get_parent().get_parent().get_node("Heroes").current_character.speed = 0
			get_parent().get_parent().get_node("Heroes").current_character.modulate = Color.aqua
		3:
			damage = 30
			$SkillReset.start(2)
		4:
			$SkillReset.start(4)
			speed *= 4
			damage = 30


func _on_SkillReset_timeout():
	$Skill.start()
	get_parent().get_parent().get_node("Heroes").current_character.speed = get_parent().get_parent().get_node("Heroes").current_character.orig_speed
	get_parent().get_parent().get_node("Heroes").current_character.modulate = Color(1,1,1)
	speed = orig_speed
	damage = orig_damage
