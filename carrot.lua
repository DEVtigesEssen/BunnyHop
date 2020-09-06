Carrot={}

function Carrot:new(x,y)
    o={}
    o.x=x
    o.y=y

    setmetatable(o, self)
    self.__index = self
    return o
end

function Carrot:update()
end

function Carrot:draw()
end

