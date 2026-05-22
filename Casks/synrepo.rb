cask "synrepo" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.6"
  sha256 arm:   "07ab896fe1e4c5f68b3b0e0dc4f23dcf11bcdbcb843061691ba1216715438141",
         intel: "d581f84ca98c2a49e4f228e73764d0682f8787e06f55a879e66a041bf2b5deb8"

  url "https://github.com/whit3rabbit/synrepo/releases/download/v#{version}/synrepo-#{version}-macos-#{arch}.zip"
  name "synrepo"
  desc "A context compiler for AI coding agents"
  homepage "https://github.com/whit3rabbit/synrepo"

  binary "synrepo"
end
