class BrancherDevAwsSecretPlaceholderBug < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/dev/aws-secret-placeholder-bug/brancher-1.2.4-dev.3417-6fae13cf4574-darwin-arm64"
  version "1.2.4.3417"
  sha256 "f20f4e97ee3137e843837611b3626ad5fef31082b3a7320162cf05097d48d32f"

  depends_on "libgcrypt"
  depends_on "zstd"

  conflicts_with "brancher", because: "both install the brancher command"

  def install
    bin.install "brancher-1.2.4-dev.3417-6fae13cf4574-darwin-arm64" => "brancher"
  end

  test do
    assert_match "1.2.4-dev.3417-6fae13cf4574", shell_output("#{bin}/brancher version")
  end
end
