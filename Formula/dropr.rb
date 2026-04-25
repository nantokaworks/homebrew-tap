class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.1.2"

  livecheck do
    url "https://cdn.dropr.sh/latest.txt"
    regex(/(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://cdn.dropr.sh/dropr-0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "e58e3792153e041580f7e28792afe05ed380c91d21b575dbf1167b77f30392fd"
    end
    on_intel do
      url "https://cdn.dropr.sh/dropr-0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "4723f0ab3ef500c74802893a8b8eac25d19a5cb1a17f3401ef331619cc37d5dd"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.dropr.sh/dropr-0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d6a4d59cc307ddf732d014dc780a1e2355f5c903f7202425e0d968b8e355ef6e"
    end
    on_intel do
      url "https://cdn.dropr.sh/dropr-0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8c31270eec331b481a0fc05768ee9d6ae5717397beceb849539495d57d020a23"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
