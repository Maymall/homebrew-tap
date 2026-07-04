class Rgfile < Formula
  desc "Fast, robust command-line client for GigaFile.nu"
  homepage "https://github.com/Maymall/gigafile-rust-cli"
  version "0.8.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.8.0/rgfile-0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "858ea0eb6d8e238f20f83e513ddef6235feb401fbdc3827c22e3a08ee92ada87"
    end
    on_intel do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.8.0/rgfile-0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "1bf7215498c352c640f5efd7cbc9e9b99da93e38d060247b50d3b2eba89f37e6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.8.0/rgfile-0.8.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c6be2501afae37ae12456449ea5a59cb3b2bc47b1e39fc5f2c9d81ce53eadbb2"
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
