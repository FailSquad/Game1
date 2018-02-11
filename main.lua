function love.load()      -- Load everything in here ONLY when loading the program for first time  (sound, images, w/e)
  require "menu"
  gamestate = "menu"
  menu_load()
  print(unpack(arg))
  printx = 0
  printy = 0
  printstr = "Hello FailSquad!"

  myhouse = love.audio.newSource('resources/sounds/music/myhouse.mp3', stream)
  love.audio.setVolume(0.2)
  --love.audio.play(myhouse)

end

function love.update(dt)    -- Update stuff in here every frame. dt makes sure the speed is stable regardless of framerate.
  if gamestate == "menu" then
    menu_update(dt)
  end
end

function love.draw()        -- Draw your loaded-in and updated things on screen, updates every frame
  if gamestate == "menu" then
    menu_draw()
  end

  love.graphics.setColor(0, 0, 0)
  love.graphics.print(printstr, printx, printy)
end

function love.mousepressed(x, y, button, isTouch)
  if gamestate == "menu" then
    menu_mousepressed(x, y, button)
  end
end

function love.mousemoved(x, y, dx, dy)
  printx = x
  printy = y
end

function love.keypressed(key, scancode, isrepeat)
  printstr = printstr..key
  if (key == "p") then
    love.audio.play(myhouse)
  end
  if (key == "l") then
    love.audio.setVolume(0.02)
  end
  if (key == "h") then
    love.audio.setVolume(1)
  end
end

function love.directorydropped(path)
  printstr = path
end
