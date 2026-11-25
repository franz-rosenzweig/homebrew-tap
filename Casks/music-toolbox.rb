cask "music-toolbox" do
  version "0.7.2"
  sha256 "905096d502188e3681d2ffe217c8755b46bc3c58c5b40078594208b505885e69"

  url "https://github.com/franz-rosenzweig/music-toolbox/releases/download/v#{version}/MusicToolbox-#{version}-mac.zip"
  name "Music Toolbox"
  desc "Uploads music to a self-hosted library and loads it onto players"
  homepage "https://github.com/franz-rosenzweig/music-toolbox"

  depends_on macos: :tahoe
  depends_on formula: "rsync"

  app "Music Toolbox.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Music Toolbox.app"]
  end
end
