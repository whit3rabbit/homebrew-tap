cask "synrepo" do
  arch arm: "arm64", intel: "x86_64"

  version "0.3.0"
  sha256 arm:   "daa4229acbebd6fa8cdd81aacf0e7ecab570e6f1e92943dd3eb530476cde4076",
         intel: "ee5e36bcd6d906dde5ea97d545261f933a6c5e50e0f123775827bf2204f250e5"

  url "https://github.com/whit3rabbit/synrepo/releases/download/v#{version}/synrepo-#{version}-macos-#{arch}.zip"
  name "synrepo"
  desc "A context compiler for AI coding agents"
  homepage "https://github.com/whit3rabbit/synrepo"

  binary "synrepo"
end
