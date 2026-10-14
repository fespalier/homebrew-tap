class Fsp < Formula
  desc "File-tree routing for Flutter: the fsp code generator"
  homepage "https://github.com/fespalier/fespalier"
  version "0.17.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.17.1/fsp-aarch64-apple-darwin.tar.gz"
      sha256 "a3002a9ba6426908cf1c46edde8b9a13c0dd50f42172811c47aa32d5c875fb5e"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.17.1/fsp-x86_64-apple-darwin.tar.gz"
      sha256 "2ee4bb8a197be95d88187ab9234b5c37ded8a41641bb4d59e0b4a90e8ee2af1f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.17.1/fsp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ea4662e9f909e1ec9d6c71820b2e52ea70c7e95aa71f11fb3b6af7570f3fbdbb"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.17.1/fsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "847cf74cca82c8faf862c7efb99c444d15a3ad64789062e54b43acb2de68d0af"
    end
  end

  def install
    bin.install "fsp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fsp --version")
  end
end
