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
      ['+'] = function() return {''} end,
      ['*'] = function() return {''} end,
    },
  }
  vim.keymap.set({"n", "v"}, "Y", '"+y')
end
