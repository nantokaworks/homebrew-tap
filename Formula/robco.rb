class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.63"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.63/robco-0.1.63-aarch64-apple-darwin.tar.gz"
      sha256 "837f698da31b59a5a0624a72ef89041f521db8710d6d6de2867afdf17094c49a"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.63/robco-0.1.63-x86_64-apple-darwin.tar.gz"
      sha256 "1c171c7b776cd7cc72ecd3ec6d0acc4d5ec4b03abdf254ebc20976e81b230355"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.63/robco-0.1.63-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9a42768aaf153caa5ea4526b04b1d3fa91d29d88b2bd879c93798060696bffca"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.63/robco-0.1.63-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c094c0b75b1534b0c2ade5074b8c7a716a7ad9cba35b41755781639cd9cad173"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
