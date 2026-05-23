class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.9"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.9/dropr-0.4.9-aarch64-apple-darwin.tar.gz"
      sha256 "d826a6355bc31c0118a50c258ad5c1cf317968d0918c955ddc982f146aae4d5f"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.9/dropr-0.4.9-x86_64-apple-darwin.tar.gz"
      sha256 "2c13dc40625dfee2c3263374e29d750780bc6d3cc15c7875f8b13ffc5c887e97"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.9/dropr-0.4.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6f3923dd7ccad09f77f3f6be2c5889fe88615862052a2be9f841e107a4a48344"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.9/dropr-0.4.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "532ce7f6fc8ee08c733425143fe5b10df84bf64a0484ee5be70b954a8bfa031d"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
