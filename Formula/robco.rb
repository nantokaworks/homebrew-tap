class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.72"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.72/robco-0.1.72-aarch64-apple-darwin.tar.gz"
      sha256 "8071104f501151b3c3691e6201a0df5e691cd4e269a4ffdd9e06ad365c18073a"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.72/robco-0.1.72-x86_64-apple-darwin.tar.gz"
      sha256 "2385825e2583fb6c49a2e9d4cc8c4eae985977379a52a8bd85670039992a331a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.72/robco-0.1.72-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bc69a0a5d39ce9afdc7c1e662392c88c0015373393db001de92f412adb2571b2"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.72/robco-0.1.72-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e8af489666d8e11558094bce83b65f1fc7ba498f00a67f68c7ab59444ed48097"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
