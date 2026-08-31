-- Colors ported 1:1 from the Zed "Madara" theme (madara-theme/themes/madara.json)
local defaults = {
  bg = "#161722",
  bg_dark = "#12131c",
  bg_highlight = "#1a1b26",
  bg_float = "#1a1b26",
  bg_visual = "#2d3f76",
  bg_search = "#3e68d7",
  bg_statusline = "#12131c",
  bg_sidebar = "#12131c",

  fg = "#c8d3f5",
  fg_dark = "#c8cede",
  fg_gutter = "#4a5070",

  border = "#7a8098",
  border_highlight = "#82aaff",

  comment = "#636da6",
  dark3 = "#505878",
  dark5 = "#7a8098",

  black = "#1a1b26",
  red = "#d07090",
  green = "#4ec89c",
  yellow = "#d0ba64",
  blue = "#58a0d0",
  magenta = "#b090d0",
  cyan = "#50b8c8",
  white = "#c8cede",

  blue1 = "#82aaff",
  blue2 = "#65bcff",
  blue5 = "#89ddff",
  blue6 = "#b4f9f8",
  blue7 = "#394b70",
  cyan1 = "#86e1fc",
  purple = "#c099ff",
  orange = "#ff966c",
  pink = "#fca7ea",
  teal = "#4fd6be",

  git_add = "#c3e88d",
  git_change = "#ffc777",
  git_delete = "#ff757f",

  -- git_add/change/delete blended 25% into bg, for full-line diff backgrounds
  diff_add = "#414b3d",
  diff_change = "#504337",
  diff_delete = "#502f39",

  error = "#c53b53",
  warning = "#ffc777",
  info = "#0db9d7",
  hint = "#636da6",

  string = "#c3e88d",
  variable = "#c8d3f5",
  type = "#65bcff",
  builtin = "#589ed7",
}

local M = {}
for k, v in pairs(defaults) do
  M[k] = v
end

-- Restores every field to its default value.
function M.reset()
  for k, v in pairs(defaults) do
    M[k] = v
  end
end

-- Applies per-field overrides on top of the current values, for variants
-- (e.g. madara-grey) that only tweak a couple of colors.
function M.override(overrides)
  for k, v in pairs(overrides or {}) do
    M[k] = v
  end
end

return M
