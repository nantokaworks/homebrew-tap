class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.59"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.59/robco-0.1.59-aarch64-apple-darwin.tar.gz"
      sha256 "a91b79a7598e0311fae5a9b793bc78df75a8bc266793a227378119ef28af0247"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.59/robco-0.1.59-x86_64-apple-darwin.tar.gz"
      sha256 "eee299de05c7c411285123e162c6ad0c9c93cfc7e2b88e86a3c6009c0c911993"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.59/robco-0.1.59-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a309c4be390ec4978d4b9841599d88c0045c10daba25f518b167e2055ba52565"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.59/robco-0.1.59-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "718f20a065ce7659d295a60ddd229558307e3edc8a1dc036cf8be4e17fededc8"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
