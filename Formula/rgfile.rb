class Rgfile < Formula
  desc "Fast, robust command-line client for GigaFile.nu"
  homepage "https://github.com/Maymall/gigafile-rust-cli"
  version "0.4.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.4.0/rgfile-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "13ffcf06aeac575223e80c492cb8f65e952785009dbb741c56982e9d63c4c019"
    end
    on_intel do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.4.0/rgfile-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "821ba8bfcae3afa859726bf827aa00a8ec471478b4bda4d24e043ad5762ca5bd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.4.0/rgfile-0.4.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "512a3f7757c8e5cd92b409bea53c86bd6a7226839d94472ad8252c5768acfd5b"
    end
  end

  def install
    bin.install "rgfile"
    doc.install "README.md", "NOTICE.md"
  end

  test do
    assert_match "rgfile #{version}", shell_output("#{bin}/rgfile --version")
  end
end
