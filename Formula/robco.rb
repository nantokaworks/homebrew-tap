class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.5"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.5/robco-0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "8d85d9617b88ccfe88c39708022455c25a45ca985bcca08f62d8ccbcc8a1a771"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.5/robco-0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "737ea401fd4fe1ac5809b6729831bb7f29860273fea046cedb74dc95c143293f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.5/robco-0.1.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "21556aeeae4f817ba11d3c6b9a413a1b0092be876bdff8e97396148bb687d853"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.5/robco-0.1.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f319f5ecd6cf31e688c09d2a64ab91d504f71cd30bc0ea7e374f18ed503be359"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
