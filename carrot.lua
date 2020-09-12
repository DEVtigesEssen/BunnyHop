Carrot={}

function Carrot:new(x,y)
    o = Collidable:new (x, y, 64, 64, "carrot")

    setmetatable(o, self)
    self.__index = self
    return o
end

function Carrot:update()
end

function Carrot:draw()
    love.graphics.draw(spritesheet, carrot_sprite, self.x, self.y)
end

function Carrot:destroy()
end

