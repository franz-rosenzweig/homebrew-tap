cask "chataltul" do
  version "0.6.0"
  sha256 "db516add01323ca92924c1b64ed897d9325ada08e34de9185e91069244e35936"

  url "https://github.com/franz-rosenzweig/kavana-apps/releases/download/mac-v#{version}/Chataltul-#{version}-mac.zip"
  name "Chataltul"
  desc "Focus timer with a kitten: check-ins, a cat over distracting apps, breaks and a week in review"
  homepage "https://github.com/franz-rosenzweig/kavana-apps"

  depends_on macos: :sonoma

  app "Chataltul.app"

  zap trash: "~/Library/Containers/xyz.tiresia.chataltul.widgets"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Chataltul.app"]
  end
end
