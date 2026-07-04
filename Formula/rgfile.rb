class Rgfile < Formula
  desc "Fast, robust command-line client for GigaFile.nu"
  homepage "https://github.com/Maymall/gigafile-rust-cli"
  version "0.9.1"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.9.1/rgfile-0.9.1-aarch64-apple-darwin.tar.gz"
      sha256 "a6601de7aa424cf4b2e771f07be3df308ecf82e15515cd7818332bb94e930c3a"
    end
    on_intel do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.9.1/rgfile-0.9.1-x86_64-apple-darwin.tar.gz"
      sha256 "5ec9ddeb172e0ffc86f9cfa9c9711b859ea6a022b470bb957c0865f58dc19511"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.9.1/rgfile-0.9.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0b16507eb0c95750289d96806448c12b4940c336e00468742b3abb857acec6ac"
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
