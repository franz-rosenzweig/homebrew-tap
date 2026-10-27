cask "music-toolbox" do
  version "0.2.0"
  sha256 "3e362e1d90268a46e442c793244dc52246687d3cd0dceb0354f94fd929bf1a88"

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
