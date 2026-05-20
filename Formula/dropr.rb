class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.4"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.4/dropr-0.4.4-aarch64-apple-darwin.tar.gz"
      sha256 "f255b2ad37f188572b84e235db4ddce0ee3278471ea3da21ece85437962e4123"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.4/dropr-0.4.4-x86_64-apple-darwin.tar.gz"
      sha256 "ec2800756d74313cf0a155a6e3987f634d45f19d9a78ce53fdd3ecfd01f9bd83"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.4/dropr-0.4.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "08429e1fe10230551a8262d2e01bbf1a00077fc3173f646174ef146f9698a492"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.4/dropr-0.4.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c2242b058402dd6dc2e854b93c01ec0d96a94468e94604e564c6825ee8e00426"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
