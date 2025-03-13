local M = {}

local kanjiSymbols = {} -- collection of all kanji, devided into strokes

local EMPTY = vmath.vector3(0, 0, 0)

kanjiSymbols[hash("1")] = {
    {
        position = {
            vmath.vector3(-75, 1, 0), vmath.vector3(-25, 2.5, 0),
            vmath.vector3(5, 5, 0), vmath.vector3(35, 7.5, 0),
            vmath.vector3(75, 10, 0)
        }
    },
    info = TEXTS.oneInfo
}
kanjiSymbols[hash("2")] = {
    {
        position = {
            vmath.vector3(-56, 48, 0), vmath.vector3(0, 52, 0),
            vmath.vector3(51, 54, 0)
        }
    }, {
        position = {
            vmath.vector3(-86, -53, 0), vmath.vector3(0, -48, 0),
            vmath.vector3(85, -44, 0)
        }
    },
    info = TEXTS.twoInfo
}

kanjiSymbols[hash("3")] = {
    {
        position = {
            vmath.vector3(-52, 66, 0), vmath.vector3(0, 70, 0),
            vmath.vector3(63, 74, 0)
        }
    }, {
        position = {
            vmath.vector3(-52, 0, 0), vmath.vector3(0, 3, 0),
            vmath.vector3(54, 5, 0)
        }
    }, {
        position = {
            vmath.vector3(-84, -70, 0), vmath.vector3(0, -66, 0),
            vmath.vector3(87, -63, 0)
        }
    },
    info = TEXTS.threeInfo
}

kanjiSymbols[hash("4")] = {
    {
        position =
        {
            vmath.vector3(-82, 47, 0), vmath.vector3(-75, 0, 0),
            vmath.vector3(-68.5, -58, 0)
        }
    }, {
        position = {
            vmath.vector3(-82, 47, 0), vmath.vector3(0, 51, 0),
            vmath.vector3(54, 54, 0), vmath.vector3(77, 50, 0),
            vmath.vector3(77, 30, 0), vmath.vector3(62.5, -50, 0)
        }
    }, {
        position = {
            vmath.vector3(-30, 49, 0), vmath.vector3(-32, 29, 0),
            vmath.vector3(-41, 8, 0), vmath.vector3(-62, -17, 0)
        }
    }, {
        position = {
            vmath.vector3(12, 51, 0), vmath.vector3(14, 14, 0),
            vmath.vector3(18, 3, 0), vmath.vector3(61, 3, 0)
        }
    }, {
        position = {
            vmath.vector3(-68, -50, 0), vmath.vector3(0, -47, 0),
            vmath.vector3(63, -46, 0)
        }
    },
    info = TEXTS.fourInfo
}

kanjiSymbols[hash("5")] = {
    {
        position =
        {
            vmath.vector3(-45, 67, 0), vmath.vector3(0, 70, 0),
            vmath.vector3(54, 73, 0)
        }
    }, 
    {
        position = {
            vmath.vector3(5, 70, 0), vmath.vector3(-13, 0, 0),
            vmath.vector3(-38, -72, 0)
        }
    }, 
    {
        position = {
            vmath.vector3(-57, -1, 0), vmath.vector3(33, 5, 0), 
            vmath.vector3(49, 4, 0), vmath.vector3(33, -68, 0) 
        }
    }, 
    {
        position = {
            vmath.vector3(-87, -75, 0), vmath.vector3(0, -70, 0), 
            vmath.vector3(91, -67, 0)
        }
    },
    info = TEXTS.fiveInfo
}

kanjiSymbols[hash("5Vertical")] = {
    {
        position = {
            vmath.vector3(5, 70, 0), vmath.vector3(-13, 0, 0),
            vmath.vector3(-38, -72, 0)
        }
    }, 
    {
        position = {
            vmath.vector3(49, 4, 0), vmath.vector3(33, -68, 0) 
        }
    }
}

