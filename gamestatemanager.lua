GameStateManager = {}

GameStates = {
    TITLE = 1,
    INGAME = 2,
    SCORE_END = 3,
}

function GameStateManager:new()
    o = {}
    o.currentGameState = GameStates.TITLE

    setmetatable(o, self)
    self.__index = self 
    return o
end

function GameStateManager:draw()
end

function GameStateManager:update()
end

function GameStateManager:currentState()
    return self.currentGameState
end

function GameStateManager:updateGameState(gameState)
    self.currentGameState = gameState
end
