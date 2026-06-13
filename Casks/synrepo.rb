cask "synrepo" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.2"
  sha256 arm:   "f30bd730fd6ef33c1b07ffed93dde0fea75327f61a3fe4fa2df5fc0e9960afe8",
         intel: "fad677db3ddeadd82f36bf4d432d792cc18ef49a09839f1820b6dbadb7376ded"

  url "https://github.com/whit3rabbit/synrepo/releases/download/v#{version}/synrepo-#{version}-macos-#{arch}.zip"
  name "synrepo"
  desc "A context compiler for AI coding agents"
  homepage "https://github.com/whit3rabbit/synrepo"

  binary "synrepo"
end
