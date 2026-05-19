class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.2"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.2/dropr-0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "7efe3d90513dc9fb2eee56bb7b1c6bb793157099db4d4c83ea2f7bba633e7d4e"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.2/dropr-0.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "64474128ecf94ce07cee89f414850dc5a025b8717054b586fc18dbfa8cc28f64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.2/dropr-0.4.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "471838c63b00dfec028eb28bd20bd4d5b7bc6ac48ea0a4ec10bd4a49da690333"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.2/dropr-0.4.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6f44e7d94d24672c196b7f6456d3f64ce288fd479859a9ee6e39dcfff1d53b3f"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
