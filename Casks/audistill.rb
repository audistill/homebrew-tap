cask "audistill" do
  version "0.6.0"
  sha256 "392dc3ab2a682eaa3061dfd30365a1eee319b6819f1f6b9ac699ca51dcfa077f"

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
