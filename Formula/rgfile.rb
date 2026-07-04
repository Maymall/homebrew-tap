class Rgfile < Formula
  desc "Fast, robust command-line client for GigaFile.nu"
  homepage "https://github.com/Maymall/gigafile-rust-cli"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.10.0/rgfile-0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "096b3cb26fb3aeb7fab7000968831927570107082fc15dd1a7bc8c80fdfa9560"
    end
    on_intel do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.10.0/rgfile-0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "7407fb357f55d93d77ea37f182cb20b29cde2a4d19ab65a11df972bcde6a7c37"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.10.0/rgfile-0.10.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "91364528e75cbec41ba903b340e114ec9ed9aa136d152af37671a5351b0434a2"
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
