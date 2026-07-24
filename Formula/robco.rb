class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.61"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.61/robco-0.1.61-aarch64-apple-darwin.tar.gz"
      sha256 "070426555b8ec652b667a4868200887f1aeb3a77ddfeb8e1847adb39f84360d4"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.61/robco-0.1.61-x86_64-apple-darwin.tar.gz"
      sha256 "8c6851b3c283b719eb3b100892896feaace00554e5654147b8179d551427eb1e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.61/robco-0.1.61-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f299da23cab997732d73e30b58f1f4a8215f785cb66994f9f2ecf7ce7e2aa784"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.61/robco-0.1.61-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0d046031a42cec135fbf827c4c610dcae1f0df79c37db29f17e5456ac4298b30"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
