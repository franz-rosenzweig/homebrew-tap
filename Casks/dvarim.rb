cask "dvarim" do
  version "0.2.2"
  sha256 "52427ea050f50e15acd8f9a7f446ef846e309b4145c25d12a0fd278ac437b9a8"

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
