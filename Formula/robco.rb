class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.2.0"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.2.0/robco-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "acc45af1db0fa075dc04df6fc7babf85bd7d26fbb6dba41ce5b22296de1b9194"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.2.0/robco-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "821f375006dbfc381598fcc2faaf7bb1e23b401fb8c2964fd4426879477ef509"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.2.0/robco-0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "675a5795dd158fd7cd2fdabf3557c4a5b5461e12ee9ecc9f0d896059cf8485b1"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.2.0/robco-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "34a2352805460860944a407aa00b6269dcdf03330be274ae1bc32b7704efd1cf"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
