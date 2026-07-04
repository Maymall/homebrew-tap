class Rgfile < Formula
  desc "Fast, robust command-line client for GigaFile.nu"
  homepage "https://github.com/Maymall/gigafile-rust-cli"
  version "0.8.1"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.8.1/rgfile-0.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "e357a51f07fa77c62cd8815c786b80e1009310d91165e540126734d2fea8f578"
    end
    on_intel do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.8.1/rgfile-0.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "b05373e11be573ceaf0118face756950c31374358c9f4dd1934908ba08cf11a4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.8.1/rgfile-0.8.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3ef9b0bd33838c4d69155ec8bfa00f394a60b282ec21da534892995cfa8d7c84"
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
