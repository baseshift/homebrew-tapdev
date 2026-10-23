class BrancherDevBst1878BrancherUid < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/dev/bst-1878-brancher-uid/brancher-1.2.1-dev.3336-42b23d5e386a-darwin-arm64"
  version "1.2.1.3336"
  sha256 "1e60eb6c0ddbd0417054519044c6c9465f820ec51240249c1a0d5d675ad01e5f"

  depends_on "libgcrypt"
  depends_on "zstd"

  conflicts_with "brancher", because: "both install the brancher command"

  def install
    bin.install "brancher-1.2.1-dev.3336-42b23d5e386a-darwin-arm64" => "brancher"
  end

  test do
    assert_match "1.2.1-dev.3336-42b23d5e386a", shell_output("#{bin}/brancher version")
  end
end
