class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.44"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.44/robco-0.1.44-aarch64-apple-darwin.tar.gz"
      sha256 "16c4d334470f0fc2782b7a4499277b1c2d5f74d995e4c38460782bb37e4e88aa"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.44/robco-0.1.44-x86_64-apple-darwin.tar.gz"
      sha256 "42d2c27ba6296d2ddbac4b86f6174122c7b5c484c7bb0c27f6482e2abd0149d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.44/robco-0.1.44-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7e59fcdc5511055afe8a783525b5681d4d330da8a35ab6c719daeb6dc0c5f2cb"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.44/robco-0.1.44-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "398a13a1fe10a54d21bea207d4ab2395e3a26e90970aec0f06e5c4b667dc3308"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
