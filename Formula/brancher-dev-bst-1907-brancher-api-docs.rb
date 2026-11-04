class BrancherDevBst1907BrancherApiDocs < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/dev/bst-1907-brancher-api-docs/brancher-1.2.3-dev.3390-f6cc54ee3023-darwin-arm64"
  version "1.2.3.3390"
  sha256 "ad3a069300ccda635e388873a637d699636d766e1f477261fcb7018a0070173f"

  depends_on "libgcrypt"
  depends_on "zstd"

  conflicts_with "brancher", because: "both install the brancher command"

  def install
    bin.install "brancher-1.2.3-dev.3390-f6cc54ee3023-darwin-arm64" => "brancher"
  end

  test do
    assert_match "1.2.3-dev.3390-f6cc54ee3023", shell_output("#{bin}/brancher version")
  end
end
