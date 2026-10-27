cask "music-toolbox" do
  version "0.3.0"
  sha256 "e59014fe2e2f7b2b43ea3bd66ac80b035d06f35fdffdb4b3cac0f5d0024d043a"

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
