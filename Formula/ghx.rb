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
      url "https://github.com/nantokaworks/clix/releases/download/ghx-v0.4.2/ghx-v0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "dc1a1e47234fc3e816578f17d9329e62255832a81cba753fc6082b8f6e38f0dc"
    end
    on_intel do
      url "https://github.com/nantokaworks/clix/releases/download/ghx-v0.4.2/ghx-v0.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "04b59884e55c8613225967a3bf00f8cd18bc06171cb9f0a4d1886800a693020b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/clix/releases/download/ghx-v0.4.2/ghx-v0.4.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1beca72e87132424cc865fca6d1be3866d8748f512ff8b88d22bfd0ebb1bd59e"
    end
    on_intel do
      url "https://github.com/nantokaworks/clix/releases/download/ghx-v0.4.2/ghx-v0.4.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ce12e17c5a3a4dc5daa0ccb33ddbb4ba44ab18bc9170121e57926c686125b28e"
    end
  end

  def install
    bin.install "ghx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ghx version 2>&1")
  end
end
