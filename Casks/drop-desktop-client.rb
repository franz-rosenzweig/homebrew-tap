cask "drop-desktop-client" do
  arch arm: "aarch64", intel: "x64"

  # Drop's release tag and the version in its file names differ (v0.4.0-rc-6 vs 0.4.0),
  # so the cask carries both: "tag,file-version".
  version "0.4.0-rc-6,0.4.0"
  sha256 arm:   "5af9507a228a42c4d6a7f8e6b6a0b37fabdf79cd003d8bef2140512107604726",
         intel: "41454c8e91266e8269fd250779f9137180c669d5777afd33c6c563b4bc6b629f"

  url "https://github.com/Drop-OSS/drop/releases/download/v#{version.csv.first}/Drop.Desktop.Client_#{version.csv.second}_#{arch}.dmg"
  name "Drop Desktop Client"
  desc "Desktop app for a self-hosted Drop game store"
  homepage "https://github.com/Drop-OSS/drop"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Drop Desktop Client.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Drop Desktop Client.app"]
  end

  # No zap: ~/Library/Application Support/drop holds the games Drop installed.
end
