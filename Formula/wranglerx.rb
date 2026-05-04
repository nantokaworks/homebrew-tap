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
      url "https://github.com/nantokaworks/clix/releases/download/wranglerx-v0.1.0/wranglerx-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "7cf102d9426b1490a281fa5171da4d5988f9aaf50ef0bcb6147dde902ff89999"
    end
    on_intel do
      url "https://github.com/nantokaworks/clix/releases/download/wranglerx-v0.1.0/wranglerx-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "197f1413b32d71e0ddbc6ee01b83d6cd0470bbc07bafa15986b8277d838fc8fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/clix/releases/download/wranglerx-v0.1.0/wranglerx-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "24efe6b78b657174e6ddb7d1c63eb256e4c94a822e828d73187720901c76c86c"
    end
    on_intel do
      url "https://github.com/nantokaworks/clix/releases/download/wranglerx-v0.1.0/wranglerx-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a78e98df7b6eff12978374b56de976030dd0d06f9448d683072ee0e0503808fe"
    end
  end

  def install
    bin.install "wranglerx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wranglerx version 2>&1")
  end
end
