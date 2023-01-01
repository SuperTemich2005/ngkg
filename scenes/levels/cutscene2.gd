extends Control


var dialogue = [
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


func _ready():
	$"/root/Global".level_name = "Уровень 6. Возьмите ёлочные игрушки из мультимедийного."
	$"/root/Global".next_level = "res://scenes/levels/level2.tscn"
	$"/root/Global".instructions = "Прыжок дает вам неуязвимость на одну секунду."