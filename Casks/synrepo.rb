cask "synrepo" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.0"
  sha256 arm:   "9292dff2704dc394ad50009d65888b0793ba0e00b7bd9ed6df8466e5301c0de8",
         intel: "60628227af7018a26225a8c9b390ceb83c02d6e41f7e1ad740597e2ad3294643"

  url "https://github.com/whit3rabbit/synrepo/releases/download/v#{version}/synrepo-#{version}-macos-#{arch}.zip"
  name "synrepo"
  desc "A context compiler for AI coding agents"
  homepage "https://github.com/whit3rabbit/synrepo"

  binary "synrepo"
end
