cask "turbospark" do
  version "0.5.0"
  sha256 "4a9293bb44d3ecc742f5875daaf012782898f8da07d0aa15e067463819915515"

  url "https://github.com/whit3rabbit/turbospark/releases/download/v#{version}/TurboSpark-#{version}-arm64.dmg"
  name "TurboSpark"
  desc "Apple Silicon MoE inference engine streaming expert weights from SSD"
  homepage "https://github.com/whit3rabbit/turbospark"

  # The app updates itself through Sparkle (the release's signed
  # appcast), replacing the bundle in place. Without this stanza
  # brew would keep offering  for versions the app
  # already installed, and an upgrade would fight the updater over
  # the same /Applications path.
  auto_updates true

  depends_on arch: :arm64
  depends_on macos: :sonoma

  conflicts_with cask: "whit3rabbit/tap/turbospark-cli"

  app "TurboSpark.app"

  # The four CLI binaries (the `turbospark` front end plus the three
  # tools) ship inside the bundle; make-app-bundle.sh signs them.
  # Linking them from there rather than shipping a second copy is what lets one cask
  # cover both, and it means `brew uninstall` removes the app and
  # unlinks the commands in one step.
  binary "#{appdir}/TurboSpark.app/Contents/MacOS/turbospark"
  binary "#{appdir}/TurboSpark.app/Contents/MacOS/turbospark-check"
  binary "#{appdir}/TurboSpark.app/Contents/MacOS/turbospark-model"
  binary "#{appdir}/TurboSpark.app/Contents/MacOS/turbospark-server"

  # Only runs under `brew uninstall --zap`. Deliberately does NOT
  # list ~/.turbospark: that is where multi-gigabyte model installs
  # live, and a zap is not the place to silently delete them.
  zap trash: [
    "~/Library/Application Support/TurboSpark",
    "~/Library/Preferences/com.whit3rabbit.turbospark.plist",
    "~/Library/Saved Application State/com.whit3rabbit.turbospark.savedState",
  ]
end
