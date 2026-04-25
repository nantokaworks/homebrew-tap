class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.1.4"

  livecheck do
    url "https://cdn.dropr.sh/latest.txt"
    regex(/(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://cdn.dropr.sh/dropr-0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "ac0db6fe1ec2733f36567749c978188e0af65846722303059702a8d1472b2700"
    end
    on_intel do
      url "https://cdn.dropr.sh/dropr-0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "3760eb046dcf980c63c9b28cd70c1d01b77783875ce32b7dc5382ebd5b73d3ab"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.dropr.sh/dropr-0.1.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "81628ba548b0f8eb25d84fa3475a67efa13a1d21cb7ef37c55118101a3c8b59f"
    end
    on_intel do
      url "https://cdn.dropr.sh/dropr-0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "932f6b1be9099a722787a616cbc5abb3b4a5b6b8e71bbcd8fc76f045a7ba8fb4"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
