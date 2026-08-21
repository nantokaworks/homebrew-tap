class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.4.6"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.4.6/robco-0.4.6-aarch64-apple-darwin.tar.gz"
      sha256 "7fb387316daf56c4940a05854fafc4dbfaf75e7d8698b40088f7133d04b02451"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.4.6/robco-0.4.6-x86_64-apple-darwin.tar.gz"
      sha256 "70180e5dcc0bba756942a391080719209665baf3e8834f2daa0fb40569fa42c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.4.6/robco-0.4.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "64a69cdc72bac625efca5015577d2fb8f47b82823eddd9d5a093ce0302d5f401"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.4.6/robco-0.4.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "753c2afa281e850bdb730caab2b16066bf4e39e7bef82811cd897e210284a03a"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
