love.graphics.getDefaultFilter("nearest")

local x = 0
local y = 0
local height = love.graphics.getHeight()
local width = love.graphics.getWidth()

local listSprite = {}
local player = {}

-- player = love.graphics.newImage('img/ninjaCyborg_sansF.png')

function createPlayer(pImg,px, py)
    sprite = {

        x = px, 
        y = py, 
        sx = 1,
        sy = 1,
        img = love.graphics.newImage("img/"..pImg..".png"),
        
        curentFrame = 1,
        line = 1,
        col = 1   
    }
    sprite.l = sprite.img:getWidth()
    sprite.h = sprite.img:getWidth()
    
    table.insert(listSprite, sprite)

    return sprite
end

function move(dt)

    if(love.keyboard.isDown("d"))then
        player.x = player.x + 50 * dt 
    end
    if(love.keyboard.isDown("q"))then
        player.x = player.x - 50 * dt  
    end
    if(love.keyboard.isDown("s"))then
        player.y = player.y + 5
    end
    if(love.keyboard.isDown("z"))then
        player.y = player.y - 5 
    end
end


function init()
    player = createPlayer("ninja", 50,100)
end


function love.load()
    init()
end

function love.update(dt)
move(dt)
    
end


function love.draw()
    -- love.graphics.draw(player, 0, 0, 0, 4, 4)
    local n = 1, #listSprite do
        local spr = listSprite[n]
        love.graphics.draw(spr.img, spr.x, spr.y, 0, 3, 3, spr.l/2, spr.h)
    end
end