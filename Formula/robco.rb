class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.86"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.86/robco-0.1.86-aarch64-apple-darwin.tar.gz"
      sha256 "4cd4d96f925c2e19e3b4516c736b5818700a24f081e647db87d5c63e7145ed2a"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.86/robco-0.1.86-x86_64-apple-darwin.tar.gz"
      sha256 "6b15bd3d220af7264aaad4a45baeab116b614465ab2d6cb78e474668701a4784"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.86/robco-0.1.86-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "db48507b310c19bb90609347fe12e6c0fcdb6ab09dac6d0d049adad3158b35f6"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.86/robco-0.1.86-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d42d21dd6bebc2360be2e331d6f9b94d15a5dc2f37612e2f6e891ed06eb0a850"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
