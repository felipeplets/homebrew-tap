class Rooms < Formula
  desc "Terminal UI to manage Git worktrees"
  homepage "https://github.com/felipeplets/rooms"
  url "https://github.com/felipeplets/rooms/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "8d89efa942b033642544c1e14a143db885d623294b161933fe1b68efcbb443e0"
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
