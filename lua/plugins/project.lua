return {
  "adamwojt/project.nvim",
  branch = "adamwojt/issue_119/default_telescope_actions",
  config = function()
    require("project_nvim").setup {
      detection_methods = { "pattern" },
      telescope_default_action= "cd",
    }
  end
}
