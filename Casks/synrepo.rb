cask "synrepo" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.2"
  sha256 arm:   "2173a3fc2382cf45a19060a8aa6c45b57d73e1948d8716e55cbcad51300daa9f",
         intel: "9375b5f7021d73e40a906bb4ac7ee14feff124a5048f8f6b2cd82d0b3a5e71c3"

  url "https://github.com/whit3rabbit/synrepo/releases/download/v#{version}/synrepo-#{version}-macos-#{arch}.zip"
  name "synrepo"
  desc "A context compiler for AI coding agents"
  homepage "https://github.com/whit3rabbit/synrepo"

  binary "synrepo"
end
