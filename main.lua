require "player"
require "basket"

function love.load()
    gamePlayer = Player:new()
    gameBasket = Basket:new()
end

function love.draw()
    gamePlayer:draw()
    -- carrotManager:draw()
    gameBasket:draw()

end

function love.update()
    gamePlayer:update()
    -- carrotManager:update()
    gameBasket:update()

end

function love.keypressed( key, scancode, isrepeat )
    if key == "escape" then
        love.event.quit()
    end

end
