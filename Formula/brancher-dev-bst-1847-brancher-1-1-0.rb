class BrancherDevBst1847Brancher110 < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/dev/bst-1847-brancher-1-1-0/brancher-1.1.0-dev.3238-975c15ab52f6-darwin-arm64"
  version "1.1.0.3238"
  sha256 "8f3b083ab10befe3dd16a387a5aaa00f244afb1138a22a4aa43a4007dd7c2e23"

  depends_on "libgcrypt"
  depends_on "zstd"

  conflicts_with "brancher", because: "both install the brancher command"

  def install
    bin.install "brancher-1.1.0-dev.3238-975c15ab52f6-darwin-arm64" => "brancher"
  end

  test do
    assert_match "1.1.0-dev.3238-975c15ab52f6", shell_output("#{bin}/brancher version")
  end
end
