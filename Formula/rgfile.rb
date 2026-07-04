class Rgfile < Formula
  desc "Fast, robust command-line client for GigaFile.nu"
  homepage "https://github.com/Maymall/gigafile-rust-cli"
  version "0.7.1"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.7.1/rgfile-0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "085580455f21e49eb30bba5b08359d5dcf7b99811390020204e20f5dd518c352"
    end
    on_intel do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.7.1/rgfile-0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "f5b31c90f144fd9c1340db8cef00b564fd90e7faa071491de07b5bf10192aaa3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.7.1/rgfile-0.7.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a6dfa662382e053d1e094660b02f2525ba0d849d5d15af06ef367070ed56dbf2"
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
