extends Control


var dialogue = [
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


func _ready():
	$"/root/Global".level_name = "ПОСЛЕДНЯЯ БИТВА"
	$"/root/Global".next_level = "res://scenes/levels/level_finalboss_stage2.tscn"
	$"/root/Global".instructions = "Нанеся Ольгнасильне достаточно урона, вы переключитесь на другого персонажа."
