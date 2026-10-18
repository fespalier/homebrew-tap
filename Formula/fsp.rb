class Fsp < Formula
  desc "File-tree routing for Flutter: the fsp code generator"
  homepage "https://github.com/fespalier/fespalier"
  version "0.19.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.19.0/fsp-aarch64-apple-darwin.tar.gz"
      sha256 "ca059e8dc4c4bae754ae141063d3df2c32dd5fce170204a49b1ef43b9b1259d9"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.19.0/fsp-x86_64-apple-darwin.tar.gz"
      sha256 "92374cc5f78308db29f97f40135b7fcf77b34f862e4e91d509cc0bb78f0dd1a5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.19.0/fsp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "332a4a8eb365b550f4a01ef90be9b525ebadced2f937b3b7530524f04aff7735"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.19.0/fsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d5fea01f2dbe763a735d76cab37d16b9cc67ede25bc20a50c001cf3a31b1f842"
    end
  end

  def install
    bin.install "fsp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fsp --version")
  end
end
