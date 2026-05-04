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
      url "https://github.com/nantokaworks/clix/releases/download/ghx-v0.4.1/ghx-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "c20a49f2482cc4eef2c64a782e156584c4d64c841477b0511ed5d467f12be937"
    end
    on_intel do
      url "https://github.com/nantokaworks/clix/releases/download/ghx-v0.4.1/ghx-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "7408da0e3334269e1efc153c680d19d16f1bf6b76ebeaace5e86d60ba36736d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/clix/releases/download/ghx-v0.4.1/ghx-v0.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "768909dcd86db1fa7214d784d319dd8812ff8b21e5076a23261cdfc76141a05d"
    end
    on_intel do
      url "https://github.com/nantokaworks/clix/releases/download/ghx-v0.4.1/ghx-v0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9a3c2f8dcd14b63c4d220e9f9eaf40c922565e38e429eb5341410fd15dcc4e53"
    end
  end

  def install
    bin.install "ghx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ghx version 2>&1")
  end
end
