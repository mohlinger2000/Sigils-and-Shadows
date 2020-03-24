platform = require 'platform'

function love.load()

end


function love.keypressed(key)
    if key == 'escape' then
        -- function LOVE gives us to terminate application
        love.event.quit()
    end
end

function love.update(dt) -- update used for changing all the variables for rendering

end


function love.draw() -- used for rendering of assets

end


