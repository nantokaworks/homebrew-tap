class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.24"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.24/dropr-0.4.24-aarch64-apple-darwin.tar.gz"
      sha256 "d210971043e654d7501a45afb83dcb2f2138a25a9075d4d9469aefcf6031bca9"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.24/dropr-0.4.24-x86_64-apple-darwin.tar.gz"
      sha256 "b5716588c78cf19de0d2030adc3c2e56455fc1ff3237e2222cd773c5c6947fca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.24/dropr-0.4.24-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "728c00d4db5756cd591068ab1f3d86dcf0cc637b787cb48a9de4ad25b34d3bcb"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.24/dropr-0.4.24-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f41ff4bf38dcbda0cd7683b390c37296c78e53bd2db44f3f15b05dc1ae5844cb"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
