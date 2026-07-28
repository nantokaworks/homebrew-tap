class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.80"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.80/robco-0.1.80-aarch64-apple-darwin.tar.gz"
      sha256 "bc4ff67046d1b35bb17d4867f6dab7e239be14373d7c08d8e12543b16e2eaf95"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.80/robco-0.1.80-x86_64-apple-darwin.tar.gz"
      sha256 "dc2c2b19700de256eb50cb144edc8d82f5a6bd57fda8597f9627b0db9a6a953a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.80/robco-0.1.80-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6b557ab2c1036f789dd24c0b840d50140e013b132fb2a645a6a9499ac9f811b9"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.80/robco-0.1.80-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a91aad7162328732503427484333bc3849f7a1759a880ba0ac030ad3cc722321"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
