class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.11"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.11/dropr-0.4.11-aarch64-apple-darwin.tar.gz"
      sha256 "620d6d6d729f5ed2cd973c5c70acdec701190070b86ddb4ed80b8735318f7bfc"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.11/dropr-0.4.11-x86_64-apple-darwin.tar.gz"
      sha256 "3b75c89614e882ffc9386253b77c37f4315a71f9aa6b2f03783a206ccdf609fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.11/dropr-0.4.11-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "37da6de44b6f34cad9891a7ac31afddfdc091c1485b00cefb0af090c29dfa537"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.11/dropr-0.4.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "778c2f84d5f08d933afaf36a82c71a24d7d138760945ca1678bb9d96ba89902f"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
