local M = {}

function M:setup()
  local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
  local workspace_dir = "/Users/evankrueger/.jdtls_data"
  local config = {
    cmd = {
      "java",
      "-jar",
      "/Users/evankrueger/.local/share/nvim/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher_1.7.100.v20251111-0406.jar",
      "-configuration",
      "/Users/evankrueger/.local/share/nvim/mason/packages/jdtls/config_mac_arm",
      "-data",
      workspace_dir
    },

    root_dir = require("jdtls.setup").find_root({ ".git", "mvnw", "gradlew" })
  }

  require("jdtls").start_or_attach(config)
end

return M
