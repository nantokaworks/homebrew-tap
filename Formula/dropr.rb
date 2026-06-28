class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.27"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.27/dropr-0.4.27-aarch64-apple-darwin.tar.gz"
      sha256 "6888b714909b1204b0e792a117a7c27a3cd161087e041a06ed91a004d290ab62"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.27/dropr-0.4.27-x86_64-apple-darwin.tar.gz"
      sha256 "58e300991f1c43db3eae34a9046006121102cabfdaaaf598826f9940091ee93b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.27/dropr-0.4.27-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "131b14708cca32f4ae6cb44bbaa201039a9cdab657559ba6a03512950e10f3c3"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.27/dropr-0.4.27-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5b070586011eb4d5396d0169b568e20360c24819b3d86fe77b01f3e6729c2e81"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
