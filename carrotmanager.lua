CarrotManager={}

function CarrotManager:new()
    o={}
    o.carrots={}

    setmetatable(o, self)
    self.__index = self
    return o
end

function CarrotManager:update()
end

function CarrotManager:draw()
    for i=1, table.getn(self.carrots) do
        self.carrots[i]:draw()
    end
end 

function CarrotManager:addCarrot(carrot)
    table.insert(self.carrots, carrot)
end

function CarrotManager:pickupCarrot (carrot)
    for i = 1, table.getn(self.carrots) do
        local foundCarrot = self.carrots[i]
        if foundCarrot == carrot then
            table.remove(self.carrots, i)
        end
    end
end

function CarrotManager:spawnInitialAmountCarrots()
    for i=1, 5 do
        -- math.randomseed(os.time())
        local xCoord, yCoord = math.random(10), math.random(10) 
        
        local carrot = Carrot:new(xCoord*64, yCoord*64)
        self:addCarrot(carrot)
    end
end
