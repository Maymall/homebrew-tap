class Rgfile < Formula
  desc "Fast, robust command-line client for GigaFile.nu"
  homepage "https://github.com/Maymall/gigafile-rust-cli"
  version "0.5.1"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.5.1/rgfile-0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "2c15ac595b7f86538822b8183102039f20f24b3529171ee88992b4914210232d"
    end
    on_intel do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.5.1/rgfile-0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "b46517e37dd22ac35ec9a517aa50c0d845020a8b4a2017fcaee9ec3a1cc06479"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Maymall/gigafile-rust-cli/releases/download/v0.5.1/rgfile-0.5.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d085ad4ef84f3151a3ea40d912aa98261eb6774d484e056099dca6547e9bda71"
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
