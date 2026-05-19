class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.1"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.1/dropr-0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "ee3a6cb604199d922fe6e371983e330c6b1ec5fdf05ae837f0d877f3660c8c69"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.1/dropr-0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "3eab2269153de5b2196afb05addc99b1db51ad14c542ba7f2277764b3ed5378f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.1/dropr-0.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b1152bf393709f1edfef3135f3c331253e0703adbf6171d293fd5f07123d4388"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.1/dropr-0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8c87c3f69420f508b54f25d130f940cab5a41486ae700d41331ba9450578ca5a"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
