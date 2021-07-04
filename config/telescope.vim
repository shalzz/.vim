" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"-- Git
nnoremap <leader>fB <cmd>Telescope git_branches<cr>
nnoremap <leader>gB <cmd>Telescope git_branches<cr>
nnoremap <leader>gC <cmd>Telescope git_commits<cr>

"-- Nvim & Dots
nnoremap <leader>en <cmd>Telescope edit_neovim<cr>
nnoremap <leader>ed <cmd>Telescope edit_dotfiles<cr>

"-- LSP
nnoremap <leader>lr <cmd>Telescope lsp_references<cr>
nnoremap <leader>la <cmd>Telescope lsp_code_actions<cr>
nnoremap <leader>lA <cmd>Telescope lsp_range_code_actions<cr>
nnoremap <leader>ld <cmd>Telescope lsp_definitions<cr>
nnoremap <leader>lm <cmd>Telescope lsp_implementations<cr>
nnoremap <leader>lg <cmd>Telescope lsp_document_diagnostics<cr>
nnoremap <leader>lG <cmd>Telescope lsp_workspace_diagnostics<cr>
nnoremap <leader>ls <cmd>Telescope lsp_document_symbols<cr>
nnoremap <leader>lS <cmd>Telescope lsp_workspace_symbols<cr>

"-- Telescope Meta
nnoremap <leader>f? <cmd>Telescope builtin<cr>

lua <<EOF
require("telescope").setup {
  defaults = {
    -- Your defaults config goes in here
  },
  pickers = {
    -- Your special builtin config goes in here
    buffers = {
      sort_lastused = true,
      -- theme = "dropdown",
      mappings = {
        i = {
          ["<c-d>"] = require("telescope.actions").delete_buffer,
          -- or right hand side can also be the name of the action as string
          ["<c-d>"] = "delete_buffer",
        },
        n = {
          ["<c-d>"] = require("telescope.actions").delete_buffer,
        }
      }
    },
    find_files = {
      -- theme = "dropdown"
    }
  },
  extensions = {
    -- your extension config goes in here
  }
}

local M = {}

function M.edit_neovim()
  require("telescope.builtin").find_files {
    prompt_title = "< VimRC >",
    shorten_path = false,
    cwd = "~/.config/nvim",

    layout_strategy = "vertical",
    layout_config = {
      width = 0.9,
      height = 0.8,

      horizontal = {
        width = { padding = 0.15 },
      },
      vertical = {
        preview_height = 0.75,
      },
    },

    attach_mappings = function(_, map)
      map("i", "<c-y>", set_prompt_to_entry_value)
      return true
    end,
  }
end

function M.edit_dotfiles()
  require("telescope.builtin").find_files {
    prompt_title = "~ dotfiles ~",
    shorten_path = false,
    cwd = "~/dots",

    attach_mappings = function(_, map)
      map("i", "<c-y>", set_prompt_to_entry_value)
      return true
    end,
  }
end

function M.find_files()
  require("telescope.builtin").fd {
    -- find_command = { "fd", "--hidden", "--follow", "--type f" },
    file_ignore_patterns = {"node_modules", ".pyc"},
  }
end

function M.fd()
  require("telescope.builtin").fd()
end

function M.builtin()
  require("telescope.builtin").builtin()
end

return setmetatable({}, {
  __index = function(_, k)
    -- reloader()

    if M[k] then
      return M[k]
    else
      return require("telescope.builtin")[k]
    end
  end,
})
EOF
