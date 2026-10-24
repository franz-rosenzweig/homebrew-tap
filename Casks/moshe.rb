cask "moshe" do
  version "0.2.2"
  sha256 "ed9bb6dc8d60e454404e9e0705f382f13531d0516d5d15b7898f9e8b59bb637e"

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
