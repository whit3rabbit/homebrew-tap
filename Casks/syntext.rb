cask "syntext" do
  arch arm: "arm64", intel: "x86_64"

  version "1.3.0"
  sha256 arm:   "d70868bb35958e7e1e51e11956a1df764fd8fdd2cb64c7602fda5f93d79c89b9",
         intel: "c924e34f3c82ea75f1d6f68e60bcdbcb5466116f85ae70fda4d26e7000160c92"

  url "https://github.com/whit3rabbit/syntext/releases/download/v#{version}/st-#{version}-macos-#{arch}.zip"
  name "syntext"
  desc "Hybrid code search index for agent workflows"
  homepage "https://github.com/whit3rabbit/syntext"

  binary "st"
end
