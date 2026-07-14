class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.31"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.31/robco-0.1.31-aarch64-apple-darwin.tar.gz"
      sha256 "a7c077da0730a3ff358c590e0964bdc489728e460a18c1a03930451aa232829b"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.31/robco-0.1.31-x86_64-apple-darwin.tar.gz"
      sha256 "fe6efea990d1bcbe5a53495e945b9975acf54bc8ba299eb62d56a8ac03c670f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.31/robco-0.1.31-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ada02411a6bc7253ea9fa9c29ce68ca660b5b880093bf83e43e5a5133b43f5fb"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.31/robco-0.1.31-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eabe4963b525ae5ffcc99a81b3b0646dc23eea520ed4e5ee81b81bed1067843a"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
