class Fsp < Formula
  desc "File-tree routing for Flutter: the fsp code generator"
  homepage "https://github.com/fespalier/fespalier"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.10.0/fsp-aarch64-apple-darwin.tar.gz"
      sha256 "dbfd10111b5f037bfd5c755018d90b08e4c8b26041f92af6af5084503812eb73"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.10.0/fsp-x86_64-apple-darwin.tar.gz"
      sha256 "a75fd97987292b1e13d9fcf13e312f9c3bfc6b2cde97540e9bed6fd57c5bfd76"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.10.0/fsp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "944e75a8bfbdfd018292680e39562b27bad0e4ca060abe6e2576f2f4b8173a66"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.10.0/fsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a95bfeae0bc962d8ca5f913bcf0e5cbbc9c132e6dcc375b8e9355848006617c5"
    end
  end

  def install
    bin.install "fsp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fsp --version")
  end
end
