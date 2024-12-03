terramate {
  config {
    run {
      env {
        # TF_PLUGIN_CACHE_DIR = "${terramate.root.path.fs.absolute}/.terraform.d/plugin-cache"
        TF_PLUGIN_CACHE_DIR = env.TF_PLUGIN_CACHE_DIR
      }
    }
    disable_safeguards = [
      "git-untracked",
      "git-uncommitted",
    ]
    change_detection {
      git {}
    }
    git {
      # Git configuration
      default_remote = "origin"
      default_branch = "main"
    }
  }
}
