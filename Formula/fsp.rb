class Fsp < Formula
  desc "File-tree routing for Flutter: the fsp code generator"
  homepage "https://github.com/fespalier/fespalier"
  version "0.15.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.15.0/fsp-aarch64-apple-darwin.tar.gz"
      sha256 "d61cfa5c098d3ed5b5b48b3145db1d93aa940e77f9f406fbbfcd513bfc4da811"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.15.0/fsp-x86_64-apple-darwin.tar.gz"
      sha256 "a9b2ccad51ca5402eeee4386abc4f7657a104d0d46e224624d6f267869c9efb3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.15.0/fsp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2a333c541c5962b6b4cdc3f60cb0e5833ac3c5549bb500702813e27de5b51ecb"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.15.0/fsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "58e2b6679460024240b34c7ce94bfec456b0632cb7dc6973ec63f29c0ef086e9"
    end
  end

  def install
    bin.install "fsp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fsp --version")
  end
end
