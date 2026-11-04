class BrancherDevBst1908BrancherPortRange < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/dev/bst-1908-brancher-port-range/brancher-1.2.4-dev.3393-d2158a61d1b5-darwin-arm64"
  version "1.2.4.3393"
  sha256 "4ba4582e9667a052152e72c1ed1ffcfd9b87c8c21502d6f56d3f21bcd10fa109"

  depends_on "libgcrypt"
  depends_on "zstd"

  conflicts_with "brancher", because: "both install the brancher command"

  def install
    bin.install "brancher-1.2.4-dev.3393-d2158a61d1b5-darwin-arm64" => "brancher"
  end

  test do
    assert_match "1.2.4-dev.3393-d2158a61d1b5", shell_output("#{bin}/brancher version")
  end
end
