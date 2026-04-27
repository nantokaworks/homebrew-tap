class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.1.6"

  livecheck do
    url "https://cdn.dropr.sh/latest.txt"
    regex(/(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://cdn.dropr.sh/dropr-0.1.6-aarch64-apple-darwin.tar.gz"
      sha256 "85a61cf2e387c800b1ebb5c64aede821d72f267b20679cad94f7dd21eb0b0ea1"
    end
    on_intel do
      url "https://cdn.dropr.sh/dropr-0.1.6-x86_64-apple-darwin.tar.gz"
      sha256 "52c9958a69428a02bfbca547ed6f151641686c5f8d1e46f1fb70c1101b5cb2bf"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.dropr.sh/dropr-0.1.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "649ff39ffecd584e8e96b3ed98a308dc8866c215d26dc0de64538f72993d39e3"
    end
    on_intel do
      url "https://cdn.dropr.sh/dropr-0.1.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "748c803c2099192a2e139a43d1de39b3b01509415bfba10c0f06ec1e4839afb7"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
