cask "syntext" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.0"
  sha256 arm:   "abd83d7fcee221f2c4a1b10d6164309f3f2350c0c74684198849b5333656237f",
         intel: "68971e6e49a649e94f2cdc9a989ca9da5168c0df8bdd27d6fc92db31c791c744"

  url "https://github.com/whit3rabbit/syntext/releases/download/v#{version}/st-#{version}-macos-#{arch}.zip"
  name "syntext"
  desc "Hybrid code search index for agent workflows"
  homepage "https://github.com/whit3rabbit/syntext"

  binary "st"
end
