class Fsp < Formula
  desc "File-tree routing for Flutter: the fsp code generator"
  homepage "https://github.com/fespalier/fespalier"
  version "0.22.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.22.1/fsp-aarch64-apple-darwin.tar.gz"
      sha256 "d01307138fc07f0e9035412c44611f10bd7145683a983cb7e4bd8d3f0a3b16b3"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.22.1/fsp-x86_64-apple-darwin.tar.gz"
      sha256 "2660acf9cb34551967049f21c3d7ab577259f749ac05860d1e7f9ecfc6ad2481"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.22.1/fsp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "80c8c0b4c18c7879b83187ab2d23582c6dd4d984e49e6873fd719e3eb512934a"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.22.1/fsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c1b95c55364536f10bfd32a6a19dc20279ffb7ef31ae21038ace1eeb3eceb94a"
    end
  end

  def install
    bin.install "fsp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fsp --version")
  end
end
