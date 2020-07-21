-- Entrypoint file for game
bf = require("breezefield")

function love.load()
    world = bf.newWorld(0,90.81,true)
    ground = bf.Collider.new(world, "Polygon", {0, 550, 650, 550, 650, 0, 650})
    ground:setType("static") 
end

function love.update(dt)
    world:update(dt)
end


function love.draw()
    world:draw()
end


