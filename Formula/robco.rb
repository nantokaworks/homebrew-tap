class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.58"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.58/robco-0.1.58-aarch64-apple-darwin.tar.gz"
      sha256 "041591dcf242aea89f688e07ab871128b923d494c30d0bfea4c2c91a34a3fdaf"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.58/robco-0.1.58-x86_64-apple-darwin.tar.gz"
      sha256 "d73d01ff493e84c9a83b09a1d7d7e26feb56de6965dff47d6c089388dc2b4135"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.58/robco-0.1.58-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ad0cacb5940b43f2b97e558668763c7dccf3a8efcd13a51d85acb4883ca30e6c"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.58/robco-0.1.58-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "86e5700e36d0d19374a0c0a4865736f64a984d0c35d6915338dec9d4c966b967"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
