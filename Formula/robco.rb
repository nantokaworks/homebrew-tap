class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.29"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.29/robco-0.1.29-aarch64-apple-darwin.tar.gz"
      sha256 "ed57180951edee4ae127820fddf48e32d0f2446c18d00f1475172c58b1492ae7"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.29/robco-0.1.29-x86_64-apple-darwin.tar.gz"
      sha256 "733cd68fab9c139b4a37901ebf1ef924810b66bede255bcef66599ee39c3413f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.29/robco-0.1.29-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "256a89af5e2e485b3994de8cc6840a16083462b0ef57f8d2b7e8b68f36f4799e"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.29/robco-0.1.29-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e51116a6a0e85c53d6516a7ec4cd181ffcacaf0e2570d965dfd18be1c4f59417"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
