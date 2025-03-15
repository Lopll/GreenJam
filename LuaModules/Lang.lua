local M = {}

local language = "RU"

local translations = 
{
    RU = 
    {
        invWall = "Мне туда не нужно"
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