class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.24"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.24/robco-0.1.24-aarch64-apple-darwin.tar.gz"
      sha256 "e850c62649f8332a1e7b3f8cfeba5f67528ce0ed99c969d2684326390dfd9898"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.24/robco-0.1.24-x86_64-apple-darwin.tar.gz"
      sha256 "abeef8a58e67c630ff0bd4c1054f0a06fcc87b3e51a92c535e91e5b95da99212"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.24/robco-0.1.24-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b8bd830b086729ec7bc5897cba8593f089fbba637d16133002f57b79af073586"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.24/robco-0.1.24-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cd814f37a2d2324e5d248184dfaffeba91e8d49c4efaf318128869f53ba44ea8"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
