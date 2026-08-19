class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.3.5"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.3.5/robco-0.3.5-aarch64-apple-darwin.tar.gz"
      sha256 "037be5ed516bd57e9eeb9af53f94ce15a9ed327bd9a316a1aa9bd01175df8afe"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.3.5/robco-0.3.5-x86_64-apple-darwin.tar.gz"
      sha256 "02731563bed59a49f22f814db5b9b46be2d8edf647da0f07a452eebba80f415d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.3.5/robco-0.3.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "377c5e78fdd4f4e4a0f61e943ff1af694e41ca6148f7e72c78049c0d7222b835"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.3.5/robco-0.3.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9f3414b6f8e88596a38079c855dc3667fb5df23ad7985750ecfe5a0268224cac"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
