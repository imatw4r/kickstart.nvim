return {
  'akinsho/git-conflict.nvim', 
  version = "*", 
  config = function ()
    require('git-conflict').setup {
      default_mappings = {

        ours = 'cc',
        theirs = 'ci',
        none = 'cn',
      },
      disable_diagnostics = false,
      list_opener = 'telescope',
      highlights = {
        incoming = 'DiffAdd',
        current = 'DiffChange',
      },
      debug = false
    }
  end
}
