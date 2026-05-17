class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.3.0"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.3.0/dropr-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "c5d52bd6edba2bca8092889a1f4a7bdd2e8c1934892f3ee823e6da08f82a89b8"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.3.0/dropr-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "96736e1feed18b2b77925cb837754390a31bf6f20290dd90fbf344ffd447c6d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.3.0/dropr-0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f2de7de1cdcebfb033719da672fc32c16e86a71364e308fd92a77f50d9eb4bf8"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.3.0/dropr-0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e250de514d1b370f6178d847218cb792e4d8d5713bb8d5857f54072619dbc50d"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
