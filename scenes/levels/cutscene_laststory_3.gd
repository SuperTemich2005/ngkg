extends Control


var dialogue = [
	{"text": "Супер Тёмыч: [color=#ff999900]Ну что, Ольгнасильна, начинаем сначала"},
	{"text": "Супер Тёмыч: [color=#ff999900]Я [shake]УЛЬТИМАТИВНО[/shake] заявляю, что ваша тирания не распространяется на нечто святое, чем является Новый год!"},
	{"text": "Супер Егорыч: [color=#ff999900]Я [shake]АБСОЛЮТНО[/shake] заявляю, что ваша тирания будет пресечена нами!"},
	{"text": "Ольгнасильна: Да, конечно, секунду."},
	{"text": "Ольгнасильна: [color=#ffff0000]*удар ольгнасильны*", "anim": ["Temich", "super_block"], "music": "res://sounds/boom.ogg"},
	{"text": "Ольгнасильна: [color=#ffff0000]*удар ольгнасильны*", "anim": ["Egorich", "super_block"], "music": "res://sounds/boom.ogg"},
	{"text": "Ольгнасильна: Что? Вы еще живы?", "anim": ["Temich", "super_def"]},
	{"text": "Супер Егорыч: Простите, конечно, но вы не в силах потягаться с тем, что стоит за этим видом.", "anim": ["Egorich", "super_def"]},
	{"text": "Супер Егорыч: Сами посудите. Как обычная автократия способна потягаться с желанием отпраздновать Новый год?"},
	{"text": "Супер Егорыч: Желание бороться во мне разжег Тёмыч со своим цирком", "anim": ["Egorich", "super"]},
	{"text": "Супер Тёмыч: Собственно, именно для этого я все и устроил. Сделал вид, что я с вами готов отменить Новый год.", "anim": ["Egorich", "super"]},
	{"text": "Супер Тёмыч: Чтобы сейчас, мы могли дружно послать вас на... стадион.", "anim": ["Egorich", "super_def"]},
	{"text": "Супер Егорыч: Мы бросаем вам вызов, Ольга Васильевна. Сразимся на стадионе."},
	{"text": "Ольгнасильна: Вот как, значит? Ну-ну, хорошо, на стадионе я ничего ценного не сломаю, меня ничто не ограничит."},
	{"out": "res://scenes/user_interface/level_start.tscn"}
]


func _ready():
	$"/root/Global".level_name = "ПОСЛЕДНЯЯ БИТВА"
	$"/root/Global".next_level = "res://scenes/levels/level_finalboss_stage2.tscn"
	$"/root/Global".instructions = "Нанеся Ольгнасильне достаточно урона, вы переключитесь на другого персонажа."
