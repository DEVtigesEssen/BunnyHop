require "collidable"
require "player"
require "basket"
require "carrot"

function love.load()
    gameCarrot = Carrot:new(128, 128)
    gamePlayer = Player:new()
    gameBasket = Basket:new()
end

function love.draw()
    gamePlayer:draw()
    -- carrotManager:draw()
    gameBasket:draw()
    gameCarrot:draw()

end

function love.update()
    gamePlayer:update()
    -- carrotManager:update()
    gameBasket:update()
    gameCarrot:update()

end

function love.keypressed( key, scancode, isrepeat )
    if key == "escape" then
        love.event.quit()
    end
    gamePlayer:keypressed(key, scancode, isrepeat )
end
