cask "synrepo" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.0"
  sha256 arm:   "cf0efb07b8240b13d7a0c9923e33ab8ae2d04000b3c49f61444b7861ae232407",
         intel: "626cbbd3f926ae6d8eadd615252c70f543ad81ba23701d5bb2b5c0053955a22c"

  url "https://github.com/whit3rabbit/synrepo/releases/download/v#{version}/synrepo-#{version}-macos-#{arch}.zip"
  name "synrepo"
  desc "A context compiler for AI coding agents"
  homepage "https://github.com/whit3rabbit/synrepo"

  binary "synrepo"
end
