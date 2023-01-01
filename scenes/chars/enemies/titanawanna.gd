extends KinematicBody2D
signal died

var hp = 30000 setget change_hp, get_hp
var showname = tr("CHAR_TITAN")
var speed = 480+200
var target
var damage = 150
var aggro_distance = 110000


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
		get_parent().get_parent().get_node("TileMap/BGM").volume_db = 0
		get_parent().get_parent().get_node("TileMap/BGM").set_stream(load("res://sounds/sith_slam.ogg"))
		get_parent().get_parent().get_node("TileMap/BGM").play()
	else:
		print("Missed")


func _on_Attacker_body_exited(body):
	$AttackCooldown.stop()
	print("Target fled")
