cask "syntext" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.5"
  sha256 arm:   "44ccda4ccc94de681d6d22aa3f0e728baaba2eff4f33a08ff11feba99449d566",
         intel: "e478759bb70e59f50ad707c69eab47835c54dc93f929dbfd49840343550dbec4"

  url "https://github.com/whit3rabbit/syntext/releases/download/v#{version}/st-#{version}-macos-#{arch}.zip"
  name "syntext"
  desc "Hybrid code search index for agent workflows"
  homepage "https://github.com/whit3rabbit/syntext"

  binary "st"
end
