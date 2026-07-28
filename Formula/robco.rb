class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.79"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.79/robco-0.1.79-aarch64-apple-darwin.tar.gz"
      sha256 "845763b068835e9a174a6c34538d3bcf71978ffdc1e9312f33af8e58c4d65618"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.79/robco-0.1.79-x86_64-apple-darwin.tar.gz"
      sha256 "a7554c23691616a17d9057130f4bc54aca5d65b2cea819dd8d78b481c07485d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.79/robco-0.1.79-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "01c8073a10115f7e98e8847f1bcd4f9fe8cbb81050e5d6cd2724825584fcc8de"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.79/robco-0.1.79-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e810d7347fd3351c600d1e4802c293824c16ff026892bb211cec3f89f31617ea"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
