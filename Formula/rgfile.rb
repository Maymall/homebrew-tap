class Rgfile < Formula
  desc "Fast, robust command-line client for GigaFile.nu"
  homepage "https://github.com/Maymall/gigafile-rust-cli"
  version "0.5.3"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.5.3/rgfile-0.5.3-aarch64-apple-darwin.tar.gz"
      sha256 "1f4d6aafd39ecb0409a0ce99d67f0ffb1dc662a5f10741421ae24381ffc87c18"
    end
    on_intel do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.5.3/rgfile-0.5.3-x86_64-apple-darwin.tar.gz"
      sha256 "ccc578f0a4e755bf87964ab865fe57e42c25ce61f29b93fba9cf279b7c008826"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.5.3/rgfile-0.5.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c5d5fee1269ff2fb552983a121c1b91a2045f9141a653a35c1962b538255ce5a"
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
