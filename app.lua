local Application = {}

function Application.new()

  local self = {}

  function self.Update(dt)

  end

  function self.Draw()

  end

  function self.MousePressed(x, y, b)

  end

  function self.MouseReleased(x, y, b)

  end

  function self.KeyPressed(key)
    if key == "escape" then
      G.EVENT.quit()
    end
  end

  function self.KeyReleased(key)

  end

  return self

end

return Application
