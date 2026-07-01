class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.9"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.9/robco-0.1.9-aarch64-apple-darwin.tar.gz"
      sha256 "f0225da7e477a1deaa83a27fe1de9adfe291fb486b04a9ca43ab8cddd2bed6b3"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.9/robco-0.1.9-x86_64-apple-darwin.tar.gz"
      sha256 "db259e2ebc72423036c6369ce9b82cd9a48e4a86ac6da630e8d81e0dce53b659"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.9/robco-0.1.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d2e0b64dd633272acf6fec91326ced9264081ce1f9952c8233a75f72657a17c7"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.9/robco-0.1.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "08d92d7864d84318b0e720e2770086e05f3ef5350e5ec9ad7bd8704135eda932"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
