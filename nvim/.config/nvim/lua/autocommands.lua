-- Autocmd to enable bashls on buffers opened by the fc command
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function(args)
    local buf = args.buf
    local buf_name = vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf())
    if string.find(buf_name, "/private/tmp/zsh") then
      vim.bo[buf].filetype = "sh"
    end
  end
})
