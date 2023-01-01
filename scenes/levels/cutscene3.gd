extends Control


var dialogue_ru = [
	{"text": "[color=#ff009900]16 декабря: 320-й"},
	{"text": "Лентольна: Отлично, игрушки есть. Я с Илонкой щас всё повешаю."},
	{"text": "Можешь пока заняться поисками Артёма."},
	{"text": "Ой, только будь осторожен. У тебя в семестре по алгебре выходит 6. Татьяна Ивановна может на тебя напасть.", "anim": ["Lentoln", "hmm"]},
	{"text": "Егорыч: Что? В смысле?! Я же в ЗИЭИТе учусь! Откуда по алгебре 6?", "anim": ["Egorich", "rage"]},
	{"text": "Лентольна: Ну, у тебя же там алгебра есть? Там у тебя и 6 в семестре. У учителей математики коллективный разум, Татьяна Ивановна узнает о твоих оценках за математику даже если ты находишься в[color=#ff990000] другом времени и пространстве."},
	{"text": "Егорыч: Так у меня же вышмат, и семестр в ЗИЭИТе еще не закончился. У меня нет семестровых оценок!","anim": ["Egorich","hmm"]},
	{"text": "Лентольна: Я же говорю, она видит твои оценки через пространство и время. Тебе необязательно иметь оценку за семестр, чтобы за нее получить по щщам.","anim": ["Lentoln","kek"]},
	{"text": "Лентольна: Я тебе позвоню, когда Артём заявится. Тем временем, пойди погуляй.","anim": ["Lentoln","default"]},
	{"out": "res://scenes/user_interface/level_start.tscn"}
]


var dialogue_en = [
	{"text": "[color=#ff009900]Deccember 16th: Room 320"},
	{"text": "Elena Anatolievna: Great, we have the decorations now. Me and Ilona will take care of them."},
	{"text": "You better go have some rest."},
	{"text": "Oh, those, stay on guard. You have 6/12 for Algebra in this quarter. Tatyana Iwanowna may attack you.", "anim": ["Lentoln", "hmm"]},
	{"text": "Egorich: Huh? Why? I study at ZIEIT, not Lyceum. How can I have 6 for Algebra?", "anim": ["Egorich", "rage"]},
	{"text": "Elena Anatolievna: Well, you study algebra there, right? Math teachers are connected in a hivemind, Tatyana Iwanowna may know your math grades even if you are in [color=#ff990000]another space and time."},
	{"text": "Egorich: No, I study finite math, and the quarter isn't over in ZIEIT yet. I don't have final grades for math there.","anim": ["Egorich","hmm"]},
	{"text": "Elena Anatolievna: I tell you, she can see your grades through time and space. You don't have to have a grade for math to get punished for it", "anim": ["Lentoln","kek"]},
	{"text": "I'll give you a call once Artem appears. You go and do something, meanwhille.","anim": ["Lentoln","default"]},
	{"out": "res://scenes/user_interface/level_start.tscn"}
]


func _ready():
	if TranslationServer.get_locale() == "ru":
		$"/root/Global".level_name = "Уровень 7. Выживите."
		$"/root/Global".next_level = "res://scenes/levels/level3.tscn"
		$"/root/Global".instructions = "Учителя неубиваемы, хотя по получению урона, они замедляются."
	else:
		$"/root/Global".level_name = "Level 7. Survive."
		$"/root/Global".next_level = "res://scenes/levels/level3.tscn"
		$"/root/Global".instructions = "Teachers are invincible."
