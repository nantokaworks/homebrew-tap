class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.18"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.18/dropr-0.4.18-aarch64-apple-darwin.tar.gz"
      sha256 "7113da6b39b74954c966adaf7b64ebfcbad84b93493fe2b421c7baba42886e07"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.18/dropr-0.4.18-x86_64-apple-darwin.tar.gz"
      sha256 "34d50d9797ba8f451c6a9b98235757ecd1d03e83185528c6d088e025a2581e31"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.18/dropr-0.4.18-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "16968e377315a8408feb13ec165ea6408c52920731a938fd6f657510c7a95cb5"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.18/dropr-0.4.18-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5b97bf36b6c3bb15e177d16b8bff901b0bd172d6d71b4e67df623ea4bd72a134"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
