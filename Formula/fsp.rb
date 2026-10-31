class Fsp < Formula
  desc "File-tree routing for Flutter: the fsp code generator"
  homepage "https://github.com/fespalier/fespalier"
  version "0.25.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.25.0/fsp-aarch64-apple-darwin.tar.gz"
      sha256 "757d50acc1a4acdaa561a74ed2199e18a45b9b534da4f0a1a1ce7cc046d56fdc"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.25.0/fsp-x86_64-apple-darwin.tar.gz"
      sha256 "52637afd3c8fa62b1e3b85cf9414bcebe5b709e7043d5658b4921baacdaf5d65"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.25.0/fsp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "13ed14f7350e9f03c20d107fec30e589faed3367b3bae4d0e4a9838462e7eea2"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.25.0/fsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b95dec4402f68850cc2fc42efc22fe4b3cc71644d158900d495db02e8e8fad8e"
    end
  end

  def install
    bin.install "fsp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fsp --version")
  end
end
