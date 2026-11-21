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
| [music-toolbox](Casks/music-toolbox.rb) | [Music Toolbox](https://github.com/franz-rosenzweig/music-toolbox): uploads music to a self-hosted library and loads it onto players |
| [chataltul](Casks/chataltul.rb) | [Chataltul](https://github.com/franz-rosenzweig/kavana-apps): focus timer with a kitten, for the Mac |
| [dvd-toolbox](Casks/dvd-toolbox.rb) | [DVD Toolbox](https://github.com/franz-rosenzweig/dvd-toolbox): rips DVDs into a Jellyfin library, named from TMDB |

## Apps I didn't make

There are also casks here for a few apps by other people that I use and that Homebrew doesn't carry. Their makers don't touch this tap, so a scheduled workflow checks their releases every six hours and moves the cask to the newest one, and `brew upgrade` picks it up from there.

| Cask | App |
| --- | --- |
| [metrolist](Casks/metrolist.rb) | [Metrolist](https://github.com/MetrolistGroup/Metrolist): YouTube Music client |
| [drop-desktop-client](Casks/drop-desktop-client.rb) | [Drop](https://github.com/Drop-OSS/drop): desktop app for a self-hosted Drop game store |
