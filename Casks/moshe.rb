cask "moshe" do
  version "0.2.0"
  sha256 "f21110c7d716bd9aa9a7d85111e2997c197343aabe7ae28a83eab90f0c253fe8"

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
