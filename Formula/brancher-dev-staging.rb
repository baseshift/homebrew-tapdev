class BrancherDevStaging < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/dev/staging/brancher-1.0.0-dev.3234-aaba6a00f2e6-darwin-arm64"
  version "1.0.0.3234"
  sha256 "84f8aa47ff2c0828339e1359de6d13ab93bb4a62c8a025877c6289e4cca4e08d"

  depends_on "libgcrypt"
  depends_on "zstd"

  conflicts_with "brancher", because: "both install the brancher command"

  def install
    bin.install "brancher-1.0.0-dev.3234-aaba6a00f2e6-darwin-arm64" => "brancher"
  end

  test do
    assert_match "1.0.0-dev.3234-aaba6a00f2e6", shell_output("#{bin}/brancher version")
  end
end
