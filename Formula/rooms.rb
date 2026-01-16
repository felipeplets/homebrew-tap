class Rooms < Formula
  desc "Terminal UI to manage Git worktrees"
  homepage "https://github.com/felipeplets/rooms"
  url "https://github.com/felipeplets/rooms/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "351f040713695405c7ea581c4061218b000009bbfafaa530950604468f1b383d"
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
