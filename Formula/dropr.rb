class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.28"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.28/dropr-0.4.28-aarch64-apple-darwin.tar.gz"
      sha256 "64ddf445c2ffc1ef1fc0a5294d867bfe523c71d03d183055ca2274922e467785"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.28/dropr-0.4.28-x86_64-apple-darwin.tar.gz"
      sha256 "d248114e1ae0c9a94f791e6f671fecd9dd1fcef1de45d46a4e9e723e9a7a3424"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.28/dropr-0.4.28-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ba79ea423b9d06a48b2d39fd403dca3e77e6c59d7cd2c378194a5f2ea9be2615"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.28/dropr-0.4.28-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8aa976609dabfe87d4e3a6c5b9019ed048dd37cd2c5d80dfefbda8dbb8415d93"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
