extends Control


var dialogue_ru = [
	{"text": "[color=#ff009900]16 декабря: 320-й"},
	{"text": "Лентольна: О, Егор, привет. Спасибо, что пришел. Мы как раз таки украшаем наш класс, наряжаем вот ёлку."},
	{"text": "Лентольна: Можешь помочь?"},
	{"text": "Егорыч: Да, конечно, я за этим как раз таки пришел.", "anim": ["Egorich","yee"]},
	{"text": "Егорыч: Ну, конкретнее, пришел помочь нашему классу, не вам.", "anim": ["Egorich","hmm"]},
	{"text": "Лентольна: О, а чё так?", "anim": ["Lentoln","omg"]},
	{"text": "Егорыч: Да видели может, Тёмыч надышался химикатами, которые вы храните в нашей подсобке. Теперь он хочет уничтожить все елки в школе, чтобы отменить каникулы.", "anim": ["Egorich","default"]},
	{"text": "Лентольна: О, Как?! Я же не смогу без каникул!", "anim": ["Lentoln","hmm"]},
	{"text": "Лентольна: Эти каникулы - единственный вариант отдохнуть от всех вас! Нет, мы не можем этого позволить!"},
	{"text": "Егорыч: Я его остановлю, не переживайте. Правда, я не могу его нигде найти...", "anim": ["Egorich","hmm"]},
	{"text": "Лентольна: Давай заманим его в наш класс, сюда вот, а тут его подкараулил ты.", "anim": ["Lentoln","kek"]},
	{"text": "Егорыч: Отличная идея. Но как?", "anim": ["Egorich","yee"]},
	{"text": "Лентольна: А давай нарядим эту ёлку, вот как раз таки он придет.", "anim": ["Lentoln","hmm"]},
	{"text": "Егорыч: Хорошо. Правда, я нигде не вижу ёлочных игрушек.", "anim": ["Egorich","hmm"]},
	{"text": "Лентольна: Забери их из метода. Там коробка большая, но прочная: не разваливается, ручки крепкие. Ее можно вообще в одну руку взять, если что.", "anim": ["Lentoln","default"]},
	{"text": "Егорыч: Принято. Заманим Тёмыча в ловушку!", "anim": ["Egorich","yee"]},
	{"out": "res://scenes/user_interface/level_start.tscn"}
]


var dialogue_en = [
	{"text": "[color=#ff009900]December 16th: Room 320"},
	{"text": "Elena Anatolievna: O, hello Egor! We were just about to start decorating our christmas tree."},
	{"text": "Do you think you could help us?"},
	{"text": "Egorich: Sure, that's why I'm here", "anim": ["Egorich","yee"]},
	{"text": "Uh, well, I'm here to help our class, not you yourself.", "anim": ["Egorich","hmm"]},
	{"text": "Elena Anatolievna: Huh? Why so?", "anim": ["Lentoln","omg"]},
	{"text": "Egorich: Oh, I guess you already heard about it. Temich smelt too much chemicals that we store in this chemistry lab and now he wants to destroy every christmas tree in school to cancel new year holidays.", "anim": ["Egorich","default"]},
	{"text": "Elena Anatolievna: What? Why?! I can't carry without winter holidays!", "anim": ["Lentoln","hmm"]},
	{"text": "Winter holidays is one of those few opportunities when I can take a break from you guys. We can't let that happen!"},
	{"text": "Egorich: I will stop him, don't worry. Though, I can't find him anywhere..", "anim": ["Egorich","hmm"]},
	{"text": "Elena Anatolievna: Let's lure him here, so that you can ambush him.", "anim": ["Lentoln","kek"]},
	{"text": "Egorich: Nice idea, but how?", "anim": ["Egorich","yee"]},
	{"text": "Elena Anatolievna: Let's decorate this tree so that he goes here.", "anim": ["Lentoln","hmm"]},
	{"text": "Egorich: Alright. Where are the decorations?", "anim": ["Egorich","hmm"]},
	{"text": "Elena Anatolievna: They are in a cardboard box. It's quite sturdy, you won't have any troubles carrying it, even in one hand: handles are strong and don't fall apart.", "anim": ["Lentoln","default"]},
	{"text": "Egorich: Acknowledged. Let's lure him into our trap!", "anim": ["Egorich","yee"]},
	{"out": "res://scenes/user_interface/level_start.tscn"}
]


func _ready():
	if TranslationServer.get_locale() == "en":
		$"/root/Global".level_name = "Level 6. Take christmas decorations from room 220."
		$"/root/Global".next_level = "res://scenes/levels/level2.tscn"
		$"/root/Global".instructions = "Jump grants invincibility for 1 second"
	else:
		$"/root/Global".level_name = "Уровень 6. Возьмите ёлочные игрушки из мультимедийного."
		$"/root/Global".next_level = "res://scenes/levels/level2.tscn"
		$"/root/Global".instructions = "Прыжок дает вам неуязвимость на одну секунду."
