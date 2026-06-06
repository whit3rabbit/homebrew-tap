cask "synrepo" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.1"
  sha256 arm:   "b5a88841defa7cc9901a430a2a79c1c06d1d4b278ae750dc714013b0b856c88e",
         intel: "84ca831f0ba75ca93956578b448ad40de29db83580464f2030a7ceed951f708c"

  url "https://github.com/whit3rabbit/synrepo/releases/download/v#{version}/synrepo-#{version}-macos-#{arch}.zip"
  name "synrepo"
  desc "A context compiler for AI coding agents"
  homepage "https://github.com/whit3rabbit/synrepo"

  binary "synrepo"
end
