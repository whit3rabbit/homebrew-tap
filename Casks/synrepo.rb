cask "synrepo" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.3"
  sha256 arm:   "6f5dd4682074ec80df8cb1ac2aef2c6c425bd8fd8e2ef4653aa8ef4dda04ec21",
         intel: "4e8e4d71fa73925206bb7ae848002998fd36509d3116b05a8eff80b37d7bc173"

  url "https://github.com/whit3rabbit/synrepo/releases/download/v#{version}/synrepo-#{version}-macos-#{arch}.zip"
  name "synrepo"
  desc "A context compiler for AI coding agents"
  homepage "https://github.com/whit3rabbit/synrepo"

  binary "synrepo"
end
