bf = require("breezefield")

function love.load()
    world = bf.newWorld(0, 90.81, true)
    print(world:getGravity())

    ground = bf.Collider.new(world, "Polygon", {0, 550, 650, 550, 650, 650, 0, 650})

    ground:setType("static")

    ball = bf.Collider.new(world, "Circle", 325, 325, 20)

    ball:setRestitution(0.8) -- any function of shape/body/fixture works

    block1 = bf.Collider.new(world, "Polygon", {150, 375, 250, 375, 250, 425, 150, 425})
end


function love.keypressed(key)
    if key == 'escape' then
        -- function LOVE gives us to terminate application
        love.event.quit()
    end
end

function love.update(dt) -- update used for changing all the variables for rendering
    world:update(dt)
    if love.keyboard.isDown("right") then
        ball:applyForce(400,0)
    elseif love.keyboard.isDown("left") then
        ball:applyForce(-400, 0)
    elseif love.keyboard.isDown("up") then
        ball:setPosition(325, 325)
        ball:setLinearVelocity(0, 0) 
    elseif love.keyboard.isDown("down") then
        ball:applyForce(0, 600)
    end
end


function love.draw() -- used for rendering of assets
    world:draw()
end


