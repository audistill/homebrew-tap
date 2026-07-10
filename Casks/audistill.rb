cask "audistill" do
  version "0.4.1"
  sha256 "fb91d4b257100cfda3f0ea5674bb66206612dfee64829f5727eed8f2c4fb510a"

  url "https://github.com/audistill/audistill/releases/download/v#{version}/Audistill-#{version}-arm64.dmg",
      verified: "github.com/audistill/audistill/"
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
