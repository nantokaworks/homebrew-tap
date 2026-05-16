class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.2.4"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.2.4/dropr-0.2.4-aarch64-apple-darwin.tar.gz"
      sha256 "d89ee5b4027ebb686aaede41f1a08dc448a99e66ef863f022a8ddff3823e79c1"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.2.4/dropr-0.2.4-x86_64-apple-darwin.tar.gz"
      sha256 "965d5b81c5c314ac313224a22fa7dc80761297a08c5ff69e408b98c555934b27"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.2.4/dropr-0.2.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1b9d4bd1d1189dab381febe115ffe5039b430d08fe1cb6e8e24424b30bfdb517"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.2.4/dropr-0.2.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "12466cfb8bab0a5536a22b03d9b740281079482fa8d9631cfabb8389fc2840ea"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
