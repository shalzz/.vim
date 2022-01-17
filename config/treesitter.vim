lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = { }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { },  -- list of language that will be disabled
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
  indent = {
    enable = true
  }
}

--[[
  https://github.com/nvim-treesitter/nvim-treesitter/issues/1168
  ** use lowercase 'solidity':
  ```
    ❯ nm -gD .local/share/nvim/site/pack/packer/start/nvim-treesitter/parser/Solidity.so
                       w _ITM_deregisterTMCloneTable
                       w _ITM_registerTMCloneTable
                       w __cxa_finalize@@GLIBC_2.2.5
                       w __gmon_start__
      00000000000232e0 T tree_sitter_solidity
  ```
  To install:
  ```
    ❯ mkdir ~/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/queries/solidity/
    ❯ curl -L https://raw.githubusercontent.com/JoranHonig/tree-sitter-solidity/master/queries/highlights.scm -o ~/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/queries/solidity/highlights.scm
    ❯ vi ~/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/queries/solidity/highlights.scm
  ```
  ** comment out lines 68-69
]]
if pcall(require, "nvim-treesitter.parsers") then
  require "nvim-treesitter.parsers".get_parser_configs().solidity = {
    install_info = {
      url = "https://github.com/JoranHonig/tree-sitter-solidity",
      files = {"src/parser.c"},
      requires_generate_from_grammar = true,
    },
    filetype = 'solidity'
  }
  -- install with ':TSInstallSync markdown'
  --[[ require "nvim-treesitter.parsers".get_parser_configs().markdown = {
    install_info = {
      url = "https://github.com/ikatyang/tree-sitter-markdown",
      files = { "src/parser.c", "src/scanner.cc" },
      -- makes treesitter ignore the 'lockfile.json' revision
      -- won't compile without this like as it tries the default
      -- markdown revision from 'MDeiml/tree-sitter-markdown'
      revision = "master",
    }
  } ]]
end
EOF

set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set foldlevelstart=99
