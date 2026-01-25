local function is_ssh_session()
  return vim.env.SSH_CLIENT ~= nil
      or vim.env.SSH_CONNECTION ~= nil
      or vim.env.SSH_TTY ~= nil
end

if is_ssh_session() then
  vim.g.clipboard = {
    name = 'OSC 52',
    copy = {
      ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
      ['*'] = require('vim.ui.clipboard.osc52').copy('*'),
    },
    paste = {
      ['+'] = require('vim.ui.clipboard.osc52').paste('+'),
      ['*'] = require('vim.ui.clipboard.osc52').paste('*'),
    },
  }
  vim.keymap.set({"n","v"}, "Y", '"+y')
  vim.keymap.set({"n","v"}, "P", '"+p')
else
  vim.opt.clipboard = "unnamedplus"
end
