class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.2.6"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.2.6/dropr-0.2.6-aarch64-apple-darwin.tar.gz"
      sha256 "9e331e7fe0e23a87df52b8a070af952a580cbc77b0236fcb332b3f78e4d82425"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.2.6/dropr-0.2.6-x86_64-apple-darwin.tar.gz"
      sha256 "ec23b87e6de28d29f00d34103d183a341d3a2c73a0fc0f7bda564fa80142f05d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.2.6/dropr-0.2.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2329f4544124374589aa7bb8ea9dfb33cbb67dafaa2f616c1fc876131b486a79"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.2.6/dropr-0.2.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a29eb67b28e0292c35a9bb6dd33d4bd5de0cc5013bbaa72745988202d978c75f"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
