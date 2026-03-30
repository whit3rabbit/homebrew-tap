cask "syntext" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.1"
  sha256 arm:   "6a5c8981969bc9b2904f9fffd7f135c8117c403ab05b21eefa198b7f30d561f6",
         intel: "9aa8b291be2ad4737d819a36d2ea12270d72560d2ccbe44fa5779903d7f09662"

  url "https://github.com/whit3rabbit/syntext/releases/download/v#{version}/st-#{version}-macos-#{arch}.zip"
  name "syntext"
  desc "Hybrid code search index for agent workflows"
  homepage "https://github.com/whit3rabbit/syntext"

  binary "st"
end
