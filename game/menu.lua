love.graphics.setDefaultFilter("nearest", "nearest")
height = love.graphics.getHeight()
width = love.graphics.getWidth()
i = 1
bgMenu = love.graphics.newImage('img/menuBG.jpg')
fontFight = love.graphics.setNewFont('assets/FIGHTT3_.ttf',48)
instruc = love.graphics.setNewFont("assets/Instructions.ttf",28)
menuSelect = {
    "Play\n\n",
    "options\n\n",
    "quit\n\n",
    "credits",
y = 250,
}


function love.load()


end


function love.update(dt)

end



function love.draw()
    love.graphics.draw(bgMenu, width/2, height/2 , 0, 3, 3,bgMenu:getWidth()/2, bgMenu:getHeight()/2)

    love.graphics.setColor(1, 1, 1)
    love.graphics.setFont(instruc)
    love.graphics.printf("press 'Z' to up, press 'S' to down, 'Enter' to select", 80, 160, 180, 'left')

    love.graphics.printf("press ' < ' to back", width - 220, height - 50, 200, 'right')


    love.graphics.setFont(fontFight)
    love.graphics.printf(menuSelect[i], 100, menuSelect.y, 300, 'left')

end


function love.keypressed(key)
    if(key == 's')then
        i = i + 1
        print(key)
    end

    if(key == 'z')then
        i = i - 1
    end
    if(i > #menuSelect)then
        i = #menuSelect
    end
    if(i<=1)then
        i = 1
    end

    if(key == "return" and i == 1)then
        -- require('game/playerSelection')
        require('game/play')

    elseif( (key == "escape") or (i == 3 and key == "return"))then
        love.event.quit()

    elseif(key == "return" and i == 4)then
        require('info')
    else
        require('game/menu')
    end
end
