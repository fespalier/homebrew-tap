class Fsp < Formula
  desc "File-tree routing for Flutter: the fsp code generator"
  homepage "https://github.com/fespalier/fespalier"
  version "0.21.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.21.0/fsp-aarch64-apple-darwin.tar.gz"
      sha256 "50a36cfd96143dc50b5b191fe552ba04b6e17709973474efa216ac9b61cafe58"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.21.0/fsp-x86_64-apple-darwin.tar.gz"
      sha256 "20c8e381232b1340471a31b43db2e230465ecf254a0a6d18144bb7652f17393f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.21.0/fsp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "67abc0d97bdd6c8b40ec2e5f350b4caea272326598556bcf278f24694a298b2e"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.21.0/fsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6214c4eacb2aa63e96274093b61ea9e07dabf60c2ee0a4834a01f3bd30eae6d8"
    end
  end

  def install
    bin.install "fsp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fsp --version")
  end
end
