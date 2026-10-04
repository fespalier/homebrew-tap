class Fsp < Formula
  desc "File-tree routing for Flutter: the fsp code generator"
  homepage "https://github.com/fespalier/fespalier"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.9.0/fsp-aarch64-apple-darwin.tar.gz"
      sha256 "0f92344a4d30cf157b323433e23e267bb1f37a578a156410fdb662cf48d89612"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.9.0/fsp-x86_64-apple-darwin.tar.gz"
      sha256 "c4c8b8888c0c501ed882100143f78b1d9486c18e4593855fe1dae6669590648a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.9.0/fsp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6e2501a97fcadf221cd488b0e8e9f7060dcaac75a80330b5a97c976ebf69d521"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.9.0/fsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "93e687d5e4e7de8a62290bffe1ddf739aef268cd66b9e92a4c630441e6abb082"
    end
  end

  def install
    bin.install "fsp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fsp --version")
  end
end
