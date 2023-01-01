extends Control


var dialogue_ru = [
	{"text": "Тёмыч: Какого черта?", "anim": ["Temich", "rage"]},
	{"text": "Тёмыч: Почему ты не получаешь никакого урона?!", "anim": ["Egorich", "rage"]},
	{"text": "Егорыч: Тьоха, ложись, сейчас я брошу своё [color=#ff009900]высокоточное тактическое ядерное оружие!"},
	{"text": "[color=#ff990000][shake]*взрыв*"},
	{"text": "Ольгнасильна: Вы закончили?"},
	{"text": "Ольгнасильна: Моя очередь."},
	{"text": "[color=#ff990000][shake]*удар ольгнасильны*", "music": "res://sounds/sith_slam.ogg"},
	{"text": "Тёмыч: Я ЧУТЬ НЕ УМЕР"},
	{"text": "Егорыч: Тьоха... Я..."},
	{"text": "Егорыч: Я истекаю кровью"},
	{"text": "Егорыч: Я теряю десять литров крови в секунду"},
	{"text": "Егорыч: У меня нет ног"},
	{"text": "Тёмыч: Черт! Мой позвоночник!"},
	{"text": "Тёмыч: Ты нас обоих почти убила!"},
	{"text": "Ольгнасильна: Та я особо и не старалась."},
	{"text": "Ольгнасильна: Если бы я ударила в полную силу, поверхность земли разъехалась бы по литосферным плитам."},
	{"text": "Тёмыч: ...Нет."},
	{"text": "Тёмыч: Мы не станем сдаваться."},
	{"text": "Тёмыч: Мы будем бороться за Новый год до последнего!"},
	{"text": "Тёмыч: Слышишь? До последнего!"},
	{"text": "Егорыч: Тёмыч, у нас нет выбора..."},
	{"text": "Егорыч: ..."},
	{"text": "Егорыч: Пора покончить с ней раз и за одно."},
	{"text": "Тёмыч: Звезды сошлись, планеты построились в ряд.", "anim": ["Egorich", "default"]},
	{"text": "Тёмыч: Это означает только одно.", "anim": ["Temich", "default"]},
]


var dialogue_en = [
	{"text": "Temich: What the hell?", "anim": ["Temich", "rage"]},
	{"text": "Why don't you receive any damage?!", "anim": ["Egorich", "rage"]},
	{"text": "Egorich: Get down, Temich! I'm throwing my [color=#ff009900]high-precision tactical nuclear weapon!"},
	{"text": "[color=#ff990000][shake]*explosion*"},
	{"text": "Olga Wasiliewna: Are you done yet?"},
	{"text": "My turn."},
	{"text": "[color=#ff990000][shake]*olga wasiliewna's strike*", "music": "res://sounds/sith_slam.ogg"},
	{"text": "Temich: I'M ALMOST DEAD"},
	{"text": "Egorich: Temich... I..."},
	{"text": "I am bleeding"},
	{"text": "I am losing 10 liters of blood per second"},
	{"text": "My legs evaporated"},
	{"text": "Temich: Argh! MY SPINE!!!"},
	{"text": "You almost killed us both!"},
	{"text": "Olga Wasiliewna: pfft, I didn't even try."},
	{"text": "If I'd strike you with my full force, the surface of Earth would fracture."},
	{"text": "Temich: ...No."},
	{"text": "We won't give up."},
	{"text": "We will fight for the new year until the very end!"},
	{"text": "Do you hear us? Until the VERY END!"},
	{"text": "Egorich: Temich, we have no choice..."},
	{"text": "..."},
	{"text": "...We must end her, right here and now."},
	{"text": "Temich: I can feel it. Planets lined up, stars arranged.", "anim": ["Egorich", "default"]},
	{"text": "That can only mean one thing.", "anim": ["Temich", "default"]},
]


func _on_Dialogue_next():
	if $Dialogue.cur == 24:
		$Dialogue.queue_free()
		$Characters/Olg.queue_free()
		$BG.queue_free()
		$AudioStreamPlayer.set_stream(load("res://sounds/supertemich.ogg"))
		$AudioStreamPlayer.play()
		$transform.show()
		$transform2.show()
		$AnimationPlayer.play("Animation")


func _on_AnimationPlayer_animation_finished(anim_name):
	get_tree().change_scene("res://scenes/levels/cutscene_laststory_3.tscn")
