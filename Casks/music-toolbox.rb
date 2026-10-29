cask "music-toolbox" do
  version "0.7.0"
  sha256 "448b6656217e9c78ef0e0f2a58b5a6a0c347ef24b4b33ad9ae867dfc409fc8c7"

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
