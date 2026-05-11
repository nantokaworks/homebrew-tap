class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.1.15"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.1.15/dropr-0.1.15-aarch64-apple-darwin.tar.gz"
      sha256 "ced4b062aeacfec605993d75b9f687b686e4906c8cabcf7821fa7d53b6c8feea"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.1.15/dropr-0.1.15-x86_64-apple-darwin.tar.gz"
      sha256 "1dca9b66f02a7ce6b346e527f8900d83e5cee7b669df5630aa8b05c4ba10a9ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.1.15/dropr-0.1.15-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c25e2fd1b7b1af40d12408413c7f9b6579240933ea837ab1383658a34c01d50c"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.1.15/dropr-0.1.15-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3a59f75e7a44741dd4374859f5ba8ca76d4c01c61f513f33218aee30f0622bb0"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
