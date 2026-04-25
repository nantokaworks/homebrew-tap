class Dropr < Formula
  desc "dropr CLI - MCP setup and workspace management for AI agents"
  homepage "https://github.com/nantokaworks/dropr"
  version "0.1.5"

  livecheck do
    url "https://cdn.dropr.sh/latest.txt"
    regex(/(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://cdn.dropr.sh/dropr-0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "71a270707c568894ff394031c0f7595882fd95cfe836d0dac0f2e3ac91c1af27"
    end
    on_intel do
      url "https://cdn.dropr.sh/dropr-0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "b4de92b73b1bb54b397ab7e5c29e17c20fdc81b2fa329708ab65c21727876e83"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.dropr.sh/dropr-0.1.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9c5d29b690347d77de46d252b0cdde74d6d59f892f33b7e9f5320ef3140c0010"
    end
    on_intel do
      url "https://cdn.dropr.sh/dropr-0.1.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "942d8b0da83591c8513186b5b0494cc72a65833c2871e42a793060900003435c"
    end
  end

  def install
    bin.install "dropr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dropr --version 2>&1")
  end
end
