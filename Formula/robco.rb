class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.55"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.55/robco-0.1.55-aarch64-apple-darwin.tar.gz"
      sha256 "ac3c4d9c0b95f9a46ef684db63e20b8b4d38d77105f55cde997530715b071e1d"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.55/robco-0.1.55-x86_64-apple-darwin.tar.gz"
      sha256 "b79ca4a6118585d7b8df565cc0425fec9136b76e2a4c51dcef6b8827bfb5c464"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.55/robco-0.1.55-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ceab2987e31b45153b32483a46ffa7bd55453208a4d5d53d1f5b6866a32ee2cb"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.55/robco-0.1.55-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ca4253e05d57d6b112e00b3ec6f5d04b00f914ef1ad331d58c5fc736408ae203"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
