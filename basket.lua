Basket={}

function Basket:new(x,y)
    o=Collidable:new(x, y, 64, 64, "basket")

    setmetatable(o, self)
    self.__index = self
    return o
end
   
function Basket:update()
end

function Basket:draw()
    love.graphics.draw(spritesheet, basket_sprite, self.x, self.y)
end

