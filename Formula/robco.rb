class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.18"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.18/robco-0.1.18-aarch64-apple-darwin.tar.gz"
      sha256 "62a49cb17c831d561ced072858f4b5fb2d2877ac6f1ea4c85d5d4b05bdc72bad"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.18/robco-0.1.18-x86_64-apple-darwin.tar.gz"
      sha256 "df205a000b86e8e6e2dac37c036e6f3e6794c541a4a94876226001467241a60d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.18/robco-0.1.18-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4d42aff5c509852a6fb44dd1f64029d76405ae18491eb88e79f34db7f0a14379"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.18/robco-0.1.18-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "842e955bd917e5309d9120f94ac87016f69ae0ae0fa1cbbd42753eb7b7f85235"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
