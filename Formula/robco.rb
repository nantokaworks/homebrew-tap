class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.21"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.21/robco-0.1.21-aarch64-apple-darwin.tar.gz"
      sha256 "00339e4e1bd02c103569270d6218f1d16e773d462751f16744ce5bd42bc6d3bf"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.21/robco-0.1.21-x86_64-apple-darwin.tar.gz"
      sha256 "752954cd57c1e4f43c0ce0c48e7c5e0e1e0ae5a8ab06c81df7b3cd3e1c653d17"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.21/robco-0.1.21-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bd06b9832078938504b3cd2d9d86352bcbe41cc5ff27e721468ec6524a70cfea"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.21/robco-0.1.21-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8dbf548925aa789987d5497cec2b049feacd4a4d75f7cbaea6632e50b3f703b0"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
