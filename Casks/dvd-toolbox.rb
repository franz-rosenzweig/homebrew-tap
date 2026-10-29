cask "dvd-toolbox" do
  version "0.1.0"
  sha256 "6c6ae40e90b88efb17d179ef2f2cd0bed33897b1361dcd03b0916ccb6a5ea9b4"

  url "https://github.com/franz-rosenzweig/dvd-toolbox/releases/download/v#{version}/DVDToolbox-#{version}-mac.zip"
  name "DVD Toolbox"
  desc "Rips DVDs into a Jellyfin library, named from TMDB"
  homepage "https://github.com/franz-rosenzweig/dvd-toolbox"

  depends_on macos: :tahoe
  depends_on formula: "rsync"
  depends_on formula: "handbrake"
  depends_on formula: "libdvdcss"

  app "DVD Toolbox.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/DVD Toolbox.app"]
  end
end
