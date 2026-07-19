class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.49"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.49/robco-0.1.49-aarch64-apple-darwin.tar.gz"
      sha256 "60114dd6abe47902bf172114a8f56c590119042b2ea9fea6bb8cf19915023420"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.49/robco-0.1.49-x86_64-apple-darwin.tar.gz"
      sha256 "4cf7a59ec4c2bcddb531678152583ba5b09715e0a1ef3481440789cdddd5336f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.49/robco-0.1.49-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9791635830e3335336bc3861d17a55c6afdaef14806b2c8b705e1fcb0db892a2"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.49/robco-0.1.49-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f361fab2aafb50009e9029d7bdfd882e4ce23d49501b3986e12fe2c608e11675"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
