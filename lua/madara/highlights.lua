local c = require("madara.palette")

local M = {}

---@return table<string, vim.api.keyset.highlight>
function M.get()
  return {
    -- Editor
    Normal = { fg = c.fg, bg = c.bg },
    NormalFloat = { fg = c.fg, bg = c.bg_float },
    NormalNC = { fg = c.fg, bg = c.bg },
    -- snacks.nvim remaps its windows' Normal to these; without them it falls
    -- back to NormalFloat, making the explorer bg differ from buffers.
    SnacksNormal = { fg = c.fg, bg = c.bg },
    SnacksNormalNC = { fg = c.fg, bg = c.bg },
    FloatBorder = { fg = c.border, bg = c.bg_float },
    FloatTitle = { fg = c.blue1, bg = c.bg_float },
    ColorColumn = { bg = c.bg_highlight },
    Cursor = { fg = c.bg, bg = c.fg },
    CursorLine = { bg = c.bg_highlight },
    CursorColumn = { bg = c.bg_highlight },
    CursorLineNr = { fg = c.orange, bold = true },
    LineNr = { fg = c.fg_gutter },
    SignColumn = { fg = c.fg_gutter, bg = c.bg },
    Folded = { fg = c.blue1, bg = c.bg_highlight },
    FoldColumn = { fg = c.fg_gutter, bg = c.bg },

    VertSplit = { fg = c.border },
    WinSeparator = { fg = c.border },

    Pmenu = { fg = c.fg, bg = c.bg_float },
    PmenuSel = { fg = c.bg, bg = c.blue1 },
    PmenuSbar = { bg = c.bg_highlight },
    PmenuThumb = { bg = c.dark3 },

    StatusLine = { fg = c.fg, bg = c.bg_statusline },
    StatusLineNC = { fg = c.fg_gutter, bg = c.bg_statusline },
    TabLine = { fg = c.fg_gutter, bg = c.bg_dark },
    TabLineFill = { bg = c.bg_dark },
    TabLineSel = { fg = c.fg, bg = c.bg },

    Search = { fg = c.bg, bg = c.bg_search },
    IncSearch = { fg = c.bg, bg = c.orange },
    CurSearch = { fg = c.bg, bg = c.orange },
    Visual = { bg = c.bg_visual },
    VisualNOS = { bg = c.bg_visual },
    MatchParen = { fg = c.orange, bold = true },

    Directory = { fg = c.blue1 },
    Title = { fg = c.blue1, bold = true },
    NonText = { fg = c.fg_gutter },
    Whitespace = { fg = c.fg_gutter },
    SpecialKey = { fg = c.fg_gutter },
    Conceal = { fg = c.dark3 },

    Comment = { fg = c.comment, italic = true },

    Constant = { fg = c.orange },
    String = { fg = c.string },
    Character = { fg = c.string },
    Number = { fg = c.orange },
    Boolean = { fg = c.orange },
    Float = { fg = c.orange },

    Identifier = { fg = c.variable },
    Function = { fg = c.blue1 },

    Statement = { fg = c.pink },
    Conditional = { fg = c.pink },
    Repeat = { fg = c.pink },
    Label = { fg = c.blue1 },
    Operator = { fg = c.blue5 },
    Keyword = { fg = c.pink },
    Exception = { fg = c.pink },

    PreProc = { fg = c.cyan1 },
    Include = { fg = c.pink },
    Define = { fg = c.pink },
    Macro = { fg = c.cyan1 },

    Type = { fg = c.type },
    StorageClass = { fg = c.type },
    Structure = { fg = c.type },
    Typedef = { fg = c.type },

    Special = { fg = c.blue5 },
    SpecialChar = { fg = c.purple },
    Tag = { fg = c.blue1 },
    Delimiter = { fg = c.blue5 },
    SpecialComment = { fg = c.comment },
    Underlined = { underline = true },

    Error = { fg = c.error },
    Todo = { fg = c.orange, bold = true },

    DiagnosticError = { fg = c.error },
    DiagnosticWarn = { fg = c.warning },
    DiagnosticInfo = { fg = c.info },
    DiagnosticHint = { fg = c.hint },
    DiagnosticOk = { fg = c.git_add },
    DiagnosticUnderlineError = { undercurl = true, sp = c.error },
    DiagnosticUnderlineWarn = { undercurl = true, sp = c.warning },
    DiagnosticUnderlineInfo = { undercurl = true, sp = c.info },
    DiagnosticUnderlineHint = { undercurl = true, sp = c.hint },
    DiagnosticVirtualTextError = { fg = c.error, bg = c.bg },
    DiagnosticVirtualTextWarn = { fg = c.warning, bg = c.bg },
    DiagnosticVirtualTextInfo = { fg = c.info, bg = c.bg },
    DiagnosticVirtualTextHint = { fg = c.hint, bg = c.bg },

    DiffAdd = { bg = c.diff_add },
    DiffChange = { bg = c.diff_change },
    DiffDelete = { bg = c.diff_delete },
    DiffText = { bg = c.blue7 },

    -- Snacks' diff previewer (git diff, PR review) links unchanged context
    -- lines to DiffChange by default, which tints every context line with
    -- the same strong background meant for actually-changed lines
    SnacksDiffContext = { bg = c.bg },
    SnacksDiffContextLineNr = { fg = c.fg_gutter, bg = c.bg },

    -- Treesitter
    ["@variable"] = { fg = c.variable },
    ["@variable.builtin"] = { fg = c.git_delete },
    ["@variable.parameter"] = { fg = c.variable },
    ["@variable.member"] = { fg = c.teal },

    ["@constant"] = { fg = c.orange },
    ["@constant.builtin"] = { fg = c.orange },
    ["@constant.macro"] = { fg = c.orange },

    ["@module"] = { fg = c.fg },
    ["@label"] = { fg = c.blue1 },

    ["@string"] = { fg = c.string },
    ["@string.escape"] = { fg = c.purple },
    ["@string.regexp"] = { fg = c.blue6 },
    ["@string.special"] = { fg = c.string },
    ["@string.special.symbol"] = { fg = c.cyan1 },

    ["@character"] = { fg = c.string },
    ["@number"] = { fg = c.orange },
    ["@boolean"] = { fg = c.orange },
    ["@float"] = { fg = c.orange },

    ["@function"] = { fg = c.blue1 },
    ["@function.builtin"] = { fg = c.cyan1 },
    ["@function.macro"] = { fg = c.cyan1 },
    ["@function.method"] = { fg = c.blue1 },
    ["@constructor"] = { fg = c.purple },
    ["@operator"] = { fg = c.blue5 },

    ["@keyword"] = { fg = c.pink },
    ["@keyword.function"] = { fg = c.pink },
    ["@keyword.operator"] = { fg = c.pink },
    ["@keyword.return"] = { fg = c.pink },
    ["@conditional"] = { fg = c.pink },
    ["@repeat"] = { fg = c.pink },
    ["@debug"] = { fg = c.orange },
    ["@exception"] = { fg = c.pink },

    ["@punctuation.bracket"] = { fg = "#828bb8" },
    ["@punctuation.delimiter"] = { fg = c.blue5 },
    ["@punctuation.special"] = { fg = c.blue5 },

    ["@comment"] = { fg = c.comment, italic = true },
    ["@comment.documentation"] = { fg = c.comment, italic = true },

    ["@tag"] = { fg = c.blue1 },
    ["@tag.attribute"] = { fg = c.cyan1 },
    ["@tag.delimiter"] = { fg = c.blue5 },

    ["@type"] = { fg = c.type },
    ["@type.builtin"] = { fg = c.builtin },
    ["@attribute"] = { fg = c.cyan1 },
    ["@property"] = { fg = c.teal },

    ["@markup.strong"] = { bold = true },
    ["@markup.italic"] = { italic = true },
    ["@markup.link"] = { fg = c.teal, italic = true },
    ["@markup.link.url"] = { fg = c.cyan1 },
    ["@markup.heading"] = { fg = c.blue1, bold = true },

    -- LSP semantic tokens (reuse treesitter groups)
    ["@lsp.type.class"] = { link = "@type" },
    ["@lsp.type.enum"] = { link = "@type" },
    ["@lsp.type.interface"] = { link = "@type" },
    ["@lsp.type.struct"] = { link = "@type" },
    ["@lsp.type.parameter"] = { link = "@variable.parameter" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.variable"] = { link = "@variable" },
    ["@lsp.type.namespace"] = { link = "@module" },

    -- gitsigns
    GitSignsAdd = { fg = c.git_add },
    GitSignsChange = { fg = c.git_change },
    GitSignsDelete = { fg = c.git_delete },

    -- telescope
    TelescopeNormal = { fg = c.fg, bg = c.bg_float },
    TelescopeBorder = { fg = c.border, bg = c.bg_float },
    TelescopePromptNormal = { fg = c.fg, bg = c.bg_highlight },
    TelescopePromptBorder = { fg = c.border, bg = c.bg_highlight },
    TelescopePromptTitle = { fg = c.bg, bg = c.blue1 },
    TelescopePreviewTitle = { fg = c.bg, bg = c.git_add },
    TelescopeResultsTitle = { fg = c.bg, bg = c.blue1 },
    TelescopeSelection = { bg = c.bg_highlight },
    TelescopeMatching = { fg = c.orange, bold = true },

    -- which-key
    WhichKey = { fg = c.blue1 },
    WhichKeyGroup = { fg = c.cyan1 },
    WhichKeyDesc = { fg = c.fg },
    WhichKeySeparator = { fg = c.comment },
    WhichKeyFloat = { bg = c.bg_float },

    -- bufferline / lualine surfaces
    BufferLineFill = { bg = c.bg_dark },

    -- nvim-cmp / blink.cmp
    CmpItemAbbrMatch = { fg = c.blue1, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = c.blue1, bold = true },
    CmpItemKindFunction = { fg = c.blue1 },
    CmpItemKindVariable = { fg = c.variable },
    CmpItemKindKeyword = { fg = c.pink },

    -- indent guides
    IndentBlanklineChar = { fg = c.fg_gutter },
    IblIndent = { fg = c.fg_gutter },
    IblScope = { fg = c.dark3 },

    -- snacks.nvim (LazyVim default dashboard/picker)
    SnacksDashboardTitle = { fg = c.blue1, bold = true },
    SnacksDashboardDesc = { fg = c.fg },
    SnacksDashboardKey = { fg = c.orange },
    SnacksDashboardIcon = { fg = c.blue1 },
    SnacksDashboardFooter = { fg = c.comment, italic = true },
    SnacksPickerBorder = { fg = c.border, bg = c.bg_float },
    SnacksPickerTitle = { fg = c.bg, bg = c.blue1 },
    -- the list pane (used by the explorer sidebar too) defaults to
    -- NormalFloat via snacks' own fallback chain, which differs from
    -- the regular buffer bg; pin it so explorer/pickers match buffers
    SnacksPickerList = { fg = c.fg, bg = c.bg },
    -- Explorer header: input float border title (same groups as tokyonight)
    SnacksPickerInputBorder = { fg = c.orange, bg = c.bg_float },
    SnacksPickerInputTitle = { fg = c.orange, bg = c.bg_float },
    SnacksPickerBoxTitle = { fg = c.orange, bg = c.bg_float },
    -- staged files in the explorer/pickers otherwise fall back to
    -- DiagnosticHint (a muted grey here); staged should read as green
    SnacksPickerGitStatusStaged = { fg = c.green },

    -- terminal colors
    Terminal = { fg = c.fg_dark, bg = c.bg },
  }
end

return M
