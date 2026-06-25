cask "audistill" do
  version "0.2.1"
  sha256 "96b16ccdf5c54e855634eb533052b263032d1db5214d79d35ab1278714cd3b98"

  url "https://github.com/audistill/audistill/releases/download/v#{version}/Audistill-#{version}-arm64.dmg"
  name "Audistill"
  desc "Local-first audio transcription and summarization for macOS"
  homepage "https://audistill.com"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Audistill.app"

  zap trash: [
    "~/Library/Application Support/Audistill",
    "~/Library/Preferences/com.audistill.app.plist",
    "~/Library/Saved Application State/com.audistill.app.savedState",
  ]
end
