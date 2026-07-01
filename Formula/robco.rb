class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.15"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.15/robco-0.1.15-aarch64-apple-darwin.tar.gz"
      sha256 "6678115064fd7755a1193287ba902816262e4777029d00fcbb725a3c1a15678f"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.15/robco-0.1.15-x86_64-apple-darwin.tar.gz"
      sha256 "0725617ef72569cbacec3b082aad90e7668b467eb02f56d15ffeb6f0be34a79a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.15/robco-0.1.15-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4cf248bab963ae4e105c6bee9892f73cb10e4d1e6e7c644c4ee22d7c696a90ee"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.15/robco-0.1.15-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a26c98397d09f937053e67a9f128510150ddd4387c632c56b6c804ee3ad1ba83"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
