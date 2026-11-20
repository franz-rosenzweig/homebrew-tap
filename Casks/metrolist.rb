cask "metrolist" do
  arch arm: "arm64", intel: "x64"

  version "14.0.1"
  sha256 arm:   "1ffc14e691ce5bcb50d4a08d3aba6fba725458e4a07edb9125cbc08c7001ae29",
         intel: "43fbb98130f23532c7217db4152f67eee257a543fc1926a5f27a70c9b49bbfba"

  url "https://github.com/MetrolistGroup/Metrolist/releases/download/v#{version}/metrolist-desktop-macos-#{arch}-#{version}.dmg"
  name "Metrolist"
  desc "YouTube Music client"
  homepage "https://github.com/MetrolistGroup/Metrolist"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Metrolist.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Metrolist.app"]
  end

  zap trash: [
    "~/Library/Application Support/Metrolist",
    "~/Library/Caches/com.metrolist.desktop",
    "~/Library/HTTPStorages/com.metrolist.desktop",
    "~/Library/HTTPStorages/com.metrolist.desktop.binarycookies",
    "~/Library/Preferences/com.metrolist.composeapp.plist",
    "~/Library/Preferences/com.metrolist.desktop.plist",
  ]
end