kanjiSymbols[hash("6")] = {
    {
        position =
        {
            vmath.vector3(-4, 78, 0),
            vmath.vector3(1, 34, 0)
        }
    }, 
    {
        position = {
            vmath.vector3(-80, 28, 0), vmath.vector3(1, 34, 0),
            vmath.vector3(85, 36, 0)
        }
    }, 
    {
        position = {
            vmath.vector3(-35, -8, 0), vmath.vector3(-45, -34, 0), 
            vmath.vector3(-80, -70, 0)
        }
    }, 
    {
        position = {
            vmath.vector3(35, -11, 0), vmath.vector3(60, -36, 0), 
            vmath.vector3(82, -70, 0)
        }
    },
    info = TEXTS.sixInfo
}

kanjiSymbols[hash("7")] = {
    {
        position =
        {
            vmath.vector3(-80, 7, 0), vmath.vector3(6, 18, 0),
            vmath.vector3(79, 25, 0)
        }
    }, 
    {
        position = {
            vmath.vector3(-22, 72, 0), vmath.vector3(-19, 48, 0),
            vmath.vector3(-12, -64, 0), vmath.vector3(4, -69, 0), 
            vmath.vector3(40, -68, 0), vmath.vector3(63, -58, 0),
            vmath.vector3(65, -44, 0)
        }
    },
    info = TEXTS.sevenInfo
}

kanjiSymbols[hash("Yen")] = {
    {
        position =
        {
            vmath.vector3(-68, 73, 0), vmath.vector3(-65, 0, 0),
            vmath.vector3(-65.5, -79, 0)
        }
    }, 
    {
        position = {
            vmath.vector3(-68, 73, 0), vmath.vector3(-2, 77, 0),
            vmath.vector3(51, 83, 0), vmath.vector3(67, 82, 0), 
            vmath.vector3(68, 69, 0), vmath.vector3(69, 0, 0),
            vmath.vector3(70, -68, 0), vmath.vector3(65, -79, 0),
            vmath.vector3(52, -71, 0)
        }
    },
    {
        position = {
            vmath.vector3(-2, 77, 0), vmath.vector3(-1, 35, 0),
            vmath.vector3(0, -3, 0)
        }
    },
    {
        position = {
            vmath.vector3(-64, -10, 0), vmath.vector3(0, -3, 0),
            vmath.vector3(68, 2, 0)
        }
    },
    info = TEXTS.yenInfo
}

kanjiSymbols[hash("8")] = {
    {
        position =
        {
            vmath.vector3(-36, 20, 0), vmath.vector3(-56, -20, 0),
            vmath.vector3(-89, -57, 0)
        }
    }, 
    {
        position = {
            vmath.vector3(-11, 59, 0), vmath.vector3(35, 1, 0),
            vmath.vector3(66, -39, 0), vmath.vector3(85, -51, 0)
        }
    },
    info = TEXTS.eightInfo
}

kanjiSymbols[hash("9")] = {
    {
        position =
        {
            vmath.vector3(-24, 82, 0), vmath.vector3(-31, 0, 0),
            vmath.vector3(-81, -68, 0)
        }
    }, 
    {
        position = {
            vmath.vector3(-83, 20, 0), vmath.vector3(0, 39, 0),
            vmath.vector3(27, 38, 0), vmath.vector3(12, -46, 0),
            vmath.vector3(16, -69, 0), vmath.vector3(43, -77, 0),
            vmath.vector3(83, -73, 0), vmath.vector3(91, -57, 0)
        }
    },
    info = TEXTS.nineInfo
}

kanjiSymbols[hash("10")] = {
    {
        position =
        {
            vmath.vector3(-85, 9, 0), vmath.vector3(0, 15, 0),
            vmath.vector3(86, 19, 0)
        }
    }, 
    {
        position = {
            vmath.vector3(-3, 90, 0), vmath.vector3(0, 15, 0),
            vmath.vector3(0, -90, 0)
        }
    },
    info = TEXTS.tenInfo
}

