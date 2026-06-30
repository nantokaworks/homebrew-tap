class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.1"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.1/robco-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "decc971c5e267f3ddc693648ff6fdee4510a578a7646ce64874fb829179bda38"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.1/robco-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "26ff03351f5c0e80637c81cb904abe2000571f0fcf1fcff495032005203a26a2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.1/robco-0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "58a8c0d92d62b8c7cbcad31bb43adbce8f9e838eda35a7ac6d12076ab8380afd"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.1/robco-0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "38e4af261ae76dd717fe41317fc177dd558c8c517025955700bab604b894869b"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
