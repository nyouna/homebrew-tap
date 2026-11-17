cask "utm" do
  # Pinned to 5.0.8: 5.0.9 blurs Retina displays (utmapp/UTM#8191).
  # Fixed by utmapp/UTM#8195; drop this cask once a release contains it.
  version "5.0.8"
  sha256 "7b2d7b2e2a02b3de1757ef19a8f36573e6d9cceae8c8cca0abcbcaa4a852019a"

  url "https://github.com/utmapp/UTM/releases/download/v#{version}/UTM.dmg"
  name "UTM"
  desc "Virtual machines UI using QEMU"
  homepage "https://mac.getutm.app/"

  livecheck do
    skip "Pinned to 5.0.8 until the Retina display fix is released"
  end

  conflicts_with cask: "utm@beta"
  depends_on macos: :monterey

  app "UTM.app"
  binary "#{appdir}/UTM.app/Contents/MacOS/utmctl"

  uninstall quit: "com.utmapp.UTM"

  zap trash: [
    "~/Library/Application Scripts/*com.utmapp*",
    "~/Library/Containers/com.utmapp*",
    "~/Library/Group Containers/*.com.utmapp.UTM",
    "~/Library/Preferences/com.utmapp.UTM.plist",
    "~/Library/Saved Application State/com.utmapp.UTM.savedState",
  ]
end
