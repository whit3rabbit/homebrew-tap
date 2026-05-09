cask "synrepo" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.3"
  sha256 arm:   "43ca71404377daf76fbb62eb3395f600c3b4092dbf2938e5141d90455edf364a",
         intel: "5f81ed90d4ac0d4722c9f0c349e8327e8838a783e599480d4259e1289e904f26"

  url "https://github.com/whit3rabbit/synrepo/releases/download/v#{version}/synrepo-#{version}-macos-#{arch}.zip"
  name "synrepo"
  desc "A context compiler for AI coding agents"
  homepage "https://github.com/whit3rabbit/synrepo"

  binary "synrepo"
end
