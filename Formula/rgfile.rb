class Rgfile < Formula
  desc "Fast, robust command-line client for GigaFile.nu"
  homepage "https://github.com/Maymall/gigafile-rust-cli"
  version "0.7.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.7.0/rgfile-0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "1ce76eab5d1bec458a7320c8a6c3583d5bc4247a6ff2d1adfb85c6fa1c6da41a"
    end
    on_intel do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.7.0/rgfile-0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "2992038939f5296b826eee20fb89e2951f316dc5ff74ae125eb0c0507f41d6a8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.7.0/rgfile-0.7.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d0af45e686490dc1706ed192d585d6d5f79f4f90f714189b8fc5805086fe9bb9"
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
