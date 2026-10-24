# franz-rosenzweig/tap

The Mac apps I make, for Homebrew. Each one is built and published on its own repository's Releases page, and the cask here points at that zip.

```sh
brew tap franz-rosenzweig/tap
brew install --cask franz-rosenzweig/tap/dvarim
```

`brew upgrade` brings each app up to its latest release.

These apps aren't notarized by Apple, so each cask clears the quarantine flag on install, the way you'd otherwise do by right-clicking and choosing Open. Read a cask before you install it if you'd like to see exactly what it does.

| Cask | App |
| --- | --- |
| [dvarim](Casks/dvarim.rb) | [Dvarim](https://github.com/franz-rosenzweig/dvarim): to-dos as lines in Markdown files |
| [moshe](Casks/moshe.rb) | [Moshe](https://github.com/franz-rosenzweig/moshe): writing over a folder of plain Markdown files |
| [binah](Casks/binah.rb) | [Binah](https://github.com/franz-rosenzweig/binah): daily training for reading, reasoning and speaking |
