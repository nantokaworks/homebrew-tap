class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.2.3"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.2.3/dropr-0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "496dc89443deadd8cea36238c6f247de295b9fb302830b6abfcc4981ce0d6ffc"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.2.3/dropr-0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "38b491a1fe567f49bb61f77786808f7f590966ce6acc4432b6f1bcb6409cbbff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.2.3/dropr-0.2.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bad4c7643ea4cd7ac8925932b531086a44d98cd496b205b4c5e8e5a7b1fb7abf"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.2.3/dropr-0.2.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dc3111ff456b1da2f3a56c681353d52cfe3532e4adbd9173bea99ec2c410e29c"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
