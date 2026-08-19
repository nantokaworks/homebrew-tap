class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.3.0"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.3.0/robco-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "93d8365a608cf32cc735e2bc77ec896d3774c9615e6e98df1e5364db31845425"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.3.0/robco-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "b30c0bf1cb6a4d63aa17e2af72bf246c2634dbaabd6191148fa46b920ae511ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.3.0/robco-0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7f34985e39a859f9b7ade500e24289c43e0283530ee2d2f33c34ba8c814b2e02"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.3.0/robco-0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "405c9794e50a5e5afeeff1d393c2cfb39690780acaf6b4520203ed0fdacf7ef9"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
