class Flyx < Formula
  desc "Multi-account Fly.io CLI wrapper, powered by fly"
  homepage "https://github.com/nantokaworks/clix"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/clix/releases/download/flyx-v0.2.1/flyx-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "a17e8e42c579799871877fa1f15edf325c62ceebda870428b9ace0690efccb1e"
    end
    on_intel do
      url "https://github.com/nantokaworks/clix/releases/download/flyx-v0.2.1/flyx-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "aff4d8d1239cd8d1e2e8656055420871d40b54ebb1ccf2bede839af426649f53"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/clix/releases/download/flyx-v0.2.1/flyx-v0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fda56d937dfe8dc8c77d2bc77d6ee54a3072dc6ddb98a45224f6831aa3fb4a7f"
    end
    on_intel do
      url "https://github.com/nantokaworks/clix/releases/download/flyx-v0.2.1/flyx-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "31b50cc60c32f5e0c43b7e9fac70b513dd67c48116c26c37935b876cbda4d5ad"
    end
  end

  def install
    bin.install "flyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/flyx version 2>&1")
  end
end
