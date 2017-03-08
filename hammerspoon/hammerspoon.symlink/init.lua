hs.window.animationDuration = 0

myDoKeyStroke = function(modifiers, character)
    local event = require("hs.eventtap").event
    event.newKeyEvent(modifiers, string.lower(character), true):post()
    event.newKeyEvent(modifiers, string.lower(character), false):post()
end

hs.hotkey.bind({"ctrl"}, "j", function()
  myDoKeyStroke({""}, "down")
end, nil, function ()
  myDoKeyStroke({""}, "down")
end)

hs.hotkey.bind({"ctrl"}, "h", function()
  myDoKeyStroke({""}, "left")
end, nil, function ()
  myDoKeyStroke({""}, "left")
end)

hs.hotkey.bind({"ctrl"}, "k", function()
  myDoKeyStroke({""}, "up")
end, nil, function ()
  myDoKeyStroke({""}, "up")
end)

hs.hotkey.bind({"ctrl"}, "l", function()
  myDoKeyStroke({""}, "right")
end, nil, function ()
  myDoKeyStroke({""}, "right")
end)

hs.hotkey.bind({"cmd", "alt"}, "f", function()
  local win = hs.window.focusedWindow()
  local screen = win:screen()
  local max = screen:frame()

  win:setFrame(max)
end)

i = 2
j = 2
hs.hotkey.bind({"cmd", "alt"}, "left", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / ((i * 0.5) + 1)
  f.h = max.h
  win:setFrame(f)
  if i < 3 then
    i = i + 1
   else
    i = 1
  end
  if j > 1 then
    j = j - 1
   else
    j = 3
  end
end)

hs.hotkey.bind({"cmd", "alt"}, "right", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
  if i < 3 then
    i = i + 1
   else
    i = 1
  end
  if j > 1 then
    j = j - 1
   else
    j = 3
  end
end)