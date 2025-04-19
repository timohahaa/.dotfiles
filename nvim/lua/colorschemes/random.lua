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
}

function M.choose()
  cs = randomChoise(colorschemes)
  vim.cmd.colorscheme(cs)
end

return M
