class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.37"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.37/dropr-0.4.37-aarch64-apple-darwin.tar.gz"
      sha256 "fbbeab9ef6c7b51b05fab070dcf377338dd5122b0ce4eaf0615f66f51f0ae173"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.37/dropr-0.4.37-x86_64-apple-darwin.tar.gz"
      sha256 "51f86ce69b64c55a66832762e48c444546a567ec2771a39321fb8a7c92128385"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.37/dropr-0.4.37-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7fab816993e4088907755078ba341dbed8e439b87183efb710871907085bd396"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.37/dropr-0.4.37-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b901a9088e4736970e0cfd43cc22373bda70a4abbdb9b392d71d1a9459892eb6"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
