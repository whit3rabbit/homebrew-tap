cask "synrepo" do
  arch arm: "arm64", intel: "x86_64"

  version "0.0.7"
  sha256 arm:   "7792c152fc6be6d40e09d74ff22a89e03076a99b9845daffd743ee2a3e6ec981",
         intel: "09b586719d6861f5f8067d075eb5418fd39c11327c80b005e6c2383fb3be7267"

  url "https://github.com/whit3rabbit/synrepo/releases/download/v#{version}/synrepo-#{version}-macos-#{arch}.zip"
  name "synrepo"
  desc "A context compiler for AI coding agents"
  homepage "https://github.com/whit3rabbit/synrepo"

  binary "synrepo"
end
