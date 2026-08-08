class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.46"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.46/dropr-0.4.46-aarch64-apple-darwin.tar.gz"
      sha256 "a9333c7590a30e0c5b68dad7e629659b2069fcec542340ce88f78c7cf1993146"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.46/dropr-0.4.46-x86_64-apple-darwin.tar.gz"
      sha256 "35feb4722d89371e6eebba5f493c7624b431ac129ae7f13d9e98f091be666ae0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.46/dropr-0.4.46-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "432ba6eaf7d77d4efdc7bdea8675eadde30c6723c55cc2bbbfb88bfe3263d86e"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.46/dropr-0.4.46-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b3eeb31173e7a12e708c6f0c99585248ca66c1837ce316c80d08179204c7d339"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
