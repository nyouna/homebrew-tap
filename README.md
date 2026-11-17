# nyouna/homebrew-tap

A personal [Homebrew](https://brew.sh) tap for casks that are not (yet) available in the official `homebrew/cask` repository.

## Usage

```sh
brew tap nyouna/tap
brew install --cask nyouna/tap/bing-wallpaper
brew install --cask nyouna/tap/utm
```

## Casks

| Cask | Description | Notes |
| --- | --- | --- |
| `bing-wallpaper` | Use the Bing daily image as your wallpaper | Installs Microsoft Bing Wallpaper 2.x on macOS 14 and newer, and the legacy 1.1.12 release on macOS 13 and older. The installer's "Enable Bing search in your browser" component is deselected. Submitted upstream as [Homebrew/homebrew-cask#287113](https://github.com/Homebrew/homebrew-cask/pull/287113). |
| `utm` | Virtual machines UI using QEMU | Pinned to UTM 5.0.8, because 5.0.9 renders QEMU displays blurry in Retina mode ([utmapp/UTM#8191](https://github.com/utmapp/UTM/issues/8191)). The fix, [utmapp/UTM#8195](https://github.com/utmapp/UTM/pull/8195), is merged but not yet released. This cask will be removed once a release contains it. |

If you already have a cask installed from `homebrew/cask`, uninstall it first, for example:

```sh
brew uninstall --cask utm
brew install --cask nyouna/tap/utm
```

## Updating

```sh
brew update
brew upgrade --cask nyouna/tap/bing-wallpaper
```
