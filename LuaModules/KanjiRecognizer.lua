local M = {}

function M.init()
    local jsonString = sys.load_resource("/res/kanjiCodes.json")
    M.jsonTable = json.decode(jsonString) 
    -- pprint(M.jsonTable)
end

function M.getKanjiTable()
    return M.jsonTable
end

function M.test()
    -- M.init()
    -- print("AAAAAAAAAAAAA")
end

function M.pointsPositions(points)
    local result = {}
    for i = 1, #points do
        result[i] = gui.get_position(points[i])
    end
    return result
end

-- gets code of the stroke by vector angle. Have numeric and letter modes
function getCodeByAngle(isCodeLetter, angle)
    local result = ""
    if isCodeLetter then
        if angle > 0 then
            result = "B"
        elseif angle < 0 then
            result = "A"
        end  
    else
        if angle >= -20 and angle < 30 then
            result = "1"
        elseif angle >= 30 and angle < 90 then
            result = "2"
        elseif angle >= 90 and angle < 170 then
            result = "3"
        elseif angle >= 170 or angle < -150 then
            result = "4"
        elseif angle >= -150 and angle < -80 then
            result = "5"
        elseif angle >= -80 and angle < -20 then
            result = "6"
        end
    end
    return result
end

-- gets direction of given vector, direction is 1 or -1
function getRudeDirFromVector(vector)
    -- axes rude directions
    local dirX = vector.x / math.abs(vector.x)
    local dirY = vector.y / math.abs(vector.y)
    
    -- nan protection
    if dirX ~= dirX then dirX = 1 end
    if dirY ~= dirY then dirY = 1 end
    
    return vmath.vector3(dirX, dirY, 0)
end

-- takes table of points and returns recognized symbol
function M.recognizeStroke(prevStrokeEnd, points)
    -- don't recognize small strokes (abuse protection)
    local threshold = 10 
    local precisionTestCounts = 20 -- count of point taken for test from all points
    local testPrecision = 15 -- precision in percentage
    local angle = 160 -- slope angle check

    -- firstPoint and lastPoint are used for line direction of the drawing
    -- point2 is used to detect angles in one stroke
    local firstPoint = points[1]
    local lastPoint = points[#points]
    testPrecision = testPrecision / 100
    -- define composition code
    local compCode
    if prevStrokeEnd ~= nil then
        -- vector from the end of the prev stroke to point 1
        local compDir = firstPoint - prevStrokeEnd
        local compVec = vmath.length(compDir)
        if compVec < threshold/2 then return {strokeCode = "-1", compCode = "-1"} end
        
        -- direction on y axis (1 or -1)
        local compYDir = compDir.y / math.abs(compDir.y)
        if compYDir ~= compYDir then compYDir = 1 end -- check for nan
        
        -- slope angle of the composition vector 
        local compAngle = compYDir * math.deg(math.acos(compDir.x/compVec))
        -- code of the stroke
        compCode = getCodeByAngle(false, compAngle)
        -- print("CompositionCode")
        -- print(compCode)
    end
    
    
    -- define stroke code
    -- direction of an a
    local dir = lastPoint - firstPoint
    -- vector from point1 to point3
    local a = vmath.length(dir)
    if a < threshold then return {strokeCode = "-1", compCode = "-1"} end
    
    -- direction on y axis (1 or -1)
    local numRudeDir = getRudeDirFromVector(dir)
    
    -- angle for numeric encoding
    -- slope angle of vector a
    local numAngle = numRudeDir.y * math.deg(math.acos(dir.x/a))
    -- code of the stroke
    local strokeCode = getCodeByAngle(false, numAngle)
    

    local delta = math.ceil((#points-#points*2*testPrecision) / precisionTestCounts)
    for key=math.ceil(#points*testPrecision), math.ceil(#points-#points*testPrecision), delta do
        local slopeTestPoint = points[key]
                -- vector from point1 to point2
        local b = vmath.length(slopeTestPoint - firstPoint)
        -- vector from point2 to point3
        local c = vmath.length(lastPoint - slopeTestPoint)
        
        -- calc letter encoding
        -- angle between b and c
        local letAngle = math.deg(math.acos((b*b + c*c - a*a )/(2 * b * c)))
        
        if letAngle < angle then
            -- add letter encoding
            strokeCode = strokeCode..getCodeByAngle(true, numRudeDir.x)
            print("big slope: "..tostring(letAngle))
            print("points count: "..tostring(#points))
            print("first point: "..tostring(firstPoint))
            print("first point in slope test: "..tostring(points[math.ceil(#points*testPrecision/100)]))
            print(tostring(key).." point: "..tostring(slopeTestPoint))
            print("last point: "..tostring(lastPoint))
            break
        end
    end
    -- print("StrokeCode")
    -- print(strokeCode)
    return {strokeCode = strokeCode, compCode = compCode}
end

-- gets kanji from json table by given name
function M.getKanjiByName(name)
    local result = {}
    for key, value in pairs(M.jsonTable) do
        if hash(value.name) == name then result = value end
    end
    
    return result
end

-- gets kanji from json table by given kanji code
function M.getKanjiByCode(code)
    local result = {}
    for key, value in pairs(M.jsonTable) do
        if value.code == code then result = value break end
    end
    
    return result
end

-- check if given kanji code and composition code are valid/exists in kanji table
function M.isValidKanjiCode(symbolCode, compositionCode)
    local result = {false, false}
    
    for key, value in pairs(M.jsonTable) do
        if value.code == symbolCode  then
            result[1] = true
            if value.compositionCode == compositionCode then
                result[2] = true
                break
            end
        end
    end
    
    return result
end

return M


