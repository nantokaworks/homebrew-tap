class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.67"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.67/robco-0.1.67-aarch64-apple-darwin.tar.gz"
      sha256 "87eeabee7bf8a11abe879bed603dce3fe50d5713ed1ce340176ddeb5a45ad2ea"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.67/robco-0.1.67-x86_64-apple-darwin.tar.gz"
      sha256 "6b7d83e8e0d61181d35388c45bc964762a148c7bab9d2ada99d3e785d26572e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.67/robco-0.1.67-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "691428a2381720d993056c7c11aa6f0e2b0ec9bf781b4fb40ff780931a5704d6"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.67/robco-0.1.67-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e80a8af76a2b2a9ac204819b43a02c84a0572109612174e46c8e6acf4bdb241c"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
