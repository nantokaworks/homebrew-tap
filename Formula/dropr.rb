class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.30"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.30/dropr-0.4.30-aarch64-apple-darwin.tar.gz"
      sha256 "723ce47bdb7e4f815662f74f3fa441bf58d8ddef16dd9cb8b9b133f8d2113f95"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.30/dropr-0.4.30-x86_64-apple-darwin.tar.gz"
      sha256 "18bad600ae852473593a33d5432a8604fe7d7223708df9db68cf7a2d79b85a5b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.30/dropr-0.4.30-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cb1f4077dc97d1a5f437aa217afe4d88aad04b56a99141d6c3bdd4dcfa0dfafb"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.30/dropr-0.4.30-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f8ceba7c5635def05890d94f97dc80e7fa95acd3f27bdaf1d097311cf4300ae8"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
