local snow = require "snow"

function love.load(arg)
  snow:load(800, 600, 30)
end

function love.update(dt)
  snow:update(dt)
end

function love.draw()
  snow:draw()
end
