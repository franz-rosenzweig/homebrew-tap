cask "music-toolbox" do
  version "0.5.0"
  sha256 "e8b9614aaf136645cde1b815e164f0430cfc465db37093e4fc7d78b982aef497"

  url "https://github.com/franz-rosenzweig/music-toolbox/releases/download/v#{version}/MusicToolbox-#{version}-mac.zip"
  name "Music Toolbox"
  desc "Uploads music to a self-hosted library and loads it onto players"
  homepage "https://github.com/franz-rosenzweig/music-toolbox"

  depends_on macos: ">= :tahoe"
  depends_on formula: "rsync"

  app "Music Toolbox.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/Music Toolbox.app"]
  end
end
