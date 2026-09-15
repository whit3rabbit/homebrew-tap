cask "synrepo" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.1"
  sha256 arm:   "848baa770e84b18e0ac555ba69652efbf8734ed6937680a48892aad503fb6e9f",
         intel: "9511d6fcb6b1f507dd8a1d195032c04ec4ee057f50a4a4835a05027f0ea4daf2"

  url "https://github.com/whit3rabbit/synrepo/releases/download/v#{version}/synrepo-#{version}-macos-#{arch}.zip"
  name "synrepo"
  desc "A context compiler for AI coding agents"
  homepage "https://github.com/whit3rabbit/synrepo"

  binary "synrepo"
end
