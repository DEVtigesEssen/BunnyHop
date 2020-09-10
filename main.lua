require "collidable"
require "player"
require "basket"
require "carrot"
require "timer"

function love.load()
    gameCarrot = Carrot:new(128, 128)
    gamePlayer = Player:new()
    gameBasket = Basket:new()
    gameTimer = Timer:new(3)
end

function love.draw()
    if gameTimer:isRunning() then
        gamePlayer:draw()
        -- carrotManager:draw()
        gameBasket:draw()
        gameCarrot:draw()
        gameTimer:draw()
    end
end

function love.update(dt)
    if gameTimer:isRunning() then
        gamePlayer:update()
        -- carrotManager:update()
        gameBasket:update()
        gameCarrot:update()
    end
    gameTimer:update(dt)
end

function love.keypressed( key, scancode, isrepeat )
    if key == "escape" then
        love.event.quit()
    end
    if gameTimer:isRunning() then
        gamePlayer:keypressed(key, scancode, isrepeat )
    end
end
