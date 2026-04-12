cask "syntext" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.4"
  sha256 arm:   "2dd523d7f8ee42b4e7a982a1f5f222978faac0a4dfa20ad367cfc720278ed1db",
         intel: "c2941fe9180dff369e93acb1954ccd6a0ae571c7da175e95e9bb57b89fe4eccd"

  url "https://github.com/whit3rabbit/syntext/releases/download/v#{version}/st-#{version}-macos-#{arch}.zip"
  name "syntext"
  desc "Hybrid code search index for agent workflows"
  homepage "https://github.com/whit3rabbit/syntext"

  binary "st"
end
