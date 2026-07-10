class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.22"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.22/robco-0.1.22-aarch64-apple-darwin.tar.gz"
      sha256 "6c7ee5ccafd8276a22a38e1017889c8f8744c8586498bc3946732ea23f4897ab"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.22/robco-0.1.22-x86_64-apple-darwin.tar.gz"
      sha256 "7a82a92d6597ccc33a8ff689a75258b8a0b75f64c281ea0d4d6f8fbc62ec3a0d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.22/robco-0.1.22-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fa50233e38e45b9942adb188a4b47db935c4b6f505fc8bfdbd8d8c7898cf9ef8"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.22/robco-0.1.22-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6e8691091c7123f895285636e220fcf54f410901cd8550bb7b724a542b8def5b"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
