class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.2"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.2/robco-0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "bf2b0e8c5b1457c19bd54ad54f6c69ef5f6dbd3940b790e17c37db1826265bd1"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.2/robco-0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "c4b986d736aae00e3da62ab1f2714c2ccc2db9c0a6cc3806fdd5414c4404a6fb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.2/robco-0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "acf8a6932b202188c8b0bbf4a34884c56bff0ca4fcc6049e44af7cb9d4664f99"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.2/robco-0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5f86265c5503fa69dbf2b0985a6c3866e2f9612a0c99f512be9793066328d22f"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
