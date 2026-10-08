class Fsp < Formula
  desc "File-tree routing for Flutter: the fsp code generator"
  homepage "https://github.com/fespalier/fespalier"
  version "0.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.14.0/fsp-aarch64-apple-darwin.tar.gz"
      sha256 "07adeba6392cfa022ecabbf0589c8492368d07d030eab7a4ac75a513813ef8f3"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.14.0/fsp-x86_64-apple-darwin.tar.gz"
      sha256 "d5c74c26711c371ca5ebc2b71a3603cbf6a792819e959f5bb4214efca5490f51"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.14.0/fsp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "34634c110817fdb3500e17e7478a944c3422dfe2b9d1799fce18f8113904cdf0"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.14.0/fsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9cb6ef7f8ad8045743eef9b3dd3355348f761f22da2a2976372867296d18bf06"
    end
  end

  def install
    bin.install "fsp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fsp --version")
  end
end
