# Snowflakes effect for Löve
> Let it snow in your Löve games

## Demo

Watch the demo [here](https://www.youtube.com/watch?v=U_lnHH8dTN8) (YouTube)

## Usage

```lua
-- Scene size
width = 800
height = 600

-- Number of snowflakes 
maxParticles = 50

local snow = require('snow')(width, height, maxParticles)

function love.load()
  snow:load()
end

function love.update(dt)
  snow:update(dt)
end

function love.draw()
  snow:draw()
end
```
