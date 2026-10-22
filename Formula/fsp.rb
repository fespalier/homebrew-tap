class Fsp < Formula
  desc "File-tree routing for Flutter: the fsp code generator"
  homepage "https://github.com/fespalier/fespalier"
  version "0.21.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.21.1/fsp-aarch64-apple-darwin.tar.gz"
      sha256 "f3da0f7490190b6df2665c10bd6d09fc8fe7e04d0c54b55394c8847cf0da63a7"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.21.1/fsp-x86_64-apple-darwin.tar.gz"
      sha256 "6936825ce782d634114dda83dac0d49d758b4f2449e74156e5a85aa2c5ac875e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.21.1/fsp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "abbfa3fa7c6ff72301c7d34bca3147102e3f57b642fc4b194538aa0719c9fbab"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.21.1/fsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "193366019e464d3637a2366786591aaa5a01d3999e5c8f9766b90446d192d64f"
    end
  end

  def install
    bin.install "fsp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fsp --version")
  end
end
