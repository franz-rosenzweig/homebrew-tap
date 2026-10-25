cask "moshe" do
  version "0.4.1"
  sha256 "33dfe2fbabfa6c211283147e1b22993b4c59cd50ac337fc5b1086ba8fed1a542"

  url "https://github.com/franz-rosenzweig/moshe/releases/download/v#{version}/Moshe-#{version}-mac.zip"
  name "Moshe"
  desc "Writing app over a folder of plain Markdown files"
  homepage "https://github.com/franz-rosenzweig/moshe"

  depends_on macos: :sonoma

  app "Moshe.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Moshe.app"]
  end
end
