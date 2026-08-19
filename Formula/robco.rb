class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.3.1"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.3.1/robco-0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "eeccdd8b94d8fc41928faf6480a712bec0072b33eb5137116720517eba4cedef"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.3.1/robco-0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "2ca3eeae46c4dca8ad89435e786da0a8f70707382c38480135caee567efc1fff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.3.1/robco-0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "066ab2954edc5a82af73d385b9e2483310f452d3618c7160953177ff9b86e2b5"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.3.1/robco-0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ad4c47b54206267f19e436d215ff1790ae34e70d6df4e520c2aed9bd35a789b7"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
