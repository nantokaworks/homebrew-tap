class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.57"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.57/robco-0.1.57-aarch64-apple-darwin.tar.gz"
      sha256 "e6884e5b486fea38330275463c8e570df63d83f218e025c44100bfb726432938"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.57/robco-0.1.57-x86_64-apple-darwin.tar.gz"
      sha256 "8d391675c06f9fef7582ae1699e9e116726af538f64eb3c8122083b23a0c0977"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.57/robco-0.1.57-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9dd55f0f1263e8d696428474e08cfbdba2f9958c5b94fd39be22a686a9dbcee0"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.57/robco-0.1.57-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4b329b221b664afe8a7a6ef2d23055e62a4392f2f2b52a9673327c91b63a3e51"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
