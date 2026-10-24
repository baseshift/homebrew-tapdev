class BrancherDevBst1878BrancherUid < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/dev/bst-1878-brancher-uid/brancher-1.2.1-dev.3352-4215f5ba321e-darwin-arm64"
  version "1.2.1.3352"
  sha256 "70204797312241f4eea837b6886e030a320b6b2985739ea4511c5c63638c30dd"

  depends_on "libgcrypt"
  depends_on "zstd"

  conflicts_with "brancher", because: "both install the brancher command"

  def install
    bin.install "brancher-1.2.1-dev.3352-4215f5ba321e-darwin-arm64" => "brancher"
  end

  test do
    assert_match "1.2.1-dev.3352-4215f5ba321e", shell_output("#{bin}/brancher version")
  end
end
