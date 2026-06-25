cask "audistill" do
  version "0.2.0"
  sha256 "b373e29db7038c224aa659d9f87567ab7c1fd7fa2a18768d12bb508ed1b87a94"

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
