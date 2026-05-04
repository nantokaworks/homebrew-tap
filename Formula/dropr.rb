class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.1.11"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.1.11/dropr-0.1.11-aarch64-apple-darwin.tar.gz"
      sha256 "865ae5ac7b36085f747afa288bb0c0bd4581872a0e616f6be203505311b90e32"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.1.11/dropr-0.1.11-x86_64-apple-darwin.tar.gz"
      sha256 "5e71a8f379feff989cbcdc38c572ad47df48546bd53937f4b2b420b283b63231"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.1.11/dropr-0.1.11-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2884c0f0d54c04fa9a62846500e349c9411a127523fe1007a7a9e42a4817d8fe"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.1.11/dropr-0.1.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5da5edcc1287d90dc800d4ffdc137ae63fa56121041c70e042b0ba92928a2bd2"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
