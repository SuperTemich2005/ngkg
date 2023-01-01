extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var speed = 1


func _ready():
	print("kek")


func _physics_process(delta):
	move_and_slide(Vector2(0,speed).rotated(deg2rad(rotation_degrees)))


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_collide(body):
	if body is Area2D:
		body.get_parent().hp -= 1
	print("pew")
	queue_free()
