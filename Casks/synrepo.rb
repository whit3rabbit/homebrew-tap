cask "synrepo" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.10"
  sha256 arm:   "285372a95e98e1e65be21ecc8c5e1f352a31b6103452b452a909e5582b9b3a18",
         intel: "ebe3fc664469cb7c0046f4f3f7a8a5d4c16d8f55a29e366e42bd744e22326654"

  url "https://github.com/whit3rabbit/synrepo/releases/download/v#{version}/synrepo-#{version}-macos-#{arch}.zip"
  name "synrepo"
  desc "A context compiler for AI coding agents"
  homepage "https://github.com/whit3rabbit/synrepo"

  binary "synrepo"
end
