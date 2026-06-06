cask "syntext" do
  arch arm: "arm64", intel: "x86_64"

  version "1.2.0"
  sha256 arm:   "6f193d27d6db0e8ce1de1af0a8fde0baee15a3ad5e4e8ace4702549e71d07c28",
         intel: "c6e3c2fe31a3e8ddaaac244af20ffab91c044edf96ceb68120d4a1b7a8ba8c7e"

  url "https://github.com/whit3rabbit/syntext/releases/download/v#{version}/st-#{version}-macos-#{arch}.zip"
  name "syntext"
  desc "Hybrid code search index for agent workflows"
  homepage "https://github.com/whit3rabbit/syntext"

  binary "st"
end
