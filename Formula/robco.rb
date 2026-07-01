class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.11"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.11/robco-0.1.11-aarch64-apple-darwin.tar.gz"
      sha256 "c0c882a5fa1e3fd0eb21e70ca6ef66da2297181e00bdb6bf90b9d8219c05fc16"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.11/robco-0.1.11-x86_64-apple-darwin.tar.gz"
      sha256 "d701359adda7a479999859fe04f97981e0c8472680e4c17345d955e55e1ddc31"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.11/robco-0.1.11-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "56f1ce3a1e04199462b142c5e36631bbe7c7ea72334c3ca2394f1e5715a7e3bf"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.11/robco-0.1.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d2dab9b6abc20b31d603d5d9fd6434e2da42ce0e136dcad75ec2c25dd5b2dd44"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
