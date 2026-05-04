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
      url "https://github.com/nantokaworks/clix/releases/download/flyx-v0.1.0/flyx-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "1e00dec4137b94b0c9e9fc4f6da4fb820f6ad13927bfbbba9e763b988cdbbf52"
    end
    on_intel do
      url "https://github.com/nantokaworks/clix/releases/download/flyx-v0.1.0/flyx-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "bad2edf588e09c5825c3522b1e2b3e207833eb5a4d010d9eba609f3a2a0ceff2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/clix/releases/download/flyx-v0.1.0/flyx-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b99af4355e81d9b019328ef9798489954574eb40f4074edd9da95d8902826cd8"
    end
    on_intel do
      url "https://github.com/nantokaworks/clix/releases/download/flyx-v0.1.0/flyx-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "35beaf115d7c9a4b18616c061e50295772fb35075c05512a04d877a261c44c07"
    end
  end

  def install
    bin.install "flyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/flyx version 2>&1")
  end
end
