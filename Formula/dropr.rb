class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.14"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.14/dropr-0.4.14-aarch64-apple-darwin.tar.gz"
      sha256 "3f08b5b467f34ccf34f25e6fea39d595199c56d5455715e0bf48dd1ba8e94d70"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.14/dropr-0.4.14-x86_64-apple-darwin.tar.gz"
      sha256 "c5f89f78a4c00e428d3c9f2b38427299deaf4ed1328e5a0fb83b117f2a2fd9f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.14/dropr-0.4.14-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b6bae0304d3895e68b6eda6b2cbaebf77107aa17a89bbdb6fd118260bc99d028"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.14/dropr-0.4.14-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "03342c5067d0768ff48106dee9869080e592d9f5374492554134a784708efc4d"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
