class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.5.1"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.5.1/robco-0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "20ff9e1ffd2f4a82ea01de76b3d8d2f55e232acab454d36577dc485b09bfb34c"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.5.1/robco-0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "7e00e89c535666198d1f655fab1fea3b4fff9fb8fd8b560b3189f12f9264ad95"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.5.1/robco-0.5.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7c53dc0fade0c0d7beb09550d8ab40908d8f2ed8ab67ccffa96e540dd5e6f37e"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.5.1/robco-0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0db8fd956c5238d29a2a8e30e629aa8640a1751f8380e1977c9743263419cf85"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
