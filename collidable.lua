Collidable={}

function Collidable:new(x, y, width, height)
    o={}
    o.x=x
    o.y=y
    o.width=width
    o.height=height

    setmetatable(o, self)
    self.__index = self
    return o
end

function Collidable:didCollide(otherCollidable)
    local vecX=math.pow(self.x-otherCollidable.x,2)
    local vecY=math.pow(self.y-otherCollidable.y,2)

    local distance=math.sqrt(vecX+vecY)

    return distance== 0
end
