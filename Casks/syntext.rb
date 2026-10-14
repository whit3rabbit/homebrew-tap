cask "syntext" do
  arch arm: "arm64", intel: "x86_64"

  version "2.7.0"
  sha256 arm:   "395ea1d4b6eddb247971c41f52f7b1acb7bfc7e4a3a68a8a7bd982e14b0db250",
         intel: "2832e923fe5b1fafeb7afee90275d88f34b033031aabf32252026499376c74a9"

  url "https://github.com/whit3rabbit/syntext/releases/download/v#{version}/st-#{version}-macos-#{arch}.zip"
  name "syntext"
  desc "Hybrid code search index for agent workflows"
  homepage "https://github.com/whit3rabbit/syntext"

  binary "st"
end
