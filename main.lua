function love.load(arg)      -- Load everything in here when loading program  (sound, images, w/e)
  love.graphics.setBackgroundColor(255, 255, 255)
  print(unpack(arg))
  printx = 0
  printy = 0
  printstr = "Hello World!"
end

function love.update(dt)    -- Update stuff in here every frame. dt makes sure the speed is stable regardless of framerate.
  -- body...
end

function love.draw()        -- Draw your loaded-in and updated things on screen, updates every frame
  love.graphics.setColor(0, 0, 0)
  love.graphics.print(printstr, printx, printy)
end

function love.mousemoved(x, y, dx, dy)
  printx = x
  printy = y
end

function love.keypressed(key, scancode, isrepeat)
  printstr = printstr..key
end
