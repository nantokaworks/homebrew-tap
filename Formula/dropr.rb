class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.7"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.7/dropr-0.4.7-aarch64-apple-darwin.tar.gz"
      sha256 "acb09f9dc6a9de89897a1fb777222e4fd715c5e0c4aefba2f3a6817fdc36a971"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.7/dropr-0.4.7-x86_64-apple-darwin.tar.gz"
      sha256 "43428ee2f3bd1aa6a4853d8ebaedf13f99b723909945736a12f11b0bc0a25c08"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.7/dropr-0.4.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "25c0ba83a4fc248d468c182d03492e4573a3a95f5dac20691fbd543674c2205b"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.7/dropr-0.4.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f6c6e0013a1c40820d45ac2aa515f809f6c771785735f6fde37eaf596c3c0867"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
