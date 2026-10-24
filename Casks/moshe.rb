cask "moshe" do
  version "0.2.3"
  sha256 "d020888ce03405572e3276a0de1513e6fe09cf4667b5f07ca86cbf6a852619f6"

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
