class Rgfile < Formula
  desc "Fast, robust command-line client for GigaFile.nu"
  homepage "https://github.com/Maymall/gigafile-rust-cli"
  version "0.6.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.6.0/rgfile-0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "04f688011724bb5ac2306bfed7b63f21d828cb542ffb37dd9752732e3e7d6bd5"
    end
    on_intel do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.6.0/rgfile-0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "d5b7c290c7d2c6b05c7aa11b540bc60f706a5e1f755c81219012d0e5a37f4977"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.6.0/rgfile-0.6.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f12a1c67e9251a1776f1fb666bc1b48ec2ec15283fecfb0ce236f213278ad3fb"
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
