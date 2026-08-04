class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.89"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.89/robco-0.1.89-aarch64-apple-darwin.tar.gz"
      sha256 "6e70e3dd663f4a23274f89063c06fd393bcd91b4ea73d716401cf79159f1a4d6"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.89/robco-0.1.89-x86_64-apple-darwin.tar.gz"
      sha256 "a049af864e49f305cc46472217c50ca9b9bd91416276132025046798b30ebe13"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.89/robco-0.1.89-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2bf21f137136f712acec6077f25d69a1f00fd32a7d3cc23ba4d8e442e5109007"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.89/robco-0.1.89-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2cfc768f03d2c5567e65d17df13e170d6dc1bd4c68a826c7a0fcfaf0ef312b4c"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
