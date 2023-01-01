extends Control


var dialogue_ru = [
	{"text": "Тёмыч: ВСЁ! Сдаюсь!"},
	{"text": "Егорыч: Сдавайся, Тьоха, ты поражен и окружен!"},
	{"text": "Тёмыч: Ля, Егорыч, ирод окаянныЙ, я же говорю, что сдаюсь."},
	{"text": "Егорыч: Что, Тьоха, сдулся?", "anim": ["Egorich", "yee"]},
	{"text": "Тёмыч: Ой, та да, позлорадствуй. Заслужил, [color=#ff990000]чертила."},
	{"text": "Тёмыч: Думаешь, мне в кайф с лучшим другом мутузиться?"},
	{"text": "Тёмыч: Не, ну, на самом деле, не то что бы это супер скучно и сверх неэтично", "anim": ["Temich", "kek"]},
	{"text": "Тёмыч: Но давай я расскажу тебе, как все было на самом деле.", "anim": ["Temich", "kek"]},
	{"text": "Егорыч: Че? Тьоха, что это значит?", "anim": ["Egorich", "hmm"]},
	{"text": "Ты что, не по своей воле решил новый год отменить?"},
	{"text": "Тёмыч: Егорыч, я заключил союз с ТИТАНАВАННОЙ, СВЕТЛАНФЁДРНОЙ [color=#ff990000]И АНЖЕЛНАТОЛЬНОЙ!!!", "anim": ["Temich", "rage"]},
	{"text": "Тёмыч: Разве можно в обычных обстоятельствах и не являясь Ксюкой сделать такое? Конечно же меня шантажируют. Нас всех шантажируют!"},
	{"text": "Тёмыч: Я расскажу, как все было и кто за всем этим стоит."},
	{"out": "res://scenes/user_interface/level_start.tscn"},
]


var dialogue_en = [
	{"text": "Temich: ENOUGH! I surrender!"},
	{"text": "Egorich: Surrender, Temich, you're outmatched and outdone"},
	{"text": "Temich: Ah, you bastard, I said it already: I surrender!"},
	{"text": "Egorich: What's wrong, Temich, not as impending as you wanted us to believe?", "anim": ["Egorich", "yee"]},
	{"text": "Temich: Yeah, make fun of me, you deserve it, [color=#ff990000]bastard"},
	{"text": "Do you think it's nice, fighting my best friend?"},
	{"text": "(...It's not like it wasn't fun and cool)", "anim": ["Temich", "kek"]},
	{"text": "Egorich: Huh? Temich, what do you mean?", "anim": ["Egorich", "hmm"]},
	{"text": "You didn't actually want to cancel new year?"},
	{"text": "Temich: Egorich, I teamed up with Tatyana Iwanowna, Swetlana Fedorowna [color=#ff990000]AND ANZHELA ANATOLIEWNA!!!", "anim": ["Temich", "rage"]},
	{"text": "Do you think it's possible to do it (for anybody but Xenia)? Of course I was blackmailed! We all are blackmailed!"},
	{"text": "Listen closely, for I'm about to tell you what actually happened."},
	{"out": "res://scenes/user_interface/level_start.tscn"},
]


func _ready():
	if TranslationServer.get_locale() == "ru":
		$"/root/Global".level_name = "Уровень 1. Доберитесь до 220-го."
		$"/root/Global".next_level = "res://scenes/levels/level5.tscn"
		$"/root/Global".instructions = "Тёмыч не умеет стрелять, за то его посох наносит в 4 раза больше урона, чем рукопашка Егорыча. Удар ближнего боя: Е"
	else:
		$"/root/Global".level_name = "Level 1. Reach room 224."
		$"/root/Global".next_level = "res://scenes/levels/level5.tscn"
		$"/root/Global".instructions = "Temich cannot shoot, but deals 4 times more damage in melee than Egorich. Melee strike: E."
