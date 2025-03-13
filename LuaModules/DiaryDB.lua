local DiaryDB_Module = {}

local EMOTIONS = {DEF = hash("Default"), HAP = hash("Happy"), PIS = hash("Pissed"), 
        SUR = hash("Surprised"), UNI = hash("Unimpressed"), UNS = hash("Unsure")}

local notes = 
{
    RU = 
    {
        [1] = 
        {
            label = "Что?!",
            info  = "Я в непонятной комнате. Здесь нашлась сумка с пустым дневником и кистью. Буду вести записи на всякий случай...",
            emotion = EMOTIONS.UNS
        },
        [2] = 
        {
            label = "Сон",
            info  = "В одной из комнат нашёлся спальный мешок, думаю, немного сна поможет мне сохранить полученные знания",
            emotion = EMOTIONS.DEF
        },
        [3] = 
        {
            label = "Рисование",
            info  = "Кажется, кисть из сумки обладает какой-то силой, наделяющей специальные символы особыми свойствами",
            emotion = EMOTIONS.SUR
        },
        [4] = 
        {
            label = "Оно... живое?",
            info  = "В очередной комнате вижу какое-то подобие робота и торгового автомата. Надеюсь, найду применение непонятным монетам, а то их становится всё больше",
            emotion = EMOTIONS.UNS
        },
        [5] =
        {
            label = "Переливание",
            info = "Опять вижу чан с непонятной жидкостью. Все двери заблокированы, придётся, достигать необходимого уровня заполнения чана",
            emotion = EMOTIONS.UNI
        },
        [6] =
        {
            label = "Свобода?",
            info = "Я вижу лестницу! Очень надеюсь, что она поможет мне выбраться из этого подвала. Надоело смотреть на одни и те же стены.",
            emotion = EMOTIONS.HAP
        },
        [7] =
        {
            label = "Свобода. Почти.",
            info = "Я действительно на улице. Тут есть несколько зданий, вдалеке виднеются какие-то заводские времянки. Хоть бы тут было безопасно...",
            emotion = EMOTIONS.DEF
        },
        [8] =
        {
            label = "А где все?",
            info = "Какие-то тут сильно заросшие территории для завода. Всё будто бы заброшено, вокруг ни души, кроме странного деда. Иногда он пугает меня.",
            emotion = EMOTIONS.UNS
        },
        [9] =
        {
            label = "Музыка",
            info = "Здесь стоит музыкальный проигрыватель, который работает даже с выдернутым из розетки (их тут нет) шнуром. Я впервые такое вижу. Офигенный бумбокс!",
            emotion = EMOTIONS.SUR
        },
        [10] =
        {
            label = "Простор",
            info = "Сейчас передо мной лежит 3 пути. Что-то мне подсказывает, что понадобится изучить их все, если я хочу однажды вернуться домой (а я хочу и даже очень!)",
            emotion = EMOTIONS.HAP
        },
        [11] =
        {
            label = "Чёртовы ящики",
            info = "Опять и опять мне встречаются деревянные ящики. У создателей этого места совсем нет фантазии что ли?! (без негатива с негативом)",
            emotion = EMOTIONS.PIS
        },
        [12] =
        {
            label = "Новый символ",
            info = "Символ, который помог открыть дверь в это здание, пишется здесь после длинных последовательностей цифр. Место похоже на архив. Может, символ используют для обозначения года?",
            emotion = EMOTIONS.UNS
        }
    },
    EN =
    {
        [1] = 
        {
            label = "What?!",
            info  = "I am in a strange room. Here I found a sack with an empty diary and a brush. I'll keep notes just in case...",
            emotion = EMOTIONS.UNS
        },
        [2] = 
        {
            label = "Sleep",
            info  = "In one of the rooms I found a sleeping bag, I think, a little sleep will help to save the knowledge I got",
            emotion = EMOTIONS.DEF
        },
        [3] = 
        {
            label = "Drawing",
            info  = "It seems that the brush from the sack has some power, giving special characters a mysterious properties",
            emotion = EMOTIONS.SUR
        },
        [4] = 
        {
            label = "Is it... alive?",
            info  = "In another room I see some kind of robot and vending machine. Hopefully, I will find some use for mystery coins, because they are becoming more",
            emotion = EMOTIONS.UNS
        },
        [5] =
        {
            label = "Transfer",
            info = "I see a vat with an unknown liquid again. All doors are blocked, seems like I'll have to fill the vat to the required level",
            emotion = EMOTIONS.UNI
        },
        [6] =
        {
            label = "Freedom?",
            info = "I see the stairs! I really hope it will help me get out of this basement. I'm tired of looking at the same walls.",
            emotion = EMOTIONS.HAP
        },
        [7] =
        {
            label = "Freedom. Almost.",
            info = "I'm really outside. There are several buildings here, some temporary factory buildings are visible in the distance. At least it would be safe here...",
            emotion = EMOTIONS.DEF
        },
        [8] =
        {
            label = "Where is everyone?",
            info = "Some overgrown factory territory here. Everything seems abandoned, not a soul around, except for some strange old man. Sometimes he scares me.",
            emotion = EMOTIONS.UNS
        },
        [9] =
        {
            label = "Music",
            info = "There is a music player here that works even with the cord unplugged (there are no sockets around). I've never seen anything like that. Awesome boombox!",
            emotion = EMOTIONS.SUR
        },
        [10] =
        {
            label = "Space",
            info = "There are 3 paths in front of me right now. Something tells me that I have to explore all of them if I want to return home someday (and I want to, very much so!)",
            emotion = EMOTIONS.HAP
        },
        [11] =
        {
            label = "Damn crates",
            info = "Again and again I come across wooden crates. Do the creators of this place have no imagination at all?! (no offence.. nevermind, all offence)",
            emotion = EMOTIONS.PIS
        },
        [12] =
        {
            label = "New symbol",
            info = "I keep seeing the symbol that helped open the door to this building placed after a long series of numbers. The place looks like an archive. Maybe the symbol is used to indicate the year?",
            emotion = EMOTIONS.UNS
        }
    }
}


function DiaryDB_Module.getNote(language, n)
    return notes[language][n]
end

return DiaryDB_Module