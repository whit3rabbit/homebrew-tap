cask "synrepo" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.11"
  sha256 arm:   "3fc963f68dc630b9be55b10cd490759f03cfb864e5582c94f4c516cefaeff00b",
         intel: "154654c044515cd8a792fd63d6636ceab301830dde82fb831f0f0a8d1b2fd230"

  url "https://github.com/whit3rabbit/synrepo/releases/download/v#{version}/synrepo-#{version}-macos-#{arch}.zip"
  name "synrepo"
  desc "A context compiler for AI coding agents"
  homepage "https://github.com/whit3rabbit/synrepo"

  binary "synrepo"
end
