class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.4.3"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.4.3/robco-0.4.3-aarch64-apple-darwin.tar.gz"
      sha256 "184d8e50011fb0c36ab7c528297f417dea91d953fd2f7d1258bb60d84dd42c6e"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.4.3/robco-0.4.3-x86_64-apple-darwin.tar.gz"
      sha256 "6aa22ec0e0de4387a4c513cf2cf8c0f34ba13a5707f29b77cd324f4938016694"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.4.3/robco-0.4.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1cf01184042dfe1ece2ec02ab0a1bc406fe3dd216705ecad19f669f13656028b"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.4.3/robco-0.4.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7b8694b0d46eaf020fc1656b263d8d2a273bfb468350dae4a6aadbe2e0eec1c0"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
