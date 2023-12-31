lvim.lsp.on_attach_callback = function(client, bufnr)
  if lvim.colorscheme == 'gruvbox' then
    -- change coloring of errors so I can actually read them with gruvbox
    vim.cmd(':hi DiagnosticError guifg=#de5b64 guibg=#1C1C1C')
    vim.cmd(':hi DiagnosticWarn guifg=DarkOrange ctermfg=DarkYellow')
    vim.cmd(':hi DiagnosticInfo guifg=Cyan ctermfg=Cyan')
    vim.cmd(':hi DiagnosticHint guifg=White ctermfg=White')
  end
end

vim.opt.clipboard = "unnamedplus"

require("lspconfig").stylelint_lsp = {
  default_config = {
    cmd = { 'stylelint-lsp', '--stdio' },
    filetypes = {
      'css',
      'less',
      'scss',
      'sugarss',
      'vue',
      'wxss',
      'javascript',
      'javascriptreact',
      'typescript',
      'typescriptreact'
    },
    root_dir = require('lspconfig/util').root_pattern('.stylelintrc', 'package.json'),
    settings = {},
  },
  docs = {
    description = [[
https://github.com/bmatcuk/stylelint-lsp
`stylelint-lsp` can be installed via `npm`:
```sh
npm i -g stylelint-lsp
```
]],
    default_config = {
      root_dir = [[ root_pattern('.stylelintrc', 'package.json') ]],
    },
  },
}
