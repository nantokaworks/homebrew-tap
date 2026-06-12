class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.19"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.19/dropr-0.4.19-aarch64-apple-darwin.tar.gz"
      sha256 "3201fddcddb42f2e794c091966f53b87ca7dcbbd8f43a89ccbad621b222be64b"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.19/dropr-0.4.19-x86_64-apple-darwin.tar.gz"
      sha256 "be0f20a1866df472657f937520ca0ef35839b2972b0a5eb6a7dd92b982abf583"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.19/dropr-0.4.19-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ac6279b5dfd6cdf16680f87af56bd849701e4d23c43360b596ae0d4f238babd9"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.19/dropr-0.4.19-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1ed57504bdb7509d6f1f0907080821c8d21cd14c1c90e211d411cf9e87c8e56c"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
