class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.70"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.70/robco-0.1.70-aarch64-apple-darwin.tar.gz"
      sha256 "10d8ac5de2d057ff278c828ca1c515030ebe1a243501af8a7ddf29b442e367dd"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.70/robco-0.1.70-x86_64-apple-darwin.tar.gz"
      sha256 "60b02bf8be35c8947b3776a299da782236231ba8a38d6eccee378e6f195e5942"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.70/robco-0.1.70-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7107621b944369599b0854a22aed846f11a0eb22bb3cce80dcf25271eba0dab3"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.70/robco-0.1.70-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8526469671684ae40a35fb1f112be445335e91efad371329f5eb104680945971"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
