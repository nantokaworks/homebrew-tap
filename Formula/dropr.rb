class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.2.0"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.2.0/dropr-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "0ccd28f51d332ecd96e536848908682dc2d9475737fd402ed770ad660863d146"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.2.0/dropr-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "b16121b2efe075d21ddd72b16e2c0aab4f184b0fd45c7e45da4513a17d70b28e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.2.0/dropr-0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ffd435155b494128de9b2990bf27bba0528c9dbf4dd68b1377dadc1025c504d3"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.2.0/dropr-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "466c17393757a6cd84dccb84a9d515f3448712a69a95b0564e68fa5156726fac"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
