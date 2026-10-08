class Fsp < Formula
  desc "File-tree routing for Flutter: the fsp code generator"
  homepage "https://github.com/fespalier/fespalier"
  version "0.13.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.13.1/fsp-aarch64-apple-darwin.tar.gz"
      sha256 "29ba2eb8147a2646af8a156380bd9939b66dfb7327d8345637b57b6713641be1"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.13.1/fsp-x86_64-apple-darwin.tar.gz"
      sha256 "e236991e41dda2099707c06a0277595ca60d3394f25600f685f0872bee4805a7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.13.1/fsp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7c1e5b491e4e12fd1fc2e01812d12be12fd3beceb83c0882d5b308e6761f6e5e"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.13.1/fsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ee96ae924caf3ff5b4157906abc7d230ae81ca4b056b76706a72e4927fba4e71"
    end
  end

  def install
    bin.install "fsp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fsp --version")
  end
end
