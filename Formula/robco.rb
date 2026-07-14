class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.30"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.30/robco-0.1.30-aarch64-apple-darwin.tar.gz"
      sha256 "22be5e0ad1f6f11299be02091a7ebbf2af71d75e7195666263c535c579cfc058"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.30/robco-0.1.30-x86_64-apple-darwin.tar.gz"
      sha256 "6015c87f0d6c47be8a5e72b887a2011530b24288d55b65a6e2400fe4ac6a570b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.30/robco-0.1.30-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "806184e7cc1aa40cb398db9659ee5ad2089a6e2ff47365bd75799114f5e2db58"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.30/robco-0.1.30-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "be718715dde0e4e349b7a70ec3b90d0a70c409223c51d5cf8822f3c843c43c1c"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
