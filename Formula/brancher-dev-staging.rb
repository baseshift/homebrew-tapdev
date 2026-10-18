class BrancherDevStaging < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/dev/staging/brancher-1.0.0-dev.3235-2e52a6e59b5e-darwin-arm64"
  version "1.0.0.3235"
  sha256 "fa17b372f0005f4f5c3775be8be78d301d8d551f52b4ac87ec26b88be1d489cf"

  depends_on "libgcrypt"
  depends_on "zstd"

  conflicts_with "brancher", because: "both install the brancher command"

  def install
    bin.install "brancher-1.0.0-dev.3235-2e52a6e59b5e-darwin-arm64" => "brancher"
  end

  test do
    assert_match "1.0.0-dev.3235-2e52a6e59b5e", shell_output("#{bin}/brancher version")
  end
end
