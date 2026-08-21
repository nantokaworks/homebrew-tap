class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.4.4"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.4.4/robco-0.4.4-aarch64-apple-darwin.tar.gz"
      sha256 "84de005878b18c980ea19cb25c326b48aa2e30c593c65525c23844207bdec2ab"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.4.4/robco-0.4.4-x86_64-apple-darwin.tar.gz"
      sha256 "8cbf46af4311f2e615523b647ec674b7c08a0baa0c34930da0ffd2c34c406f0d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.4.4/robco-0.4.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "03f43cfbfaba6828de49ae9c83c342e7eecca95ab5a8b3fa2b355e45373db2df"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.4.4/robco-0.4.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c3be67f14e421fb97d4b428b6b139b6014c10b1042f46c53fbb421f1ee7436d1"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
