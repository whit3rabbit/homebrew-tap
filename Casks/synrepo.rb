cask "synrepo" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.4"
  sha256 arm:   "4d1174e2cb338bfe6ce4a75efb038704ef13d7dc2dd61e9ee00e83fd82875a3a",
         intel: "897f686b5e94f4b92ddb4e36bf1fd134b2aba3590e815020181d84926972fb2a"

  url "https://github.com/whit3rabbit/synrepo/releases/download/v#{version}/synrepo-#{version}-macos-#{arch}.zip"
  name "synrepo"
  desc "A context compiler for AI coding agents"
  homepage "https://github.com/whit3rabbit/synrepo"

  binary "synrepo"
end
