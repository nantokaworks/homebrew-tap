class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.83"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.83/robco-0.1.83-aarch64-apple-darwin.tar.gz"
      sha256 "e4ed72a0b0939471d33bbe737a5c3a85c23d25c3c9be646163c05c0a6d1b4079"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.83/robco-0.1.83-x86_64-apple-darwin.tar.gz"
      sha256 "62921ba36b60fa8ea56cd0e63616b9c4cea89cce017e71b832bdce2652da4614"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.83/robco-0.1.83-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "54d2ed9433b6e51b7b3ca31a14e8879b7cb9877a7c084887211b1807f242edf8"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.83/robco-0.1.83-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1c09a0de5cf5c3915c101efcca358b42d8c0c95ea44e0c27c4c29308d5c599e1"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
