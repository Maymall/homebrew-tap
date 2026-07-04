class Rgfile < Formula
  desc "Fast, robust command-line client for GigaFile.nu"
  homepage "https://github.com/Maymall/gigafile-rust-cli"
  version "0.9.2"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.9.2/rgfile-0.9.2-aarch64-apple-darwin.tar.gz"
      sha256 "55fdeec9787a53d89b4b3cd784a50cf34cc9ba3f8e400695c8d0fd8fd1494733"
    end
    on_intel do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.9.2/rgfile-0.9.2-x86_64-apple-darwin.tar.gz"
      sha256 "ef2e231fb5d7bb37e1114281057d2bdc95d1e30e547010b2e5f723629740e0b5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.9.2/rgfile-0.9.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a005deab5e93be188d0ad123753f9dca68bc17986d652a3dfb08de3cc15ad0dd"
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
