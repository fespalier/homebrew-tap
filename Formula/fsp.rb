class Fsp < Formula
  desc "File-tree routing for Flutter: the fsp code generator"
  homepage "https://github.com/fespalier/fespalier"
  version "0.24.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.24.0/fsp-aarch64-apple-darwin.tar.gz"
      sha256 "ad05109df4db5012b0697d98e5944f562fadd79ee938cd99de2f2b326f16a417"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.24.0/fsp-x86_64-apple-darwin.tar.gz"
      sha256 "1de89572055f63d7f0092313713a3faaa39ed23bcf88cdae35f1e36f3a27f176"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.24.0/fsp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7e178f4fed860c7f5269640857d7f1e6cecf88a97b985d011da3a31cf4b604ba"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.24.0/fsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4bbfe79f07ced21cd9bb3fe185008fb358aaedb1c119852f70cd25d80ae83921"
    end
  end

  def install
    bin.install "fsp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fsp --version")
  end
end
