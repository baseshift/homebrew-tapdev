class BrancherDevBst1819BrancherDevChannel < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/dev/bst-1819-brancher-dev-channel/brancher-1.0.0-dev.3181-f3cfc4c4afa3-darwin-arm64"
  version "1.0.0.3181"
  sha256 "cb772ff8fe6503b984ba3b09f9f6252ae9938d16b2e3eb13ad27d7b540b1f918"

  depends_on "libgcrypt"
  depends_on "zstd"

  conflicts_with "brancher", because: "both install the brancher command"

  def install
    bin.install "brancher-1.0.0-dev.3181-f3cfc4c4afa3-darwin-arm64" => "brancher"
  end

  test do
    assert_match "1.0.0-dev.3181-f3cfc4c4afa3", shell_output("#{bin}/brancher version")
  end
end
