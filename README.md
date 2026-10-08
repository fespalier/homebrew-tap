# fespalier Homebrew tap

The Homebrew formula for [`fsp`](https://github.com/fespalier/fespalier), the generator behind
fespalier's file-tree routing for Flutter. One formula, `fsp`, for macOS and Linux on Apple Silicon /
arm64 and Intel / x86_64.

## Install

```sh
brew install fespalier/tap/fsp
```

or, in two steps:

```sh
brew tap fespalier/tap
brew install fsp
```

Check it:

```sh
fsp --version
```

## Upgrade and uninstall

```sh
brew update && brew upgrade fsp
brew uninstall fsp && brew untap fespalier/tap
```

The formula always names the latest fespalier release. To pin an older one, use the install script
with `FSP_VERSION` (below), or `dart run fespalier`, which runs the `fsp` that matches the package
version in your `pubspec.yaml`.

## Troubleshooting

**`fatal: Could not resolve HEAD to a commit`, then `No available formula with the name
"fespalier/tap/fsp"`.** Your local copy of the tap is broken, usually because it was cloned
before the first formula was pushed here. Remove it and tap again:

```sh
brew untap fespalier/tap
brew install fespalier/tap/fsp
```

If `brew untap` refuses, delete the clone by hand:

```sh
rm -rf "$(brew --repository)/Library/Taps/fespalier/homebrew-tap"
brew install fespalier/tap/fsp
```

**`brew upgrade` says `fsp` is already up to date, but a newer release is out.** Run `brew update`
first: the tap is a git clone, and only `brew update` (or Homebrew's auto-update) pulls the new
formula.

## Without Homebrew

```sh
curl -fsSL https://raw.githubusercontent.com/fespalier/fespalier/main/install.sh | sh
```

The script puts `fsp` in `~/.local/bin` and checks the download's SHA-256. Set `FSP_VERSION` to a
release tag (the default is the latest) and `FSP_INSTALL_DIR` to install elsewhere. The other
install routes are in fespalier's
[getting started](https://github.com/fespalier/fespalier/blob/main/docs/getting-started.md).

## How this tap is updated

`Formula/fsp.rb` is written by fespalier's release workflow on every release, from archives it has
verified against the checksums pinned in that release. Don't edit it by hand: the next release
overwrites it. Report problems in
[fespalier/fespalier](https://github.com/fespalier/fespalier/issues).
