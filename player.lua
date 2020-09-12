Player={}

function Player:new()
    o = Collidable:new(0, 0, 64, 64, "player")
    o.carrotCount=0

    setmetatable(o, self)
    self.__index = self
    return o
end

function Player:update()
end

function Player:updatePosition(x,y)
    self.x=x
    self.y=y
end

function Player:draw()
    love.graphics.draw(spritesheet, bunny_sprite, self.x, self.y)

    love.graphics.print(self.carrotCount)
end

function Player:keypressed(key, scancode, isrepeat)
    if key== "w" then
        self:updatePosition(self.x,self.y-64) 
    elseif key== "s" then
        self:updatePosition(self.x,self.y+64) 
    elseif key== "a" then
        self:updatePosition(self.x-64,self.y) 
    elseif key== "d" then
        self:updatePosition(self.x+64,self.y) 
    end
    -- local didCollide=Collidable.didCollide(self, )
    self:didCollideWithAnything()
end


function Player:didCollideWithAnything()
    for i=1, table.getn(all_collidables) do
        local otherCollidable = all_collidables[i]
        if Collidable.didCollide(self, otherCollidable) then
            if otherCollidable.tag == 'carrot' then
                gameCarrotManager:pickupCarrot(otherCollidable)
                self.carrotCount = self.carrotCount + 1
            end
            if otherCollidable.tag == 'basket' then
                gameStateManager:updateGameState(GameStates.SCORE_END)
                gameTimer:stop()
            end
        end
    end
end
