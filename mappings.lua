return {
  i = {
    -- コントロールキーを推しながらaを押すと、おすすめを受け入れる
    ["<C-y>"] = { 'copilot#Accept(<Tab>)', silent = true, expr = true, script = true },
  }

}
