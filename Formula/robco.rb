class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.48"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.48/robco-0.1.48-aarch64-apple-darwin.tar.gz"
      sha256 "4cacfa25c462085f9f2cf3c8d707dd6b35a91ab86ede06e7c07f16ac01603640"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.48/robco-0.1.48-x86_64-apple-darwin.tar.gz"
      sha256 "55e4461eaf519d550e1829a81721fa9082fa917b3329275de0f0411ee5aae943"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.48/robco-0.1.48-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "33294d51521041dfc29e65baa076720aa0afe40315d9031b0c517554f18a5a8f"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.48/robco-0.1.48-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ee396b8734d213ec4a407f3976692c8e0d22093c1ecec9f1069e40532761679c"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
