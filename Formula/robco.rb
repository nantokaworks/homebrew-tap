class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.56"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.56/robco-0.1.56-aarch64-apple-darwin.tar.gz"
      sha256 "46cebcc7467161cd8d42b82288ac279401def562520f0d66fe21baefed8c5730"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.56/robco-0.1.56-x86_64-apple-darwin.tar.gz"
      sha256 "ddac4c94e45d9754c1396c3480397e259e74bdbc19e3b0306d499bf60d7cea6a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.56/robco-0.1.56-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3115261901877b893ce2dce2da82c45968dd500681c4c2bf422d241a251c0df3"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.56/robco-0.1.56-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "15091404ce2dd229cc738347560dd22167cc11d76e2f5ab6102a681a4b4acd3c"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
