cask "tapestry" do
  version "1.2.1"
  sha256 "dc8389a6b4822e2d4d97a8006b34a3a75acf544a0ec972659afeb752b2def8cb"

  url "https://github.com/Ethros19/tapestry/releases/download/v#{version}/Tapestry.dmg"
  name "Tapestry"
  desc "archive.org search wrapped in a Sony CHF90 cassette deck"
  homepage "https://github.com/Ethros19/tapestry"

  # The build is ad-hoc signed (no Apple Developer ID). Homebrew strips
  # com.apple.quarantine on cask installs, which is the entire reason
  # this tap exists — direct DMG downloads still need either the
  # bundled "Install Tapestry.command" or a manual `xattr -dr`.
  app "Tapestry.app"

  zap trash: [
    "~/Library/Application Support/Tapestry",
    "~/Library/Preferences/com.ethros.tapestry.plist",
    "~/Library/Saved Application State/com.ethros.tapestry.savedState",
  ]
end
