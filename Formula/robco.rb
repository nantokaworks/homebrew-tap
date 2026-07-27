class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.74"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.74/robco-0.1.74-aarch64-apple-darwin.tar.gz"
      sha256 "db2aac275ba60dfdbf0374525aab48b75696b7aa90a4096cf311fc461b1ab041"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.74/robco-0.1.74-x86_64-apple-darwin.tar.gz"
      sha256 "d67a292af93db1223f84d828d4521bf2d09727c4fea6850f2617d851d5057bf0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.74/robco-0.1.74-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f887b00ffbb990cffffa4afbb2ef5472f690904bddda75f017346a487c20e7a3"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.74/robco-0.1.74-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1ebd132043b1057f0498eed4985c5567a277446c181df25edc88d4c066773e9a"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
