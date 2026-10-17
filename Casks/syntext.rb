cask "syntext" do
  arch arm: "arm64", intel: "x86_64"

  version "2.7.1"
  sha256 arm:   "a229ad62102d6920e40e827707ed4b0a139a3199e97f39b875934de1e6e9fd18",
         intel: "b604be36c113c21350e5dec8167689037dd61d2c64116d4fc2b4a4bf155da9f5"

  url "https://github.com/whit3rabbit/syntext/releases/download/v#{version}/st-#{version}-macos-#{arch}.zip"
  name "syntext"
  desc "Hybrid code search index for agent workflows"
  homepage "https://github.com/whit3rabbit/syntext"

  binary "st"
end
