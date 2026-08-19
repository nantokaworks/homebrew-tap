class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.2.1"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.2.1/robco-0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "46537e641c907d9b0cd23e171ffcde5d8cd31ac8d8149353a8a7ceeb3cb730c8"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.2.1/robco-0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "798298ac2b8a7b94c013fc8c582afca529936d83ee2af4f19105652dc96d9ae3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.2.1/robco-0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3e60951aa7e7f3f049c89d1f00decca85861e8546ae6cce33f791d94c89d7bab"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.2.1/robco-0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4f7399ebffa01d079ec8a7c68140adf9ca0d0efe53090ddb4b79d990e5cbe3f7"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
