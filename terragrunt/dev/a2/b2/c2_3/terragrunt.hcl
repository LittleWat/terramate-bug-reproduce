terraform {
  source = "${get_path_to_repo_root()}//terraform/sample"
}

inputs = {
  test = "b"
}
