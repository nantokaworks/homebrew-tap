class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.36"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.36/dropr-0.4.36-aarch64-apple-darwin.tar.gz"
      sha256 "184573658e931587bc28bbe1fbf885471e799419e4e963fd4315441aa7950459"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.36/dropr-0.4.36-x86_64-apple-darwin.tar.gz"
      sha256 "dace3060ebac23a82144b5d8dc4fcaa1e37c61f23cba9e0e729c634de97d9117"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.36/dropr-0.4.36-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c8663cd89d463138c7e0840783f4be36269eb3d065ded5d97e02effa32021053"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.36/dropr-0.4.36-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "701fe011c439da8c1236247fd66459cb842ae229238eca113e3643248086f2cb"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
