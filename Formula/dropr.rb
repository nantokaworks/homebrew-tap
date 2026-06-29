class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.29"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.29/dropr-0.4.29-aarch64-apple-darwin.tar.gz"
      sha256 "2990554b8b45e5d22fca3f3db6ee7178d3f140013202db2c8c0cc627a7e64b8c"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.29/dropr-0.4.29-x86_64-apple-darwin.tar.gz"
      sha256 "5af479b3c19e14ce9c15eaf58d23533b0ea78f9992db225bffb4c20a0c9a1273"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.29/dropr-0.4.29-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6f6095d1d5a291aa001e7e249c92bbdb56b39bd101c90961ffaea9caeca91f11"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.29/dropr-0.4.29-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8b030d434ac01629594f86891134200dbeb5225aca44c456bb1584346f823698"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
