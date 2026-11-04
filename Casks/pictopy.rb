cask "pictopy" do
  arch arm: "aarch64"

  version "1.3.0-beta"
  sha256 "bf7037ae9e130d7dc128488fba7f85221f400f13bcd278f25d6aa5f003c55901"

  url "https://github.com/AOSSIE-Org/PictoPy/releases/download/v#{version}/PictoPy_#{arch}.app.tar.gz"
  name "PictoPy"
  desc "AI-powered desktop photo gallery"
  homepage "https://github.com/AOSSIE-Org/PictoPy"

  depends_on arch: :arm64
  depends_on :macos

  app "PictoPy.app"

  zap trash: [
    "~/Library/Application Support/org.aossie.pictopy",
    "~/Library/Caches/org.aossie.pictopy",
    "~/Library/Saved Application State/org.aossie.pictopy.savedState",
  ]
end
