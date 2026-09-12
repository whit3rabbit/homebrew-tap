cask "syntext" do
  arch arm: "arm64", intel: "x86_64"

  version "2.4.0"
  sha256 arm:   "8a4d49f15a4142b0324826bc152a874a9e85de8906236a22e0d40d8b7bff61b5",
         intel: "1bff0ab4604cd1b07b1c710a00efb98e02e25c4164da879d361e9cb8af805606"

  url "https://github.com/whit3rabbit/syntext/releases/download/v#{version}/st-#{version}-macos-#{arch}.zip"
  name "syntext"
  desc "Hybrid code search index for agent workflows"
  homepage "https://github.com/whit3rabbit/syntext"

  binary "st"
end
