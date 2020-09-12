Collidable={}

all_collidables = {}

function Collidable:new(x, y, width, height, tag)
    o={}
    o.x=x
    o.y=y
    o.width=width
    o.height=height
    o.tag = tag or "default"

    setmetatable(o, self)
    self.__index = self
    table.insert(all_collidables, o)
    return o
end

function Collidable:didCollide(otherCollidable)
    local vecX=math.pow(self.x-otherCollidable.x,2)
    local vecY=math.pow(self.y-otherCollidable.y,2)

    local distance=math.sqrt(vecX+vecY)

    return distance== 0
end
