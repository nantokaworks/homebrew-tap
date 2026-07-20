class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.51"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.51/robco-0.1.51-aarch64-apple-darwin.tar.gz"
      sha256 "04b195b3945d2f659f3afcb9ee9d48b5d4190bf21a93a7d340b0bb04f3b7cebb"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.51/robco-0.1.51-x86_64-apple-darwin.tar.gz"
      sha256 "d5321459536718c9b42fcc0df42369045e81f5b5bade2b1a4fbe37b1ee01c001"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.51/robco-0.1.51-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "95123660998e9235ee6503c3ad8109010a72ea35693b7cc9d1afe05b9c59d441"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.51/robco-0.1.51-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8c79dad2f323d8402891cc86a2ebec8454f6ab5da849fed704604532e0a3d692"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
