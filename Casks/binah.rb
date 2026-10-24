cask "binah" do
  version "0.2.2"
  sha256 "4c32419f89a748dbccacb060533d984fb26a47b6b161e3863a0d2f3ed8684931"

  url "https://github.com/franz-rosenzweig/binah/releases/download/v#{version}/Binah-#{version}-mac.zip"
  name "Binah"
  desc "Daily training for reading closely, reasoning and speaking"
  homepage "https://github.com/franz-rosenzweig/binah"

  depends_on macos: :tahoe

  app "Binah.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Binah.app"]
  end
end
