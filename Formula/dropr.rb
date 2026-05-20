class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.4.5"

  livecheck do
    url "https://github.com/nantokaworks/dropr-releases/releases.atom"
    regex(/cli-v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.5/dropr-0.4.5-aarch64-apple-darwin.tar.gz"
      sha256 "d1b0d70ccde6bdd4b60920d0a6053b61be99ae99702a6f2cac5f6c1621c37878"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.5/dropr-0.4.5-x86_64-apple-darwin.tar.gz"
      sha256 "4c3a6708362807f64eb04c8ec5b1a4858f72a56ce3db213b797f47715ca571f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.5/dropr-0.4.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ac7550ab02306823cc280e13be0aad6bc5f3847cad2e8961b0b0c3ef5cd106c1"
    end
    on_intel do
      url "https://github.com/nantokaworks/dropr-releases/releases/download/cli-v0.4.5/dropr-0.4.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "91f81058517d0fba2d3efd066720ff524ba81b422af48d6600104949905b7385"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
