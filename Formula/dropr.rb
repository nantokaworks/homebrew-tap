class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.31"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.31/dropr-0.4.31-aarch64-apple-darwin.tar.gz"
      sha256 "5a283e41ab04a7b8cad3e280e49b7031092200c82627c92cbb308ef6841955e8"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.31/dropr-0.4.31-x86_64-apple-darwin.tar.gz"
      sha256 "7b88f0c3b5e3cd8884c6a55b2cd87b8f9937643ebb8d10b4d65beae3ce16ac83"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.31/dropr-0.4.31-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f50c86039e0f89c1c820394d58e79d184c3f3f4ea52ca21a7b919ef550c088c2"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.31/dropr-0.4.31-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7a4fd07bc4cd2380cf9c7cf31c7af0c10d9fe15b4502c4bb76d0c437510b24e7"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