kanjiSymbols[hash("100")] = {
    {
        position =
        {
            vmath.vector3(-78, 73, 0), vmath.vector3(-4, 78, 0),
            vmath.vector3(76, 83, 0)
        }
    }, 
    {
        position = {
            vmath.vector3(-4, 78, 0), vmath.vector3(-10, 54, 0),
            vmath.vector3(-25, 26, 0)
        }
    }, 
    {
        position = {
            vmath.vector3(-47, 23, 0), vmath.vector3(-44, -23, 0),
            vmath.vector3(-43, -82, 0)
        }
    }, 
    {
        position = {
            vmath.vector3(-47, 23, 0), vmath.vector3(47, 30, 0),
            vmath.vector3(47, -16, 0), vmath.vector3(46, -77, 0)
        }
    }, 
    {
        position = {
            vmath.vector3(-44, -23, 0), vmath.vector3(0, -20, 0),
            vmath.vector3(47, -16, 0)
        }
    }, 
    {
        position = {
            vmath.vector3(-43, -82, 0), vmath.vector3(0, -76, 0),
            vmath.vector3(46, -77, 0)
        }
    },
    info = TEXTS.hundredInfo
}

kanjiSymbols[hash("1K")] = {
    {
        position =
        {
            vmath.vector3(34, 93, 0), vmath.vector3(0, 68, 0),
            vmath.vector3(-57, 52, 0)
        }
    }, 
    {
        position = {
            vmath.vector3(-87, 8, 0), vmath.vector3(4, 15, 0),
            vmath.vector3(91, 18, 0)
        }
    }, 
    {
        position = {
            vmath.vector3(0, 68, 0), vmath.vector3(4, 15, 0),
            vmath.vector3(5, -93, 0)
        }
    },
    info = TEXTS.thousandInfo
}

kanjiSymbols[hash("10K")] = {
    {
        position =
        {
            vmath.vector3(-82, 64, 0), vmath.vector3(-4, 70, 0),
            vmath.vector3(87, 75, 0)
        }
    }, 
    {
        position = {
            vmath.vector3(-12, 31, 0), vmath.vector3(63, 19, 0),
            vmath.vector3(44, -37, 0), vmath.vector3(6, -86, 0),
            vmath.vector3(-6, -75, 0)
        }
    }, 
    {
        position = {
            vmath.vector3(-4, 70, 0), vmath.vector3(-12, 31, 0),
            vmath.vector3(-42, -23, 0), vmath.vector3(-85, -68, 0)
        }
    },
    info = TEXTS.tenThousandInfo
}

kanjiSymbols[hash("Year")] = {
    {
        position =
        {
            vmath.vector3(-30, 91, 0), vmath.vector3(-40, 69, 0),
            vmath.vector3(-65, 42, 0)
        }
    }, 
    {
        position = {
            vmath.vector3(-40, 69, 0), vmath.vector3(6, 69, 0),
            vmath.vector3(60, 75, 0)
        }
    }, 
    {
        position = {
            vmath.vector3(-50, 25, 0), vmath.vector3(-42, 25, 0),
            vmath.vector3(8, 29, 0), vmath.vector3(54, 32, 0)
        }
    }, 
    {
        position = {
            vmath.vector3(-42, 25, 0), vmath.vector3(-41, 0, 0),
            vmath.vector3(-40, -23, 0)
        }
    }, 
    {
        position = {
            vmath.vector3(-83, -27, 0), vmath.vector3(-40, -23, 0),
            vmath.vector3(8, -19, 0), vmath.vector3(84, -17, 0)
        }
    }, 
    {
        position = {
            vmath.vector3(6, 69, 0), vmath.vector3(8, 29, 0),
            vmath.vector3(8, -19, 0), vmath.vector3(9, -90, 0)
        }
    },
    info = TEXTS.yearInfo
}

function M.GetKanji(kanji) return kanjiSymbols[kanji] end
return M
