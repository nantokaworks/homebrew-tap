class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.20"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.20/dropr-0.4.20-aarch64-apple-darwin.tar.gz"
      sha256 "c27dc027bf626dcbe806431f134a73278e836a288c1348077336a78e2fa19b50"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.20/dropr-0.4.20-x86_64-apple-darwin.tar.gz"
      sha256 "c5a8c618c8070782d2a80218dd727918ac8e3e7e2c42efd1928747a8830f8702"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.20/dropr-0.4.20-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6410945a251847238258a731ca218049be42713f55d15e7e7394e06f4aedab06"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.20/dropr-0.4.20-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e64e1788b42f698e9a4d921cc9b9717a7c67a5d5ebc3a8ce559bfb867a00cb65"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
