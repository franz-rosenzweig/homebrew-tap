cask "dvarim" do
  version "0.2.4"
  sha256 "bec86a6a6c1e5883ffe7b7cf97b9548b6a068b5e8a0084e9629d21a3cd15f966"

  url "https://github.com/franz-rosenzweig/dvarim/releases/download/v#{version}/Dvarim-#{version}-mac.zip"
  name "Dvarim"
  desc "To-do app whose to-dos are lines in Markdown files"
  homepage "https://github.com/franz-rosenzweig/dvarim"

  depends_on macos: :tahoe

  app "Dvarim.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Dvarim.app"]
  end
end
