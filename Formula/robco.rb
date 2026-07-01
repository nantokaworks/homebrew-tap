class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.12"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.12/robco-0.1.12-aarch64-apple-darwin.tar.gz"
      sha256 "27beb3ddc96b73d50ca4a8c683f4c1a41569f4f73b573cb30f4f793b604f0106"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.12/robco-0.1.12-x86_64-apple-darwin.tar.gz"
      sha256 "7c49c49e07e7e837940c405316367e1e1769541795b63ce7e1f7e8f8a606800a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.12/robco-0.1.12-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7455c54c8caa4a71e98b64c46d335c3ba04c3584c09d804b8bc106390d08d7e1"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.12/robco-0.1.12-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c265c5c227dde0b2b4b59b9b3d30ca0efedf241745b937c2da8ef2b6ae67cebb"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
