extends KinematicBody2D
signal died
signal damaged

var max_hp = 200
var hp = max_hp setget change_hp, get_hp
var showname = "Тёмыч"
var orig_speed = 470
var speed = orig_speed
var target
var orig_damage = 5
var damage = orig_damage
var anim_lock = false
var aggro_distance = 11000

var rngesus = RandomNumberGenerator.new()
func _ready():
	$Control/ProgressBar.max_value = hp
	$Control/ProgressBar.value = hp
	$Control/Label.text = showname


func _physics_process(delta): # cya later, fps.
	var velocity : Vector2
	if position.distance_to(get_parent().get_parent().get_node("Heroes").current_character.position) < aggro_distance:
		$NavigationAgent2D.set_target_location(get_parent().get_parent().get_node("Heroes").current_character.position)
		velocity = speed*position.direction_to($NavigationAgent2D.get_next_location())
		move_and_slide(velocity)
	if velocity.x < 0:
		$Skeleton2D.scale.x = -1
		$SweepingEdge.scale.x = -1
	else:
		$Skeleton2D.scale.x = 1
		$SweepingEdge.scale.x = 1
	if velocity != Vector2.ZERO:
		if $AnimationPlayer.current_animation != "strike_down" and $AnimationPlayer.current_animation != "strike_up":
			$AnimationPlayer.playback_speed = 4
			$AnimationPlayer.play("walk")
	else:
		if $AnimationPlayer.current_animation != "strike_down" and $AnimationPlayer.current_animation != "strike_up":
			$AnimationPlayer.play("RESET")


func change_hp(value):
	hp = value
	$Control.hp_value = hp
	emit_signal("damaged")
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
	if target is KinematicBody2D:
		print("Attacking ",target)
		$AnimationPlayer.playback_speed = 8
		$AnimationPlayer.play("strike_down")
		if not target.jumping:
			target.hp -= damage
		else:
			print("Missed")


func _on_Attacker_body_exited(body):
	$AttackCooldown.stop()
	print("Target fled")
	target = null


func _on_Superskill_timeout():
	var skill = rngesus.randi_range(0,2)
	$Voice.set_stream(load("res://sounds/boom.ogg"))
	$Voice.play()
	print("Superskill ",skill)
	match skill:
		0:
			print("Dash")
			$SkillWearoff.start()
			speed *= 4
		1:
			damage *= 2
			$AnimationPlayer.play("strike_up")
			yield($AnimationPlayer,"animation_finished")
			_on_AttackCooldown_timeout()
		2:
			$SkillWearoff.start()
			speed *= 4
			damage *= 2
			$AnimationPlayer.play("strike_up")
			yield($AnimationPlayer,"animation_finished")
			_on_AttackCooldown_timeout()


func _on_SkillWearoff_timeout():
	speed = orig_speed
	damage = orig_damage
