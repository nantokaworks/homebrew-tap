class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.41"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.41/dropr-0.4.41-aarch64-apple-darwin.tar.gz"
      sha256 "6fe8909cd5c1ef658aa21ccb36695dd6953ab5b02d8c878d05d6a4416cfc5d2b"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.41/dropr-0.4.41-x86_64-apple-darwin.tar.gz"
      sha256 "5b4191a708019b35e2b22da96d6fed66e76df5cd9899e92bb170f0c2547a42e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.41/dropr-0.4.41-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "71e6b36cf2641cdb05b2785ee99ebea4bd552a4f7bf5b42b5b761ea3158f8c64"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.41/dropr-0.4.41-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b4c18f9da7a069619d80b778d37b61f9df595279fc01ed69c10473539d9a5d9e"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
