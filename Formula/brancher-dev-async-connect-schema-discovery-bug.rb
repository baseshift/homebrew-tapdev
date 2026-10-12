class BrancherDevAsyncConnectSchemaDiscoveryBug < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/dev/async-connect-schema-discovery-bug/brancher-1.0.0-dev.3193-c2d47d348e0c-darwin-arm64"
  version "1.0.0.3193"
  sha256 "3c03be77bff73bd47d06c0c98ca23d6ecfe2c9ec4eb2813376d649d57beca59b"

  depends_on "libgcrypt"
  depends_on "zstd"

  conflicts_with "brancher", because: "both install the brancher command"

  def install
    bin.install "brancher-1.0.0-dev.3193-c2d47d348e0c-darwin-arm64" => "brancher"
  end

  test do
    assert_match "1.0.0-dev.3193-c2d47d348e0c", shell_output("#{bin}/brancher version")
  end
end
