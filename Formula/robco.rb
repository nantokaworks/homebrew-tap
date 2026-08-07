class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.93"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.93/robco-0.1.93-aarch64-apple-darwin.tar.gz"
      sha256 "4d46fc0d3d46e72b432d4f358f81158c0e5b81b03cc5350c9d28339694e0200d"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.93/robco-0.1.93-x86_64-apple-darwin.tar.gz"
      sha256 "ebf8c72a47a4d680eb8e8537f2a2c57fc99ffaf4f99ba0e1a5b7a2edfc0b3201"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.93/robco-0.1.93-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "33891a01b3eecb167338989c558a582482ee590a6836b2acfc9c94050169d836"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.93/robco-0.1.93-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "57eed82fa487bdece40195af06e7ac5bff30902db105d1ddb19f7f01239f525c"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
