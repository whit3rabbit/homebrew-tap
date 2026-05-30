cask "synrepo" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.8"
  sha256 arm:   "3e6e944baffddf27b8f15ce63e27f306176f9e249ff11d4c22850c7eed8ce1c7",
         intel: "e63d17a1002af9cc53f5e8a35ae16e7b2347607de395b6d95ef917e328c50f7d"

  url "https://github.com/whit3rabbit/synrepo/releases/download/v#{version}/synrepo-#{version}-macos-#{arch}.zip"
  name "synrepo"
  desc "A context compiler for AI coding agents"
  homepage "https://github.com/whit3rabbit/synrepo"

  binary "synrepo"
end
