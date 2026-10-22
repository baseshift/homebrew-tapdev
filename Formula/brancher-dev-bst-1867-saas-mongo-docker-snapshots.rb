class BrancherDevBst1867SaasMongoDockerSnapshots < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/dev/bst-1867-saas-mongo-docker-snapshots/brancher-1.1.0-dev.3304-9be502e81f38-darwin-arm64"
  version "1.1.0.3304"
  sha256 "83429ce31c40fe1c6355ca65d7adaeef31873e6b2dc4d634e9685a2bcbccba88"

  depends_on "libgcrypt"
  depends_on "zstd"

  conflicts_with "brancher", because: "both install the brancher command"

  def install
    bin.install "brancher-1.1.0-dev.3304-9be502e81f38-darwin-arm64" => "brancher"
  end

  test do
    assert_match "1.1.0-dev.3304-9be502e81f38", shell_output("#{bin}/brancher version")
  end
end
