local opt = vim.opt
local g = vim.g


-- in witch mode the mouse is used
opt.mouse = 'a' -- all

-- From neovim docs:
-- "When on, mouse move events are delivered to the input queue and are
-- available for mapping. The default, off, avoids the mouse movement
-- overhead except when needed.
-- Warning: Setting this option can make pending mappings to be aborted
-- when the mouse is moved."
opt.mousemoveevent = true


opt.encoding = 'utf-8'

opt.swapfile = false

-- print the line number in front of each line
opt.number = true

-- From neovim docs:
-- "Highlight the text line of the cursor with CursorLine hl-CursorLine.
-- Useful to easily spot the cursor.  Will make screen redrawing slower.
-- When Visual mode is active the highlighting isn't used to make it
-- easier to see the selected text."
opt.cursorline = true

-- nice colors yay
opt.termguicolors = true

-- From neovim docs:
-- "When on, lines longer than the width of the window will wrap and
-- displaying continues on the next line.  When off lines will not wrap
-- and only part of long lines will be displayed.  When the cursor is
-- moved to a part that is not shown, the screen will scroll
-- horizontally."
opt.wrap = true

-- From neovim docs:
-- "When 'confirm' is on, certain operations that would normally
-- fail because of unsaved changes to a buffer, e.g. ":q" and ":e",
-- instead raise a dialog asking if you wish to save the current
-- file(s).  You can still use a ! to unconditionally abandon a buffer.
-- If 'confirm' is off you can still activate confirmation for one
-- command only (this is most useful in mappings) with the :confirm
-- command."
opt.confirm = true
