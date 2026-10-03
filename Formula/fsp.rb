class Fsp < Formula
  desc "File-tree routing for Flutter: the fsp code generator"
  homepage "https://github.com/fespalier/fespalier"
  version "0.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.8.1/fsp-aarch64-apple-darwin.tar.gz"
      sha256 "6d67d5660552c7f996437c088c2c74fdb5183e836afbef1e9e4108a990176465"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.8.1/fsp-x86_64-apple-darwin.tar.gz"
      sha256 "38d92f5c225ee12b8a3b2d6a334a5cf94617df53229e2d115da6c30868b13705"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.8.1/fsp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "75af3f71857aab97df302e8f363340e91ac98a9d65e4c4988fa9da38f3367586"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.8.1/fsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "31b65f3c653cedf24d5c2091ca946afec0e5b8b1601f62606015d0cb2f3d0281"
    end
  end

  def install
    bin.install "fsp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fsp --version")
  end
end
