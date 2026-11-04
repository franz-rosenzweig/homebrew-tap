cask "chataltul" do
  version "0.5.2"
  sha256 "d48813131bbf27a6e4eeb08474a4ca39a8973d26acbeb59e79b787abddc1381f"

  url "https://github.com/franz-rosenzweig/kavana-apps/releases/download/mac-v#{version}/Chataltul-#{version}-mac.zip"
  name "Chataltul"
  desc "Focus timer with a kitten: check-ins, a cat over distracting apps, breaks and a week in review"
  homepage "https://github.com/franz-rosenzweig/kavana-apps"

  depends_on macos: ">= :sonoma"

  app "Chataltul.app"

  zap trash: "~/Library/Containers/xyz.tiresia.chataltul.widgets"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/Chataltul.app"]
  end
end
