class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.21"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.21/dropr-0.4.21-aarch64-apple-darwin.tar.gz"
      sha256 "0abd814f7558f9d6c47bf4b51bfd28067ef36af49620612afe841e7cbfbb2c65"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.21/dropr-0.4.21-x86_64-apple-darwin.tar.gz"
      sha256 "30ce5993cc081976fb8c12aed5e91c2f0a35dfc93be85a5bff14ea109b2a9461"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.21/dropr-0.4.21-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ae4ec0d137b9b9e15f69a3994a7dd607e7ed4d980ea7c7f8eda452019dda4394"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.21/dropr-0.4.21-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e2049f1932b3421f9f35d99abd7a5ff65085ec1184f697b92e9f19ea30970668"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
