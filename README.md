# nyouna/homebrew-tap

A personal [Homebrew](https://brew.sh) tap for casks that are not (yet) available in the official `homebrew/cask` repository.

## Usage

```sh
brew tap nyouna/tap
brew install --cask nyouna/tap/bing-wallpaper
```

## Casks

| Cask | Description | Notes |
| --- | --- | --- |
| `bing-wallpaper` | Use the Bing daily image as your wallpaper | Installs Microsoft Bing Wallpaper 2.x on macOS 14 and newer, and the legacy 1.1.12 release on macOS 13 and older. The installer's "Enable Bing search in your browser" component is deselected. Submitted upstream as [Homebrew/homebrew-cask#287113](https://github.com/Homebrew/homebrew-cask/pull/287113). |

If you already have `bing-wallpaper` installed from `homebrew/cask`, uninstall it first:

```sh
brew uninstall --cask bing-wallpaper
brew install --cask nyouna/tap/bing-wallpaper
```

## Updating

```sh
brew update
brew upgrade --cask nyouna/tap/bing-wallpaper
```
