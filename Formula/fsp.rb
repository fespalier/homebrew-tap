class Fsp < Formula
  desc "File-tree routing for Flutter: the fsp code generator"
  homepage "https://github.com/fespalier/fespalier"
  version "0.24.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.24.1/fsp-aarch64-apple-darwin.tar.gz"
      sha256 "500397b435553b1c79fe6819c906cd34e2b20baea8ae0a7b433bc60a2c94ed2b"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.24.1/fsp-x86_64-apple-darwin.tar.gz"
      sha256 "f92ced2807f9cdfce2983d6e7f3c597eabab89683b1838abe6e8dde0a3cac867"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.24.1/fsp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "70c3ef400b5412c1103d7eb74747eb487b312619a62d8b5ca2ac97dfe29c9954"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.24.1/fsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "10ce74ba5aa892d12516f85b1d4b3215a6b9d015ddfb600a3349b98dfb7a29b7"
    end
  end

  def install
    bin.install "fsp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fsp --version")
  end
end
