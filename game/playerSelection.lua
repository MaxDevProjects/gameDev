-- require("game/menu")
fontFight = love.graphics.setNewFont('assets/FIGHTT3_.ttf',48)

local case = {}


function love.load()
    local c, d
    for c = 1, 4 do
        case[c] = {}
    end
    case[1].isActive = true
    case.height  = 128
    case.width = 128

end

function love.update(dt)

end

function love.draw()
    love.graphics.setBackgroundColor(.7, .3, .4)

    love.graphics.setFont(fontFight)
    love.graphics.printf("character selection",50 ,50, 400, 'left')
    
    
    local c 
    local cx = ((love.graphics.getWidth()/4) - (case.width /4)) / 4
    
    for c=1, 4 do
        love.graphics.rectangle("line", cx + cx/2, 300, case.width, case.height)
        cx = cx + case.width
    end
end

function love.keypressed(key)
end