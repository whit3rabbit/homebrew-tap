cask "synrepo" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.5"
  sha256 arm:   "2221077408bd3b34ee50ca37d959220b404ed819a0976ba07f0e1a57ac2dc65f",
         intel: "e58f5b75833c6125e295084ff4b0ce7e982161f9ed69f8c2d162da497d17a473"

  url "https://github.com/whit3rabbit/synrepo/releases/download/v#{version}/synrepo-#{version}-macos-#{arch}.zip"
  name "synrepo"
  desc "A context compiler for AI coding agents"
  homepage "https://github.com/whit3rabbit/synrepo"

  binary "synrepo"
end
