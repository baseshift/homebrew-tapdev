class BrancherDevStaging < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/dev/staging/brancher-1.0.0-dev.3227-4353683296f4-darwin-arm64"
  version "1.0.0.3227"
  sha256 "ebdb80fc8278900823fc0a96787829f8bda8dbea9368bd1d44c354937170ee25"

  depends_on "libgcrypt"
  depends_on "zstd"

  conflicts_with "brancher", because: "both install the brancher command"

  def install
    bin.install "brancher-1.0.0-dev.3227-4353683296f4-darwin-arm64" => "brancher"
  end

  test do
    assert_match "1.0.0-dev.3227-4353683296f4", shell_output("#{bin}/brancher version")
  end
end
