class Fsp < Formula
  desc "File-tree routing for Flutter: the fsp code generator"
  homepage "https://github.com/fespalier/fespalier"
  version "0.17.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.17.0/fsp-aarch64-apple-darwin.tar.gz"
      sha256 "71fb1c7e28542fdc604ed5dcf930514682f22dbc08a35dd4b48a79f45cbd7dbc"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.17.0/fsp-x86_64-apple-darwin.tar.gz"
      sha256 "5136b321c8446dcf555170aca1b30a2950649494f196463c956af3307d44a65e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.17.0/fsp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "94580e116e7884681ae562a6a51f655eb3c86087c1e29a29c0ea04c0c96d2c09"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.17.0/fsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "42194bbebd8692236e2827c0b87638e570c403cf0f6c67086a4b5df8a6fbaf13"
    end
  end

  def install
    bin.install "fsp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fsp --version")
  end
end
