class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.4.0"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.4.0/robco-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "ed2c141af9f6f25ba7a07f26d9431e7e8c73cb9c5cf273fe88ac695e38529799"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.4.0/robco-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "040544bef14d991f9f35281313722582fbc9633af4f32bab8765107e14cf7638"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.4.0/robco-0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0a206c2ad480807fd2db0a506ed035573944512772372504de011482c80f3d07"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.4.0/robco-0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "736c69a9b226d6d9b27e273309ec832ea48b3cc0752b26780b741f052bae295d"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
