class BrancherDevTargetUpdatePgStatStatementCollector < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/dev/target-update-pg-stat-statement-collector/brancher-1.2.4-dev.3411-9de97d31caf0-darwin-arm64"
  version "1.2.4.3411"
  sha256 "9bd4257ec205e9146b6065865156c82fd186b0f3294d0488bca4f315326249fe"

  depends_on "libgcrypt"
  depends_on "zstd"

  conflicts_with "brancher", because: "both install the brancher command"

  def install
    bin.install "brancher-1.2.4-dev.3411-9de97d31caf0-darwin-arm64" => "brancher"
  end

  test do
    assert_match "1.2.4-dev.3411-9de97d31caf0", shell_output("#{bin}/brancher version")
  end
end
