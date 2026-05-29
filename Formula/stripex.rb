class Stripex < Formula
  desc "Multi-project Stripe CLI, powered by stripe"
  homepage "https://github.com/nantokaworks/clix"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/clix/releases/download/stripex-v0.1.0/stripex-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "aa708d23aeb0735ad88db34ed721d48d97027d2825addf6c2ab03bd2246ec769"
    end
    on_intel do
      url "https://github.com/nantokaworks/clix/releases/download/stripex-v0.1.0/stripex-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "417230312a0ece23e0708012261672993ac59ce0fa8eb0da08f137ecb97a8f2c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/clix/releases/download/stripex-v0.1.0/stripex-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "04f3e65b9b4f5caba8cfe5d7f8e402aba045d0383470de52296ec262cf9e0b8e"
    end
    on_intel do
      url "https://github.com/nantokaworks/clix/releases/download/stripex-v0.1.0/stripex-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "175fe61178ed55f0e9d8508d4ceaae4dc0924ae6521f2380c49688c907169d1d"
    end
  end

  def install
    bin.install "stripex"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stripex version 2>&1")
  end
end
