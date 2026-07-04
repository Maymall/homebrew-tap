class Rgfile < Formula
  desc "Fast, robust command-line client for GigaFile.nu"
  homepage "https://github.com/Maymall/gigafile-rust-cli"
  version "0.9.3"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.9.3/rgfile-0.9.3-aarch64-apple-darwin.tar.gz"
      sha256 "ff719417a0207bd7445dfe764bc595f708eebb18e4e02590a7541ef0a55a22bb"
    end
    on_intel do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.9.3/rgfile-0.9.3-x86_64-apple-darwin.tar.gz"
      sha256 "1bc18bba3e3b12fd04bcadaf905997044e47c0087be6fd9bd5b42a282c6c14c4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.9.3/rgfile-0.9.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4ea65f68ff432b6afa6058dcc7856ad323d653336c6dafad002f56332866aefd"
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
