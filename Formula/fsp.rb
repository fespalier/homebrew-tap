class Fsp < Formula
  desc "File-tree routing for Flutter: the fsp code generator"
  homepage "https://github.com/fespalier/fespalier"
  version "0.20.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.20.0/fsp-aarch64-apple-darwin.tar.gz"
      sha256 "72cdca2a4d8969eab847500b3602939c2a21f62b86aabf3cb38832a09b75ccaf"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.20.0/fsp-x86_64-apple-darwin.tar.gz"
      sha256 "b5f6cbde29c6a291258df6612413fcb914a1eb261e2fcdaa02bf5b31c595df7a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.20.0/fsp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "29023e98560d9a81844aeed3bcc59c6ddae56f6e455c5f69f4962d57074f7fac"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.20.0/fsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "097ee431c172e45f7673def917e861594da02caad207958944b14b364056041d"
    end
  end

  def install
    bin.install "fsp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fsp --version")
  end
end
