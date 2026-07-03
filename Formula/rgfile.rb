class Rgfile < Formula
  desc "Fast, robust command-line client for GigaFile.nu"
  homepage "https://github.com/Maymall/gigafile-rust-cli"
  version "0.5.2"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.5.2/rgfile-0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "998b4d5b307b4d295c3617a0e12800df6ab29af511cc37ba4a2f14ecf536510c"
    end
    on_intel do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.5.2/rgfile-0.5.2-x86_64-apple-darwin.tar.gz"
      sha256 "334cbc1511abcac067a336ee97d5e7854e0a9c3bffdea55ec8c4b4c0cf9f3f37"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.5.2/rgfile-0.5.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3ecd843ce6f460bc8582c773bdf3f388ee0eb77834ec98093f73b4d688a40ed2"
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
