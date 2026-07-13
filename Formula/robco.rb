class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.26"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.26/robco-0.1.26-aarch64-apple-darwin.tar.gz"
      sha256 "f82e01fc1cd1f93b685ad295b89ce6038774a865a55c31e3beb38e0e636512b9"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.26/robco-0.1.26-x86_64-apple-darwin.tar.gz"
      sha256 "29a495c768490040dba58f5c18f3dbb7ed3c206e59487b4d06f59ecd1799ef88"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.26/robco-0.1.26-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "85f0f40380df49030581218ab1a006de479d16f6c96d385c4160cb3cb58e8e97"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.26/robco-0.1.26-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f66b557cc555200d6107aab8e8c4fe3d66e02060fa092e1b0eff6068f03d0814"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
