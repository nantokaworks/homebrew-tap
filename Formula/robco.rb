class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.13"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.13/robco-0.1.13-aarch64-apple-darwin.tar.gz"
      sha256 "39d5c85531738e7c810e168414ad8d09556e68136b42147f57f215f95498f97f"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.13/robco-0.1.13-x86_64-apple-darwin.tar.gz"
      sha256 "cbc91f19dec7806a6e6e8961f816132ddbe014c2b4a34741e9865299c6d13289"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.13/robco-0.1.13-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "addc5047751130ad761e6993f242cc2889a8677f454e91c5990b3a658cc656d8"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.13/robco-0.1.13-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8abaa5ac2f552045983fbbfd53357b4650470c75d03f1245fecd45822ab6ce2a"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
