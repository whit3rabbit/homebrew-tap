cask "synrepo" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.9"
  sha256 arm:   "ac656f6fcf728b109000648739223d4573620c4a314b866bfbc0a44fcbeccc43",
         intel: "69461c9f265bb7af93a244bb7e6e58b51c190af53fbc99014f377af4ee4f569d"

  url "https://github.com/whit3rabbit/synrepo/releases/download/v#{version}/synrepo-#{version}-macos-#{arch}.zip"
  name "synrepo"
  desc "A context compiler for AI coding agents"
  homepage "https://github.com/whit3rabbit/synrepo"

  binary "synrepo"
end
