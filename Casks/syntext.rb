cask "syntext" do
  arch arm: "arm64", intel: "x86_64"

  version "2.5.0"
  sha256 arm:   "8cc591da5f14b8d602e1190f22bebf8b4d80b81c79fe1682cc97e3428ccdf0c6",
         intel: "1e23ccdafa81e76eb3a72acab89202b5cd6f1e0d7e21f036be5fb91d0a808e8a"

  url "https://github.com/whit3rabbit/syntext/releases/download/v#{version}/st-#{version}-macos-#{arch}.zip"
  name "syntext"
  desc "Hybrid code search index for agent workflows"
  homepage "https://github.com/whit3rabbit/syntext"

  binary "st"
end
