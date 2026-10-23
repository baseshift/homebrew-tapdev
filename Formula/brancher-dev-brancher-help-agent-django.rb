class BrancherDevBrancherHelpAgentDjango < Formula
  desc "Local database branching for PostgreSQL, MySQL, and MongoDB"
  homepage "https://baseshift.com"
  url "https://dl.baseshift.com/brancher/dev/brancher-help-agent-django/brancher-1.2.1-dev.3324-8952ff11fa1a-darwin-arm64"
  version "1.2.1.3324"
  sha256 "d97b738044651c5f34f53a40923823018c1bd441f7d62048c98033c0cc28574e"

  depends_on "libgcrypt"
  depends_on "zstd"

  conflicts_with "brancher", because: "both install the brancher command"

  def install
    bin.install "brancher-1.2.1-dev.3324-8952ff11fa1a-darwin-arm64" => "brancher"
  end

  test do
    assert_match "1.2.1-dev.3324-8952ff11fa1a", shell_output("#{bin}/brancher version")
  end
end
