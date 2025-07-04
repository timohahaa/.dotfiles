local M = {}

local function randomChoise(array)
  if #array == 0 then
    return nil
  end

  local idx = math.random(#array)

  return array[idx]
end

math.randomseed(os.time())

local colorschemes = {
  "material-deep-ocean",
  "monet",
  "yugen",
  "rose-pine",
  "tokyonight-moon",
  "tokyonight-night",
  "tokyonight-storm",
  "kanagawa-wave",
  "catppuccin-mocha",
  "flow",
  "duskfox",
  "nordfox",
  "terafox",
  "nightfox",
  "carbonfox",
  "blackhole",
  "sequoia",
  "sequoia-night",
  "sequoia-insomnia",
  "sphere",
  "yueye",
}

function M.choose()
  cs = randomChoise(colorschemes)
  vim.cmd.colorscheme(cs)

  vim.api.nvim_set_hl(0, 'Cursor', { fg = 'white', bg = 'white', blend = 20 })
  vim.api.nvim_set_hl(0, 'iCursor', { fg = 'white', bg = 'white', blend = 20 })
  vim.api.nvim_set_hl(0, 'vCursor', { fg = 'white', bg = 'white', blend = 20 })
  vim.api.nvim_set_hl(0, 'CursorIM', { fg = 'white', bg = 'white', blend = 20 })

  vim.notify("Current colorsheme: " .. cs, vim.log.levels.INFO, {
    render = "compact",
    timeout = 1000,
  })
end

return M
