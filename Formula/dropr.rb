class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.2.1"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.2.1/dropr-0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "88f53efbc9de358e70662c4c5b6e3550554254c6ceb86c7ed764fcbef3e3cba8"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.2.1/dropr-0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "7a8145119cb07ae9b1efd6e292afce0d2f4245b108dc1f39d965862c7c0f2a19"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.2.1/dropr-0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "78bfbc612c4975cdae478b6649f8075288d93fd5f694e13d6d96d97aca33a70e"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.2.1/dropr-0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "710d51cec2bc9a15b7a17a93086b2a75a56c171ff8c1e5ae3eaf1ab26e89d5f6"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
