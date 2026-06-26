class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.23"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.23/dropr-0.4.23-aarch64-apple-darwin.tar.gz"
      sha256 "d11cd059af81d300590ff9cca57d5858bc14cee5c1285b8a8a67378c32413c9e"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.23/dropr-0.4.23-x86_64-apple-darwin.tar.gz"
      sha256 "d24c3cfb7de7cb6b6a1e76361e9a21c225bc82f2efbf3b8256b06b4ae1cb5736"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.23/dropr-0.4.23-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "51061d99d939ad5a521af0d616666b2506cdac95a07e21c50ca4b731a7e4a63d"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.23/dropr-0.4.23-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "12f907dc59c7fc1bf0e3af4673dcbd180930cc4d5f498d095ac0a19b04ecc167"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
