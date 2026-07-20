class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.50"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.50/robco-0.1.50-aarch64-apple-darwin.tar.gz"
      sha256 "f4277a629e578a91a0d857f48af11fab5d6fab5410091b35abf818534480008d"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.50/robco-0.1.50-x86_64-apple-darwin.tar.gz"
      sha256 "96ddee73a7b305230e71835d78d89c809244ba3bb0183f928f52547dbeb03fce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.50/robco-0.1.50-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fa377ccac58a7f1d2fd732b3643f6a290875c72b7f667eaf214c357eaa05a527"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.50/robco-0.1.50-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "def9b5413794f9b674009aa0285c1bc72777af37a681a0587fa0831c705165e0"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
