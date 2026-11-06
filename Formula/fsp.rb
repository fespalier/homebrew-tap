class Fsp < Formula
  desc "File-tree routing for Flutter: the fsp code generator"
  homepage "https://github.com/fespalier/fespalier"
  version "0.26.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.26.0/fsp-aarch64-apple-darwin.tar.gz"
      sha256 "ed8503bb49a6503f0ec8faaade17b50a030f56e494ebd299cbf3183439301540"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.26.0/fsp-x86_64-apple-darwin.tar.gz"
      sha256 "40813380c38f6f3e7bdcb2b9dc83e42589b7a2b765e0b34612f187dec6d34a1d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.26.0/fsp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0e06de5126b2d218e27ba2b50d06cbfd5570c63638a447e2018c841bc1981314"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.26.0/fsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3eb148210531af6d75fee91df89a4d29ae2804fbb900d2f8195ef89ed0d16eb5"
    end
  end

  def install
    bin.install "fsp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fsp --version")
  end
end
