class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.7.3"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.7.3/robco-0.7.3-aarch64-apple-darwin.tar.gz"
      sha256 "3a7acbba5490f30005ffd88612cf459e283cbaedd3de8be6a22ea9463a058099"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.7.3/robco-0.7.3-x86_64-apple-darwin.tar.gz"
      sha256 "c01e39667d1f73c2440afd5dc184f6523f75236ae11df09fffcbb0c49c925548"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.7.3/robco-0.7.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cf30d87a8ba79f72985e9449a711cd3e3119cc71667e9b4c24445034a2264f69"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.7.3/robco-0.7.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9093fa8cde2d11acbf9220b2da955b7ba203d34547663ff3c02778e92e93f227"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
