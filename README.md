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

This line is weird...
- https://github.com/LittleWat/terramate-bug-reproduce/blob/6bef508a6593a31315340bcc73d3dcbdb845839f/terragrunt/dev/a2/b2/c2_2/stack.tm.hcl#L4

This should be  ` after       = ["/terragrunt/dev/a1/b1", "/terragrunt/dev/a2/b2/c2_3"] `

====> this has been fixed in https://github.com/terramate-io/terramate/issues/1979#issuecomment-2512047077
