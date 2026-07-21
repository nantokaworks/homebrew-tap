class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.54"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.54/robco-0.1.54-aarch64-apple-darwin.tar.gz"
      sha256 "221136ef05389e7d5e5c671abde702538843ba761fd7366643371c9b7e9af051"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.54/robco-0.1.54-x86_64-apple-darwin.tar.gz"
      sha256 "3797af130c22920fbabba0ff59e087f6e80ba08ae4f4d713492920940f886f96"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.54/robco-0.1.54-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "19577169be36f6239301499000a1577d09167a5aa626a041ec11fe5ccf65ad65"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.54/robco-0.1.54-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4ba101167dc19c02d2b508183223eb0113e695644a96cf7a81852b77b47fb139"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
