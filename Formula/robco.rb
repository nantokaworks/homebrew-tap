class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.4.1"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.4.1/robco-0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "e20fa76be453b5b6aaf793f0979d6e6f4f4489d1a5fe6c958a04f700a71e7a5b"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.4.1/robco-0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "5f161e012964288ca6300a0a7afd102f765ff633241cb84817e50b5d4c912ca6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.4.1/robco-0.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6164749f9e7e33c95a709a7c5e2d2bd9bb184d3cbcc02e774564a05e336fdad6"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.4.1/robco-0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cbb5881eb95426735d3255657cca993b400a10d7abbe694a882ea4088059a5ab"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
