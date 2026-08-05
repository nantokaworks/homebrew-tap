class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.42"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.42/dropr-0.4.42-aarch64-apple-darwin.tar.gz"
      sha256 "d8cc6077d6138ae26df58a79a7b588bc868d76e19e8b345744dec8b0c7b15637"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.42/dropr-0.4.42-x86_64-apple-darwin.tar.gz"
      sha256 "c4a7771833b52467fb5ec6e9ce18168f0bad777df81b1f38826f5d71c4a646a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.42/dropr-0.4.42-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "166a6bf619818e21eb0a1c6ae7866911190408cf3bdc160e70d4cc1db6684c78"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.42/dropr-0.4.42-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2203d31c9897369e7c5730d39260305978259615d4f27b6c233aee9f1fb62b93"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
