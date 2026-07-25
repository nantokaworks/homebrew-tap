class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.68"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.68/robco-0.1.68-aarch64-apple-darwin.tar.gz"
      sha256 "80c7298c57e1012c1028214f82d9ddb942c64d1245781a6a39036e4c8eb32af0"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.68/robco-0.1.68-x86_64-apple-darwin.tar.gz"
      sha256 "f6728a6e710cec9138634745217cbde1e9728c1ebf312fde9e5c0fbd3590139d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.68/robco-0.1.68-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2fade0f318b1a611adceaf425283ba572449e522bec348329ac5f56752e23cd8"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.68/robco-0.1.68-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e4f6b7c379952bf1eb86460f9f73e6bfa11668241a0f84d014f40e6acff1f34c"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
