class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.1.7"

  livecheck do
    url "https://cdn.dropr.sh/latest.txt"
    regex(/(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://cdn.dropr.sh/dropr-0.1.7-aarch64-apple-darwin.tar.gz"
      sha256 "0ece49fed9ebdc08b6b3a970e2c7e3261138bcfcb2d94157e557f2f4dd87f560"
    end
    on_intel do
      url "https://cdn.dropr.sh/dropr-0.1.7-x86_64-apple-darwin.tar.gz"
      sha256 "a1e788887cabc8c16c701189fed889b804667a67c09640d160069a2673f83d7a"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.dropr.sh/dropr-0.1.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0af83287907bd5300337a46f720eed564b8ee772aadcf7f7eddc767b3eb59346"
    end
    on_intel do
      url "https://cdn.dropr.sh/dropr-0.1.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f3b239aadb5477598a41a949987b233d3063115c05370f709f3f70c570e0aa7e"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
