extends KinematicBody2D
signal got_damage
signal died
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
# Movement variables
var orig_speed = 400.0
var speed = orig_speed
var sprint_multiplier = 1.2
var gravity = 2
var jump_force = 100
var velocity = Vector2(0,0)

# Combat variables
var streak_reset = 1 # Time it takes for strike_streak to reset
var strike_streak = 0
var damage = 2
var jumping = false

# Stats
var showname = "Тёмыч"
var max_hp = 30
var hp = max_hp setget set_hp, get_hp


func set_hp(value):
	hp = value
	hp = clamp(hp,0,max_hp)
	emit_signal("got_damage")
	if hp <= 0:
		speed = 0
		$Skeleton2D/body/head/AnimatedSprite.animation = "dead"
		$Voice.set_stream(load("res://sounds/ded.ogg"))
		$Voice.play()
		yield($Voice,"finished")
		emit_signal("died")


func get_hp():
	return hp


func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	velocity.x = 0
	velocity.y = 0
	if Input.is_action_pressed("W"):
		velocity.y = -speed - speed*sprint_multiplier*int(Input.is_action_pressed("Shift"))
	if Input.is_action_pressed("A"):
		velocity.x = -speed - speed*sprint_multiplier*int(Input.is_action_pressed("Shift"))
	if Input.is_action_pressed("S"):
		velocity.y = speed + speed*sprint_multiplier*int(Input.is_action_pressed("Shift"))
	if Input.is_action_pressed("D"):
		velocity.x = speed + speed*sprint_multiplier*int(Input.is_action_pressed("Shift"))
	if Input.is_action_pressed("Space"):
		$AnimationPlayer.play("jump")
		jumping = true
	if Input.is_action_just_pressed("Strike"):
		if not jumping:
			strike_streak = strike_streak + 1
			print(strike_streak)
			match strike_streak:
				1:
					$ResetCombo.start(streak_reset)
					$AnimationPlayer.playback_default_blend_time = 0
					$AnimationPlayer.play("strike_down")
					$AnimationPlayer.playback_default_blend_time = 1
				2:
					$AnimationPlayer.play("strike_up")
			if strike_streak <= 2:
				attack()
	if velocity.x != 0 or velocity.y != 0:
		if $AnimationPlayer.current_animation != "jump" and strike_streak == 0:
			$AnimationPlayer.play("walk")
	else:
		if $AnimationPlayer.current_animation != "jump" and strike_streak == 0:
			$AnimationPlayer.play("standing")
	move_and_slide(velocity)
	if velocity.x < 0:
		$Skeleton2D.scale = Vector2(-1,1)
		$SweepingEdge.scale = Vector2(-1,1)
	elif velocity.x > 0:
		$Skeleton2D.scale = Vector2(1,1)
		$SweepingEdge.scale = Vector2(1,1)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func attack():
	for i in $SweepingEdge.get_overlapping_areas():
		i.get_parent().hp -= damage


func _on_ResetCombo_timeout():
	strike_streak = 0


func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "jump":
		jumping = false
