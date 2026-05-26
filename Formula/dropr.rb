class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.12"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.12/dropr-0.4.12-aarch64-apple-darwin.tar.gz"
      sha256 "a64a6d387b7ef5bfc92e56304ce96231ff9035902658032aeefecdb904d7eaa7"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.12/dropr-0.4.12-x86_64-apple-darwin.tar.gz"
      sha256 "5da4662361fe335b8ccca6bbf6cb623d7d2d6338f30f6af9a566c55d26b1e796"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.12/dropr-0.4.12-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9604df05385fb9bb2d28ccb726216da8b05829ae72e599edd879e63a7f7d10fb"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.12/dropr-0.4.12-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "333d48fabab004c8ffffa571fabde98bedcaeb0ea4cc24799c6ae6965aae070e"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
