class BrancherDevUpgradeGo1273 < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/dev/upgrade-go-1-27-3/brancher-1.1.0-dev.3274-9ac5b2115ec2-darwin-arm64"
  version "1.1.0.3274"
  sha256 "695aa6497be92c3f1327f95c4e9b590eadd90b1afb381c00deec9743f7bc51ce"

  depends_on "libgcrypt"
  depends_on "zstd"

  conflicts_with "brancher", because: "both install the brancher command"

  def install
    bin.install "brancher-1.1.0-dev.3274-9ac5b2115ec2-darwin-arm64" => "brancher"
  end

  test do
    assert_match "1.1.0-dev.3274-9ac5b2115ec2", shell_output("#{bin}/brancher version")
  end
end
