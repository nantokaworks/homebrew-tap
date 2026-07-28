class Robco < Formula
  desc "Repo-oriented terminal cockpit for supervising AI coding agents"
  homepage "https://github.com/nantokaworks/robco"
  version "0.1.81"

  livecheck do
    url "https://github.com/nantokaworks/robco-releases/releases.atom"
    regex(/v(\d+\.\d+\.\d+)/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.81/robco-0.1.81-aarch64-apple-darwin.tar.gz"
      sha256 "a4ca964ce3365a93d6138ba7c8c19586786610317d548c6cf5e31a71d039ff34"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.81/robco-0.1.81-x86_64-apple-darwin.tar.gz"
      sha256 "0f42b5017e8206220eb883fe29e44f0369f32b7d14526742ca138ab6fb1a91d5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.81/robco-0.1.81-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "36852f0792027d4549872df6ff79d2155d055d01cd9ec033c8b96242207ff013"
    end
    on_intel do
      url "https://github.com/nantokaworks/robco-releases/releases/download/v0.1.81/robco-0.1.81-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c236332d7c49293709b58cac0f8a87007dff635e3c9b9e3e202f69a5e97a6a79"
    end
  end

  def install
    bin.install "robco"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/robco --version 2>&1")
  end
end
