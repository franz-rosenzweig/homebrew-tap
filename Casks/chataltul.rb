cask "chataltul" do
  version "0.7.0"
  sha256 "f4f0efd756478f7822a40ddab911f8146b38b03dca0559e6792c824472ca00cd"

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
