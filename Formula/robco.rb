class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.75"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.75/robco-0.1.75-aarch64-apple-darwin.tar.gz"
      sha256 "9ae07f134822ca70ff89e9e7cba5e38e356c4d46f07c00f1ea620b7696f78ec0"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.75/robco-0.1.75-x86_64-apple-darwin.tar.gz"
      sha256 "5bf17875a155e5a22a1e93b356831248c01d0999108c4bfae95491581970a252"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.75/robco-0.1.75-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a49a87cad9bfe37ccc83b0f04a301dfd7272391777dfaf6ea929351173bdb13c"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.75/robco-0.1.75-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1143af29ce86d0826af42154901a08accf327e65ca4dd281ee14567d59f3b5a4"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
