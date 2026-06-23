class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.22"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.22/dropr-0.4.22-aarch64-apple-darwin.tar.gz"
      sha256 "c5479e3296784905ca05a45c43e86637dbc7680c7cbc55f7c89a6f346b617e2b"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.22/dropr-0.4.22-x86_64-apple-darwin.tar.gz"
      sha256 "304dcdded656470ee022332cafcfd187657b4b68283cf32fe3a85e2105df5b2e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.22/dropr-0.4.22-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8bcde4a4b61c61a847c01ca3bd0bc06bfd3890216db04698f60e31ceaac733bb"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.22/dropr-0.4.22-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "56c1f623ac038baa66607455ad64729847f4ecccf38bc51a474d0805caeba7ee"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
