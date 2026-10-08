class Fsp < Formula
  desc "File-tree routing for Flutter: the fsp code generator"
  homepage "https://github.com/fespalier/fespalier"
  version "0.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.13.0/fsp-aarch64-apple-darwin.tar.gz"
      sha256 "668157bf4969d3a5003adc93697d0cd3a579b5ea747f2f0d0e6a1c18d945d564"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.13.0/fsp-x86_64-apple-darwin.tar.gz"
      sha256 "dfce578f3fced9d5dfdf67654d7e5a25cfa39d596b356593cb63f20f39de8a9f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.13.0/fsp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3de21d1a7cf8016f499fa66cb847e142a05ae4df6898f231ee5b2314698e5565"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.13.0/fsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "58274c121840514c27bb6fcd64ca337a161085535a20b123c097accaeb9b4dd5"
    end
  end

  def install
    bin.install "fsp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fsp --version")
  end
end
