class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.53"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.53/robco-0.1.53-aarch64-apple-darwin.tar.gz"
      sha256 "988624157b1bb0d55e8bcb6113dbf5b121dbe0dcebfe71c430fb613abeb15ef1"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.53/robco-0.1.53-x86_64-apple-darwin.tar.gz"
      sha256 "34bb3fc01e68e37f7f460f7cd84eb87ba9ff25d833903d96c358b68b138a4561"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.53/robco-0.1.53-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "672609bbe6c1f3dab6b349139a0358e92129b9c3a7a42d851da2c88c7c8d2570"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.53/robco-0.1.53-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a56e6fd0d7146aa1380a5d20c3b252790ac60c621a0767c67058da28915e6645"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
