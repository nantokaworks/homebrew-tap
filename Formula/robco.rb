class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.4.7"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.4.7/robco-0.4.7-aarch64-apple-darwin.tar.gz"
      sha256 "a0dc3a27012cb0784c2445b614c7637bc9429582552ec4636467f16468682bdf"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.4.7/robco-0.4.7-x86_64-apple-darwin.tar.gz"
      sha256 "9bd90285a18331fef3545adeb6f6da873573560cdf085bbe99d8ed73da47d43f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.4.7/robco-0.4.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "56bb4b0fc5029e3d5d6e860c8192b69b2b5e9a0d4669c5c0b88425756c9141a2"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.4.7/robco-0.4.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fd6481218532a7e96b2157c3d4c5f74d459931658323b15f5bdd5a335e26557e"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
