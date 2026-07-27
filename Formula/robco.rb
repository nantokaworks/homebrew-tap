class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.78"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.78/robco-0.1.78-aarch64-apple-darwin.tar.gz"
      sha256 "3fe520111f513f369b27bc62453fbc3194d964bd26bb8e8e1c9def07c58e1bcf"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.78/robco-0.1.78-x86_64-apple-darwin.tar.gz"
      sha256 "713a80c123195ca4b068df217d1cf5aa9795328f5ccbcaa46f0e0ef4f2c4eab7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.78/robco-0.1.78-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "07017ad9e9475c5558f044d5f175930ed70b46e66d5188870b56f42c51b116ae"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.78/robco-0.1.78-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "af165bf2356dbfd17e2bbb7e61eb47854869c93ffe89fbb64d9b85831f1be289"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
