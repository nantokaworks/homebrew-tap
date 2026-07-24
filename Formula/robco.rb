class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.62"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.62/robco-0.1.62-aarch64-apple-darwin.tar.gz"
      sha256 "d44a6b4a8f20a90efe1eb07ce1f702e4a18500f728c6071b14b71c2d43d991ae"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.62/robco-0.1.62-x86_64-apple-darwin.tar.gz"
      sha256 "139c36251d008d72ef360ac125b91daf16c2852baa3d599fe9c0d6223392afe6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.62/robco-0.1.62-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3c63fd393d6711bca5aee84070e9b457ff1e710398c53de10bb0aef5a792d7fc"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.62/robco-0.1.62-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e0dcb66aad43dc3cda79a29459e99fea4b73fd3947af9d1ba696fee111504a16"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
