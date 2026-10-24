class Fsp < Formula
  desc "File-tree routing for Flutter: the fsp code generator"
  homepage "https://github.com/fespalier/fespalier"
  version "0.23.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.23.1/fsp-aarch64-apple-darwin.tar.gz"
      sha256 "a040cad640f99bad58074ff20eea4b2ea6b83f2aa7b7adbba0ea92a7d2fe7bdd"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.23.1/fsp-x86_64-apple-darwin.tar.gz"
      sha256 "d17ff3fb95fb382520eedeb953a8d8451c4f099bbacc4affd7e7015f84e31289"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.23.1/fsp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8a397825e185c07f89cae3a25a388d07cd62f88eed83b70890bc4ebf7495fa3a"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.23.1/fsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0044d14c14dd46e5a47ff19e3d6a3058039781bed27e8260784f63ee523d4174"
    end
  end

  def install
    bin.install "fsp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fsp --version")
  end
end
