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
      url "https://github.com/nantokaworks/clix/releases/download/wranglerx-v0.1.2/wranglerx-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "78e947e7e807f25ef11799f08789bd6378accaa63539772e76bbf0fd3eec23bf"
    end
    on_intel do
      url "https://github.com/nantokaworks/clix/releases/download/wranglerx-v0.1.2/wranglerx-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "d0fa67757abbbbfb2362214bbd2e0e2bc4ca3479bcba58e0d4e9b90eccb7bed4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/clix/releases/download/wranglerx-v0.1.2/wranglerx-v0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0d2407fe5860dbdb2bd9368e6e2ca7fffb5cf249d1ebcab896b0154d8a094e48"
    end
    on_intel do
      url "https://github.com/nantokaworks/clix/releases/download/wranglerx-v0.1.2/wranglerx-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0deedef81c2525b7e8a43bff799d532dd9cc2903b0527ac8ee7ddfb4456413cf"
    end
  end

  def install
    bin.install "wranglerx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wranglerx version 2>&1")
  end
end
