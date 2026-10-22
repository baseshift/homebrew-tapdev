class BrancherDevBst1869BrancherDocker < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/dev/bst-1869-brancher-docker/brancher-1.2.0-dev.3316-8b98866b4af7-darwin-arm64"
  version "1.2.0.3316"
  sha256 "1f966a82528fef0da5a5d1133bda59eed7a022a457ad58c24bc907c958ee0e47"

  depends_on "libgcrypt"
  depends_on "zstd"

  conflicts_with "brancher", because: "both install the brancher command"

  def install
    bin.install "brancher-1.2.0-dev.3316-8b98866b4af7-darwin-arm64" => "brancher"
  end

  test do
    assert_match "1.2.0-dev.3316-8b98866b4af7", shell_output("#{bin}/brancher version")
  end
end
