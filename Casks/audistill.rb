cask "audistill" do
  version "0.6.1"
  sha256 "00a1c177813ab6f7217baa4ae3743fbb9ca3b2e02534828f56451cfb6ddaaa74"

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
