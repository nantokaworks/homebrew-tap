class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.33"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.33/dropr-0.4.33-aarch64-apple-darwin.tar.gz"
      sha256 "662d34f68b1d3a41560ec697505709899298d28e1e88380cfc6ffb36d3dbeb3c"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.33/dropr-0.4.33-x86_64-apple-darwin.tar.gz"
      sha256 "cc654ce29cd1033908d22ecfad6b8674bd6bd3819f28529e1e811f4b1d7919ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.33/dropr-0.4.33-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8d245d5c57deb92ec9176624b7d3ea08720af089a2580612eb5e7b6a8698a83d"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.33/dropr-0.4.33-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3a82dfad95f1891d30b6cf7ba673ea479a1c2d86471af17074feb0e3a4d7a649"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
