cask "dvarim" do
  version "0.2.1"
  sha256 "e971c2da40769fb29193b35e77bdd585ef4e40c20a8d093d7eeed6cac24380a9"

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
