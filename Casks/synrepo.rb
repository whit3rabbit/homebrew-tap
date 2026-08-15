cask "synrepo" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.5"
  sha256 arm:   "889109fb963ad2ee61f39fda8c63cd515391ac98f866483ad0b7653110947000",
         intel: "f91b63c92e31c49a6cfc2524a00b81f052cc54a2743562dbb62db9b70ff62815"

  url "https://github.com/whit3rabbit/synrepo/releases/download/v#{version}/synrepo-#{version}-macos-#{arch}.zip"
  name "synrepo"
  desc "A context compiler for AI coding agents"
  homepage "https://github.com/whit3rabbit/synrepo"

  binary "synrepo"
end
