class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.2.2"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.2.2/dropr-0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "e5e4484d2e0c6f34f3dbce964a8b7d15180bd9ece5114a7448b2fd48691be14e"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.2.2/dropr-0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "b8207533ab21fd8f597a8c2182784851dfead0ccbd67ecbbd38e3cf3924fd0c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.2.2/dropr-0.2.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "efdd63eeacfd781c459a8c4b47c7128f39ab71ee269121895d87df8bf39b61ae"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.2.2/dropr-0.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2ad31e627e23ae2a25058820b2b1a20945039e97b226dce62b0d3257bbe04d2d"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
