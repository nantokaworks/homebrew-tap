class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.85"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.85/robco-0.1.85-aarch64-apple-darwin.tar.gz"
      sha256 "ee693c78f1ec57beb6361fbc4518579d1116a4b324ddc32d1d20863767ab56b5"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.85/robco-0.1.85-x86_64-apple-darwin.tar.gz"
      sha256 "fc15111d9c1202ca6d7fc1bcd6124d5f4bd4e63e4428bccbefd56614aaf0c61f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.85/robco-0.1.85-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f37e0ff56fcfa3578088c51b77b0fbe540838fce806635cfc6b47f04995eedbc"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.85/robco-0.1.85-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bd21c839b4d900982a0528ba6ca0e7576d9880071d6187e9c81153f52b133d2a"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
