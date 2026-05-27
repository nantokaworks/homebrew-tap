class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.16"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.16/dropr-0.4.16-aarch64-apple-darwin.tar.gz"
      sha256 "4aa4717d782220f49c2ad87cb0cf2701fb90d8f6c36671e0f6fc930d66110582"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.16/dropr-0.4.16-x86_64-apple-darwin.tar.gz"
      sha256 "b12870cb5e9139ffa062d7bbe884d238dd6778d889e18a2b82b7e1fa880c58d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.16/dropr-0.4.16-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5b5471f8fed8f7f8bd7b79210f713deb06b8047e30905c9b80141320fb93a114"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.16/dropr-0.4.16-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "29d70c8f113fc9bdfa0370ded5e31bbdd24beacec10061f8b1fa435b1e72d3a5"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
