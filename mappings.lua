return {
  i = {
    -- コントロールキーを推しながらaを押すと、おすすめを受け入れる
    -- ["<C-a>"] = { 'copilot#Accept(<Tab>)', silent = true, expr = true, script = true },
    ["å"] = { 'copilot#Accept("<CR>")', noremap = true, silent = true, expr = true, script = true },
  }
}
