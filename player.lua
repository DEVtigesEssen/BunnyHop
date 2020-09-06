Player={}

function Player:new()
    o={}
    o.x=0
    o.y=0
    o.carrotCount=0

    setmetatable(o, self)
    self.__index = self
    return o
end

function Player:update()
end

function Player:draw()
end

function Player:keypressed(key, scancode, isrepeat)

end
