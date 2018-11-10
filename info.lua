require("game/load")

e = 1
a = 0
vx = 0
vy = 50
font = love.graphics.newFont("assets/FIGHTT3_.ttf",30)
infos = {
    "#game#    \n\n\n\n\nRealised by : \nmaxCoder    \n\n\n\n\nStreet fighter like   \n\n\n\n\nGameCodeur game jam 18   \n\n\n\n\n\n\n\nFonts : \nFinght This - DaFont.com   \n\n\n\n\nSounds : \nUndifined now    \n\n\n\n\nGraphismes : \nundifined now  \n\n\n\n\n\n\n\n Follow me : \n@maxIndieDev / github : maxDevProjects \n https://maximemartin.pro ",
    x = 225,
    y = height - 20
}

function love.update(dt)
    -- delay
    a = a + 1
    if(a >= 1500) then
        a = 0
        infos.y = height + 50
    end
    infos.y = infos.y - vy * dt
end

function love.draw()
    love.graphics.setBackgroundColor(.1, .1, .1)
    love.graphics.setFont(font)
    love.graphics.printf(infos, infos.x, infos.y,300 , "center")
    love.graphics.print(a, 10, 10)
end