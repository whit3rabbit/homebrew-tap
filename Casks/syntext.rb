cask "syntext" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.0"
  sha256 arm:   "0780d05b62c37e874f33eec208f50341f67c8fb2d13fb2902eabf5392049289b",
         intel: "21c435ecf7b3a441ef94d015e73020d0231ad9de61df9d229deb0e3ac33f775f"

  url "https://github.com/whit3rabbit/syntext/releases/download/v#{version}/st-#{version}-macos-#{arch}.zip"
  name "syntext"
  desc "Hybrid code search index for agent workflows"
  homepage "https://github.com/whit3rabbit/syntext"

  binary "st"
end
