cask "dvarim" do
  version "0.2.0"
  sha256 "17880a32962aa66b97959b0530c2a641d66af1bc16f30d1c58c43087b2c94833"

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
