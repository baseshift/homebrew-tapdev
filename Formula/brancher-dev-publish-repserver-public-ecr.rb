class BrancherDevPublishRepserverPublicEcr < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/dev/publish-repserver-public-ecr/brancher-1.1.0-dev.3278-0084543aadb5-darwin-arm64"
  version "1.1.0.3278"
  sha256 "dab35a7e54f1c4635390c9950503e24087cec4a5f08f16cfeb3066d44acbe421"

  depends_on "libgcrypt"
  depends_on "zstd"

  conflicts_with "brancher", because: "both install the brancher command"

  def install
    bin.install "brancher-1.1.0-dev.3278-0084543aadb5-darwin-arm64" => "brancher"
  end

  test do
    assert_match "1.1.0-dev.3278-0084543aadb5", shell_output("#{bin}/brancher version")
  end
end
