cask "chataltul" do
  version "0.4.0"
  sha256 "e52e56d40361bbf7df97484d0b7a00ce6c942ee8b2231013a25c490a666790ab"

  url "https://github.com/franz-rosenzweig/kavana-apps/releases/download/mac-v#{version}/Chataltul-#{version}-mac.zip"
  name "Chataltul"
  desc "Focus timer with a kitten: check-ins, a cat over distracting apps, breaks and a week in review"
  homepage "https://github.com/franz-rosenzweig/kavana-apps"

  depends_on macos: ">= :sonoma"

  app "Chataltul.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/Chataltul.app"]
  end
end
