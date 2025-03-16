local M = {}

local language = "RU"

local translations = 
{
    RU = 
    {
        -- player
        invWall = "Мне туда не нужно",
        timeControl = "Я так никуда не успею... Душу готов продать, чтобы не опоздать!",
        what = "Это ещё что...",
        where = "А дальше куда?",
        whatHap = "Что в этом городе вообще происходит?! На нас напали войска кринжа?",
        startAgain = "Я тут уже был... криииинж",
        metro = "Наконец-то я добрался до метро! А... мне же теперь ещё и там бродить...",
        -- tips
        timeControlEnabling = "Услышал тебя, родной. Держи, понажимай 1, 2, 3. Договор потом обкашляем",
        directions = "О, а тут тебе надо идти на Север, Юг, Вост... А не, Запад, Восток, Юг... Точнее Запад, Юг, Восток, Юг, Запад, Север",
        west = "Запад",
        down = "Ну тут ряльно вниз надо",
        haha = "ХА ХА ХА ХА ХА"
        
    },
    EN = 
    {

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