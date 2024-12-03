
terraform {
  source = "${get_path_to_repo_root()}//terraform/deletion"
}


dependencies {
  paths = [
    "../c2_3",
    "../../../a1/b1"
  ]
}
dependency "c2_3" {
  config_path                             = "../c2_3"
  mock_outputs_allowed_terraform_commands = ["validate", "plan", "refresh"]
  mock_outputs_merge_strategy_with_state  = "shallow"
  mock_outputs = {
    test = "a"
  }
}


inputs = {
  test = dependency.c2_3.outputs.test
}
