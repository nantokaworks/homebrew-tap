class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.64"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.64/robco-0.1.64-aarch64-apple-darwin.tar.gz"
      sha256 "b6dfbe869434868178fc8cc7a795b1ff0839fb3c506cfd8161abf7d99cfff1c5"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.64/robco-0.1.64-x86_64-apple-darwin.tar.gz"
      sha256 "c212fa2e08590fcc9f2694c14599863b9735aafd8bceaafd1c7820c1eb467f98"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.64/robco-0.1.64-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "15ef3725e2f9a2c9f0dda29229ee7b36924f3fbf1c729075d0251e8ba5c49c1d"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.64/robco-0.1.64-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "367ccdbb29d5d3580c04f8c9791b69a8e5d5c2228e654bd41cbe1b0db71af877"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
