class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.32"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.32/robco-0.1.32-aarch64-apple-darwin.tar.gz"
      sha256 "5ff8c05a094d6fc2a1cef6fab7f03cdb9ce8244505aec5a695a6024b77b01dd3"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.32/robco-0.1.32-x86_64-apple-darwin.tar.gz"
      sha256 "260d333ec4408b28426a03c15f012dcfd5f30cc421f7c35101007da4243888a2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.32/robco-0.1.32-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c99dc291d8bbf2dce27586b447783d6cec1dae3229fe7bb7289d1d0fdd2cdf32"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.32/robco-0.1.32-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "37c936446d88c03d47654b09c9a6e92d907325530479e68aa64adba4b4404306"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
