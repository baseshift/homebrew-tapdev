class BrancherDevBst1867SaasMongoDockerSnapshots < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/dev/bst-1867-saas-mongo-docker-snapshots/brancher-1.1.0-dev.3290-d28b2c5f4b66-darwin-arm64"
  version "1.1.0.3290"
  sha256 "9faccda742d4de34c8537d1af59e1ac1e00289d937c00e11d109b4089618f8cb"

  depends_on "libgcrypt"
  depends_on "zstd"

  conflicts_with "brancher", because: "both install the brancher command"

  def install
    bin.install "brancher-1.1.0-dev.3290-d28b2c5f4b66-darwin-arm64" => "brancher"
  end

  test do
    assert_match "1.1.0-dev.3290-d28b2c5f4b66", shell_output("#{bin}/brancher version")
  end
end
