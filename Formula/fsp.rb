class Fsp < Formula
  desc "File-tree routing for Flutter: the fsp code generator"
  homepage "https://github.com/fespalier/fespalier"
  version "0.23.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.23.0/fsp-aarch64-apple-darwin.tar.gz"
      sha256 "4d15fd99a823782038ac72064a98ea3941d04467c4ceef1fbb806562c1639f05"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.23.0/fsp-x86_64-apple-darwin.tar.gz"
      sha256 "5f5c3bf3690ebe277743cf7327a95a01c021b705895d6d3995fac4967d90777a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.23.0/fsp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2062a70dfe1796cdad6d85dadc0a53b21034377201267574ab56ab62230ff9f0"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.23.0/fsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fdc3baba437f06804273f0cba3ebec6aa59997951c6c298d6b29cb8bf6a07e9f"
    end
  end

  def install
    bin.install "fsp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fsp --version")
  end
end
