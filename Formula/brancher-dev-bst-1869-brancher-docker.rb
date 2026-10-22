class BrancherDevBst1869BrancherDocker < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/dev/bst-1869-brancher-docker/brancher-1.1.0-dev.3309-d0a2d583c1fa-darwin-arm64"
  version "1.1.0.3309"
  sha256 "6aa550b3700d85b1ab402341812643a031476dde302f1b3b036c92ea1c1a2fbd"

  depends_on "libgcrypt"
  depends_on "zstd"

  conflicts_with "brancher", because: "both install the brancher command"

  def install
    bin.install "brancher-1.1.0-dev.3309-d0a2d583c1fa-darwin-arm64" => "brancher"
  end

  test do
    assert_match "1.1.0-dev.3309-d0a2d583c1fa", shell_output("#{bin}/brancher version")
  end
end
