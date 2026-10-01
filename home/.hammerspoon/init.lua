function move_left()
  local win = hs.window.focusedWindow()
  if win == nil then
      return
  end
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end

function move_right()
  local win = hs.window.focusedWindow()
  if win == nil then
      return
  end
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end

function maximize_window()
  local win = hs.window.focusedWindow()
  if win == nil then
      return
  end
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h
  win:setFrame(f)
end

hs.hotkey.bind({'cmd', 'alt', 'ctrl'}, 'Left', move_left)
hs.hotkey.bind({'cmd', 'alt', 'ctrl'}, 'Right', move_right)
hs.hotkey.bind({'cmd', 'alt', 'ctrl'}, 'M', maximize_window)

---------------------------------------------------
-- TILE WINDOWS ON CURRENT SCREEN
---------------------------------------------------
hs.hotkey.bind({'cmd', 'alt', 'ctrl'}, 't', function()
  local wins = hs.window.filter.new():setCurrentSpace(true):getWindows()
  local screen = hs.screen.mainScreen():currentMode()
  local rect = hs.geometry(0, 0, screen['w'], screen['h'])
  hs.window.tiling.tileWindows(wins, rect)
end)

