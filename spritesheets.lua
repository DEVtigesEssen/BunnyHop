background = love.graphics.newImage("background.jpg")
spritesheet = love.graphics.newImage ("spritesheet.png")

function getSprite(spriteX, spriteY, spriteWidth, spriteHeight)
    return love.graphics.newQuad(spriteX * spriteWidth, spriteY * spriteHeight, spriteWidth, spriteHeight, spritesheet:getDimensions())
end

carrot_sprite = getSprite(0, 0, 64, 64)
bunny_sprite = getSprite(1, 0, 64, 64)
basket_sprite = getSprite(0, 1, 64, 64)
