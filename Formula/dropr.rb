class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.1.13"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.1.13/dropr-0.1.13-aarch64-apple-darwin.tar.gz"
      sha256 "be2ea78143c83d9133d0a13b884e716a2f036f8f3ed325432d249c2d699b9f8d"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.1.13/dropr-0.1.13-x86_64-apple-darwin.tar.gz"
      sha256 "ec18fb3e8015e413171838e615ca3f8879317a5918897d11fa7c38b0c5787714"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.1.13/dropr-0.1.13-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "131ba47755938d77aedd2620f931f8b012f13af7fecd96129bf00d948a229862"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.1.13/dropr-0.1.13-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e75b4023d66d3e97a2aed9779c69c9fa9318ec83736b2b9ca115782b7686c41a"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
