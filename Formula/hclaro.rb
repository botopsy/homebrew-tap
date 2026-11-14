# Installs the prebuilt hclaro release archive for macOS and Linux (arm64 and amd64).
# Update and test steps: https://github.com/botopsy/hclaro/blob/master/docs/RELEASING.md#homebrew-formula
# For each release, update the version in the four urls and their sha256 values from hclaro_<version>_checksums.txt.
class Hclaro < Formula
  desc "Local-first manager for Terraform and OpenTofu projects"
  homepage "https://github.com/botopsy/hclaro"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/botopsy/hclaro/releases/download/v0.1.0-beta.4/hclaro_0.1.0-beta.4_darwin_arm64.tar.gz"
      sha256 "e9764e016e5e46cf7a76aa33e7f79db9c33bf008c39aafb33ce36b14e5d21708"
    end
    on_intel do
      url "https://github.com/botopsy/hclaro/releases/download/v0.1.0-beta.4/hclaro_0.1.0-beta.4_darwin_amd64.tar.gz"
      sha256 "67b0786e0f86d23f996a1e7142b8196ea5c4607adc2ba607dcb72680e2cab524"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/botopsy/hclaro/releases/download/v0.1.0-beta.4/hclaro_0.1.0-beta.4_linux_arm64.tar.gz"
      sha256 "a73f6345387df05f5ad837d2946596fe03bd0137402c822bd2460e3b5666fca1"
    end
    on_intel do
      url "https://github.com/botopsy/hclaro/releases/download/v0.1.0-beta.4/hclaro_0.1.0-beta.4_linux_amd64.tar.gz"
      sha256 "617a757f6e61e27d19a712692423a893e69fcc68e6c5380c5477d56158e300a8"
    end
  end

  def install
    bin.install "hclaro"
    prefix.install "THIRD-PARTY-NOTICES.txt"
  end

  test do
    assert_equal "hclaro #{version}", shell_output("#{bin}/hclaro --version").strip
  end
end
