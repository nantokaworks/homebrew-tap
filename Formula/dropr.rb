class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.43"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.43/dropr-0.4.43-aarch64-apple-darwin.tar.gz"
      sha256 "6186f8191a07e4b6b104ae3f32d8ccb249c3c08ec5e6a5d04b605ada26f22998"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.43/dropr-0.4.43-x86_64-apple-darwin.tar.gz"
      sha256 "2276ec879169ab8ce90b39a5c208c5a96dca72a7abae69e573a5816904a47ccd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.43/dropr-0.4.43-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "89532994d0b64c44f3283cde6ad5d023efdc95a1de8b42049a45565465ec91c5"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.43/dropr-0.4.43-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c7e0c719557839a22fd0117525c6e5d3c16690bf2fbcbd6b8da718510ecfddd7"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
