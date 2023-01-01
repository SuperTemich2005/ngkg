extends Control


var dialogue_ru = [
	{"text": "[color=#ff009900]После уроков. 15 декабря, 2021 год: \"Мемный Дискут\""},
	{"text": "Тёмыч: ПАЦАНЫ! ПАЦАНЫ! ВСЕМ ВНИМАНИЕ!"},
	{"text": "Лёха: а, че такое?"},
	{"text": "Вован: дарова зинчик"},
	{"text": "Тёмыч: Так вот."},
	{"text": "Тёмыч: Эээ"},
	{"text": "Тёмыч: Пацаны, я (как сын подруги папиного троюродного брата-соседа знакомого Киевского депутата) объявляю войну новому году."},
	{"text": "Тёмыч: В этом году каникул не будет. Я уничтожу нашу школьную ёлку, чтобы мы с 16-го до 10-го учились как обычно"},
	{"text": "Тёмыч: На моей стороне все ученики всех А классов"},
	{"text": "Вован: что"},
	{"text": "Саня: какого хрена"},
	{"text": "Лёха: Э, старик, а ты не прифегел?"},
	{"text": "Какой отменить? Алё!"},
	{"text": "Тёмыч: Не, ну есть немного. Неприфегевшим отменять каникулы нельзя."},
	{"text": "Егогорыч: Ну всё зинчик. Мало я тебя в 6-м классе щекотал"},
	{"text": "Тёмыч: Не, ну, на самом деле все наоборот. Вот как раз таки от такого я и вымещаю свою страшную мстю."},
	{"text": "Людмила Буцак (Ищенко): НЕТ, ТЁМЫЧ. Я НЕ ПОЗВОЛЮ ТЕБЕ ЭТО СДЕЛАТЬ"},
	{"text": "Тёмыч: О, смотрите, ЗИЭИТ проснулся"},
	{"text": "Тёмыч: Не, Егорыч, сорян, но в этот раз я так просто не сдамся."},
	{"text": "Тёмыч: Поймай меня, если сможешь!"},
	{"text": "Людмила Буцак (Ищенко): [color=#ff000099](Тёмыч выпил слишком много Яги. Больше, чем Саня или Вован когда-либо выпили.)"},
	{"text": "Людмила Буцак (Ищенко): Я поставлю тебя на место, Тьоха!"},
	{"text": "Тёмыч: ЭТА БИТВА БУДЕТ [color=#ff990000][shake]ЛЕГЕНДАРНОЙ!"},
	{"text": "Егогорыч: Ух, ироды, совсем офигели!"},
	{"text": "Тёмыч: А, да, еще о мотивах. Все таки, Новый год круче, когда за него борешься, а не когда покорно ждешь, пока он сам заявится."},
	{"text": "Саня: Ну значит мы тебя отметелим и Новый год сразу наступит, и всем будет хорошо."},
	{"text": "Тёмыч: Ну попробуйте."},
	{"out": "res://scenes/user_interface/level_start.tscn"}
]
var dialogue_en = [
	{"text": "[color=#ff009900]After classes. December 15th, 2021: \"Memes dispute\""},
	{"text": "Temich: K @EVERYONE ATTENTION PLEASE"},
	{"text": "Leha: huh? what's up?"},
	{"text": "Wowan: hi temich"},
	{"text": "Temich: Okay, so"},
	{"text": "Temich: Umm"},
	{"text": "Temich: K, so, as my Father's Brother's Nephew's Cousin's Former Roommate's relative, who is the politician at Kievan senate, I declare a war to the New year."},
	{"text": "Temich: This year, there won't be winter holidays. I will destroy our christmas tree, so that we study from december 16th to january 10th as usual."},
	{"text": "Temich: Every single grade-A student is with me"},
	{"text": "Wowan: wut"},
	{"text": "Alex: What the [shake]d[/shake]uck"},
	{"text": "Leha: Hey, old man, looks like you're [color=#ff990000]slightly[/color] out of your mind"},
	{"text": "Why would you even do that?!"},
	{"text": "Temich: Well, I guess you could say so. I mean, you can't fight against winter holidays 'in' your mind."},
	{"text": "Egogorich: That's it, Zinets, looks like you din't receive enough bullying in grade 6"},
	{"text": "Temich: Well, on the contrary, I'd say that THAT is my main reason to cancel new year."},
	{"text": "Egorich: NO, TEMICH! I WON'T LET YOU DO THAT!"},
	{"text": "Temich: o, look, the guy who left our school for ZIEIT woke up."},
	{"text": "Temich: Nope, Egorich, I'm sorry, but this time, I won't artistically fall down as soon as you draw your airsoft glock."},
	{"text": "Temich: Catch me if you can!"},
	{"text": "Egorich: [color=#ff000099](Apparently, he had way too much vodka.)"},
	{"text": "Egorich: ...Well, if that's how you want it to happen, go forth, I dare you!"},
	{"text": "Temich: THIS BATTLE WILL BE [color=#ff990000][shake]LEGENDARY!"},
	{"text": "Egogorich: Oi, madmen, stop at once!"},
	{"text": "Temich: Oh, also, regarding my motives. On top of all that, I guess we all can agree that fighting for new year is much more fun, rather than waiting for it to happen."},
	{"text": "Alex: Well, alright, we'll just [shake]locate[/shake] you and everything will be alright."},
	{"text": "Temich: K, good luck trying."},
	{"out": "res://scenes/user_interface/level_start.tscn"}
]

func _ready():
	if TranslationServer.get_locale() == "en":
		$"/root/Global".level_name = "Level 5. Reach room 320 and help Elena Anatolievna decorate the christmas tree"
		$"/root/Global".next_level = "res://scenes/levels/level1.tscn"
		$"/root/Global".instructions = "Walk: W/A/S/D. Run: Shift. Jump: Space (allows evading hits). Melee strike: E. Shooting: LMB"
	else:
		$"/root/Global".level_name = "Уровень 5. Доберитесь до 320-го кабинета и помогите Лентольне нарядить ёлку."
		$"/root/Global".next_level = "res://scenes/levels/level1.tscn"
		$"/root/Global".instructions = "Ходить: W/A/S/D. Бежать: Shift. Прыжок: Space (позволяет уворачиваться от ударов). Удар в рукопашную: E. Стрельба: Левая Кнопка Мыши"

