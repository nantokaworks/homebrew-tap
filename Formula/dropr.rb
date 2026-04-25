class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.1.3"

  livecheck do
    url "https://cdn.dropr.sh/latest.txt"
    regex(/(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://cdn.dropr.sh/dropr-0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "9d29b5a90deb0542f49b0a1725543c00dbf25477500e425f0bc20eb5b4f8dfd4"
    end
    on_intel do
      url "https://cdn.dropr.sh/dropr-0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "93e5c0988bdfdc3e3dd05a2cd7a80f6003f8f8e3fb17d8865da69feac495b292"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.dropr.sh/dropr-0.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5384b15d1f2bea8d81f7f2e8c79e36d5dbf97cca3542c49be759e341954b71b6"
    end
    on_intel do
      url "https://cdn.dropr.sh/dropr-0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2f1222562e3dfc59335d130fd545f367416d58c7ec22ab8092f5eb57393459ad"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
