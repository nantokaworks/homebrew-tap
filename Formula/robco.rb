class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.52"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.52/robco-0.1.52-aarch64-apple-darwin.tar.gz"
      sha256 "7b1b97321b867b030d2f225d72a8fec8130b623f80e6b6e2151c606104c23266"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.52/robco-0.1.52-x86_64-apple-darwin.tar.gz"
      sha256 "36d738f79f2271e22092ba58eb712ca5d405518745004b10eb637459da41602a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.52/robco-0.1.52-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7a7760db4668a5e2dd39d16679334f69d397fbfd8f409b3e404ea1f69cffcc72"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.52/robco-0.1.52-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "374cafef596cb3be5cad0dbb98e1cfc779d6ae883680d8bbd3dbf9abf107cefc"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
