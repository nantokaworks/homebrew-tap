class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.87"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.87/robco-0.1.87-aarch64-apple-darwin.tar.gz"
      sha256 "57b1c4249675f676a4c328799df038b0f1eb4a627d67fb32489225df5e21048f"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.87/robco-0.1.87-x86_64-apple-darwin.tar.gz"
      sha256 "62cb6f8bed57abbb12b141588d867c40c84c19bd11687ccab3905af927679553"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.87/robco-0.1.87-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d2817d625f12d919480ba7449a17e964f4f86bad689550e2c2c7c002ac276ba3"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.87/robco-0.1.87-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "552667921fc458585100c83a365ef050b69f8a0e9e32a3b0485fab72635c0f2b"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
