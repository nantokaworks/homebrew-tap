class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.3.2"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.3.2/robco-0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "f2aa2551a6636e6cbea0a99e213c48a94784017eeb5b9c9be66b646294c0ba4c"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.3.2/robco-0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "61d09ed593e5e55109b37ade472bf97d879c96766729e5facc212de3a9de90b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.3.2/robco-0.3.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fed3ca85b2b6941c5bf5fb9e75d089ba444d24057b34ea8ee48a03b3cd7275e3"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.3.2/robco-0.3.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2af10c8019702b65952221b8262b9770aa47d0c210736916a6582913728516e2"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
