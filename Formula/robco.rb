class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.20"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.20/robco-0.1.20-aarch64-apple-darwin.tar.gz"
      sha256 "ffb0b0c148eac7c9f0c016cf62548fc528edbd0c932ae599e0412b4c7ca11fe7"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.20/robco-0.1.20-x86_64-apple-darwin.tar.gz"
      sha256 "6d2d7373556e5a0c8ff7e9da88e9c5baa4f40c7df6686f50c08d618cb14dcd5b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.20/robco-0.1.20-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8141103ba52cd6a9edd94f544964872ea8c5ace34aea7df58673768d69eccf9d"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.20/robco-0.1.20-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3b09c279ea2537e9c0695b035303f33dd9618dd80ad4d7353e304c2ce3093312"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
