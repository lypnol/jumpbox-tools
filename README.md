
# jumpbox-tools - Jump between boxes

## Installation

On an env, local or the VM:
You shouldn't do this if you don't know what you are doing:

```
curl -L https://raw.githubusercontent.com/Viq111/jumpbox-tools/master/bootstrap.sh | sh
```

## Features

- Cross-compatible `prod`, `staging`, `VM`, `local` (OSX)
- Go version is usually up-to-date, separate compiled package for OSX/VM (`/pkg`)
- zsh theme is [muse](https://github.com/robbyrussell/oh-my-zsh/wiki/themes#muse) with custom color scheme for `prod`, `staging`, `local`, `vm`
- plugins are `git`, `python`, `screen`, `z`, `zsh-syntax-highlighting`


## Aliases

- `refreshtools` to update your jumpbox-tools version
- [ENV] `ji` to jump to an instance id
- [ENV] `jr` to jump to a random instance of a role
- [ENV] `pg` on a postgres box to log into pg
- [ENV] `pydir`, `pycd`, `pymod` to jump to python modules
- [ENV] `howold` to get instance age
- [VM] `gocheck` in a go project to run `fmt`, `vet`, `lint`
- [VM] `goforit` to jump to dd-go folder

