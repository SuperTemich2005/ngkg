extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var savefile = ConfigFile.new()
# Called when the node enters the scene tree for the first time.
func _ready():
	if savefile.load(OS.get_system_dir(OS.SYSTEM_DIR_DOCUMENTS)+"/AZIE Games/newyear23/savefile.save") != OK:
		Directory.new().make_dir_recursive(OS.get_system_dir(OS.SYSTEM_DIR_DOCUMENTS)+"/AZIE Games/newyear23")
		savefile.save(OS.get_system_dir(OS.SYSTEM_DIR_DOCUMENTS)+"/AZIE Games/newyear23/savefile.save")
		print("Creating a new save file.")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_NewGame_pressed():
	get_tree().change_scene("res://scenes/levels/cutscene1.tscn")


func _on_Cont_pressed():
	savefile.load(OS.get_system_dir(OS.SYSTEM_DIR_DOCUMENTS)+"/AZIE Games/newyear23/savefile.save")
	get_tree().change_scene(savefile.get_value("General","last_cutscene","res://scenes/levels/cutscene1.tscn"))


func _on_Lang_pressed():
	if TranslationServer.get_locale() == "ru":
		TranslationServer.set_locale("en")
	else:
		TranslationServer.set_locale("ru")
