class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.82"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.82/robco-0.1.82-aarch64-apple-darwin.tar.gz"
      sha256 "1435e7cdd4b228d37c7086c28910278131e5680006cdb8b6e02d8c55c7fc5d19"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.82/robco-0.1.82-x86_64-apple-darwin.tar.gz"
      sha256 "742af11949c3ebc39cbf358989d7c60f708becce580adc1c276692eb80a58a4e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.82/robco-0.1.82-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1a8e96d450758cc657b7ca6a4fbd17a0a5db0ea3950ac70f312ca83b96bb1c32"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.82/robco-0.1.82-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ac5e81545af65bf7a20921961c7bff6698604e2a08aa700be802591f55263426"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
