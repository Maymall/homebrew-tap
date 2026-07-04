class Rgfile < Formula
  desc "Fast, robust command-line client for GigaFile.nu"
  homepage "https://github.com/Maymall/gigafile-rust-cli"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.10.1/rgfile-0.10.1-aarch64-apple-darwin.tar.gz"
      sha256 "e6dae7178e324e12b46699be28f44caa9bd5ffa9064a41012f8c93e93f14c578"
    end
    on_intel do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.10.1/rgfile-0.10.1-x86_64-apple-darwin.tar.gz"
      sha256 "a2c0c7fc4c8b01cf83c7a31ae8948208956e7f007098e3c87d132c47c005c15a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.10.1/rgfile-0.10.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fd6e11141c63aed4549e3bf7b44caf3ee9fe04666d535044a528d71f646fc788"
    end
  end

  def install
    bin.install "rgfile"
    doc.install "README.md"
  end

  test do
    assert_match "rgfile #{version}", shell_output("#{bin}/rgfile --version")
  end
end
