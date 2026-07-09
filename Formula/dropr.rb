class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.32"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.32/dropr-0.4.32-aarch64-apple-darwin.tar.gz"
      sha256 "913da7fa667b45cc5459af4a0b928bd859882dc573931b637b4d6779a9ff884e"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.32/dropr-0.4.32-x86_64-apple-darwin.tar.gz"
      sha256 "b0d066a7cd2ccc7ffc5fffc5738709ba12cbd24ea6a1ac98154ad8a94d5595ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.32/dropr-0.4.32-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "86a91b0f54839162a00bd0b25ab37f87d8ceb889b77b2b9130cc67d03f4c43b7"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.32/dropr-0.4.32-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "235c9b3b5304a977046ccecb8731be373205e5d3321e3d48adb07da58e1dc64b"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
