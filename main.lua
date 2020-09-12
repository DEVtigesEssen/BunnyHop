require "gamestatemanager"
require "spritesheets"
require "collidable"
require "player"
require "basket"
require "carrot"
require "carrotmanager"
require "timer"

function love.load()
    gameStateManager = GameStateManager:new()
    gameTimer = Timer:new(15)
    gameCarrotManager = CarrotManager:new()
    gameCarrotManager:spawnInitialAmountCarrots()
    gamePlayer = Player:new()
    gameBasket = Basket:new(128*2,128,2)
end

function love.draw()
    local currentState = gameStateManager:currentState()
    if currentState == 1 then
        --
    elseif currentState == 2 then
        love.graphics.draw(background, 0, 0)
        gamePlayer:draw()
        gameCarrotManager:draw()
        gameBasket:draw()
        gameTimer:draw()
    elseif currentState == 3 then
        love.graphics.print("You've captured ".. gamePlayer.carrotCount .. " Carrots",
        (love.graphics.getWidth()/2)-160, (love.graphics.getHeight()/2)-160, 0, 3, 3)
    end
end

function love.update(dt)
    local currentState = gameStateManager:currentState()
    if currentState == GameStates.TITLE then
    elseif currentState == GameStates.INGAME then
        gamePlayer:update()
        gameCarrotManager:update()
        gameBasket:update()
    elseif currentState == GameStates.SCORE_END then
    end
    gameTimer:update(dt)
end

function love.keypressed( key, scancode, isrepeat )
    local currentState = gameStateManager:currentState()
    if key == "escape" then
        love.event.quit()
    end
    if currentState == GameStates.INGAME then
        gamePlayer:keypressed(key, scancode, isrepeat )
    end
    if currentState == GameStates.TITLE or currentState == GameStates.SCORE_END then
        if key == "space" then
            gameStateManager:updateGameState(GameStates.INGAME)
            gameTimer:start()
            gamePlayer:updatePosition(0, 0)
        end
    end
end
