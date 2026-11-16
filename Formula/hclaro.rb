# Installs the prebuilt hclaro release archive for macOS and Linux (arm64 and amd64).
# Update and test steps: https://github.com/botopsy/hclaro/blob/master/docs/RELEASING.md#homebrew-formula
# For each release, update the version in the four urls and their sha256 values from hclaro_<version>_checksums.txt.
class Hclaro < Formula
  desc "Local-first manager for Terraform and OpenTofu projects"
  homepage "https://github.com/botopsy/hclaro"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/botopsy/hclaro/releases/download/v0.1.0-beta.5/hclaro_0.1.0-beta.5_darwin_arm64.tar.gz"
      sha256 "b0a79c8b3dd8c86a53bdcadfa491ef1b6985986fc6117225232c898749e9890d"
    end
    on_intel do
      url "https://github.com/botopsy/hclaro/releases/download/v0.1.0-beta.5/hclaro_0.1.0-beta.5_darwin_amd64.tar.gz"
      sha256 "1d192bfd3d5570f51b0e8c8d71eb87631a26aa7a8ec98213c5061f2d78a0089d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/botopsy/hclaro/releases/download/v0.1.0-beta.5/hclaro_0.1.0-beta.5_linux_arm64.tar.gz"
      sha256 "31a7b7b42339ddcbe590ad25ddcf840e90b1fa305c95079a465b420d87fe66ac"
    end
    on_intel do
      url "https://github.com/botopsy/hclaro/releases/download/v0.1.0-beta.5/hclaro_0.1.0-beta.5_linux_amd64.tar.gz"
      sha256 "f0bd12a1006b20750149867dc68ec8ddcff9d45506d3c4ad277d00be86ed76f4"
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
