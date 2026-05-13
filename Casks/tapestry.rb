cask "tapestry" do
  version "1.2.2"
  sha256 "d922cabd8abdca49f31f796db867dd7421ada31b6e0b22334694a58d9748aa04"

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
