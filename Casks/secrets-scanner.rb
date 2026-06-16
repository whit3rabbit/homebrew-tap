cask "secrets-scanner" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.0"
  sha256 arm:   "2fcaae7fecbd90fd62541ee16980b7a7017b8082a8b8039cf493d206d6e45cdd",
         intel: "f26cd039a7e560a355c060890e9e6073292142ee47b3cd5f60a41ab656660e22"

  url "https://github.com/whit3rabbit/secrets-scanner/releases/download/v#{version}/secrets-scanner-#{version}-macos-#{arch}.zip"
  name "secrets-scanner"
  desc "High-performance secrets scanner using gitleaks-compatible rules"
  homepage "https://github.com/whit3rabbit/secrets-scanner"

  binary "secrets-scanner"
end
