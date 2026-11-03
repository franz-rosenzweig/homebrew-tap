cask "binah" do
  version "0.2.3"
  sha256 "aa4417b6a70c069d03386d8ec942479953c429e21f9e34184b3d0a951c574e53"

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
