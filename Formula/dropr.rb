class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.13"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.13/dropr-0.4.13-aarch64-apple-darwin.tar.gz"
      sha256 "68af78be6937a4e8e24a49b269b91e72147dd05732394be23ea3febf251bd928"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.13/dropr-0.4.13-x86_64-apple-darwin.tar.gz"
      sha256 "dd88e2fc1b09e93032c4c5edc0a67738877ec0631f057cbc4f155ae3d96bd378"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.13/dropr-0.4.13-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "06d04f5a80d263f9d9c2d337bfb0c6c098eacd8a7b0f38c834acb0f32682a79a"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.13/dropr-0.4.13-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7a7ac8542640729ba30fc6e24609ee579845178d03082e043296fad8d53c829b"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
