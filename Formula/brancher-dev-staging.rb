class BrancherDevStaging < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/dev/staging/brancher-1.2.4-dev.3413-039ae9e09da7-darwin-arm64"
  version "1.2.4.3413"
  sha256 "1808f879166aad6c64a6db6d7c64ec13b21442775d82240453343a14b8323f3f"

  depends_on "libgcrypt"
  depends_on "zstd"

  conflicts_with "brancher", because: "both install the brancher command"

  def install
    bin.install "brancher-1.2.4-dev.3413-039ae9e09da7-darwin-arm64" => "brancher"
  end

  test do
    assert_match "1.2.4-dev.3413-039ae9e09da7", shell_output("#{bin}/brancher version")
  end
end
