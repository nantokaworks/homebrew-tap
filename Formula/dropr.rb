class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.1.8"

  livecheck do
    url "https://cdn.dropr.sh/latest.txt"
    regex(/(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://cdn.dropr.sh/dropr-0.1.8-aarch64-apple-darwin.tar.gz"
      sha256 "837827483a7f709170ad85457cfcff3681f6574297ca02b92d7c8e78b11b6347"
    end
    on_intel do
      url "https://cdn.dropr.sh/dropr-0.1.8-x86_64-apple-darwin.tar.gz"
      sha256 "75e01fa13cc9718a738c027ef0d0f6eef5629e5bc54948ab0107bbf5d5b36c96"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.dropr.sh/dropr-0.1.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d7bfe2c77156ead1a6a03b783986483e151927957f768c7e6a56e81dbd16a23f"
    end
    on_intel do
      url "https://cdn.dropr.sh/dropr-0.1.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ac736bc4dd99520e55aef86923fcc8b71a92b233c5131efb64571bcf77ac9951"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
