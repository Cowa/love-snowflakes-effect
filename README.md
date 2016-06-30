# Snowflakes effect for Löve
> Let it snow in your Löve games

<p align="center"><img src="https://cloud.githubusercontent.com/assets/1422403/16505509/a88401a6-3f1d-11e6-8fbc-0a2d4e7848a1.gif"/></p>

## Usage

```lua
-- Scene size
width = 800
height = 600

-- Number of snowflakes
maxParticles = 50

local snow = require('snow')

function love.load()
  snow:load(width, height, maxParticles)
end

function love.update(dt)
  snow:update(dt)
end

function love.draw()
  snow:draw()
end
```
