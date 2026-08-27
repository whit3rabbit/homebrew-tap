cask "syntext" do
  arch arm: "arm64", intel: "x86_64"

  version "2.1.0"
  sha256 arm:   "0756247be0c15c18684191f6716b54192964f2dba34c0618e890354708ed9968",
         intel: "6fc2e392228caac723c9caee96b06ce1d6793ed2b2d6032e50de7550bf018096"

  url "https://github.com/whit3rabbit/syntext/releases/download/v#{version}/st-#{version}-macos-#{arch}.zip"
  name "syntext"
  desc "Hybrid code search index for agent workflows"
  homepage "https://github.com/whit3rabbit/syntext"

  binary "st"
end
