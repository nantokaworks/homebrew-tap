class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.15"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.15/dropr-0.4.15-aarch64-apple-darwin.tar.gz"
      sha256 "0252a4f0914912dce516773a0d9d83e1fce8d4ba3aa5d24a0dcb9724dcb7ec2e"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.15/dropr-0.4.15-x86_64-apple-darwin.tar.gz"
      sha256 "060f96224355090104b6ca9f29d0eb4adc7a68c8bdaa11438c0c411d5aa3b9b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.15/dropr-0.4.15-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6d5dafcbb542f217d5b9b3fa9edc8be714bea76a128245256e3316ad3f7f22dc"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.15/dropr-0.4.15-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cd7d0de64045d1952783a0cfbac23d2f77dc4fb6ba7f4cf00693d776026ee29d"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
