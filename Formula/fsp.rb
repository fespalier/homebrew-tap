class Fsp < Formula
  desc "File-tree routing for Flutter: the fsp code generator"
  homepage "https://github.com/fespalier/fespalier"
  version "0.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.12.0/fsp-aarch64-apple-darwin.tar.gz"
      sha256 "e785d7ccd0f1c60c36989ede8c86fdc6ad061a3df37dbdf2354c5aeb52a1a834"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.12.0/fsp-x86_64-apple-darwin.tar.gz"
      sha256 "3d1cc573c3dfae06d075f022fc3ebc42e405d7e1e457932e44c7e07c79c17841"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/fespalier/fespalier/releases/download/v0.12.0/fsp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "642048f871aa6b2968b86e86c9d61a3e345ec75924846837b9f59683bfa4ce9f"
    elsif Hardware::CPU.intel?
      url "https://github.com/fespalier/fespalier/releases/download/v0.12.0/fsp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b0426a951532e3828ecc7878a848f0c066bcfa08174be488de91f280684084be"
    end
  end

  def install
    bin.install "fsp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fsp --version")
  end
end
