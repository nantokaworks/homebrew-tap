class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.17"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.17/dropr-0.4.17-aarch64-apple-darwin.tar.gz"
      sha256 "7445a6bf2b02b4e3d469b8fdc9d97810a0f6ebf97685323e442a2acd3e882a12"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.17/dropr-0.4.17-x86_64-apple-darwin.tar.gz"
      sha256 "0f012af608723b7564222b90bf62e942c8499b576e99073573396a532395417c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.17/dropr-0.4.17-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "71db901d6aa9ac9ac84a94c0062d523a867a8d2ec17e7b5bba5533b346e3288f"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.17/dropr-0.4.17-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "670c5899c78e9e2d8542c7c978ed000a8e3957d6a8d3f6910a07956fbc40d16a"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
