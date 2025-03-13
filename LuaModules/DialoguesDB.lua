local M = {}

local DIALOGUES = {}

-- table of dialogue variables, that used in some dialogues to show values from the code
local dialogueVariables = {}

-- structure ot the dialogues
-- DIALOGUES[hash(*name of the dialogue, by which dialogue initiator starts it*)]
-- phrases - table of the pharses by narrative dialogue initiator (trader, npc, etc.)
    -- phrases go by integer number, starting with 1.
    -- each pharse contains a text - string to show - and option - table of the options, which must be shown with this phrase
    -- to end dialogue mark phrase with negative (< 0) index
    -- phrases for dialogue ending might call some world event functions (they must be named like "function1" and so on with number change)
    -- function number is optional, function number = 0 will always hide kanji point counter
-- options - table of the options for the whole dialogue. Pharases take options from this table
    -- each option has a number as index which is used by phrases
    -- each option has a text to be shown and a phrase number (index of the phrase from phrases table)
    -- when option is chosen, the phrase by number, defined in chosen option, will be shown next


-- initializes dialogues (need to do init when change localization)
function M.init()
    DIALOGUES[hash("TethraBot")] =
    {
       phrases = 
       {
        [1] = 
        {
            text = TEXTS.tethraBotPhrase1,
            options = {1, 2, -1, -2}
        },
        [2] = 
        {
            text = TEXTS.tethraBotPhrase2,
            options = {1, -1, -2}
        },
        [3] = 
        {
            text = TEXTS.tethraBotPhrase3,
            options = {2, -1, -2}
        },
        [-1] = 
        {
            text = TEXTS.tethraBotEndPhrase1,
            options = {},
            functionNumber = 1
        },
        
        [-2] = 
        {
            text = TEXTS.tethraBotEndPhrase2,
            options = {},
            functionNumber = 0
        }
       },
       options =
       {
        [1] = 
        {
            text = TEXTS.tethraBotOption1,
            phrase = 3
        },
        [2] = 
        {
            text = TEXTS.tethraBotOption2,
            phrase = 2
        },
        [-1] = 
        {
            text = TEXTS.tethraBotEndOption1,
            phrase = -1
        },
        [-2] = 
        {
            text = TEXTS.tethraBotEndOption2,
            phrase = -2
        }
       }
    }
    
    
    DIALOGUES[hash("PchelIntro")] =
    {
       phrases = 
       {
        [1] = 
        {
            text = TEXTS.pchelIntro,
            options = {-1}
        },
        [-1] = 
        {
            text = TEXTS.pchelEnd,
            options = {}
        }
       },
       options =
       {
        [-1] = 
        {
            text = TEXTS.continue,
            phrase = -1
        }
       },
       voice = SOUNDS.pchelVoice
    }
    
    DIALOGUES[hash("PchelSettings")] =
    {
       phrases = 
       {
        [1] = 
        {
            text = TEXTS.pchelSettings,
            options = {-1}
        },
        [-1] = 
        {
            text = TEXTS.pchelEnd,
            options = {}
        }
       },
       options =
       {
        [-1] = 
        {
            text = TEXTS.continue,
            phrase = -1
        }
       },
       voice = SOUNDS.pchelVoice
    }
    
    DIALOGUES[hash("PchelMenu")] =
    {
       phrases = 
       {
        [1] = 
        {
            text = TEXTS.pchelMenuPhrase1,
            options = {1,2,-1}
        },
        [2] = 
        {
            text = TEXTS.pchelMenuPhrase2,
            options = {2,-1}
        },
        [3] = 
        {
            text = TEXTS.pchelMenuPhrase3,
            options = {1,-1}
        },
        [-1] = 
        {
            text = TEXTS.pchelEnd,
            options = {}
        }
       },
       options =
       {
        [1] = 
        {
            text = TEXTS.pchelMenuOption1,
            phrase = 2
        },
        [2] = 
        {
            text = TEXTS.pchelMenuOption2,
            phrase = 3
        },
        [-1] = 
        {
            text = TEXTS.tethraBotEndOption2,
            phrase = -1
        }
       },
       voice = SOUNDS.pchelVoice
    }
    
    DIALOGUES[hash("PchelDemo")] =
    {
       phrases = 
       {
        [1] = 
        {
            text = TEXTS.pchelDemoEnd,
            options = {-1}
        },
        [-1] = 
        {
            text = TEXTS.pchelEnd,
            options = {}
        }
       },
       options =
       {
        [-1] = 
        {
            text = TEXTS.continue,
            phrase = -1
        }
       },
       voice = SOUNDS.pchelVoice
    }
    
    DIALOGUES[hash("LoreNote1")] = 
    {
        phrases =
        {
            [1] =
            {
                text = TEXTS.loreNote1Phrase1,
                options = {1, 2}
            },
            [2] =
            {
                text = TEXTS.loreNote1Phrase2,
                options = {3}
            },
            [-1] =
            {
                text = "",
                options = {}
            }
        },
        options =
        {
            [1] =
            {
                text = TEXTS.loreNote1Option1,
                phrase = 2
            },
            [2] = 
            {
                text = TEXTS.loreNote1Option2,
                phrase = 2
            },
            [3] =
            {
                text = TEXTS.continue,
                phrase = -1
            }
        }
    }
    
    DIALOGUES[hash("PchelOneQuestion")] =
    {
        phrases = 
        {
            [1] = 
            {
                text = TEXTS.pchelOneQuestionPhrase1,
                options = {1, 2, 5}
            },
            [2] = 
            {
                text = TEXTS.pchelOneQuestionPhrase2,
                options = {6}
            },
            [3] = 
            {
                text = TEXTS.pchelOneQuestionPhrase3,
                options = {3, 4}
            },
            [4] = 
            {
                text = TEXTS.pchelOneQuestionPhrase4,
                options = {6}
            },
            [-1] = 
            {
                text = TEXTS.pchelEnd,
                options = {}
            }            
        },
        options =
        {
            [1] =
            {
                text = TEXTS.tethraBotOption1,
                phrase = 2
            },
            [2] =
            {
                text = TEXTS.pchelOneQuestionOption1,
                phrase = 3
            },
            [3] =
            {
                text = TEXTS.pchelOneQuestionOption2,
                phrase = -1
            },
            [4] =
            {
                text = TEXTS.pchelOneQuestionOption3,
                phrase = 3
            },
            [5] =
            {
                text = TEXTS.pchelOneQuestionOption4,
                phrase = 4
            },
            [6] =
            {
                text = TEXTS.pchelEnd,
                phrase = -1
            }
        },
        voice = SOUNDS.pchelVoice
    }
    
    DIALOGUES[hash("OfficeBot")] =
    {
       phrases = 
       {
        [1] = 
        {
            text = TEXTS.officeBotPhrase,
            options = {-1}
        },
        [-1] = 
        {
            text = TEXTS.officeBotEndPhrase,
            options = {}
        }
       },
       options =
       {
        [-2] = 
        {
            text = TEXTS.continue,
            phrase = -1
        }
       }
    }
    
    DIALOGUES[hash("Level2Quest_Incomplete")] =
    {
       phrases = 
       {
        [1] = 
        {
            text = TEXTS.l2q1_phrase1,
            options = {-1, -2}
        },
        [-1] = 
        {
            text = TEXTS.tethraBotEndPhrase2,
            options = {}
        }
       },
       options =
       {
        [-1] = 
        {
            text = TEXTS.l2q1_option1,
            phrase = -1
        },
        [-2] = 
        {
            text = TEXTS.l2q1_option2,
            phrase = -1
        }
       }
    }
    
    DIALOGUES[hash("Level2Quest_AlmostComplete")] =
    {
       phrases = 
       {
        [1] = 
        {
            text = TEXTS.l2q1_phrase2,
            options = {-1, -2}
        },
        [-1] = 
        {
            text = TEXTS.tethraBotEndPhrase2,
            options = {}
        }
       },
       options =
       {
        [-1] = 
        {
            text = TEXTS.l2q1_option1,
            phrase = -1
        },
        [-2] = 
        {
            text = TEXTS.l2q1_option2,
            phrase = -1
        }
       }
    }
    
    DIALOGUES[hash("Level2Quest_Complete")] =
    {
       phrases = 
       {
        [1] = 
        {
            text = TEXTS.l2q1_phrase3,
            options = {1, -1}
        },
        [2] = 
        {
            text = TEXTS.l2q1_phrase4,
            options = {-2}
        },
        [-1] = 
        {
            text = TEXTS.l2q1_phrase5,
            options = {}
        }
        ,
        [-2] = 
        {
            text = TEXTS.pchelOneQuestionPhrase3,
            options = {},
            functionNumber = 1
        }
       },
       options =
       {
        [1] = 
        {
            text = TEXTS.l2q1_option3,
            phrase = 2
        },
        [-1] = 
        {
            text = TEXTS.l2q1_option4,
            phrase = -1
        },
        [-2] = 
        {
            text = TEXTS.pchelOneQuestionPhrase3,
            phrase = -2
        }
       }
    }
    
    
    DIALOGUES[hash("AliveMusicPlayer")] =
    {
       phrases = 
       {
        [1] = 
        {
            text = TEXTS.musicPlayerPhrase1,
            options = {1,2,3}
        },
        [2] = 
        {
            text = TEXTS.musicPlayerPhrase2,
            options = {-1, -2}
        },
        [3] = 
        {
            text = TEXTS.musicPlayerPhrase3,
            options = {-2, -3}
        },
        [4] = 
        {
            text = TEXTS.musicPlayerPhrase4,
            options = {-1, -2}
        },
        [-1] = 
        {
            text = TEXTS.pchelOneQuestionPhrase3,
            options = {}
        }
       },
       options =
       {
        [1] = 
        {
            text = TEXTS.musicPlayerOption1,
            phrase = 2
        },
        [2] = 
        {
            text = TEXTS.musicPlayerOption2,
            phrase = 3
        },
        [3] = 
        {
            text = TEXTS.musicPlayerOption3,
            phrase = 4
        },
        [-1] = 
        {
            text = TEXTS.musicPlayerOption4,
            phrase = -1
        },
        [-2] = 
        {
            text = TEXTS.musicPlayerOption5,
            phrase = -1
        }
       }
    }
    
    -- this will initialize dialogues with variables, variables are set with a method
    M.varInit()
