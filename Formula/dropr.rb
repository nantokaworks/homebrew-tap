class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.0"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.0/dropr-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "e89f522379f6d9957af0006deef7e65aee9af6afe5f1069cf99e2164fd644d71"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.0/dropr-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "900f33821d725e04e4b9ddecd6b26ff76649b9eb4f8f124305951e1bf8a3563f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.0/dropr-0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8ce8a8aa9899c9c65f9303a4c000d352fd6b5efa3f8befee1533cfea82094e25"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.0/dropr-0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "19712ab3c35585eeabace2cfd04146dffabc539f30a63bddc9ea4a47e910b9cf"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
