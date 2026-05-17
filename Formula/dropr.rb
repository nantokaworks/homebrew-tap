class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.2.5"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.2.5/dropr-0.2.5-aarch64-apple-darwin.tar.gz"
      sha256 "10cf7467183299e999f5802b72f73ab7015f2d75d28267fb66a0bd73ce63d150"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.2.5/dropr-0.2.5-x86_64-apple-darwin.tar.gz"
      sha256 "46618af98faf95a4c6efbc4a4925fe430632179e6bb095f46ce02c260e0dc814"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.2.5/dropr-0.2.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "451ace8041e4801ceb13a996b5ff06f9e7e7d8774851dce306adee61e209cd37"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.2.5/dropr-0.2.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "29173f30cbaa65c74fd20fd8a385a37dd94ddf91b5ace93fc3f5012314f14df5"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
