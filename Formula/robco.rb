class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.4"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.4/robco-0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "22b16ae346c43768a957e8a68c011eb95371a0794a1d7b7493f9b6c41a854d45"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.4/robco-0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "ced8149cc1290bc8ad9421c5a0d8f471ac0df11319529767ddb2c7e7457bc79d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.4/robco-0.1.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b616638b8847ad2c0c3e0911287291c9fbb772146c9dd6c76ef813c77639c206"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.4/robco-0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5f5e67d2b99d7c9fce0d1e2993a70c25297677cd65c8afca07d18fb59367ab48"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
