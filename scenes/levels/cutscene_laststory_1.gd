extends Control


var dialogue_ru = [
	{"text": "[color=#ff009900]16 декабря: 320-й."},
	{"text": "Тёмыч: Вот как-то так обстоят дела.", "music": "res://sounds/temich_theme.ogg", "anim": ["Temich", "rage"]},
	{"text": "Егорыч: Ну и ну. Так а почему ты меня с собой не взял?! Я бы тебя выручил!", "anim": ["Egorich", "hmm"]},
	{"text": "Тёмыч: Егорыч, ты был в ЗИЭИТе. Сдавал свои эти, как их там, экзамены что ли", "anim": ["Temich", "rage"]},
	{"text": "Тёмыч: Как бы ты пришел? И как ты, кстати, появился?"},
	{"text": "Егорыч: Так я когда узнал что ты тут устроил, сразу все сдал заранее, географичке занес кубинского кофе", "anim": ["Egorich", "rage"]},
	{"text": "Егорыч: И сразу пришел."},
	{"text": "Тёмыч: Кек. Ну ладно, раз уж ты тут, пора наконец-то уничтожить Ольгнасильну!", "anim": ["Temich", "kek"]},
	{"text": "Тёмыч: За всем стоит именно она. Если мы сможем силой ее переубедить, то мы сможем отменить ее диктаторский указ!", "anim": ["Temich", "en_garde"]},
	{"text": "Егорыч: Так и сделаем, Тьоха. Она в актовом зале, я ее там видел краем глаза."},
	{"out": "res://scenes/levels/cutscene_encounter_olgnasilna.tscn"},
]


var dialogue_en = [
	{"text": "[color=#ff009900]December 16th: Room 320."},
	{"text": "Temich: Well, that's about it.", "music": "res://sounds/temich_theme.ogg", "anim": ["Temich", "rage"]},
	{"text": "Egorich: Why didn't you call for my help? I'd fight alongside you!", "anim": ["Egorich", "hmm"]},
	{"text": "Temich: Egorich, you were at ZIEIT, writing your final exams.", "anim": ["Temich", "rage"]},
	{"text": "How would you ever make it? And, also, how did you make it here?"},
	{"text": "Egorich: As soon as I found out what you're up to, I wrote them before everyone and bribed my geography teacher with cuban coffee", "anim": ["Egorich", "rage"]},
	{"text": "As such, I made it here."},
	{"text": "Temich: Lul. Alright, now that you're here, it's time to finally end Olga Wasiliewna!", "anim": ["Temich", "kek"]},
	{"text": "She, our school principal, is behind everything. Together, we stand a chance to outdo her and end here dictatorship once and for all", "anim": ["Temich", "en_garde"]},
	{"text": "Egorich: K, that's it, then. She's in auditorium, I saw her there, briefly."},
	{"out": "res://scenes/levels/cutscene_encounter_olgnasilna.tscn"},
]
