extends KinematicBody2D
signal died

var hp = 3 setget change_hp, get_hp
var showname = "kekker"
var speed = 350
var target
var damage = 5
var anim_lock = false
var aggro_distance = 1100

onready var rngesus = RandomNumberGenerator.new()
func _ready():
	rngesus.seed = get_index()
	hp = rngesus.randi_range(3,10)
	showname = tr("CHAR_ASHNIK_1")+str(rngesus.randi_range(5,11))+tr("CHAR_ASHNIK_2")+str(rngesus.randi_range(1,31))
	$Control/ProgressBar.max_value = hp
	$Control/ProgressBar.value = hp
	$Control/Label.text = showname
	var custom_modulate = Color(rngesus.randf_range(0,1),rngesus.randf_range(0,1),rngesus.randf_range(0,1))
	$Body/Skeleton2D/body/Sprite.modulate = custom_modulate
	$Body/Skeleton2D/body/left_arm.modulate = custom_modulate
	$Body/Skeleton2D/body/right_arm.modulate = custom_modulate
	$Body/Skeleton2D/body/left_leg_upper.modulate = custom_modulate
	$Body/Skeleton2D/body/right_leg_upper2.modulate = custom_modulate


func _physics_process(delta): # cya later, fps.
	var velocity : Vector2
	if position.distance_to(get_parent().get_parent().get_node("Heroes").current_character.position) < aggro_distance:
		$NavigationAgent2D.set_target_location(get_parent().get_parent().get_node("Heroes").current_character.position)
		velocity = speed*position.direction_to($NavigationAgent2D.get_next_location())
		move_and_slide(velocity)
	if velocity.x < 0:
		$Body.scale.x = -1
	else:
		$Body.scale.x = 1
	if velocity != Vector2.ZERO:
		if $AnimationPlayer.current_animation != "attack" and $AnimationPlayer.current_animation != "got_damaged":
			$AnimationPlayer.playback_speed = 4
			$AnimationPlayer.play("walk")
	else:
		$AnimationPlayer.play("RESET")


func change_hp(value):
	hp = value
	$Control.hp_value = hp
	$AnimationPlayer.play("got_damaged")
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
	$AnimationPlayer.playback_speed = 8
	$AnimationPlayer.play("attack")
	if not target.jumping:
		target.hp -= damage
	else:
		print("Missed")


func _on_Attacker_body_exited(body):
	$AttackCooldown.stop()
	print("Target fled")
