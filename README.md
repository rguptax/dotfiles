# Dotfiles

My dotfiles, built on [mise](https://mise.jdx.dev/bootstrap.html).

A mise **setup repository**: tracked dotfiles plus the mise config that installs the
tools and services around them. One command on a new machine restores the files and
applies the setup.

## New machine

Install mise, then adopt the repo. Adoption restores the tracked files, applies the
saved configuration, installs packages and tools, and installs the history watcher.

```sh
curl https://mise.run | sh
export PATH="$HOME/.local/bin:$PATH"

mise bootstrap --adopt git@github.com:rguptax/dotfiles.git
```

Review the plan before confirming, or preview it first with
`mise bootstrap --adopt <url> --dry-run`.

### After adopting

```sh
mise settings set history.sync sync
mise dot status
```

This step is needed on every machine. The sync mode is recorded in
`~/.config/mise/config.local.toml`, and mise never shares `*.local.toml` files, so it
does not come across with adoption.

The watcher pushes saved edits and applies incoming ones. Use `manual` to sync on
demand (`mise dot sync`, `mise dot pull`) or `fetch-only` to review remote changes
before applying.

## Reference

- [mise bootstrap](https://mise.jdx.dev/bootstrap.html)
- [Set up a machine](https://mise.jdx.dev/bootstrap/setup.html)
- [History](https://mise.jdx.dev/history.html#sharing-across-machines)