class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.92"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.92/robco-0.1.92-aarch64-apple-darwin.tar.gz"
      sha256 "686a98824bdfd8618ee8acae2fddebedf249abba41155dc20ff36cdc4d84360f"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.92/robco-0.1.92-x86_64-apple-darwin.tar.gz"
      sha256 "212f71acaaeb3485f73621ec61ee20c3a79a5eb9d2e362c3c19100aa8d91eb4f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.92/robco-0.1.92-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a10e23d11dd83930854b684380e9b23a829951ec9662f63d3fb75e34ac7c5135"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.92/robco-0.1.92-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a82d4bb6d7323bcfc27467812d79cc6e4bda5e197f0f9d8048e320ffaa42752f"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
