class BrancherDevBst1873MongoProxyMasking < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/dev/bst-1873-mongo-proxy-masking/brancher-1.1.0-dev.3313-78db6b6b6c37-darwin-arm64"
  version "1.1.0.3313"
  sha256 "6934f7d7280a8e63ac5cd3086c61ac2489da28fff351f0ff0da9f60c516ee483"

  depends_on "libgcrypt"
  depends_on "zstd"

  conflicts_with "brancher", because: "both install the brancher command"

  def install
    bin.install "brancher-1.1.0-dev.3313-78db6b6b6c37-darwin-arm64" => "brancher"
  end

  test do
    assert_match "1.1.0-dev.3313-78db6b6b6c37", shell_output("#{bin}/brancher version")
  end
end
