cask "moshe" do
  version "0.4.0"
  sha256 "418df79b40120cb55f0fcec08c4fb322bbcec92483bb2786511b507d88a62c85"

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
