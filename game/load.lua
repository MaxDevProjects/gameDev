goMenu = false
i = 0
alpha = 0
loading= 0
height = love.graphics.getHeight()
width = love.graphics.getWidth()
alphaUp = true

loadingText = {"Le ", "langage ", "de ", "programmation ", ", " , "\n\non ", "s'en " , "bat ", "les ", "couilles ", "!"}
author =  "D. Mekersa"
font = love.graphics.newFont("assets/Instructions.ttf",30)

function love.update(dt)
if(alphaUp) then
    alpha = math.abs(alpha + 0.01)
    if(alpha > 1)then
        alpha = 1
        alphaUp = false
    end
end
if(alphaUp  == false)then
    alpha = math.abs(alpha - 0.01)
    if(alpha < 0) then
        alpha = 0
    end    
end


loading = loading +  0.5
if(loading >= 100)then
    loading = 100
    require('game/menu')
end
    
end


function love.draw()
    
    love.graphics.setBackgroundColor(0.9, .9, .9)

    love.graphics.setColor(0,0,0, 1)
    love.graphics.print(loading, 10, 10)
    
    -- love.graphics.setColor(0, 0, 0, 1)
    -- love.graphics.print(alpha, width - 50, height - 50)
    
    love.graphics.setFont(font)
    love.graphics.setColor(.05, .05, .3, alpha)
    love.graphics.print(loadingText, width/2/1.5, height/3,0,1,1)
    love.graphics.print(author , width/1.8, height/2,0,1,1 )

end

