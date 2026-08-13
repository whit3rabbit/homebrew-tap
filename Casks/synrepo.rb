cask "synrepo" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.4"
  sha256 arm:   "0575a1fc466c645c8b1b90d209dc467b0e9a5a8d25f001f8ced01ff0e953d53c",
         intel: "71f54d7fe081a74e5515c98bf9f974f7b7a68288878ceeb5b586386923ade94d"

  url "https://github.com/whit3rabbit/synrepo/releases/download/v#{version}/synrepo-#{version}-macos-#{arch}.zip"
  name "synrepo"
  desc "A context compiler for AI coding agents"
  homepage "https://github.com/whit3rabbit/synrepo"

  binary "synrepo"
end
