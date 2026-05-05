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
      url "https://github.com/nantokaworks/clix/releases/download/flyx-v0.2.0/flyx-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "bbe4cc4c236e2429cf47b6aaaabede6079707774e777af2301c24bd1e1732ea2"
    end
    on_intel do
      url "https://github.com/nantokaworks/clix/releases/download/flyx-v0.2.0/flyx-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "dbfed18a0faf36f74f561c1362ab97eb93d542514b2b99800695c70bad099162"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/clix/releases/download/flyx-v0.2.0/flyx-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "14e19c782b8c427fc0003f87ed65e0fddf5314bc4571fe97f9618d9dec4e6330"
    end
    on_intel do
      url "https://github.com/nantokaworks/clix/releases/download/flyx-v0.2.0/flyx-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "11391589a01134f13be18318604bbe866eef691b713eb6fd26c82a9cf92a8a68"
    end
  end

  def install
    bin.install "flyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/flyx version 2>&1")
  end
end
