class BrancherDevBst1880BrancherHelp < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/dev/bst-1880-brancher-help/brancher-1.2.2-dev.3355-98e2f6161f5d-darwin-arm64"
  version "1.2.2.3355"
  sha256 "2056d7c0530eab15567f5d4b63c711511dfa2015e4226ddc367def44360fbe33"

  depends_on "libgcrypt"
  depends_on "zstd"

  conflicts_with "brancher", because: "both install the brancher command"

  def install
    bin.install "brancher-1.2.2-dev.3355-98e2f6161f5d-darwin-arm64" => "brancher"
  end

  test do
    assert_match "1.2.2-dev.3355-98e2f6161f5d", shell_output("#{bin}/brancher version")
  end
end
