class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.45"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.45/robco-0.1.45-aarch64-apple-darwin.tar.gz"
      sha256 "6abbb5b5a6557231689fa59c3070518d80f35b095ad7256271b97ef788fbd05c"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.45/robco-0.1.45-x86_64-apple-darwin.tar.gz"
      sha256 "b4e504ecfb24996e01b32df8872bb4bd69e970a80eb3338720a7604033b91c1d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.45/robco-0.1.45-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "089bee18c27b2fda8a1daf2ebc83338ba3e6b6fa7299e1e53aa71188c683906b"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.45/robco-0.1.45-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f326c6faa5d038a20d7ad30a40e2614cccd57ca2d265b0f3e23c468789d401b1"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
