# terramate-sample

- This repo is to reproduce the bug that is reported in https://github.com/terramate-io/terramate/issues/1979

## How to reproduce

```shell

# remove stack.tml.hcl
$ find . -name "stack.tm.hcl" -prune -exec rm -rf {} \;


$ cd terragrunt/dev
$ terramate create --all-terragrunt

#  The after filed of `terragrunt/dev/a2/b2/c2_2/stack.tm.hcl` is weird... 
```
