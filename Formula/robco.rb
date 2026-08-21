class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.4.5"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.4.5/robco-0.4.5-aarch64-apple-darwin.tar.gz"
      sha256 "c4d0af1af49358b50a42518ef2610ac4d21ca2a14b8f33c5d576cc6b1761d19e"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.4.5/robco-0.4.5-x86_64-apple-darwin.tar.gz"
      sha256 "e61091b79b85bef412882491441255ac9715d6ec5b7df7410774a5932bdc4902"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.4.5/robco-0.4.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "64a86126934b732ca7ff87152ffb0c589eebb51901a603899cf38012609b63d1"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.4.5/robco-0.4.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "557d0d6c7ff1a968a673fa628bb03410d41872b6d5b089f12b1799c609af951d"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
