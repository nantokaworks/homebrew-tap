class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.6"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.6/robco-0.1.6-aarch64-apple-darwin.tar.gz"
      sha256 "28ac855d89f29c983ddb080ad9be25fb38875e9ec5e32a76e122dd20d0490dea"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.6/robco-0.1.6-x86_64-apple-darwin.tar.gz"
      sha256 "904af1e71515b05177115f172a4da986f69e7e3dc261899d9bd7eb18a75373d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.6/robco-0.1.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2d6d7c5e279882cc9eb68d2f88531aece2931187c2f289247b6d2d35c4266132"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.6/robco-0.1.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "866f8b9c3278937f7bdecd415b5e0c6b7172d44662f82e88cdcba0bd6b50931f"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
