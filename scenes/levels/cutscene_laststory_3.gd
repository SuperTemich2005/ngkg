extends Control


var dialogue_ru = [
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


var dialogue_en = [
	{"text": "Super Temich: [color=#ff999900]Alright, Olga Wasiliewna, let's start over"},
	{"text": "[color=#ff999900]I [shake]ULTIMATIVELY[/shake] declare your tyranny OVER, and not affecting something as holy as the New year."},
	{"text": "Super Egorich: [color=#ff999900]I [shake]ABSOLUTELY[/shake] declare, that WE will end your autocracy here, and now!"},
	{"text": "Olga Wasiliewna: Yes, sure, one second."},
	{"text": "[color=#ffff0000]*olga wasiliewna's strike*", "anim": ["Temich", "super_block"], "music": "res://sounds/boom.ogg"},
	{"text": "[color=#ffff0000]*olga wasiliewna's strike*", "anim": ["Egorich", "super_block"], "music": "res://sounds/boom.ogg"},
	{"text": "Huh? You're still alive?", "anim": ["Temich", "super_def"]},
	{"text": "Super Egorich: Sorry, but you aren't capable of fighting us, given what fuels our powers.", "anim": ["Egorich", "super_def"]},
	{"text": "Think about it. How can a mere mortal Lyceum 99 principal fight our will to celebrate New year as it is?"},
	{"text": "Thanks to whatever circus Temich arranged, I have the strength to fight you.", "anim": ["Egorich", "super"]},
	{"text": "Super Temich: That's why I started it all, initially. I pretended that I'm going to cancel new year", "anim": ["Egorich", "super"]},
	{"text": "So that we could challenge you to a battle on our outdoor stadium.", "anim": ["Egorich", "super_def"]},
	{"text": "Super Egorich: We challenge you to a battle, Olga Wasilienwa. A battle for New year."},
	{"text": "Olga Wasiliewna: Oh, is that it? Very well, there's nothing worthy on the stadium, so I won't be stopped by any financial matters."},
	{"out": "res://scenes/user_interface/level_start.tscn"}
]


func _ready():
	if TranslationServer.get_locale() == "ru":
		$"/root/Global".level_name = "ПОСЛЕДНЯЯ БИТВА"
		$"/root/Global".next_level = "res://scenes/levels/level_finalboss_stage2.tscn"
		$"/root/Global".instructions = "Нанеся Ольгнасильне достаточно урона, вы переключитесь на другого персонажа."
	else:
		$"/root/Global".level_name = "LAST BATTLE"
		$"/root/Global".next_level = "res://scenes/levels/level_finalboss_stage2.tscn"
		$"/root/Global".instructions = "Once you deal enough damage to Olga Wasiliewna, you will switch characters."
	
