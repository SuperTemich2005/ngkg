extends Control


var dialogue_ru = [
	{"text": "[color=#ff009900]16 декабря: 320-й."},
	{"text": "Тёмыч: Ты ба, кто заявился! Егорыч, триста лет триста зим!", "music": "res://sounds/temich_theme.ogg", "anim": ["Temich", "kek"]},
	{"text": "Егорыч: Дарова, Тьоха...", "anim": ["Egorich", "rage"]},
	{"text": "Тёмыч: Ой, прошу прощения. Я что-то не то сделал, да?"},
	{"text": "Тёмыч: Ну кто знал, что ёлку в 208-м трогать нельзя?"},
	{"text": "Егорыч: Как ты знаешь, Тёмыч, мы всем классом против тебя."},
	{"text": "Егорыч: За твоё [color=#ff990000]фатальное[/color] преступление, ты будешь наказан"},
	{"text": "Егорыч: И мы сделаем все, чтобы не позволить тебе совершить еще чего-то плохого."},
	{"text": "Тёмыч: Ну попробуй. Как я и сказал, так даже будет веселее."},
	{"text": "Тёмыч: Я уже это говорил, я повторю снова: куда круче сразиться с Егорычем на швабрах и заработать Новый год, чем просто ждать, пока он просто придёт и как обычно уйдёт.", "anim": ["Temich", "objection"]},
	{"text": "Тёмыч: Ну всё, хватит пустых разговоров! Защищайся, Егорыч!", "anim": ["Temich", "en_garde"]},
	{"out": "res://scenes/user_interface/level_start.tscn"},
]


var dialogue_en = [
	{"text": "[color=#ff009900]December 16, room 320."},
	{"text": "Temich: O hi, Egorich. Long time no see!", "music": "res://sounds/temich_theme.ogg", "anim": ["Temich", "kek"]},
	{"text": "Egorich: Why, hello, [color=#ff990000]Temich...", "anim": ["Egorich", "rage"]},
	{"text": "Temich: Oh, excuse me, did I do somwething wrong?"},
	{"text": "I wasn't told that christmas tree at room 208 may not be touched?"},
	{"text": "Egorich: As you know, entire class is agaisnt you"},
	{"text": "You will be punished for your [color=#ff990000]grave[/color] infraction, criminal."},
	{"text": "And we'll do our best to stop you, right here and now."},
	{"text": "Temich: Well, do try, I dare you."},
	{"text": "I said it once, I'll say it again: It's more fun to fight Egorich with a comically large spoon, rather than wait for new year to pass by.", "anim": ["Temich", "objection"]},
	{"text": "Enough! I am quite talkative, but we have a matter to settle now!", "anim": ["Temich", "en_garde"]},
	{"out": "res://scenes/user_interface/level_start.tscn"},
]


func _ready():
	if TranslationServer.get_locale() == "ru":
		$"/root/Global".level_name = "Уровень 8. Босс: Тёмыч."
		$"/root/Global".next_level = "res://scenes/levels/level_bosstemich.tscn"
		$"/root/Global".instructions = "Тёмыч бьёт в ближнем бою своим посохом. Он очень сильный и умеет делать быстрые рывки."
	else:
		$"/root/Global".level_name = "Level 8. Boss: Temich."
		$"/root/Global".next_level = "res://scenes/levels/level_bosstemich.tscn"
		$"/root/Global".instructions = "Temich uses melee attacks. He can dash and he is strong."
