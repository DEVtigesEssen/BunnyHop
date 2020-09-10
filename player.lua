Player={}

function Player:new()
    o = Collidable:new(0, 0, 64, 64)
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
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
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
    local didCollide=Collidable.didCollide(self, gameCarrot)
    if didCollide then 
        self.carrotCount=self.carrotCount+1
    end
end

