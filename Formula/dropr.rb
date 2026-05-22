class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.8"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.8/dropr-0.4.8-aarch64-apple-darwin.tar.gz"
      sha256 "c3a5b1444dbda8809130a46f427b1ab7ec09857140e127d0558003cffc3603a9"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.8/dropr-0.4.8-x86_64-apple-darwin.tar.gz"
      sha256 "c61fd8a7908200a1f1bbb9c6a8e9b666bc2626cb40bd18daeec926dcc4f96dcd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.8/dropr-0.4.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0d54fe079739d7a61c6c61f77495e63c76ad4000e950e040a5202d7ec6beb4dd"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.8/dropr-0.4.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "af007d962d009a8063f26d1489d3181f2fd34fc6922ae8817ae8b2310b2c9b07"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
