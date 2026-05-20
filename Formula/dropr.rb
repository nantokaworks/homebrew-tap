class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.3"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.3/dropr-0.4.3-aarch64-apple-darwin.tar.gz"
      sha256 "93722d928ed1ed236fa24be0f9cf3b4120f318c00f4de0cb3b543d86fc6ea727"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.3/dropr-0.4.3-x86_64-apple-darwin.tar.gz"
      sha256 "161965ce20512cfd35cccccd1fc453bbd6f076a568ef7cc7b4359aaea55be64d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.3/dropr-0.4.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6670f90669fd14c8b49637445bf7304261532fc2c4c29991378589f594c4fe52"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.3/dropr-0.4.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "40e3b271ca9163f11713825a1c55155ba14257c1433e57640b3ef5b5c9e4eedc"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
