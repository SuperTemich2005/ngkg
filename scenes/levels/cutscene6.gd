extends Control


var dialogue_ru = [
	{"text": "[color=#ff009900]15 декабря: 220-й"},
	{"text": "Тёмыч: Титанаванна, я пришел пересдать математику."},
	{"text": "Титанаванна: Стой. Есть хороший вариант получить 12 по алгебре в году."},
	{"text": "Тёмыч: Титанаванна, у вас новогоднее настроение слишком сильно разыгралось. Вы только что пообещали 12 по математике мне поставить.", "anim": ["Temich","kek"]},
	{"text": "Титанаванна: Мы, учителя, планируем отменить в этом году зимние каникулы. А в новый год, мы опустим железный занавес над школой, чтобы школьники платили нам по 200 гривень (или банками с краской) за выход из школы"},
	{"text": "Титанаванна: Дети хотят провести новый год с родителями, так что мы поднимем очень много денежек. Но нам нужна твоя помощь."},
	{"text": "Титанаванна: Ты должен уничтожить все елки в школе."},
	{"text": "Тёмыч: А что вы сделаете, [color=#ff990000]когда[/color] я откажусь?", "anim": ["Temich", "rage"]},
	{"text": "Титанаванна: Ты узнаешь, если доживешь до 11 класса.", "anim": ["Temich", "default"]},
	{"text": "Титанаванна: Ключевое слово - \"если\"", "anim": ["Temich", "default"]},
	{"text": "Тёмыч: Простите, Татьяна Ивановна. Я, конечно, крыса, регулярно стрелки на камеру снимаю и в ютуб выкладываю", "anim": ["Temich", "en_garde"]},
	{"text": "Тёмыч: Но я не чертила позорная, чтобы такое вытворять.", "anim": ["Temich", "en_garde"]},
	{"text": "Титанаванна: [color=#ffff0000]Фатальная ошибка. Надеюсь, ты готов к последствиям.", "anim": ["Temich", "en_garde"]},
	{"out": "res://scenes/user_interface/level_start.tscn"},
]


var dialogue_en = [
	{"text": "[color=#ff009900]December 15th, room 224"},
	{"text": "Temich: Tatyana Iwanowna, I'm here to retest for algebra"},
	{"text": "Tatyana Iwanowna: Before you do so, there's an opportunity to get 12/12 for maths this year."},
	{"text": "Temich: Excuse me, Tatyana Iwanowna. Just so you know, your new year mood is so high that you just offered me 12 for maths.", "anim": ["Temich","kek"]},
	{"text": "Tatyana Iwanowna: We, teachers, intend to cancel winter holidays. And, on the new year day, we will lower iron curtain around the school, so that schoolars would pay us 200 hrivnyas (or paint cans) for exit"},
	{"text": "We will raise a lot of money, because everyone wants to spend new year with their parents and loved ones. That being said, we need your help"},
	{"text": "Tatyana Iwanowna: You must destroy every christmas tree in this school."},
	{"text": "Temich: And what are you gonna do [color=#ff990000]once[/color] I refuse?", "anim": ["Temich", "rage"]},
	{"text": "Tatyana Iwanowna: You won't live to pass grade 11.", "anim": ["Temich", "default"]},
	{"text": "Keyword: you won't.", "anim": ["Temich", "default"]},
	{"text": "Temich: Sorry, Titanawanna, but I'm a bastard who records classmate street fights and publishes them on YouTube", "anim": ["Temich", "en_garde"]},
	{"text": "Not a complete moron who does whatever you offered here!", "anim": ["Temich", "en_garde"]},
	{"text": "Tatyana Iwanowna: [color=#ffff0000]Fatal mistake. I hope you're ready for consequences.", "anim": ["Temich", "en_garde"]},
	{"out": "res://scenes/user_interface/level_start.tscn"},
]


func _ready():
	if TranslationServer.get_locale() == "ru":
		$"/root/Global".level_name = "Уровень 6. Одолейте Титанаванну."
		$"/root/Global".next_level = "res://scenes/levels/level_bosstitan.tscn"
		$"/root/Global".instructions = "Она такая же неубиваемая, но за то она не убивает с одного удара."
	else:
		$"/root/Global".level_name = "Level 6. Defeat Tatyana Iwanowna."
		$"/root/Global".next_level = "res://scenes/levels/level_bosstitan.tscn"
		$"/root/Global".instructions = "This time, she won't one-shot you."
