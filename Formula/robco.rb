class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.16"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.16/robco-0.1.16-aarch64-apple-darwin.tar.gz"
      sha256 "3434532e2e860921b86b4332530182a0074b5f91cbaa7cfe0f8c17c091ff4ef5"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.16/robco-0.1.16-x86_64-apple-darwin.tar.gz"
      sha256 "15ab68da687e6e1ddf486b5ef9cfacc201b40d10276911140cd156da81175207"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.16/robco-0.1.16-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "28a9350e54854144d81f647d208409d1ffe0445055c1240d686593f379b0b6df"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.16/robco-0.1.16-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "278e3d2db9c0e206d5e2b3bfc0e687f0eded15ebdcbebcd1226cbdfd880a0705"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
