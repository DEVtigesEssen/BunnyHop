Basket={}

function Basket:new(x,y)
    o={}
    o.x=x
    o.y=y

    setmetatable(o, self)
    self.__index = self
    return o
end
   
function Basket:update()
end

function Basket:draw()
end

