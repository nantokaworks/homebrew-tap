class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.39"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.39/dropr-0.4.39-aarch64-apple-darwin.tar.gz"
      sha256 "a54960f2aaa23d674ac6c1f5a063a515629d37d8796a780d085529dafb83cce4"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.39/dropr-0.4.39-x86_64-apple-darwin.tar.gz"
      sha256 "4f85bf7b11e1a5fd8850c42abf8bac83ec47b88b2eb3daa900de319441b82699"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.39/dropr-0.4.39-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eaaa7508d1728ccf6e71e9f23f9dd0840459813b8d6ebb790a79d65790d728cd"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.39/dropr-0.4.39-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c8c195c4118eb62556ed203af24c109d146cb98f4d008c7031a3099973d9ff16"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
