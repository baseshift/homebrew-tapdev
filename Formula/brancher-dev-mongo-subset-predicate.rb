class BrancherDevMongoSubsetPredicate < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/dev/mongo-subset-predicate/brancher-1.1.0-dev.3266-ac0f16b35ea5-darwin-arm64"
  version "1.1.0.3266"
  sha256 "a57ad501b5b84d39d0996684b0a164359fb587440a51b7d8dea6852c3ca73118"

  depends_on "libgcrypt"
  depends_on "zstd"

  conflicts_with "brancher", because: "both install the brancher command"

  def install
    bin.install "brancher-1.1.0-dev.3266-ac0f16b35ea5-darwin-arm64" => "brancher"
  end

  test do
    assert_match "1.1.0-dev.3266-ac0f16b35ea5", shell_output("#{bin}/brancher version")
  end
end
