class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.3.4"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.3.4/robco-0.3.4-aarch64-apple-darwin.tar.gz"
      sha256 "fcf3df642346ac5728d0ca94ca2bc16ac68611a0c37aab0a4bceda6692fad601"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.3.4/robco-0.3.4-x86_64-apple-darwin.tar.gz"
      sha256 "bd2911be9a603a596681c3746e487b243fade51f8d6b2acb7469441dab26efb6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.3.4/robco-0.3.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "33e30cac48246c1a657de354312a7739bb39cf4dd19cc1ab5263ed226669f0a1"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.3.4/robco-0.3.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f7537e423d15c6a849a21842ea5509c873b0f757e118a2ab5ec718137c6b788f"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
