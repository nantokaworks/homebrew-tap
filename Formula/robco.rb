class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.3.3"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.3.3/robco-0.3.3-aarch64-apple-darwin.tar.gz"
      sha256 "bde7de2e1cb86b1159790d9e7044d65a9d692ecf2c73573fba575d1bf0d5d5d9"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.3.3/robco-0.3.3-x86_64-apple-darwin.tar.gz"
      sha256 "9d617d62d63b51318b047dde8eef6607815d5ad5a7af1deb478ae10d537fca8b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.3.3/robco-0.3.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bdb756a1432d95b11d9786ace550661c37648791f34ec1e4b04135a84418059b"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.3.3/robco-0.3.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0bef702ff9626910bcd8462d9b4d707eba473f865c6947e10372198ca5792ba3"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
