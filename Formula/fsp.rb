class Fsp < Formula
  desc "File-tree routing for Flutter: the fsp code generator"
  homepage "https://github.com/fespalier/fespalier"
  version "0.22.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.22.0/fsp-aarch64-apple-darwin.tar.gz"
      sha256 "9d3c7d326ba626c014a96a2bff697bc76fc931aec967cbf2874bbff6a7907d96"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.22.0/fsp-x86_64-apple-darwin.tar.gz"
      sha256 "9f9a362d48d6f0ed62ebde1540a58e1320944048890060f86cc4c433cff2e880"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.22.0/fsp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b080db39a56dc249d1890c51c50b86e813b988ac00bbbc2579115fb065900747"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.22.0/fsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "771563cb3f8fd3f24a9a96c86d74b782c86b2105da5a46b07c10600598062c04"
    end
  end

  def install
    bin.install "fsp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fsp --version")
  end
end
