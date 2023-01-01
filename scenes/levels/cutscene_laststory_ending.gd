extends Control


var dialogue_ru = [
	{"text": "Ольгнасильна: [color=#ffff0000]НЕЕЕЕЕЕЕЕТ! НЕВОЗМОЖНО", "music": "res://sounds/ending.ogg"},
	{"text": "Ольгнасильна: [color=#ffff0000]КАК ВЫ СМОГЛИ МЕНЯ ОДОЛЕТЬ?!?!?!"},
	{"text": "Ольгнасильна: [color=#ffff0000]МОИ СИЛЫ УГАСАЮТ"},
	{"text": "Ольгнасильна: [color=#ffff0000]Я НЕ СМОГУ ОТМЕНИТЬ НОВЫЙ ГОД"},
	{"text": "Ольгнасильна: [color=#ffff0000]ТЫСЯЧИ ДОЛЛАРОВ ПРИБЫЛИ"},
	{"text": "Ольгнасильна: [color=#ffff0000]МОЯ НЕПРЕКЛОННАЯ РЕПУТАЦИЯ"},
	{"text": "Ольгнасильна: [color=#ffff0000]ВСЕ КАНУЛО В ЛЕТУ"},
	{"text": "Ольгнасильна: [color=#ffff0000]НЕТ! НЕТ!"},
	{"text": "Ольгнасильна: [color=#ffff0000]НЕЕЕЕЕЕЕЕЕЕЕЕЕЕЕЕЕЕЕЕЕЕЕЕЕЕЕЕЕЕЕЕЕЕЕЕЕЕЕТ!!!!!!"},
	{"text": "Супер Тёмыч: [color=#ff999900]Простите, Ольгнасильна"},
	{"text": "Супер Тёмыч: [color=#ff999900]Но даже вы не в состоянии отменить НОВЫЙ ГОД"},
	{"text": "Супер Егорыч: [color=#ff999900]Судьба наделила нас силой защитить этот священный праздник"},
	{"text": "Супер Егорыч: [color=#ff999900]Волей Деда Мороза, мы остановили вас."},
	{"text": "Лентольна: Мальчики, что тут произошло?!", "anim": ["Lentoln", "omg"]},
	{"text": "Супер Егорыч: [color=#ff999900]Ой, Лентольна."},
	{"text": "Супер Егорыч: [color=#ff999900]Та мы тут случайно, ну, это..."},
	{"text": "Лентольна: Божечки, Ольга Васильевна. С вами все нормально?"},
	{"text": "Ольгнасильна: ...Та так, царапина."},
	{"text": "Лентольна: Царапина? На вас? НУ и ну, как у вас удалось?", "anim": ["Lentoln", "hmm"]},
	{"text": "Супер Тёмыч: [color=#ff999900]Лентольна, я выгляжу, как Гоку из Дрэгон Болла. Откуда я знаю, как я устранил Ольгу Васильевну?", "anim": ["Temich", "super_block"]},
	{"text": "Лентольна: Кстати, да. Что у вас за одежда? И когда Артём стал блондином?"},
	{"text": "Супер Егорыч: [color=#ff999900]Ну... Долгая история. Расскажу позже за чашкой чая."},
	{"text": "Супер Тёмыч: [color=#ff999900]А, ну и пока я здесь...", "anim": ["Temich", "super_def"]},
	{"text": "Супер Тёмыч: [color=#ff999900]Пацаны, всех с Новым годом."},
	{"text": "Супер Тёмыч: [color=#ff999900]Сделано для дискута."},
	{"out": "res://scenes/user_interface/disclaimer.tscn"}
]


var dialogue_en = [
	{"text": "Olga Wasiliewna: [color=#ffff0000]NOOOOOOOO! IMPOSSIBLE!", "music": "res://sounds/ending.ogg"},
	{"text": "[color=#ffff0000]HOW IN THE WORLD DID YOU DO THIS?!?!?!??!??!?!"},
	{"text": "[color=#ffff0000]MY POWER IS FADING"},
	{"text": "[color=#ffff0000]I AM NOT CAPABLE OF CANELLING THE NEW YEAR"},
	{"text": "[color=#ffff0000]THOusANDS DOLLARS OF PROFIT"},
	{"text": "[color=#ffff0000]MY IMPECCABLE REPUTATION..."},
	{"text": "[color=#ffff0000]ALL'S GONE."},
	{"text": "[color=#ffff0000]NO... NO!"},
	{"text": "[color=#ffff0000]NOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO!!!!!!"},
	{"text": "Super Temich: [color=#ff999900]Sorry, Olga Wasiliewna"},
	{"text": "[color=#ff999900]But even you cannot cancel NEW YEAR."},
	{"text": "Super Egorich: [color=#ff999900]By the power of fate, we defend this sacred holiday"},
	{"text": "[color=#ff999900]By the will of Father Frost, we stop you."},
	{"text": "Elena Anatoliewna: Holy cow, boys, what happened here?!", "anim": ["Lentoln", "omg"]},
	{"text": "Super Egorich: [color=#ff999900]Oh, Elena Anatoliewna."},
	{"text": "[color=#ff999900]We just, uh, you see, umm..."},
	{"text": "Elena Anatoliewna: Holy pig, Olga Wasiliewna, are you alright?"},
	{"text": "Olga Wasiliewna: ...'Tis but a scratch."},
	{"text": "Elena Anatoliewna: A scratch? At your face? HOW IN THE WORLD did it happen?", "anim": ["Lentoln", "hmm"]},
	{"text": "Super Temich: [color=#ff999900]Elena Anatoliewna, I look like Super Sonic. How can you be so clueless?", "anim": ["Temich", "super_block"]},
	{"text": "Elena Anatoliewna: Oh, yeah, while you're at it. What's with these clothes? And why is Artem blonde?"},
	{"text": "Super Egorich: [color=#ff999900]Absolutely zero idea, though it's a nice story to share over a cup of tea."},
	{"text": "Super Temich: [color=#ff999900]Oh, and before we go...", "anim": ["Temich", "super_def"]},
	{"text": "[color=#ff999900]Happy new year, mates."},
	{"text": "[color=#ff999900]Game dedicated to my classmates."},
	{"out": "res://scenes/user_interface/disclaimer.tscn"}
]


func _ready():
	$"/root/Global".level_name = "ПОСЛЕДНЯЯ БИТВА"
	$"/root/Global".next_level = "res://scenes/levels/level_finalboss_stage2.tscn"
	$"/root/Global".instructions = "Нанеся Ольгнасильне достаточно урона, вы переключитесь на другого персонажа."
