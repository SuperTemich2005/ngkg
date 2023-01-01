extends Control
signal next

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var dialogue
var cur = -1
var characters
var savefile = ConfigFile.new()
# Called when the node enters the scene tree for the first time.
func _ready():
	savefile.load(OS.get_system_dir(OS.SYSTEM_DIR_DOCUMENTS)+"/AZIE Games/newyear23/savefile.save")
	savefile.set_value("General","last_cutscene",get_parent().filename)
	savefile.save(OS.get_system_dir(OS.SYSTEM_DIR_DOCUMENTS)+"/AZIE Games/newyear23/savefile.save")
	dialogue = get_parent().dialogue
	characters = get_parent().get_node("Characters")
	_on_Next_pressed()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Next_pressed():
	print("a")
	cur += 1
	emit_signal("next")
	if "text" in dialogue[cur]:
		print("show text")
		$Panel/Text.bbcode_text = dialogue[cur].text
	elif "out" in dialogue[cur]:
		get_tree().change_scene(dialogue[cur].out)
	if "anim" in dialogue[cur]:
		characters.get_node(dialogue[cur].anim[0]).animation = dialogue[cur].anim[1]
	if "music" in dialogue[cur]:
		$AudioStreamPlayer.set_stream(load(dialogue[cur].music))
		$AudioStreamPlayer.play()
