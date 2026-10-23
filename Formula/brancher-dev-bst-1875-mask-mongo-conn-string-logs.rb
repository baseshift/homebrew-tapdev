class BrancherDevBst1875MaskMongoConnStringLogs < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/dev/bst-1875-mask-mongo-conn-string-logs/brancher-1.2.0-dev.3321-35967cd607a8-darwin-arm64"
  version "1.2.0.3321"
  sha256 "4017b355c63f349bd903817cf2e8cd8eae9464ee1cda1474c4a62f9ec5593764"

  depends_on "libgcrypt"
  depends_on "zstd"

  conflicts_with "brancher", because: "both install the brancher command"

  def install
    bin.install "brancher-1.2.0-dev.3321-35967cd607a8-darwin-arm64" => "brancher"
  end

  test do
    assert_match "1.2.0-dev.3321-35967cd607a8", shell_output("#{bin}/brancher version")
  end
end
