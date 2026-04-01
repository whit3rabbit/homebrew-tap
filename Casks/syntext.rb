cask "syntext" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.2"
  sha256 arm:   "dd491d6b34c723724c23618ae9d2df8fcb72dfdf8a697736f373a0bef7e4895f",
         intel: "1ffe4abf694bf3e98251906f5f4cf882f9b8225ba36bfabc59eee1790653c143"

  url "https://github.com/whit3rabbit/syntext/releases/download/v#{version}/st-#{version}-macos-#{arch}.zip"
  name "syntext"
  desc "Hybrid code search index for agent workflows"
  homepage "https://github.com/whit3rabbit/syntext"

  binary "st"
end
