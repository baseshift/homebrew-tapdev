class BrancherDevBst1819BrancherDevChannel < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/dev/bst-1819-brancher-dev-channel/brancher-1.0.0-dev.3180-804dfaf5dbd9-darwin-arm64"
  version "1.0.0.3180"
  sha256 "0e73f8229f570449b4285d07d80db210be9dda042e7015fca6295972fb31e802"

  depends_on "libgcrypt"
  depends_on "zstd"

  conflicts_with "brancher", because: "both install the brancher command"

  def install
    bin.install "brancher-1.0.0-dev.3180-804dfaf5dbd9-darwin-arm64" => "brancher"
  end

  test do
    assert_match "1.0.0-dev.3180-804dfaf5dbd9", shell_output("#{bin}/brancher version")
  end
end
