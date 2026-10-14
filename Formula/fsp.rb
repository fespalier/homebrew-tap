class Fsp < Formula
  desc "File-tree routing for Flutter: the fsp code generator"
  homepage "https://github.com/fespalier/fespalier"
  version "0.16.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.16.0/fsp-aarch64-apple-darwin.tar.gz"
      sha256 "2780ecdf1247e6c1e94245151c7039dac40dba7361f78a86fe2ebaacb57e28a1"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.16.0/fsp-x86_64-apple-darwin.tar.gz"
      sha256 "14535e8ea0003fbc294325a82cac634cd6f3bf47104bb46e06e9cf9aa0ed3696"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.16.0/fsp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d38a44235ff80b4060b9069e29dc42b99378fbb5f1651d65c6fcd41b3832d8b7"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.16.0/fsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "37b1a988969d35ac652675aec0db644ac24e7d77cdfba3b953ed8727041e293f"
    end
  end

  def install
    bin.install "fsp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fsp --version")
  end
end
