class Fsp < Formula
  desc "File-tree routing for Flutter: the fsp code generator"
  homepage "https://github.com/fespalier/fespalier"
  version "0.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.9.1/fsp-aarch64-apple-darwin.tar.gz"
      sha256 "84144447448bc84581aca7d57625f6342001566b350dcd04f565dd1b54018b35"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.9.1/fsp-x86_64-apple-darwin.tar.gz"
      sha256 "515de0b3cc3bcdd4d1107dc1e025246955a8836f6b84e6a1566e9ff2a57e6375"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.9.1/fsp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9cff246853603322372e3117d2d2696acfcb1b8ee04216d2f45c38704e102957"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.9.1/fsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3c459dca2ac723ba092194c2a1da9f1a28e95bd6434479d3c614d45a04067845"
    end
  end

  def install
    bin.install "fsp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fsp --version")
  end
end
