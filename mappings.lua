return {
  i = {
    -- コントロールキーを推しながらaを押すと、おすすめを受け入れる
    -- ["<C-a>"] = { 'copilot#Accept(<Tab>)', silent = true, expr = true, script = true },
    -- option + a
    ["å"] = { 'copilot#Accept("<CR>")', noremap = true, silent = true, expr = true, script = true },
    -- option + >
    ["≥"] = { '<Plug>(copilot-next)', silent = true},
    -- option + <
    ["≤"] = { '<Plug>(copilot-previous)', silent = true} 

  }
}
