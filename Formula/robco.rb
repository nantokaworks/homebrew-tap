class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.97"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.97/robco-0.1.97-aarch64-apple-darwin.tar.gz"
      sha256 "4bff55250c47facb1aa8cf295613251ad6143875af771018dee5d6b3a179cc92"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.97/robco-0.1.97-x86_64-apple-darwin.tar.gz"
      sha256 "6d86fde9535777dce247af7362561dc8d4d4f0649153bb2359deed1015d78f92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.97/robco-0.1.97-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b1464b88cee95bc2caed44c1eefb0c98770b968b5e6bedd84a20fd3616879864"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.97/robco-0.1.97-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "986c00d7541e707f0de0f6be856572c5f2f2cc08d2e920502715647655771ef3"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