end

-- init function specifically for dialogues that uses dialogue variables (call when variables are changed)
function M.varInit()
    DIALOGUES[hash("VendingMachine")] =
    {
       phrases = 
       {
        [1] = 
        {
            text = tostring(dialogueVariables[hash("ItemName")]) .. TEXTS.vendingMachinePhrase1_1 
            .. tostring(dialogueVariables[hash("ItemPrice")]) .. " " .. TEXTS.kanjiPointsDialogue,
            options = {-1, -2}
        },
        [-1] = 
        {
            text = TEXTS.vendingMachinePhrase2,
            options = {},
            functionNumber = 1
        },
        [-2] = 
        {
            text = TEXTS.tethraBotEndPhrase2,
            options = {},
            functionNumber = 0
        }
       },
       options =
       {
        [-1] = 
        {
            text = TEXTS.tethraBotEndOption1,
            phrase = -1
        },
        [-2] = 
        {
            text = TEXTS.tethraBotEndOption2,
            phrase = -2
        }
       }
    }
end

-- return dialogue by hashed name
function M.getDialogue(dialogueName)
    return DIALOGUES[dialogueName]
end

-- sets dialogue variable by hashed name
function M.setDialogueVariable(varHash, value)
    dialogueVariables[varHash] = value
end

return M