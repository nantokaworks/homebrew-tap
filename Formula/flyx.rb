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
      url "https://github.com/nantokaworks/clix/releases/download/flyx-v0.1.1/flyx-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "db76e79f4298dc3b71b82c64898b046ad8a249dee8e225798f0dd66315117bb5"
    end
    on_intel do
      url "https://github.com/nantokaworks/clix/releases/download/flyx-v0.1.1/flyx-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "ae2b3aa2e3f601a174ee16ef3f4096982e8a926d22302236ed44eb7a860a1091"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/clix/releases/download/flyx-v0.1.1/flyx-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2f33c3880afa87418934d11a3e07213598961cbe6d653090cc69e31490311722"
    end
    on_intel do
      url "https://github.com/nantokaworks/clix/releases/download/flyx-v0.1.1/flyx-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f280313e4faf36508a36dd39c432ded2d93c0981a76f027dd11e8a22964949a0"
    end
  end

  def install
    bin.install "flyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/flyx version 2>&1")
  end
end
