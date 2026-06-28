class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.25"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.25/dropr-0.4.25-aarch64-apple-darwin.tar.gz"
      sha256 "17febdf015ce8c59e71863d5d4bba54e6c63e96bf3293e634bccd14c37332352"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.25/dropr-0.4.25-x86_64-apple-darwin.tar.gz"
      sha256 "7625d82790108e28ed1bcdc56c6c4af2627ee7f72dc8a1c17b964e0accc054b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.25/dropr-0.4.25-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dda661dcb37c70f61cf18bb85f77a9859efe1405dd856eebef4c814418655ef1"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.25/dropr-0.4.25-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f7bc3e6393a5f04840f23f0cfc4e7d3d6bb23fb38d3e02c00a764475e4c09d72"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
