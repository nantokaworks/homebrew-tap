class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.6.0"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.6.0/robco-0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "e15ce6e0ff77918dc9881bd803033e00f953c2211a312fd7de4547cd0c4b26c2"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.6.0/robco-0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "24b740cd5f10964bae2b1fdebf30745769eae4e49cfa4dba6a679859d90656cc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.6.0/robco-0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bce8bc1c6adb2c09256a816b6850eadc62cb7f89895d24a108bbe15c944290f4"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.6.0/robco-0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cf8badba534db5bf471577dec6b59d0fa7418cab390a9edcbd90516b9e60ccad"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
