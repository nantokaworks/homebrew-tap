class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.40"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.40/dropr-0.4.40-aarch64-apple-darwin.tar.gz"
      sha256 "934e5d670611ffd74d8fa5b58d4db168f632713dca303cf3f6747252cd231edf"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.40/dropr-0.4.40-x86_64-apple-darwin.tar.gz"
      sha256 "5ca765b1a23eb2b4ebdb5b0c5bc287b813620a78dde45550df21d6af0c185ad1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.40/dropr-0.4.40-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e1a0e28cdb41db7cc1f9f5036c16ef39b862df245c4de4d58cf16cd69454e53c"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.40/dropr-0.4.40-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d49f9ade1dc376b4bad91c0ccc0e2ec21c2538bf26ec2680b2df730f00214835"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
