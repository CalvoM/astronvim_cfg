
return function(hl) -- or a function that returns a new table of colors to set
  local C = require "user.colors"

  hl.Normal = { fg = C.fg, bg = C.bg }

  -- New approach instead of diagnostic_style
  hl.DiagnosticError.italic = true
  hl.DiagnosticHint.italic = true
  hl.DiagnosticInfo.italic = true
  hl.DiagnosticWarn.italic = true

  return hl
end
