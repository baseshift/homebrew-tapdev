class BrancherDevBst1749PgStatStatements < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/dev/bst-1749-pg-stat-statements/brancher-1.0.0-dev.3203-bcd43b748166-darwin-arm64"
  version "1.0.0.3203"
  sha256 "82ef214ab1e192f8696fda41c67d8a1088eea8b24741dfe98df3bd19b17e2567"

  depends_on "libgcrypt"
  depends_on "zstd"

  conflicts_with "brancher", because: "both install the brancher command"

  def install
    bin.install "brancher-1.0.0-dev.3203-bcd43b748166-darwin-arm64" => "brancher"
  end

  test do
    assert_match "1.0.0-dev.3203-bcd43b748166", shell_output("#{bin}/brancher version")
  end
end
