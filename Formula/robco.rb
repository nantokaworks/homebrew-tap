class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.8"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.8/robco-0.1.8-aarch64-apple-darwin.tar.gz"
      sha256 "30c0da64af03c0baf48681e5075863324b6c7e7f79aea80bbdae3aebcf0f2b1b"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.8/robco-0.1.8-x86_64-apple-darwin.tar.gz"
      sha256 "64adcedf21f8630273d724f3da5af9f439266b34d185266a7fdda4deda12e66b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.8/robco-0.1.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a9bc93735883c35865c8632bb63a5acd01931e517562dde1cbc6aef57f63a7e2"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.8/robco-0.1.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c9c2aeeabc96d50bb58101c1b783ca5efdea8f47a04d11797b347031acb6312c"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
