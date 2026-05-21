class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.6"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.6/dropr-0.4.6-aarch64-apple-darwin.tar.gz"
      sha256 "53168446351e63c7759217e345bfb89ad5f9bafc57017ce55f2da8a37c71d4e2"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.6/dropr-0.4.6-x86_64-apple-darwin.tar.gz"
      sha256 "b8234825d7e14e774349aea4996ed44f89ea24134d7f5386be00d14d5712b109"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.6/dropr-0.4.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cbeaf35b182aaa6e4472ef583f442d1b86d476056089c49092c9e3a18ba4e4aa"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.6/dropr-0.4.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "46e5d06761a7aef19ee3f3ec0bd15d218e33c7315f03bb5fadb25b81c042ee9e"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
