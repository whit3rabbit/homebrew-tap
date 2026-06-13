cask "syntext" do
  arch arm: "arm64", intel: "x86_64"

  version "1.4.0"
  sha256 arm:   "fb553ebcb171b0ffb5c5f11a0a3ed6d1d1f2b632212b5f4125155660ec51bb97",
         intel: "294b69bd5069b1673744584947cd735747e93a73a6fd9f2fc0f46a516e01a02d"

  url "https://github.com/whit3rabbit/syntext/releases/download/v#{version}/st-#{version}-macos-#{arch}.zip"
  name "syntext"
  desc "Hybrid code search index for agent workflows"
  homepage "https://github.com/whit3rabbit/syntext"

  binary "st"
end
