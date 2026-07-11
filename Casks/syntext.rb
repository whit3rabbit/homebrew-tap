cask "syntext" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.0"
  sha256 arm:   "dbaf3fb32e61cfce14cc63979486dfc154470be430f1c0260c45ee5155b96f05",
         intel: "fc987a9628104b513088339e818f99357f8990481cb0607d1de9e6291d9b3b6f"

  url "https://github.com/whit3rabbit/syntext/releases/download/v#{version}/st-#{version}-macos-#{arch}.zip"
  name "syntext"
  desc "Hybrid code search index for agent workflows"
  homepage "https://github.com/whit3rabbit/syntext"

  binary "st"
end
