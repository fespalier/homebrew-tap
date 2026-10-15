class Fsp < Formula
  desc "File-tree routing for Flutter: the fsp code generator"
  homepage "https://github.com/fespalier/fespalier"
  version "0.18.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.18.0/fsp-aarch64-apple-darwin.tar.gz"
      sha256 "6fe64e884714dcb8b0ef169f95e7504641e5c34d099f247ebeebcd0e1404c3e6"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.18.0/fsp-x86_64-apple-darwin.tar.gz"
      sha256 "612b6e1248020ffaafa21efc8666d967c21ed67029e8f839adb55343edf5d1d6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.18.0/fsp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "97d7230dfd60fa93feb4e1b6eb2938f37a21e8052594d0994b1c98b70c9bf078"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.18.0/fsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2d0c688c1c45b01ef8d4980af1f276e1029b8e2fd426aed8e5f805d7020c0ef9"
    end
  end

  def install
    bin.install "fsp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fsp --version")
  end
end
