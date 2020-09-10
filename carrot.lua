Carrot={}

function Carrot:new(x,y)
    o = Collidable:new (x, y, 64, 64)

    setmetatable(o, self)
    self.__index = self
    return o
end

function Carrot:update()
end

function Carrot:draw()
    love.graphics.rectangle("fill", self.x, self.y, 64, 64)
end

