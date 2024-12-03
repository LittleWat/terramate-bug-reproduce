terraform {
  source = "${get_path_to_repo_root()}//terraform/deletion"
}

inputs = {
  test = "a"
}
