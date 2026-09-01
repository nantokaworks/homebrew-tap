class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.7.1"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.7.1/robco-0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "3b9ec4c8e63dd6a75a9325f77d9f6879cca5028d0101418d4392f87fb3be4915"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.7.1/robco-0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "7d464e428ddbf22fff6919a047bd506a6aaddb64a0a11b2d9668ad891990b91a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.7.1/robco-0.7.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "71fabc91eedb70718d6bcd6b6a7a6ddac90247ee81eb9b0c2f5797ecbf4bb2cc"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.7.1/robco-0.7.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c3fc97eff34e15cdbf03d8e5e2eb126350f7ae160c79513d9b822d31135995da"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
