class BrancherDevStaging < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/dev/staging/brancher-1.0.0-dev.3228-568e32218b65-darwin-arm64"
  version "1.0.0.3228"
  sha256 "e3164cc51267893fd086f99e36c6608553bd706833b4b807e1f6d291ca8406dd"

  depends_on "libgcrypt"
  depends_on "zstd"

  conflicts_with "brancher", because: "both install the brancher command"

  def install
    bin.install "brancher-1.0.0-dev.3228-568e32218b65-darwin-arm64" => "brancher"
  end

  test do
    assert_match "1.0.0-dev.3228-568e32218b65", shell_output("#{bin}/brancher version")
  end
end
