class Wranglerx < Formula
  desc "Multi-account Cloudflare Wrangler CLI, powered by wrangler"
  homepage "https://github.com/nantokaworks/clix"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/clix/releases/download/wranglerx-v0.1.1/wranglerx-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "92d9f7c736a7320f3a76ac670a956fc789e0e0087456feada3b2dddd06e0ac7e"
    end
    on_intel do
      url "https://github.com/nantokaworks/clix/releases/download/wranglerx-v0.1.1/wranglerx-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "386bfcfd9ab8e175f369c830136f1ab33834f593f64a4bb9591ce714f5166198"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/clix/releases/download/wranglerx-v0.1.1/wranglerx-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "11a5937f7d98ff2b8099212d1c05493e60d738fb65bc4052fed7d1c892d62e98"
    end
    on_intel do
      url "https://github.com/nantokaworks/clix/releases/download/wranglerx-v0.1.1/wranglerx-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f5e1e0ac01752e65d7d3c53c64c9922d7eb6ba324b093674a47c3e735382fdc7"
    end
  end

  def install
    bin.install "wranglerx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wranglerx version 2>&1")
  end
end
