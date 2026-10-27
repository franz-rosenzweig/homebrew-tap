cask "chataltul" do
  version "0.3.0"
  sha256 "7880684dfb319276c0f818481ca9ad8a40c1dd8374e8ed27d623ac3f90b77ba7"

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
