class BrancherDevStaging < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/dev/staging/brancher-1.1.0-dev.3240-975c15ab52f6-darwin-arm64"
  version "1.1.0.3240"
  sha256 "44bc852a5161b6b52b7c210a1ad8dfb8ff2c9cf3cc74f4d63eda26e3e70e080a"

  depends_on "libgcrypt"
  depends_on "zstd"

  conflicts_with "brancher", because: "both install the brancher command"

  def install
    bin.install "brancher-1.1.0-dev.3240-975c15ab52f6-darwin-arm64" => "brancher"
  end

  test do
    assert_match "1.1.0-dev.3240-975c15ab52f6", shell_output("#{bin}/brancher version")
  end
end
