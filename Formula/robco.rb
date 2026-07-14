class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.28"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.28/robco-0.1.28-aarch64-apple-darwin.tar.gz"
      sha256 "3095abfa33f77f022571891ac864b60a8bb0177365d31e2c7247fc6ab2f0d92c"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.28/robco-0.1.28-x86_64-apple-darwin.tar.gz"
      sha256 "981adda430faa063171c0e395040cf23675011efa8523a09aaffe9e64d80c819"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.28/robco-0.1.28-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "760eb9c0e15c726fa0b82bc5441a386145a3039a29ebe6b53c2277e7ddd71889"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.28/robco-0.1.28-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "385631cf60e5ef5f7dadc480dfb4644509f016d084e054e3bed8d23d6d8f6f89"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
