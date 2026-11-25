# Installs the prebuilt hclaro release archive for macOS and Linux (arm64 and amd64).
# Update and test steps: https://github.com/botopsy/hclaro/blob/master/docs/RELEASING.md#homebrew-formula
# For each release, update the version in the four urls and their sha256 values from hclaro_<version>_checksums.txt.
class Hclaro < Formula
  desc "Local-first manager for Terraform and OpenTofu projects"
  homepage "https://github.com/botopsy/hclaro"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/botopsy/hclaro/releases/download/v1.0.0/hclaro_1.0.0_darwin_arm64.tar.gz"
      sha256 "7a5b55b411423c02032158b0af798e36bcfab733a610c84e52183384f9d23869"
    end
    on_intel do
      url "https://github.com/botopsy/hclaro/releases/download/v1.0.0/hclaro_1.0.0_darwin_amd64.tar.gz"
      sha256 "a9bdd72530781630e08e50c964a24c257e85f26f0c88c876bf5769fd52b3c3af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/botopsy/hclaro/releases/download/v1.0.0/hclaro_1.0.0_linux_arm64.tar.gz"
      sha256 "14f091d1495e911afd5c335c1619377f344da6c1fe9c511e4341831da661839f"
    end
    on_intel do
      url "https://github.com/botopsy/hclaro/releases/download/v1.0.0/hclaro_1.0.0_linux_amd64.tar.gz"
      sha256 "e5f282f60d86186364a8b898f6235c4326469a19a2d67c74673cb77531e7f306"
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
