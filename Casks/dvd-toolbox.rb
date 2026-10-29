cask "dvd-toolbox" do
  version "0.1.1"
  sha256 "9ac247adf20f8dcea67995edc31a7e34f51b2186904a9d3c27baae6072868a4c"

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
