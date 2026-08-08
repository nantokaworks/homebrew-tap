class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.95"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.95/robco-0.1.95-aarch64-apple-darwin.tar.gz"
      sha256 "bc4493bf66bf2f40c00e6eea9b5fe9fbcc990e36422755837ec942cddddc4607"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.95/robco-0.1.95-x86_64-apple-darwin.tar.gz"
      sha256 "2d34da031d61dcc5320e1bb63650276fa8e89241e7a747a26aae089ee83c7693"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.95/robco-0.1.95-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "be0234277f8d6b5146a3a8e8d475f5b8cf4a79f84949682b6de32bad378b3de6"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.95/robco-0.1.95-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f4c410f582ddda8d249e923173adc94025184a198315e6233a82b5ca6ae8c9c0"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
