class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.84"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.84/robco-0.1.84-aarch64-apple-darwin.tar.gz"
      sha256 "98d70829795b22539df9b1a7d994a61d0505c40670556a8698663cbb88bce499"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.84/robco-0.1.84-x86_64-apple-darwin.tar.gz"
      sha256 "396b7b60fc60a5bf117a20c59c7e1ca862c0a6b8896176212c68d299ce5d5f3f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.84/robco-0.1.84-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "57606648c43e58c6e2852d043e09c1c5c86d061507983753e32898e233c16372"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.84/robco-0.1.84-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "787bb433cdf90e442bf026e11b89b848a6adf36a9c257c599294168c6861621a"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
