class Fsp < Formula
  desc "File-tree routing for Flutter: the fsp code generator"
  homepage "https://github.com/fespalier/fespalier"
  version "0.17.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.17.2/fsp-aarch64-apple-darwin.tar.gz"
      sha256 "d606bc54eaf0b822b2116acc9ce99733828b02736ef0ed29a45f36d84fae222d"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.17.2/fsp-x86_64-apple-darwin.tar.gz"
      sha256 "0ad3e31117f8e10cfa33f6236d39f36c85c4f51b3118e9b94a865e9b2053d7f4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.17.2/fsp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b3a35045b2f8caefb2d50075cb5ee39d8bdc669ca58f0a2aa9c24ebbc1ba30a6"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.17.2/fsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "35b87a484934abe79ed343ddd123bca30dba975c06170550ffb9c00215c82c6e"
    end
  end

  def install
    bin.install "fsp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fsp --version")
  end
end
