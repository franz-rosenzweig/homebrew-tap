cask "chataltul" do
  version "0.5.1"
  sha256 "79b7425683a0c7987c89ec0b5a845ace3690f4ffe4e8263687a744723788c120"

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
