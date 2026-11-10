cask "dvarim" do
  version "0.2.3"
  sha256 "b4fc2f1f2c9b4c75b5688a0939d27c35837ab57b8e5a2885ba8cc72d7c83e222"

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
