cask "syntext" do
  arch arm: "arm64", intel: "x86_64"

  version "2.3.0"
  sha256 arm:   "c71933a8f8e8c527f87db5c48e088595acd5abfdf232d375df99bd36b2dce60e",
         intel: "7b4f2c7c3b2fde67ebb28e230effb14158be5afdaf85f178222b2b888a0613b5"

  url "https://github.com/whit3rabbit/syntext/releases/download/v#{version}/st-#{version}-macos-#{arch}.zip"
  name "syntext"
  desc "Hybrid code search index for agent workflows"
  homepage "https://github.com/whit3rabbit/syntext"

  binary "st"
end
