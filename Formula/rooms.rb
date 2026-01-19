class Rooms < Formula
  desc "Terminal UI to manage Git worktrees"
  homepage "https://github.com/felipeplets/rooms"
  url "https://github.com/felipeplets/rooms/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "a5ac622885490a590193339053a7d1521217fbbb825ee7f5f84c868731de892d"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/rooms"
  end

  test do
    assert_match "rooms #{version}", shell_output("#{bin}/rooms --version")
  end
end
