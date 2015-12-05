function love.load()

  G = setmetatable({}, {__index = {
    AUDIO             = love.audio;
    EVENT             = love.event;
    FILESYSTEM        = love.filesystem;
    FONT              = love.font;
    GRAPHICS          = love.graphics;
    IMAGE             = love.image;
	  JOYSTICK          = love.joystick;
    KEYBOARD          = love.keyboard;
    MATH              = love.math;
    MOUSE             = love.mouse;
    PHYSICS           = love.physics;
    SOUND             = love.sound;
    SYSTEM            = love.system;
    THREAD            = love.thread;
    TIMER             = love.timer;
    WINDOW            = love.window;
  }})

  G.FILESYSTEM.load("corefunc.lua")()

  APPLICATION         = G.LOADFILE("app.lua")
  APP                 = APPLICATION.new()

end

function love.update(dt)
  APP.Update(dt)
end

function love.draw()
  APP.Draw()
end

function love.keypressed(key)
  APP.KeyPressed(key)
end

function love.keyreleased(key)
  APP.KeyReleased(key)
end

function love.mousepressed(x, y, b)
  APP.MousePressed(x, y, b)
end
