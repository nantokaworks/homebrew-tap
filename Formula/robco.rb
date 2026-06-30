class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.7"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.7/robco-0.1.7-aarch64-apple-darwin.tar.gz"
      sha256 "76fb5f18e6e7c6cd328035348f1c7a54038713bb7e810ed94b5c4a5b3100bef9"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.7/robco-0.1.7-x86_64-apple-darwin.tar.gz"
      sha256 "c4bb60ca4c83150493ad747a93c94c3a191e7046e190c026c7790088ee17fb30"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.7/robco-0.1.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d91d3c520a56e426e2364c2da3d0393555bd17f0c1a1295eeb060dde7d241db0"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.7/robco-0.1.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0e085c161b3f9c826ec8eb36599a154ed20df82efa5fd62d6411d98bcbefc212"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
