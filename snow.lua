--
-- Port of the "HTML5 Canvas and Javascript" version to Lua and Löve
-- Original version: http://thecodeplayer.com/walkthrough/html5-canvas-snow-effect
--
return function(width, height, maxParticles)
  local angle = 0.0
  local module = {}
  local snowParticles = {}

  function module:load()
    for i = 1, maxParticles do
      table.insert(snowParticles, {
        x = math.random() * width,
        y = math.random() * height,
        r = math.random() * 4 + 1,
        d = math.random() * maxParticles
      })
    end
  end

  function module:update(dt)
  	angle = angle + 0.01

    for i, p in pairs(snowParticles) do
      p.y = p.y + math.cos(angle + p.d) + 1 + p.r / 2
      p.x = p.x + math.sin(angle) * 2

      if p.y > height then
        p.x = math.random() * width
        p.y = -10

      elseif p.x > width + 5 or p.x < -5 then
        -- Exit from right
        if (math.sin(angle) > 0) then p.x = -5

        -- Exit from left
        else p.x = width + 5
        end
      end
    end
  end

  function module:draw()
    love.graphics.setColor(255, 255, 255, 255)

    for i, p in pairs(snowParticles) do
      love.graphics.circle("fill", p.x, p.y, p.r, 5)
    end
  end

  return module
end
