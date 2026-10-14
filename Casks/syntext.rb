cask "syntext" do
  arch arm: "arm64", intel: "x86_64"

  version "2.6.0"
  sha256 arm:   "57047e4a6861aca2d36e68af75f2fcda986bf88276f39e96d678cd538c78351f",
         intel: "12e6569e68c527d53b0e59f236f6f139809639e8fed7613c31fa7b7a920d92b5"

  url "https://github.com/whit3rabbit/syntext/releases/download/v#{version}/st-#{version}-macos-#{arch}.zip"
  name "syntext"
  desc "Hybrid code search index for agent workflows"
  homepage "https://github.com/whit3rabbit/syntext"

  binary "st"
end
