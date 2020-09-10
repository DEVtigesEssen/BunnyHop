Timer={}

function Timer:new(startTime)
    o = {}
    o.dtTimer = 0 
    o.currentTime = startTime
    o.running = true
    setmetatable(o, self)
    self.__index = self 
    return o
end

function Timer:update(dt)
    if self.running then
        self.dtTimer = self.dtTimer + dt
        if self.dtTimer > 1 then
            self.dtTimer = self.dtTimer - 1
            if self.currentTime ~= 1 then
                self.currentTime = self.currentTime - 1
            else
                self.currentTime = 0
                self.running = false
            end
        end
    end
end 

function Timer:isRunning()
    return self.running
end

function Timer:setRunning(running)
    self.running = running
end

function Timer:draw()
    love.graphics.print(self.currentTime, love.graphics.getWidth()/2, 30, 0, 4, 4)
    
end
