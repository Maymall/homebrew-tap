class Rgfile < Formula
  desc "Fast, robust command-line client for GigaFile.nu"
  homepage "https://github.com/Maymall/gigafile-rust-cli"
  version "0.3.2"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.3.2/rgfile-0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "ff4f8f904237ca1e1898932a8127925c0e51882cfd135c48df9f9d9e24a87037"
    end
    on_intel do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.3.2/rgfile-0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "4b3d158c0435f2aac567d18c8c8eb8bf3d34206e185bb16e91069393ead4ed11"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.3.2/rgfile-0.3.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e849a1d3ef621b871e96435368fc931c32530b63c58d6b927dd86e4371867adc"
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
