class Ghx < Formula
  desc "Thin wrapper around gh for multi-account GitHub usage"
  homepage "https://github.com/nantokaworks/clix"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/clix/releases/download/ghx-v0.4.3/ghx-v0.4.3-aarch64-apple-darwin.tar.gz"
      sha256 "337166ce802f996dc7adde29a2482dccdaefc8786bc8d427890edf29d42214cc"
    end
    on_intel do
      url "https://github.com/nantokaworks/clix/releases/download/ghx-v0.4.3/ghx-v0.4.3-x86_64-apple-darwin.tar.gz"
      sha256 "c81dc415104d05cb7f46a93ab4658a282e94c87bb59f56073cbf0ce3e44cfb6b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/clix/releases/download/ghx-v0.4.3/ghx-v0.4.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eb42224711fe30f58b3a300368a40253f87e16bd1fc4012980d02f65d9f49566"
    end
    on_intel do
      url "https://github.com/nantokaworks/clix/releases/download/ghx-v0.4.3/ghx-v0.4.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f4276813e69b7a8ca9725a920a4b08d9f14ea8170542ce15fbe75b4e033b9115"
    end
  end

  def install
    bin.install "ghx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ghx version 2>&1")
  end
end
