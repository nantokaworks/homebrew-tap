class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.1.9"

  livecheck do
    url "https://cdn.dropr.sh/latest.txt"
    regex(/(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://cdn.dropr.sh/dropr-0.1.9-aarch64-apple-darwin.tar.gz"
      sha256 "72ca7e34545ed96eb0e786bbb628eb7581cbff9f72da3d946d35eb2496c6b7e8"
    end
    on_intel do
      url "https://cdn.dropr.sh/dropr-0.1.9-x86_64-apple-darwin.tar.gz"
      sha256 "1a7d597ae9642c37ad6fefd20bb8dc0957c83334d5b1fe9cff0f258f6a532129"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.dropr.sh/dropr-0.1.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e277427f4969c2de48e61cf0f357f3c6201b6192ac7f22c10a68b9f1304bce79"
    end
    on_intel do
      url "https://cdn.dropr.sh/dropr-0.1.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "83d4db9c7a69ad2eef980b7615f55e766cf98aa4855330ce8ba458489d0d8758"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
