function menu_load()
  love.graphics.setBackgroundColor(0, 255, 255)

  halfscreen = love.graphics.getWidth() /2
  menubuttons = {}
  menubuttons[1] = {text="Start Game", x=halfscreen, y=200, execute=startGame}
  menubuttons[2] = {text="Exit Game", x=halfscreen, y=300, execute=exitGame}
end

function menu_draw()
  love.graphics.printf("PLATFORMER :D", halfscreen, 100, 200, "center")
  for i,b in pairs(menubuttons) do
    love.graphics.printf(b.text, b.x, b.y, 200, "center")
  end
end

function menu_update(dt)

end

function menu_mousepressed(x, y, button)

end

function startGame()

end

function exitGame()

end
