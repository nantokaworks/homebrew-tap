class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.66"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.66/robco-0.1.66-aarch64-apple-darwin.tar.gz"
      sha256 "7f0e8a810e80ef92acd338691d3492b33fe5d853a6f71ce925852c1c976bf9a6"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.66/robco-0.1.66-x86_64-apple-darwin.tar.gz"
      sha256 "9aaa72c587b2c66c7879cd3bd95bb9832558728f7894bc39c30ae8ed3809fee2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.66/robco-0.1.66-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "17cc38ad63681024a36702cefb2db6f11dbf935055d947637dd5d865b4b603a0"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.66/robco-0.1.66-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5267e6baafbb7e6ff4a71cd283570285214598c37a0a366eee955f529a16e988"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
