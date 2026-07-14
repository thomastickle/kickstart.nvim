---@module 'lazy'
---@type LazySpec
return {
  {
    'mfussenegger/nvim-jdtls',
    ft = 'java',
    config = function()
      local root_markers = { 'gradlew', 'mvnw', 'settings.gradle', 'settings.gradle.kts', 'pom.xml', 'build.gradle', 'build.gradle.kts', '.git' }
      local root_dir = vim.fs.root(0, root_markers) or vim.fn.getcwd()
      local workspace_dir = vim.fs.joinpath(vim.fn.stdpath 'cache', 'jdtls', vim.fn.sha256(root_dir))

      require('jdtls').start_or_attach {
        cmd = { 'jdtls', '-data', workspace_dir },
        root_dir = root_dir,
        settings = {
          java = {
            configuration = { updateBuildConfiguration = 'interactive' },
            format = { enabled = true },
          },
        },
      }
    end,
  },
}
