class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.39"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.39/robco-0.1.39-aarch64-apple-darwin.tar.gz"
      sha256 "0810c2df3bdd555cc4092a223f7e9002bafd54e98f3318e3c65e4d16fe90b571"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.39/robco-0.1.39-x86_64-apple-darwin.tar.gz"
      sha256 "ae83f78652800b2a399a67f592a4772fac891cd6be3e4f6fd457958bce693eb6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.39/robco-0.1.39-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b629d081973521effb2fd8841e3d35313bea098cd7af81fc6df1b9d7287e94c5"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.39/robco-0.1.39-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7e02326882b08fce7d0981637f2a00c25290035989accce744b467ca9b4128d1"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
