extends Control


var dialogue_ru = [
	{"text": "Тёмыч: ИЗЫДИ, БЕС ТРИКЛЯТЫЙ!", "anim": ["Temich", "en_garde"]},
	{"text": "Титанаванна: [shake][color=#ff990000]АААА! НЕВОЗМОЖНО!"},
	{"text": "Титанаванна: [shake][color=#ff990000]ПОЧЕМУ ТЫ ТАКОЙ УВОРОТЛИВЫЙ?!"},
	{"text": "Титанаванна: [shake][color=#ff990000]Ну ничего. Скоро я это исправлю."},
	{"text": "Титанаванна: [shake][color=#ff990000]Ты думаешь, тебя хватит на нас всех? И ты думаешь, что ты один такой уникальный, не пошел на мое предложение?"},
	{"text": "Титанаванна: [shake][color=#ff990000]Хмф. Все ученики каждого из А классов, кроме разве что 10-А, может быть, тех я еще не допросила"},
	{"text": "Титанаванна: [shake][color=#ff990000]Все они согласились на то, чтобы устроить Новый год именно таким!"},
	{"text": "Титанаванна: [shake][color=#ff990000]Может, я с тобой не справилась, но все остальные - запросто!"},
	{"out": "res://scenes/user_interface/level_start.tscn"},
]


var dialogue_en = [
	{"text": "Temich: BEGONE, FOUL BEAST!", "anim": ["Temich", "en_garde"]},
	{"text": "Tatyana Iwanowna: [shake][color=#ff990000]ARGH! IMPOSSIBLE!"},
	{"text": "Tatyana Iwanowna: [shake][color=#ff990000]WHY ARE YOU SO EVASIVE?!"},
	{"text": "Tatyana Iwanowna: [shake][color=#ff990000]Damnit, I'll fix that now."},
	{"text": "Tatyana Iwanowna: [shake][color=#ff990000]Do you really think that you can take on all of us? That you're special that you reject my offer?"},
	{"text": "Tatyana Iwanowna: [shake][color=#ff990000]All students from A grades, except 10-A perhaps, didn't ask them yet"},
	{"text": "Tatyana Iwanowna: [shake][color=#ff990000]All of them support our idea of removing new year!"},
	{"text": "Tatyana Iwanowna: [shake][color=#ff990000]I didn't destroy you singlehandedly, but all of us will easily erase you!"},
	{"out": "res://scenes/user_interface/level_start.tscn"},
]


func _ready():
	if TranslationServer.get_locale() == "ru":
		$"/root/Global".level_name = "Уровень 7. Одолейте всех А-шек в школе."
		$"/root/Global".next_level = "res://scenes/levels/level7.tscn"
		$"/root/Global".instructions = "Не пытайтесь выиграть. По хронологии событий, Тёмыч проиграет эту битву."
	else:
		$"/root/Global".level_name = "Level 7. Defeat every grade A student in school"
		$"/root/Global".next_level = "res://scenes/levels/level7.tscn"
		$"/root/Global".instructions = "Temich WILL lose this battle, so don't really bother winning."
