class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.38"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.38/dropr-0.4.38-aarch64-apple-darwin.tar.gz"
      sha256 "3dc4b19790f3c004d74354e0be8ac60c932950de470ed36aeaaa5167065699a6"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.38/dropr-0.4.38-x86_64-apple-darwin.tar.gz"
      sha256 "5bc28a45e8ea50b683ce7882130faf7ac35c2076f05bace2a76c98b68d08654c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.38/dropr-0.4.38-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "52971b34a846f92469d09a3b746972afe67b54b3a1c539bf85f52cee189de857"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.38/dropr-0.4.38-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d8aa859e978454b87852c705ffabbdc6409d83486f27db9068d279c0ffe20faa"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
