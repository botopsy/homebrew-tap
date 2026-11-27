# Installs the prebuilt hclaro release archive for macOS and Linux (arm64 and amd64).
# Update and test steps: https://github.com/botopsy/hclaro/blob/master/docs/RELEASING.md#homebrew-formula
# For each release, update the version in the four urls and their sha256 values from hclaro_<version>_checksums.txt.
class Hclaro < Formula
  desc "Local-first manager for Terraform and OpenTofu projects"
  homepage "https://github.com/botopsy/hclaro"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/botopsy/hclaro/releases/download/v1.0.1/hclaro_1.0.1_darwin_arm64.tar.gz"
      sha256 "4eefef4a54e4c54fec836608ed78405dff762d9028aa412adac4cb92547cef93"
    end
    on_intel do
      url "https://github.com/botopsy/hclaro/releases/download/v1.0.1/hclaro_1.0.1_darwin_amd64.tar.gz"
      sha256 "ffeb24b1ca3b2322a8fd14f2a1545a16863480c3abb97ad0431a33fffbd0234a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/botopsy/hclaro/releases/download/v1.0.1/hclaro_1.0.1_linux_arm64.tar.gz"
      sha256 "09364dd8e4effb45841e55c74ee710a9575aefb4bb4933c14dd179c0228fb84d"
    end
    on_intel do
      url "https://github.com/botopsy/hclaro/releases/download/v1.0.1/hclaro_1.0.1_linux_amd64.tar.gz"
      sha256 "805232bee6f798c40196e2b6bc05be159897df4547ab916d021e9c8f0328bbac"
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
