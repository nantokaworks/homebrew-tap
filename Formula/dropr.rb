class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.1.10"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.1.10/dropr-0.1.10-aarch64-apple-darwin.tar.gz"
      sha256 "54f256effb1c577c12a9d85535cbb093cb0438ba44d84958764b8419c20ae8a8"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.1.10/dropr-0.1.10-x86_64-apple-darwin.tar.gz"
      sha256 "cbdc34ecde681e2ffa8beaf0ed0513303a0473751ce7fb0a5b8224304cc76ffc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.1.10/dropr-0.1.10-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "72809e55a500fe663b6c221b8eb230a409bae2d086d0fb0e108c7a3faa4fc179"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.1.10/dropr-0.1.10-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8053818652b30ea3a3422a1d275b2a42f51cf89a0c019efd950de036b770237c"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
