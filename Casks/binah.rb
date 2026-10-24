cask "binah" do
  version "0.2.1"
  sha256 "2486382f84ce64167ff078a976ec4af39291157cc05c54ae59728812f4901fce"

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
