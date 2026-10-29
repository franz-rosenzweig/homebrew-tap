cask "dvd-toolbox" do
  version "0.1.2"
  sha256 "7ff9513a4935d0d0bfb66859e05c42bb138563a37d7e195da48865fd8f9b0ccb"

  url "https://github.com/franz-rosenzweig/dvd-toolbox/releases/download/v#{version}/DVDToolbox-#{version}-mac.zip"
  name "DVD Toolbox"
  desc "Rips DVDs into a Jellyfin library, named from TMDB"
  homepage "https://github.com/franz-rosenzweig/dvd-toolbox"

  depends_on macos: :tahoe
  depends_on formula: "rsync"
  depends_on formula: "handbrake"
  depends_on formula: "libdvdcss"
  depends_on formula: "ffmpeg"

  app "DVD Toolbox.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/DVD Toolbox.app"]
  end
end
