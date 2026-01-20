class Rooms < Formula
  desc "Terminal UI to manage Git worktrees"
  homepage "https://github.com/felipeplets/rooms"
  url "https://github.com/felipeplets/rooms/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "8052ce29ae0b222109847108d395440e621972f5783db014cd8d094289f39314"
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
