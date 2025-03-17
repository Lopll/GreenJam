local M = {}

local language = "EN"

local translations = 
{
    RU = 
    {
        -- player
        invWall = "Мне туда не нужно",
        timeControl = "Я так никуда не успею... Душу готов продать, чтобы не опоздать!",
        what = "Это ещё что...",
        where = "А дальше куда? Могу только назад пойти и поискать другую дорогу",
        whatHap = "Что в этом городе вообще происходит?! На нас напали войска кринжа?",
        startAgain = "Я тут уже был... криииинж",
        metro = "Наконец-то я добрался до метро! А... мне же теперь ещё и там бродить...",
        over = "Нееет, я опоздал. Мне даже не помогло управление временем. Начну бегать по утрам!",
        start = "Погнали!",
        -- tips
        timeControlEnabling = "Услышал тебя, родной. Держи, понажимай 1, 2, 3. Договор потом обкашляем",
        directions = "О, а тут тебе надо идти на Север, Юг, Вост... А не, Запад, Восток, Юг... Точнее Запад, Юг, Восток, Юг, Запад, Север",
        west = "Запад",
        down = "Ну тут ряльно вниз надо",
        haha = "ХА ХА ХА ХА ХА",
        
        hook = "Привет, солнышко! Сегодня освободилась пораньше, поэтому можем встретиться, если ты, конечно, хочешь... В любом случае надеюсь, что ты придёшь без опозданий, я нетерпелива...",
        
        pause = "Пауза",
        author = "Автор",
        thanks = "Спасибо!",
        exit = "Выход",
        me = "Марченко Максим"
        
    },
    EN = 
    {
        invWall = "I dont need to go there",
        timeControl = "I won’t be able to go anywhere in time... I am ready to sell my soul for time!" ,
        what = "Thats not...",
        where = "And where I should go? I can only go back and look for another way.",
        whatHap = "Whats going on in this town anyway?! We’ve been attacked by the army of Cringe?" ,
        startAgain = "I was already here... bruh",
        metro = "I finally got to the subway! Oh... I have to walk there now...",
        over = "No, Im late. Even time managment didn't help me. I will start jogging in the morning!" ,
        start = "Lets go!" ,
        
        timeControlEnabling = "Heard you, honey. Hold on, press 1, 2, 3. We will talk about our contract later",
        directions = "Oh, you have to go North, South, West... No, West, East, South... More precisely West, South, East, South, West, North,",
        west = "West",
        down = "Go down",
        haha = "HA HA HA HA HA",
        
        hook = "Hello, sweetie! Today I was free earlier, so we can meet, if you want to... In any case, I hope you will come without delay, Im impatient...",
        
        pause = "Pause",
        author = "Author",
        thanks = "Thanks!",
        exit = "Exit",
        me = "Marchenko Maksim"
    }
}

TEXTS = translations[language]

function M.setLang(lang)
    language = lang
    TEXTS = translations[language]
    ITEM_DB.init() -- update lang for items
end

function M.getTextByHash(h)
        local result
        for k,v in pairs(TEXTS) do
                if hash(k) == h then
                        result = v
                end
        end
        return result
end

function M.getLang()
    return language
end

return M