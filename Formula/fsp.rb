class Fsp < Formula
  desc "File-tree routing for Flutter: the fsp code generator"
  homepage "https://github.com/fespalier/fespalier"
  version "0.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.11.0/fsp-aarch64-apple-darwin.tar.gz"
      sha256 "cbd1b722af14c4da0040bc0f5f2ac61095c842dd4e4e6038664381fac1045f2a"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.11.0/fsp-x86_64-apple-darwin.tar.gz"
      sha256 "211605516b27ae5320c3016aa23a2dd2908b2d6e04c84aed2bd996d2e339895f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.11.0/fsp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d3ff039bd6385921ba2085bc10a302a37780222cbe990311f3e08e87a40f95f8"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.11.0/fsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "58b369fc2222a379ba4fc0feedf1b82a121cb3da1a8c1ef31232ad3e8e5be795"
    end
  end

  def install
    bin.install "fsp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fsp --version")
  end
end
