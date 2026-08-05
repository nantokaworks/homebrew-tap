class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.45"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.45/dropr-0.4.45-aarch64-apple-darwin.tar.gz"
      sha256 "593f337d3f01484be9f1b7e13cc9e98f6024a5315d5a5ce6132eef8cd960f39b"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.45/dropr-0.4.45-x86_64-apple-darwin.tar.gz"
      sha256 "8581b697c6db90a49bd61a27574b023b92732156ca81edf709783b5e53920c7b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.45/dropr-0.4.45-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d8bcb3be2bc377590070b276bcaed67f8de7d23b363902a8dfec0ebfe8886aca"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.45/dropr-0.4.45-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f705710e6270c723ec1e64564f6074fea2fa5d1b401ae09b03d02cb5eaecbd0f"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
