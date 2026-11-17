# nyouna/homebrew-tap

A personal [Homebrew](https://brew.sh) tap for casks that are not (yet) available in the official `homebrew/cask` repository.

## Usage

```sh
brew tap nyouna/tap
brew install --cask nyouna/tap/utm
```

## Casks

| Cask | Description | Notes |
| --- | --- | --- |
| `utm` | Virtual machines UI using QEMU | Pinned to UTM 5.0.8, because 5.0.9 renders QEMU displays blurry in Retina mode ([utmapp/UTM#8191](https://github.com/utmapp/UTM/issues/8191)). The fix, [utmapp/UTM#8195](https://github.com/utmapp/UTM/pull/8195), is merged but not yet released. This cask will be removed once a release contains it. |

If you already have a cask installed from `homebrew/cask`, uninstall it first, for example:

```sh
brew uninstall --cask utm
brew install --cask nyouna/tap/utm
```

## Updating

```sh
brew update
brew upgrade --cask nyouna/tap/utm
```
