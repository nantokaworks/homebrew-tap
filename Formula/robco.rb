class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.7.0"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.7.0/robco-0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "50758bab9ae890286cf04292878c6d9365438e7d0e018045a52a869ba0e7af2f"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.7.0/robco-0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "568494ffee4c83b5a888d44eea22dade4df48e84addf9897cfc10f06ba362c65"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.7.0/robco-0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0bfd5c311588a696d479782e1570aac39f23719384bf83f9b2d81fd0e5c71043"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.7.0/robco-0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a5c3c8aea6489304fbed25205ef41ad6fbf6f6edc6441a8dc6f3efcecc3963a8"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
