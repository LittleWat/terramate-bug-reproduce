terraform {
  source = "${get_path_to_repo_root()}//terraform/deletion"
}
dependencies {
  paths = [
    "../../../../a1/b1",
  ]
}
dependency "b1" {
  config_path                             = "../../../../a1/b1"
  mock_outputs_allowed_terraform_commands = ["validate", "plan", "refresh"]
  mock_outputs_merge_strategy_with_state  = "shallow"
}

inputs = {
}
