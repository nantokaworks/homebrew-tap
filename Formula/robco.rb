class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.99"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.99/robco-0.1.99-aarch64-apple-darwin.tar.gz"
      sha256 "fea961bebcc9bd21c526b512642a66ff8b790e9a1d236ce425cc57b0dcb98257"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.99/robco-0.1.99-x86_64-apple-darwin.tar.gz"
      sha256 "b516776907178c4a67230eb9341bedaf3b536875af23d94576664e9704985b70"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.99/robco-0.1.99-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bb7a6669b827c850cc54734f1f79ab7f23d87f3ad88542888c4121aa8e02f6d0"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.99/robco-0.1.99-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2db93001a6d0405a1cc4d3d3a5f3bb043fd994037d5f26008f891412c7bd3e2e"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
