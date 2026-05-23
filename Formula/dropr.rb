class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.10"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.10/dropr-0.4.10-aarch64-apple-darwin.tar.gz"
      sha256 "95758be2e891bfd50b17d4f281a0f250549d611084598457467f8a214518c8bd"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.10/dropr-0.4.10-x86_64-apple-darwin.tar.gz"
      sha256 "c2ef26ce3691a99d2e55fba90d19d77bd2b55b372125102c38ee10a7b8158eb8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.10/dropr-0.4.10-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "038bb106f43a39f222ad0abaa22f07f0eb1c555bda4d009f2b165a582019c750"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.10/dropr-0.4.10-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c06c4734bca0900c921c1d248d321779081ed7b751bf5203f4fc78a1f2cacbb6"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
