class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.34"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.34/dropr-0.4.34-aarch64-apple-darwin.tar.gz"
      sha256 "4bafb4e1e1d58b285df607203f221fd40c2e358c9527b1e37a9b95b8daed58b5"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.34/dropr-0.4.34-x86_64-apple-darwin.tar.gz"
      sha256 "8c52619de769c8eda2c4c89d93544acb891aa75dcf13e5be2bf241ffbfd745f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.34/dropr-0.4.34-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b0fd1307a1d42419116db0615746fa0c0544ac0d67d3cd93276882a0b0b8700d"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.34/dropr-0.4.34-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8ab15bd52d849ccf321c5d9203616b2b75a1e9093a0ffd60e9f39c6d38c13b43"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
