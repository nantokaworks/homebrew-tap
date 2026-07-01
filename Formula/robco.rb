class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.10"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.10/robco-0.1.10-aarch64-apple-darwin.tar.gz"
      sha256 "28f104ec1a2a8b0a08c14e3f0c63332b1a8f6d6d70a1e2ef36d4f690cc8eefa3"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.10/robco-0.1.10-x86_64-apple-darwin.tar.gz"
      sha256 "1a8d11228bf5909c986e37639761cd4df0ce2b45734534ec1b154632416e1c10"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.10/robco-0.1.10-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "301cd7c7678a8eeff9c01bde28299574a13d450573b5444f12837aa2723afdff"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.10/robco-0.1.10-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "959eb82c319dcaa383988d1e1df64e478009b6356db24c5b54d1f219d4e5ef5d"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
