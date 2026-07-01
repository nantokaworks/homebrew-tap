class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.14"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.14/robco-0.1.14-aarch64-apple-darwin.tar.gz"
      sha256 "cf097266730c599c185e1417bb088c0c1204bbec63ef14c481ed4fff60bd93ee"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.14/robco-0.1.14-x86_64-apple-darwin.tar.gz"
      sha256 "52a5ecb0c92302cd24bd3be3dca57e047a977563438a879c6a5f9869439597c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.14/robco-0.1.14-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f067bbd155c02c1aa937b7ea4e43eea0c9e29c0def5c2c2196f269f5052bc7a5"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.14/robco-0.1.14-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9a559b969b75dfa043a615d98f0f046a346dabc2d3788129ffc977c94284c3c3"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
