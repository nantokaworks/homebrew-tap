class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.69"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.69/robco-0.1.69-aarch64-apple-darwin.tar.gz"
      sha256 "d6caaa977ea08dd86571e39d8f675ea720a162790d6080545bcef36864b3a5d4"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.69/robco-0.1.69-x86_64-apple-darwin.tar.gz"
      sha256 "448bef2ea4ea6de787700a149638fd139b8104b0e31dcb2123f2c39fdc38e7e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.69/robco-0.1.69-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fac281d1ec0016696b31acee29f4b620e12cfd2516b25c21f8d1701bb87dfe86"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.69/robco-0.1.69-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "af3a14f88f718c061b1d6b12bc120d7fe7c4094445a840231aac03cb417bb66d"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
