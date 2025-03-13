local M = {}

local language = "RU"

local translations = 
{
    RU = 
    {
        -- Main menu
        continue = "Продолжить",
        newGame = "Новая игра",
        settings = "Настройки",
        load = "Загрузка",
        exit = "Выход",
        -- Settings
        language = "RU",
        sound = "Звук",
        volume = "Громкость",
        screen = "Экран",
        fullscreen = "Полный экран",
        resolution = "Разрешение экрана" ,
        mouse = "Мышь",
        sensitivity = "Чувств. рисования",
        difficulty = "Сложность",
        symbolSize = "Размер символа",
        symbolSizeTooltip = "Влияет на размер формы рисования символа.\nЧем больше значение, тем больше зона принятия рисунка.",
        reqAccuracy = "Требуемая точность",
        reqAccuracyTooltip = "Влияет на строгость оценки рисования.\nЧем больше значение, тем точнее надо попадать в форму символа.",
        mistake = "Частота работы\nнад ошибками",
        mistakeTooltip = "Во время рисования при совершении стольких ошибок потребуется нарисовать символ доп. 1 раз. При 0 доп. рисований не будет.",
        downgradeConst = "Снижение\nсложности",
        downgradeConstTooltip = "Все проверки с рисованием будут облегчены, их начальная сложность снизится на установленное значение.",
        resetDifficulty = "Сбросить сложность",
        -- Inventory
        emptyCell = "Ячейка",
        emptyCellDescription = "Свободное место в вашем инвентаре. Здесь может что-то храниться",
        use = "Исп.",
        sell = "Прод.",
        kanjiPointsDialogue = "Оч. Кандзи", -- для избежания проблем с окончаниями в диалогах используется сокращение слова "очки"
        kanjiPointsLabel = "Очки Кандзи",
        kanjiPointsDescription = "Валюта, получаемая за успешное использование кандзи",
        -- HUD
        saveNotif = "Сохраняю...",
        inventoryFullNotif = "Инвентарь полон!",
        notEnoughInkNotif = "Недостаточно чернил!\nВозможно, они есть в инвентаре (нажмите I)",
        diaryNotif = "+ запись в дневнике",
        notEnoughKP = "Недостаточно очков кандзи!",
        reqNotif = "Нужен ",
        wrongKanji = "Неправильная форма!",
        wrongStrokes = "Неправильные черты символа!",
        wrongComposition = "Неправильное расположение черт символа!",
        -- New game confirmation window
        yes = "Да",
        no = "Нет",
        newGameConfirmationText = "Вы уверены, что хотите\nначать новую игру? Весь ваш\nпрогресс будет стёрт.",
        -- Handwriting
        timerText = "Время! Время! Время!",
        doneButton = "Символ закончен",
        -- Items
        inkPack50 = "Пачка чернил (50)",
        inkPack100 = "Пачка чернил (100)",
        inkPack150 = "Пачка чернил (150)",
        inkPackDescription_50= "Может заполнить вашу чернильницу на 50",
        inkPackDescription_100= "Может заполнить вашу чернильницу на 100",
        inkPackDescription_150= "Может заполнить вашу чернильницу на 150",
        tetraLabel = "Тетракубоид",
        tetraDescription = "Металличиеский тетракубоид. Увесистый и приятный, но назначение неизвестно",
        keyLabel = "ключ",
        keyDescription ="Открывает дверь",
        gearLabel = "Деталь класса\nАБ0-Б-Икс",
        gearDescription = "Непонятная деталь, похожа на шестерню с лицом. Кому-то может быть полезной",
        backpackUpgradeLabel_1 = "Расширение рюкзака",
        backpackUpgradeDescription_1 = "При использовании расширяет инвентарь на 3 клетки",
        
        -- Dialogue phrases
        ---- Pchel
        pchelIntro = "Потерялся, путник? Ну, ладно… Теряйся дальше, а я буду ждать наших встреч в других местах!",
        pchelSettings = "О, да ты делаешь успехи! Если вдруг будет слишком сложно рисовать эти непонятные символы, то в настройках можно подкорректировать сложность под себя, но помни, что это может привести к непредвиденным обстоятельствам...",
        pchelMenuPhrase1 = "Вот это да... Цены так быстро растут, что я уже не удивлюсь, если увижу банку чернил за 6, 7 или даже 8 единиц местной валюты.",
        pchelMenuPhrase2 = "Да вот, смотри же на стену! Справа загагулины нарисованы с таким символом одинаковым везде; он, кстати, означает деньги, вроде. А все остальные символы, сверху вниз, это 6, 7 и 8.",
        pchelMenuPhrase3 = "Работа у меня такая - знать всё обо всём и ничего конкретно. Постепенно я буду делиться с тобой своей мудростью.",
        pchelOneQuestionPhrase1 = "Я готов ответить на один твой вопрос. Тщательно обдумай свой выбор!",
        pchelOneQuestionPhrase2 = "Здесь. Если конкретно, то возле меня, ближе ко мне, чем дверь из этой комнаты, но дальше, чем моя одежда. Этого хватит. Можешь покинуть меня, как и обитатели этого мира, покинувшие своё прошлое.",
        pchelOneQuestionPhrase3 = "...",
        pchelOneQuestionPhrase4 = "И тебя даже не волнует, откуда конкретно... Просто иди на север, вверх, где-то там точно должен быть выход из здания. Про другие выходы мы позже поговорим.",
        pchelEnd = "Покеда)",
        pchelDemoEnd = "Не, всё, дальше демо кончается. Не забудьте поделиться вашими впечатлениями. Спасибо за игру!",
        ---- Tethra Bot
        tethraBotPhrase1 = "Здравствуйте, я могу обменять ваши тетраэдры и прочие \"сокровища\" на массив объектов, ценных для вас, - очки кандзи",
        tethraBotPhrase2 = "Я валютный обменник, созданный для перевода предметов в очки кандзи",
        tethraBotPhrase3 = "Команда не распознана, пожалуйста, обратитесь к администратору",
        tethraBotEndPhrase1 = "Просто поместите \"сокровища\" в средний бак; очки кандзи будут ниже",
        tethraBotEndPhrase2 = "До сви да ни я",
        ---- Vending Machine
        vendingMachinePhrase1_1 = " продаётся за ",
        vendingMachinePhrase2 = "Спасибо, жду вас снова!",
        ---- Office Bot
        officeBotPhrase = "Вы видите сломанного робота марки Або-8а. Его давно бросили здесь, возможно, он сломался от нехватки заботы...",
        officeBotEndPhrase = "Вы решаете оставить это грустное зрелище",
        ---- Level 2 Quest 1 bot
        l2q1_phrase1 = "Здр..Здравствуйте, хозяин. Я тут потерял очень важные детали, отсутствие которых не позволяет мне быть приписанным к классу современных устройств. Для обретения мной возможности улететь с вами произведите поиск вокруг. Всего не хватает 3 детали класса АБ0-Б-Икс",
        l2q1_phrase2 = "О, я вижу у вас мои детальки. С их помощью смогу улететь с вами. Всего недостаёт 3 детали класса АБ0-Б-Икс",
        l2q1_phrase3 = "Сканирование показало, что необходимые для моей починки детали находятся у вас в рюкзаке. Вы потратите 3 детали класса АБ0-Б-Икс на мою починку?",
        l2q1_phrase4 = "Cпа си бо, хозяин. Теперь я могу улететь с вами в светлое будущее! крк-кркр-крррр...\n*робот перестаёт двигаться, из него вылетает непонятный предмет*",
        l2q1_phrase5 = "При нял...",
        ---- Music Player
        musicPlayerPhrase1 = "Хей, чел! Чё как, бро?! Давно я не видел людей вокруг - совсем нет собеседников. Свихнулся вот под конец срока службы и разум обрёл. Запара та ещё, а не дар. А ты кто, откуда? Рассказывай, пока моя батарея не разрядилась - мне недолго осталось",
        musicPlayerPhrase2 = "Значит, ты даже не из нашего мира... Поразительно! Впервые вижу эту кисть - у нас таких не делают, но если у тебя получилось выбраться из подвала, значит, каким-то образом кисть может управлять местными технологиями. Возможно, старик Чел может зна.......\n*робот замирает*",
        musicPlayerPhrase3 = "Какая грубость и дерзость на пустом месте. Все вы люди такие - не уважаете тех, кто хоть сколько-нибудь от вас отличается, а роботов тем более. Пока!\n*робот замирает, на экране видна надпись:\"Проснусь через 12 лет\"*",
        musicPlayerPhrase4 = "Сколько загадочности и пафоса, словно с дедом Челом общаюсь. Кстати, это тот самый псих, который тебя интересует. Своеобразный человек, но меня игнорирует. Помню, как однажды он бегал по лесу и кричал, что нашёл кого-то особенного, способного спасти миры. Не знаю, что взбрело ему в голову, но....\n*робот замирает*",
        ---- lore notes
        loreNote1Phrase1 = "Вы находите записку, на которой сказано:\n\"Всем работникам ГИО \"ГосПортПро\" надлежит немедленно явиться в эвакуационную зону со всем современным оборудованием. За наличие личных вещей или инструментов, произведённых до 2*** года, - истребление на месте.\"",
        loreNote1Phrase2 = "Кто мы, чтобы судить?\nДостаточно ли мы знаем для наших суждений?",
        
        -- Dialogue options
        ---- Tethra Bot
        tethraBotOption1 = "Где я?",
        tethraBotOption2 = "Кто ты?",
        tethraBotEndOption1 = "Я хочу воспользоваться твоими услугами",
        tethraBotEndOption2 = "Пойду по своим делам, пока",
        ---- Pchel
        pchelMenuOption1 = "6, 7 и 8? Откуда ты взял эти числа?",
        pchelMenuOption2 = "Ты будто очень много знаешь об этом месте...",
        pchelOneQuestionOption1 = "Как звучит хлопок одной ладонью?",
        pchelOneQuestionOption2 = "Понятно",
        pchelOneQuestionOption3 = "Непонятно",
        pchelOneQuestionOption4 = "Как мне выбраться отсюда?",
        ---- lore notes
        loreNote1Option1 = "Руководство поступило правильно",
        loreNote1Option2 = "Руководство поступило неправильно",
        -- Level 2 Quest 1 bot
        l2q1_option1 = "Хорошо, я постараюсь найти недостающие детали, куда бы ты ни хотел улететь потом...",
        l2q1_option2 = "Куда улететь? Нет у меня времени на это",
        l2q1_option3 = "Да, давай-ка я помогу тебе",
        l2q1_option4 = "Нет, они мне очень нужны. Никаких тебе деталей!",
        ---- Music Player
        musicPlayerOption1 = "Не знаю, как меня сюда занесло. Эта кисть лежала в подвале, всякую магую творит. Знаешь что-нибудь про неё?",
        musicPlayerOption2 = "Отстань от меня, железка двинутая. Моя кисть такое может!",
        musicPlayerOption3 = "Не важно, кто я. Лучше скажи мне, деда тут не видел? Появляется внезапно, бубнит что-то загадочное",
        musicPlayerOption4 = "Покойся с миром",
        musicPlayerOption5 = "Ну пока",
        
        
        -- Kanji Information
        oneInfo = "Символ числа 1",
        twoInfo = "Символ числа 2",
        threeIfo = "Символ числа 3",
        fourInfo = "Символ числа 4",
        fiveInfo = "Символ числа 5",
        sixInfo = "Символ числа 6",
        sevenInfo = "Символ числа 7",
        eightInfo = "Символ числа 8",
        nineInfo = "Символ числа 9",
        tenInfo = "Символ числа 10",
        hundredInfo = "Символ числа 100",
        thousandInfo = "Символ числа 1000",
        tenThousandInfo = "Символ числа 10000",
        yenInfo = "Символ японской валюты (Йена). Им также обозначаются Очки Кандзи",
        yearInfo = "Символ года. Ставится после числового выражения конкретного года"
    },
    EN = 
    {
        -- Main menu
        continue = "Continue",
        newGame = "New game",
        settings = "Settings",
        load = "Load",
        exit = "Exit",
        -- Settings
        language = "EN",
        sound = "Sound",
        volume = "Volume",
        screen = "Screen",
        fullscreen = "Fullscreen",
        resolution = "Screen resolution" ,
        mouse = "Mouse",
        sensitivity = "Drawing sens.",
        difficulty = "Difficulty",
        symbolSize = "Symbol size",
        symbolSizeTooltip = "Affects the size of the symbol drawing form.\nThe higher the value, the larger the drawing acceptance area.",
        reqAccuracy = "Required accuracy",
        reqAccuracyTooltip = "Affects the strictness of the drawing evaluation.\nThe higher the value, the more accurately you need to draw the shape of the symbol.",
        mistake = "Number of mistakesы\nfor additional try",
        mistkaeTooltip = "While drawing after this amount of mistakes you'll need to draw simbol one more time\nWith 0 no more drawings required.",
        downgradeConst = "Difficulty\ndowngrade",
        downgradeConstTooltip = "All drawing tasks will be easier, starting difficalthy will decrease for set value.",
        resetDifficulty = "Reset difficulty",
        -- Inventory
        emptyCell = "Cell",
        emptyCellDescription = "A free space in your inventory. Something might be stored here",
        use = "Use",
        sell = "Sell",
        kanjiPointsDialogue = "Kanji Points",
        kanjiPointsLabel = "Kanji Points",
        kanjiPointsDescription = "Currency, given for successful kanji usage",
        -- HUD
        saveNotif = "Saving...",
        inventoryFullNotif = "Inventory is full!",
        notEnoughInkNotif = "Not enough ink!\nThey may be in inventory (press I)",
        diaryNotif = "+ diary note",
        notEnoughKP = "Not enough kanji points!",
        reqNotif = "Require ",
        wrongKanji = "Wrong form!",
        wrongStrokes = "Wrong symbol strokes!",
        wrongComposition = "Wrong strokes composition!",
        -- New game confirmation window
        yes = "Yes",
        no = "No",
        newGameConfirmationText = "Are you sure, you want to\nstart a new game? All your\nprogress will be lost.",
        -- Handwriting
        timerText = "Time! Time! Time!",
        doneButton = "Done",
        -- Items
        inkPack50 = "Pack of ink  (50)",
        inkPack100 = "Pack of ink  (100)",
        inkPack150 = "Pack of ink (150)",
        inkPackDescription_50 = "Can fill your inkwell by 50",
        inkPackDescription_100 = "Can fill your inkwell by 100",
        inkPackDescription_150 = "Can fill your inkwell by 150",
        tetraLabel = "Tetracuboid",
        tetraDescription = "Metal tetracuboid. Heavy and pleasant, but the purpose is unknown",
        keyLabel = "Key",
        keyDescription ="Opens a door",
        gearLabel = "Сlass AB0-B-X\ncomponent",
        gearDescription = "A weird piece that looks like a gear with a face. It might be useful to someone",
        backpackUpgradeLabel_1 = "Backpack expansion",
        backpackUpgradeDescription_1 = "When used, expands the inventory by 3 cells",
        
        -- Dialogue phrases
        ---- Pchel
        pchelIntro = "Are you lost, traveler? Ok then… Continue to be lost, and I will be waiting for our meetings in other places!",
        pchelSettings = "O, you are making progress! If drawing this wierd simbols gets too hard, you can change difficalthy in the settings for your liking. But remember, this might lead to unxpected circumstances",
        pchelMenuPhrase1 = "Wow... Prices are rising so fast that I'm wondering when I'll see a bottle of ink for 6, 7 or even 8 units of local currency.",
        pchelMenuPhrase2 = "Oh, look at the wall! On the right, there are squiggles with this symbol that's the same everywhere; by the way, it means money, I think. And the other symbols, from top to bottom, mean 6, 7 and 8.",
        pchelMenuPhrase3 = "It's a job of mine - to know everything about everything and nothing in particular. Little by little, I'll share my wisdom with you.",
        pchelOneQuestionPhrase1 = "I am ready to answer one of your questions. Choose carefully!",
        pchelOneQuestionPhrase2 = "Here. Specifically, next to me, closer to me than the door of this room, but further than my clothes. That's enough. You can leave me, just like the inhabitants of this world who left their past.",
        pchelOneQuestionPhrase3 = "...",
        pchelOneQuestionPhrase4 = "And you don't even care where from exactly... Just go north, up, there should definitely be an exit from the building somewhere there. We'll talk about other exits later.",
        pchelEnd = "See ya)",
        pchelDemoEnd = "The demo ends here. Don't forget to share your opinion. Thank you for playing!",
        ---- Tethra Bot
        tethraBotPhrase1 = "Hello, I can exchange your tetrahedrons and other \"treasures\" to an array of objects that are valuable to you - kanji points",
        tethraBotPhrase2 = "I am a currency exchanger created to convert tetrahedrons into kanji points",
        tethraBotPhrase3 = "Command unknown, please contact an administrator",
        tethraBotEndPhrase1 = "Just put \"treasures\" in the middle container; The kanji points will be below",
        tethraBotEndPhrase2 = "Go od by ee",
        ---- Vending Machine
        vendingMachinePhrase1_1 = " is selling for ",
        vendingMachinePhrase2 = "Thank you, waiting to see you again!",
        -- Office Bot
        officeBotPhrase = "You see a broken robot which mark is Abo-8a. It was a long time since he had been left by someone here, probably, he had been broken because of lack of care...",
        officeBotEndPhrase = "You decide to leave this sad sight",
        -- Level 2 Quest 1 bot
        l2q1_phrase1 = "Здр..Здравствуйте, хозяин. Я тут потерял очень важные детали, отсутствие которых не позволяет мне быть приписанным к классу современных устройств. Для обретения мной возможности улететь с вами произведите поиск вокруг. Всего не хватает 3 детали класса АБ0-Б-Икс",
        l2q1_phrase2 = "О, я вижу у вас мои детальки. С их помощью смогу улететь с вами. Всего недостаёт 3 детали класса АБ0-Б-Икс",
        l2q1_phrase3 = "Сканирование показало, что необходимые для моей починки детали находятся у вас в рюкзаке. Вы потратите 3 детали класса АБ0-Б-Икс на мою починку?",
        l2q1_phrase4 = "Cпа си бо, хозяин. Теперь я могу улететь с вами в светлое будущее! крк-кркр-крррр...\n*робот перестаёт двигаться, из него вылетает непонятный предмет*",
        l2q1_phrase5 = "При нял...",
        ---- Music Player
        musicPlayerPhrase1 = "Hey, man! Wassup, bro? I haven't seen people around here for aaaages, dude! No one to talk to at all. Thought I'd lost my mind at the end of my service life but I might have just found one. A gift... Huh as if! What a hassle... And who are you gonna be? Where're ya from? Come on,  tell me before my battery dies - I don't have much left",
        musicPlayerPhrase2 = "So you're not even from our world... Amazing! This is the first time I've seen a brush like yours - we don't make them like this, but if you managed to get outta the basement, it means that somehow the brush can affect local technologies. Maybe old Chel kno......\n*robot freezes*",
        musicPlayerPhrase3 = "What rudeness and insolence out of nowhere. You people are all like that - you don't respect those who are at least a little different from you, robots especially. Toodles!\n*robot freezes, a caption on the screen says:\"Will wake up in 12 years\"*",
        musicPlayerPhrase4 = "So much mystery and pathos, as if I were talking to Grandpa Chel. By the way, he's the same psycho you're interested in. A peculiar person, but he ignores me. I remember how he once ran through the forest and shouted that he found someone special, capable of saving worlds. Don't know what got into his head, but....\n*the robot freezes*",
        -- lore notes
        loreNote1Phrase1 = "You find a note that says:\n\"All employees of the *????* Institution must immediately report to the evacuation zone with all modern equipment. Possession of personal items or tools manufactured before 2*** will lead to extermination on the spot.\"",
        loreNote1Phrase2 = "Who are we to judge?\nDo we know enough?",
        
        -- Dialogue options
        ---- Tethra Bot
        tethraBotOption1 = "Where am I?",
        tethraBotOption2 = "Who are you?",
        tethraBotEndOption1= "I want to use your services",
        tethraBotEndOption2 = "I have a business to do, bye",
        ---- Pchel
        pchelMenuOption1 = "6, 7 and 8? Where did you get these numbers from?",
        pchelMenuOption2 = "It seems like you know a lot about this place...",
        pchelOneQuestionOption1 = "How does sound a clap of one hand?",
        pchelOneQuestionOption2 = "I see",
        pchelOneQuestionOption3 = "I don't get it",
        pchelOneQuestionOption4 = "How do I get out of here?",
        -- lore notes
        loreNote1Option1 = "Management did the right thing",
        loreNote1Option2 = "Management did the wrong thing",
        -- Level 2 Quest 1 bot
        l2q1_option1 = "Хорошо, я постараюсь найти недостающие детали, куда бы ты ни хотел улететь потом...",
        l2q1_option2 = "Куда улететь? Нет у меня времени на это",
        l2q1_option3 = "Да, давай-ка я помогу тебе",
        l2q1_option4 = "Нет, они мне очень нужны. Никаких тебе деталей!",
        ---- Music Player
        musicPlayerOption1 = "I don't know how I ended up here. This brush was lying in the basement, it does some kind of magic. Do you know anything about it?",
        musicPlayerOption2 = "Get lost, crazy piece of junk. My brush can do such things!",
        musicPlayerOption3 = "It doesn't matter who I am. Better tell me, have you seen an old man here? Appears suddenly, mutters something mysterious",
        musicPlayerOption4 = "Rest in peace",
        musicPlayerOption5 = "Bye",
        
        
        -- Kanji Information
        oneInfo = "Символ числа 1",
        twoInfo = "Символ числа 2",
        threeIfo = "Символ числа 3",
        fourInfo = "Символ числа 4",
        fiveInfo = "Символ числа 5",
        sixInfo = "Символ числа 6",
        sevenInfo = "Символ числа 7",
        eightInfo = "Символ числа 8",
        nineInfo = "Символ числа 9",
        tenInfo = "Символ числа 10",
        hundredInfo = "Символ числа 100",
        thousandInfo = "Символ числа 1000",
        tenThousandInfo = "Символ числа 10000",
        yenInfo = "Символ японской валюты (Йена). Им также обозначаются Очки Кандзи",
        yearInfo = "Символ года. Ставится после числового выражения конкретного года"


    }
}

TEXTS = translations[language]

function M.setLang(lang)
    language = lang
    TEXTS = translations[language]
    ITEM_DB.init() -- update lang for items
end

function M.getLang()
    return language
end

return M